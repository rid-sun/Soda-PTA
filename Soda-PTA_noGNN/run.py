import copy
import os
import time
import random

import fire
import numpy as np
import torch
from tqdm.auto import trange

from core.learner import Soda_PTA_Optimizer
from core.models import *
from data.data import *
from infrastructure.configs import *
from infrastructure.misc import *


def parse_args(**kwargs):

    # setup
    config = SodaPTA_Config()
    config._parse(kwargs)
    config.device = torch.device(config.deviceid)

    #
    if config.dtype_32:
        torch.set_default_dtype(torch.float32)
        config.npType = np.float32
    else:
        torch.set_default_dtype(torch.float64)
        config.npType = np.float64

    #
    folder_name = {1:'PurePTA', 2:'DPTA', 3:'CEPTA', 4:'RampingPTA'}
    folder_path = os.path.join('result', folder_name[config.pta_mode])

    log_path = os.path.join(folder_path, 'logs',)
    img_path = os.path.join(folder_path, 'imgs',)
    ret_path = os.path.join(folder_path, 'allresults',)
    res_path = os.path.join(folder_path, 'residuals',)
    trajfiles_path = os.path.join(folder_path, 'trajfiles',)

    create_path(log_path)
    # create_path(img_path)
    create_path(ret_path)
    create_path(res_path)
    # create_path(trajfiles_path)
    ##

    #
    config.multraj_mode = config.multraj.split('_')
    # config.pta_input_dims = len(config.multraj_mode)
    config.pta_input_dims = 1

    # setup pta options
    if config.pta_mode == 1: # PPTA
        config.bemethod = 0
        config.algorithm = 2
        config.embed = 3
        config.tauramp = 0
        config.method = 0
        config.maxstep = 10.0
        config.resval = 0
        config.conval = 0
        config.end_indices = 2
    elif config.pta_mode == 2: # DPTA
        config.bemethod = 2
        config.algorithm = 2
        config.embed = 4
        config.tauramp = 0 
        config.method = 0
        config.maxstep = 10.0
        config.resval = 0
        config.conval = 0
        config.end_indices = 2
    elif config.pta_mode == 3: # CEPTA
        config.bemethod = 0
        config.algorithm = 2
        config.embed = 4
        config.tauramp = 0
        config.method = 0
        config.maxstep = 10.0
        config.end_indices = 4
    elif config.pta_mode == 4: # RampingPTA
        config.bemethod = 2
        config.algorithm = 2
        config.embed = 4
        config.tauramp = 0.1
        config.method = 0
        config.maxstep = 10.0
        config.indval = 0
        config.resval = 0
        config.conval = 0
        config.end_indices = 1

    
    config.params = [config.capval, config.indval, config.resval, config.conval]
    config.option = [config.bemethod, config.algorithm, config.embed, config.tauramp, config.method, config.maxstep]

    config.fit_input_dims = config.end_indices
    config.fit_output_dims = config.pta_input_dims
    config.pta_output_dims = config.end_indices

    return [folder_path, log_path, img_path, ret_path, trajfiles_path, res_path], config


