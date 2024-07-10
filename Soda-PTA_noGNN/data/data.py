import os
import subprocess

import torch

import numpy as np

from sklearn import preprocessing
import shutil


def control(params, pta_option, logger, exepath='wspice1.exe', netlist='data\\benchmark\\ab_ac.sp'):
    """
    wspice execution script
    Input:
    params: PTA hyperparameters
    pta_option: Options during wspice execution determines which type of PTA to execute.
    logger: logs
    exepath: wspice exepath
    netlist: cicuit netlist path
    Output: NR_iters, Rejsteps, Totalsteps, Restartnum, capval, indval, resval, conval, convergence
    """
   
    # 
    NR_iters = 10000
    rejsteps = 0
    totalsteps = 0
    restartnum = 0
    params_capval = "{:.10f}".format(params[0])
    params_indval = "{:.10f}".format(params[1])
    params_resval = "{:.10f}".format(params[2])
    params_conval = "{:.10f}".format(params[3])
    converge = False
    converged_state = ""
    warm_bug = f'TASKKILL /F /IM {exepath}'

    ret_code = 1
    while ret_code != 0:
        #
        p = subprocess.Popen(args=exepath, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE, text=True, shell=True)
        p.stdin.write(netlist + '\n')
        p.stdin.flush()
        p.stdin.write('pstran bemethod=%d algorithm=%d embed=%d tauramp=%f method=%d maxstep=%f capval=%.10f indval=%.10f resval=%.10f conval=%.10f\n' % (
            pta_option[0], pta_option[1], pta_option[2], pta_option[3], pta_option[4], pta_option[5], params[0], params[1], params[2], params[3]))
        p.stdin.flush()
        p.stdin.write('op\n')
        p.stdin.flush()
        p.stdin.write('quit\n')
        p.stdin.flush()
        p.stdin.write('y\n')
        p.stdin.flush()
        # p.stdin.close()

        try:
            _stdout, _stderr = p.communicate(timeout=10)  # limit

        except subprocess.TimeoutExpired:
            logger.info('timeout!!!')
            p.kill()
            p.terminate()
            os.system(warm_bug)
            return NR_iters, rejsteps, totalsteps, restartnum, params_capval, params_indval, params_resval, params_conval, converge

        except Exception as e:
            logger.info(f'Exception: {e}')
            return NR_iters, rejsteps, totalsteps, restartnum, params_capval, params_indval, params_resval, params_conval, converge
        
        ret_code = p.returncode

    lines = _stdout.split("\n")

    #
    for line in lines:
        #
        if 'Pseudotran' in line:
            converged_state = line.split(" ")[1]
            logger.info(converged_state)

        #
        if 'Total iterNum:' in line:
            if converged_state == "converged":
                NR_iters = int(line.split(":")[1].split("\t")[0])
                converge = True
        
        #
        if 'Total stepNum:' in line:
            if converged_state == "converged":
                totalsteps = int(line.split(":")[-1])
                converge = True
        
        #
        if 'Rejected (not converged) stepNum:' in line:
            if converged_state == "converged":
                rejsteps = int(line.split()[-1])
                converge = True
        
        #
        if 'Restart Num:' in line:
            restartnum = int(line.split(":")[2].split("\t")[0])

    return NR_iters, rejsteps, totalsteps, restartnum, params_capval, params_indval, params_resval, params_conval, converge


