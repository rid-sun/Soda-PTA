import time

import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
from torchdiffeq import odeint

from data.data import *
from infrastructure.misc import *

from .models import *


#################################
######## Soda-PTA Optimizer #####
#################################
class Soda_PTA_Optimizer(nn.Module):

    def __init__(self,
                 base_model,
                 pta_model,
                 fit_loss,
                 fit_steps,
                 fit_precision,
                 fit_lr,
                 earlystop,
                 up_lr,
                 up_optim,
                 up_loss,
                 is_clip,
                 clipval,
                 pta_initial_params,
                 device,
                 img_path,
                 netlist_path
                 ):

        super().__init__()

        self.device = device
        self.base_model = base_model.to(self.device)
        self.pta_model = pta_model.to(self.device)

        # Fitting-related
        self.fit_precision = fit_precision
        self.fit_steps = fit_steps
        self.fit_lr = fit_lr
        self.fit_loss = fit_loss
        self.earlystop = earlystop

        # Update-related
        self.up_lr = up_lr
        self.up_optim = up_optim
        self.up_loss = up_loss
        self.is_clip = is_clip
        self.clipval = clipval

        #
        self.pta_initial_params = pta_initial_params
        self.img_path = img_path
        self.netlist_path = netlist_path

        # counter
        self.epoch = 0

        # Initialize PTA model
        # self.setPTAModel(self.pta_initial_params)


    # Fitting process
    def tr_base_model(self, timepoints, voltages, logger, idx_epoch):
        
        # 
        optimizer_fit = optim.Adam([
            {'params': self.base_model.parameters(), 'lr': self.fit_lr, 'weight_decay': 0.001},
            {'params': self.pta_model.linear.bias, 'lr': self.fit_lr, 'weight_decay': 0.001}
        ])
        scheduler_fit = optim.lr_scheduler.LinearLR(optimizer_fit, start_factor=1, end_factor=0.1, total_iters=self.fit_steps//2)

        if self.fit_loss == 0:
            criterion = nn.SmoothL1Loss(beta=0.1, reduction='none')
        elif self.fit_loss == 1:
            criterion = nn.MSELoss()


        #
        need_parameters = list(self.base_model.parameters()) + \
                          [self.pta_model.linear.bias]

        #
        train_loss = []
        slownum=0
        preloss = 0

        for itr in range(self.fit_steps):
            
            optimizer_fit.zero_grad()

            fwd_soln = odeint(func=self, y0=voltages[:, 0], t=timepoints, method='euler')
            # fwd_soln.shape = [len(timepoints), voltages.shape[0]]

            for itr in range(voltages.shape[0]):
                if itr == 0:
                    loss = criterion(fwd_soln[:, itr], voltages[itr, :])
                else:
                    loss += criterion(fwd_soln[:, itr], voltages[itr, :])

            if self.fit_loss == 0:
                # flatten
                grads = torch.autograd.grad(loss, need_parameters, torch.ones_like(loss), allow_unused=True)
                for param, grad in zip(need_parameters, grads):
                    param.grad = grad
                # record
                logger.info(torch.sum(loss).item())
                train_loss.append(torch.sum(loss).item())
                t = torch.sum(loss).item()
            elif self.fit_loss == 1:
                loss.backward()
                # record
                logger.info(loss.item())
                train_loss.append(loss.item())
                t = loss.item()

            #
            optimizer_fit.step()
            scheduler_fit.step()

            #
            if self.earlystop is True:
                if abs(t - preloss) / (preloss + 0.00001) < 0.001:
                    slownum += 1
                    if slownum > 10:
                        break
                else:
                    slownum = 0
                preloss = t           

            if t < self.fit_precision:
                break
            #

        # # Plotting the loss value variation graph and the fitting curve graph.
        # plot_train_loss(self.img_path, idx_epoch, train_loss, self.netlist_path.split('/')[-1].split('.')[0])
        # plot_img_fit(self.img_path, fwd_soln.detach().cpu().numpy(), voltages.detach().cpu().numpy(), timepoints.detach().cpu().numpy(), idx_epoch, self.netlist_path.split('/')[-1].split('.')[0])
        

    # 
    def update(self, timepoints, voltages, residuals, NR_iters, logger, idx_epoch):

        self.epoch += 1

        #
        t_start = time.time()
        self.tr_base_model(timepoints, voltages, logger, idx_epoch)
        t_interval = time.time() - t_start
        logger.info(f'The {idx_epoch} fit use {t_interval}s.')

        # #
        # self.dt = timepoints[1:] - timepoints[:-1]

        #
        old_data = self.pta_model.linear.weight.data.detach().clone()
        if self.up_optim == 0:
            optimizer = optim.SGD([{'params': self.pta_model.linear.weight}], lr=self.up_lr)
        elif self.up_optim == 1:
            optimizer = optim.SGD([{'params': self.pta_model.linear.weight}],
                                lr=self.up_lr, momentum=0.9, nesterov=True)
        elif self.up_optim == 2:
            optimizer = optim.Adam([{'params': self.pta_model.linear.weight}], lr=self.up_lr)
        optimizer.zero_grad()

        #
        fwd_soln = odeint(func=self, y0=voltages[:, 0], t=timepoints, method='euler')

        #
        if self.up_loss == 0:
            for itr in range(voltages.shape[0]):
                if itr == 0:
                    loss = NR_iters * torch.sum(torch.abs(fwd_soln[:, itr])) + torch.sum(torch.abs(fwd_soln[1:, itr] - fwd_soln[:-1, itr]))
                else:
                    loss += NR_iters * torch.sum(torch.abs(fwd_soln[:, itr])) + torch.sum(torch.abs(fwd_soln[1:, itr] - fwd_soln[:-1, itr]))
        elif self.up_loss == 1:
            for itr in range(voltages.shape[0]):
                if itr == 0:
                    loss = NR_iters * (torch.sum(torch.abs(fwd_soln[:, itr])) + torch.sum(torch.abs(fwd_soln[1:, itr] - fwd_soln[:-1, itr])))
                else:
                    loss += NR_iters * (torch.sum(torch.abs(fwd_soln[:, itr])) + torch.sum(torch.abs(fwd_soln[1:, itr] - fwd_soln[:-1, itr])))

        loss.backward()

        # gradient clip
        if self.is_clip:
            nn.utils.clip_grad_norm_([self.pta_model.linear.weight], self.clipval)

        #
        optimizer.step()

        #
        with torch.no_grad():
            new_data = torch.where((self.pta_model.linear.weight.data >= np.log(1e-10)) & (self.pta_model.linear.weight.data <= np.log(1e20)), self.pta_model.linear.weight.data, old_data)
            self.pta_model.linear.weight.data = new_data.view_as(self.pta_model.linear.weight.data)
        
        new_params_pta = self.pta_model.linear.weight.data.reshape(-1)
        params = torch.exp(new_params_pta)
        logger.info('params_new: ' + str(params.detach().cpu().numpy()))

        return params.detach().cpu().numpy(), loss.item()


    def forward(self, t, state):
        with torch.set_grad_enabled(True):
            tmp = self.pta_model(state)
            tmp = self.base_model(tmp)
            tmp = tmp.reshape(-1)

        return -tmp


    # def save_model(self, save_path):
    #     torch.save(self.base_model.state_dict(), save_path)
    #     torch.save(self.pta_model.state_dict(), save_path)


    def setPTAModel(self, params):
       self.pta_model.set_pta_params(params)


    def setBaseModel(self, base_model):
        self.base_model = base_model.to(self.device)