def evaluation(path, basemodel, ptamodel, config, circuitname):
    
    #
    f_img_path = os.path.join(path[2], circuitname)
    f_trajfiles_path = os.path.join(path[4], circuitname)
    create_path(f_img_path)
    create_path(f_trajfiles_path)

    #
    logger = get_logger(logpath=os.path.join(path[1], circuitname+'.log'))
    logger.info(config)
    logger.info(basemodel)
    logger.info(ptamodel)

    #
    meta_learner = Soda_PTA_Optimizer(
        base_model=basemodel,
        pta_model=ptamodel,
        fit_loss=config.fit_loss,
        fit_steps=config.fit_steps,
        fit_precision=config.fit_precision,
        fit_lr=config.fit_lr,
        earlystop=config.earlystop,
        up_lr=config.up_lr,
        up_optim=config.up_optim,
        up_loss=config.up_loss,
        is_clip=config.is_clip,
        clipval=config.clipval,
        pta_initial_params=config.params,
        device=config.device,
        img_path=f_img_path,
        netlist_path=config.netlist,
    )

    # checkpoint
    params_pta = np.array(config.params)
    option_pta = np.array(config.option)
    contents = os.listdir(f_trajfiles_path)
    check_points_epoch = len(contents)
    if check_points_epoch != 0:
        trajfile = "traj_" + str(check_points_epoch) + ".txt"
        f_file_path = os.path.join(f_trajfiles_path, trajfile)
        with open(f_file_path, "r") as file:
            strs = file.readline()
            while len(strs) != 0:
                strs = strs.split(' ')
                if strs[0] == 'new_capval':
                    params_pta[0] = float(strs[1])
                elif strs[0] == 'new_indval':
                    params_pta[1] = float(strs[1])
                elif strs[0] == 'new_resval':
                    params_pta[2] = float(strs[1])
                elif strs[0] == 'new_conval':
                    params_pta[3] = float(strs[1])
                strs = file.readline()
        timepoints, voltages, residuals, NR_iters = readMsg(file_path=f_file_path, mutitraj_mode=config.multraj_mode, folder_path=f_trajfiles_path, np_type=config.npType)
        NR_iters = 10000 if NR_iters == 0 else NR_iters

    #
    else:
        # 
        NR_iters, rejsteps, totalsteps, restartnum, capval, indval, resval, conval, converage = control(params_pta, option_pta, logger, "wspice1.exe", config.netlist)
        
        # 
        timepoints, voltages, residuals, *_ = readMsg(file_path="sjt_output.txt", mutitraj_mode=config.multraj_mode, folder_path=f_trajfiles_path, params_pta=params_pta, np_type=config.npType)  

        # 
        f_result_path = os.path.join(path[3], circuitname + '.csv')
        with open(f_result_path, "w") as file:
            file.write('NR_iters,rejsteps,totalsteps,restartnum,capval,indval,resval,conval,updateloss\n')
            file.write(f'{NR_iters},{rejsteps},{totalsteps},{restartnum},{capval},{indval},{resval},{conval},0\n') 
        
        res_file_path = os.path.join(path[5], circuitname + '.txt')
        with open(res_file_path, "a") as f:
            tensor_str = " ".join(map(str, residuals.tolist()))
            f.write(tensor_str)
            f.write('\n')

    
    # optimization
    start_time = time.time()
    for epoch in trange(config.epochs - check_points_epoch):

        logger.info('------------SodaPTA Epoch ' + str(epoch + check_points_epoch + 1))

        timepoints, voltages, residuals = timepoints.to(config.device), voltages.to(config.device), residuals.to(config.device)

        # 
        new_base_model = copy.deepcopy(basemodel)
        meta_learner.setBaseModel(new_base_model)
        ptamodel.set_pta_params(params_pta[:config.end_indices])
        ptamodel.initWeights()
        
        # 
        t_start = time.time()
        new_params, update_loss = meta_learner.update(timepoints, voltages, residuals, NR_iters, logger, epoch + check_points_epoch + 1)
        params_pta = np.pad(new_params, (0, 4 - len(new_params)), mode='constant')
        NR_iters, rejsteps, totalsteps, restartnum, capval, indval, resval, conval, converage = control(params_pta, option_pta, logger, "wspice1.exe", config.netlist)
        params_pta[0] = capval
        params_pta[1] = indval
        params_pta[2] = resval
        params_pta[3] = conval
        timepoints, voltages, residuals, *_ = readMsg(file_path="sjt_output.txt", mutitraj_mode=config.multraj_mode, folder_path=f_trajfiles_path, params_pta=params_pta, np_type=config.npType)
        t_interval = time.time() - t_start
        
        del new_base_model

        # 
        f_result_path = os.path.join(path[3], circuitname + '.csv')
        with open(f_result_path, "a") as file:
            file.write(f'{NR_iters},{rejsteps},{totalsteps},{restartnum},{capval},{indval},{resval},{conval},{update_loss}\n') 
        
        res_file_path = os.path.join(path[5], circuitname + '.txt')
        with open(res_file_path, "a") as f:
            tensor_str = " ".join(map(str, residuals.tolist()))
            f.write(tensor_str)
            f.write('\n')


        logger.info('(epoch' + str(epoch + check_points_epoch + 1) + ') takes ' + str(t_interval) + ' secs')
        logger.info('params: ' + str(params_pta) + '\titers: ' + str(NR_iters))

        if time.time() - start_time >= 7200:
            logger.info('For loop exceeded maximum running time. Exiting.')
            break
        #


    #

    stop_logger(logger)