def readMsg(file_path, mutitraj_mode, folder_path, params_pta=None, np_type=np.float32):
    
    # 
    timepoints = []
    voltages = []
    residuals = []
    iters_ = []
    ret_iter = 0

    with open(file_path, "r", encoding='utf-8') as f:
        strs = f.readline()
        while len(strs) != 0:
            tmp_x = []
            strs = strs.split()
            try:
                if 'rhs' in strs[0]:
                    for itr in range(len(strs)):
                        if itr == 0:
                            continue
                        if itr == 1:
                            timepoints.append(float(strs[itr]))
                        elif itr == len(strs) - 2:
                            residuals.append(float(strs[itr]))
                        elif itr == len(strs) - 1:
                            iters_.append(float(strs[itr]))
                        else:
                            if float(strs[itr]) != float(strs[itr]): #
                                break
                            tmp_x.append(float(strs[itr]))
                    if len(tmp_x) != 0: #
                        voltages.append(tmp_x)
            except Exception as e: #
                pass
            
            if strs and 'total_iters' in strs[0]: #
                ret_iter = int(strs[1])

            strs = f.readline()    
    
    #
    if len(timepoints) != len(voltages):
        # timepoints = timepoints[:-1]
        timepoints = timepoints[:len(voltages)] #
    elif len(voltages) != 1 and len(voltages[len(voltages) - 1]) != len(voltages[len(voltages) - 2]):
        voltages = voltages[:-1]
        timepoints = timepoints[:-1]
    if len(voltages) != len(residuals):
        residuals = residuals[:-1]
    
    #
    if ret_iter == 0 and len(voltages) > 502 or ret_iter >= 2000 and len(voltages) > 502:
        timepoints = timepoints[:501]
        voltages = voltages[:501]
        residuals = residuals[:501]
    
    # 
    voltages = np.array(voltages).astype(np_type)
    timepoints = np.array(timepoints).astype(np_type)
    residuals = np.array(residuals).astype(np_type)
    iters_ = np.array(iters_).astype(np_type)

    #
    timepoints = timepoints.reshape(-1, 1)
    xNorm1 = np.linalg.norm(voltages, 1, 1).reshape(-1, 1)  #
    xNorm2 = np.linalg.norm(voltages, 2, 1).reshape(-1, 1)  #
    xNorm3 = np.linalg.norm(voltages, 3, 1).reshape(-1, 1)  #
    xVar = np.var(voltages, axis=1).reshape(-1, 1) #
    xMean = np.mean(voltages, axis=1).reshape(-1, 1)  #

    Xscaler = preprocessing.StandardScaler()  #
    yscaler1 = preprocessing.StandardScaler()
    yscaler2 = preprocessing.StandardScaler()
    yscaler3 = preprocessing.StandardScaler()
    yscaler4 = preprocessing.StandardScaler()
    yscaler5 = preprocessing.StandardScaler()

    Xscaler.fit(timepoints)  #
    yscaler1.fit(xNorm1)
    yscaler2.fit(xNorm2)
    yscaler3.fit(xNorm3)
    yscaler4.fit(xMean)
    yscaler5.fit(xVar)

    timepoints1 = Xscaler.transform(timepoints)
    xNorm11 = yscaler1.transform(xNorm1)
    xNorm21 = yscaler2.transform(xNorm2)
    xNorm31 = yscaler3.transform(xNorm3)
    xMean1 = yscaler4.transform(xMean)
    xVar1 = yscaler5.transform(xVar)

    timepoints1 = torch.from_numpy(timepoints1).reshape(-1)
    xMean1 = torch.from_numpy(xMean1).reshape(1, -1)
    xNorm11 = torch.from_numpy(xNorm11).reshape(1, -1)
    xNorm21 = torch.from_numpy(xNorm21).reshape(1, -1)
    xNorm31 = torch.from_numpy(xNorm31).reshape(1, -1)
    xVar1 = torch.from_numpy(xVar1).reshape(1, -1)

    iters_ = torch.from_numpy(iters_)
    residuals = torch.from_numpy(residuals)

    # 创建一个字典，将标识符映射到相应的张量
    tensor_dict = {'mean': xMean1, 'norm1': xNorm11, 'norm2': xNorm21, 'norm3': xNorm31, 'var': xVar1}
    ret_voltages = torch.tensor([])
    for tensor_identifier in mutitraj_mode:
        if tensor_identifier in tensor_dict:
            selected_tensor = tensor_dict[tensor_identifier]
            ret_voltages = torch.cat([ret_voltages, selected_tensor], dim=0)
        else:
            print(f'Unknown tensor identifier: {tensor_identifier}')
            exit(1)

    #
    if params_pta is not None:
        with open(file_path, "a", encoding='utf-8') as f:
            f.write(f'\nnew_capval {"{:.10f}".format(params_pta[0])}\n')
            f.write(f'new_indval {"{:.10f}".format(params_pta[1])}\n')
            f.write(f'new_resval {"{:.10f}".format(params_pta[2])}\n')
            f.write(f'new_conval {"{:.10f}".format(params_pta[3])}\n')

        #
        source_file = file_path
        destination_folder = folder_path
        new_file_name = "traj_" + str(len(os.listdir(destination_folder)) + 1) + '.txt'
        destination_file = os.path.join(destination_folder, new_file_name)
        shutil.move(source_file, destination_file)

    return timepoints1, ret_voltages, residuals, ret_iter


# if __name__ == '__main__':
#     control([0.0001, 1, 0, 0], [0,2,3,0,0,10],None,'wspice1.exe','other\\voter25.sp')