def all(path, basemodel, pta_model, config):
    has_caled, has_failed = [], []
    exception_list = []

    # 
    caledtext = os.path.join(path[0], 'caled.txt')
    failedtext = os.path.join(path[0], 'failed.txt')
    exceptiontext = os.path.join(path[0], 'exception.txt')
    usetimetext = os.path.join(path[0], 'usetime.txt')
    configtext = os.path.join(path[0], 'config.txt')

    try:
        with open(caledtext, "r") as file:
            has_caled = [line.strip() for line in file.readlines()]
        with open(failedtext, "r") as file:
            has_failed = [line.strip() for line in file.readlines()]
    except Exception:
        pass

    ignore = ['loc.sp', 'arom.sp', 'b330.sp', 'rich3.sp']
    root_directory = ['data/benchmark', 'data/other']


    # 
    st = time.time()
    for itr, rootss in enumerate(root_directory):
        for root, dirs, files in os.walk(rootss):
            try:
                for file in files:
                    # 
                    if file in has_caled or file in ignore or file in has_failed:
                        continue

                    # 
                    try:
                        config.netlist = os.path.join(rootss, file)
                        # config._print()

                        basemodel_copy = copy.deepcopy(basemodel)
                        evaluation(path, basemodel_copy, pta_model, config, file.split('.')[0])
                        del basemodel_copy

                        has_caled.append(file)

                    except KeyboardInterrupt:  # 
                        break

                    except Exception as e:  # 
                        has_failed.append(file)
                        exception_list.append(file + '----' + str(e))

            except KeyboardInterrupt:
                break

    # record has_caled
    with open(caledtext, 'w') as file:
        for item in has_caled:
            file.write(f"{item}\n")

    # record has_failed
    with open(failedtext, 'w') as file:
        for item in has_failed:
            file.write(f"{item}\n")

    # record exception
    with open(exceptiontext, 'w') as file:
        for item in exception_list:
            file.write(item + '\n')

    # record usetime
    with open(usetimetext, 'a') as file:
        file.write(str(time.time() - st) + '\n')
    
    # record config
    with open(configtext, 'a') as file:
        file.write('============================\n')
        file.write(f'*{config.config_name}\n')
        file.write('----------------------------\n')
        for k, v in config.__class__.__dict__.items():
            if not k.startswith('_'):
                file.write("-{}: {}.\n".format(k, getattr(config, k)))
        file.write('=================================\n') 
    
    print('All circuits has got!')



if __name__ == '__main__':

    #
    random.seed(3407)
    torch.manual_seed(3407)
    torch.cuda.manual_seed_all(3407)
    np.random.seed(3407)

    ##
    print('[0] parse command line args')

    path, config = fire.Fire(parse_args)

    print('\033[32m[1] parsing completed\033[0m')

    # 
    base_model = get_fcnn_regressor(config.fit_input_dims, config.fit_output_dims, config.linearlayers, config.act)
    pta_model = PTA(config.pta_input_dims, config.pta_output_dims)

    print('\033[32m[2] model-definition completed\033[0m')


    # start
    if config.isall:
        all(path, base_model, pta_model, config)
    else:
        config.netlist = 'data/other/' + config.netlist
        # config._print()
        evaluation(path, base_model, pta_model, config, config.netlist.split('/')[-1].split('.')[0])
