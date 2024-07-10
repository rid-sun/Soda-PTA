import numpy as np

class Config(object):
        
    def _parse(self, kwargs):
        for k,v in kwargs.items():
            setattr(self, k, v)
        #
    
    def _print(self):
        print('=================================')
        print('*', self.config_name)
        print('---------------------------------')
        
        for k, v in self.__class__.__dict__.items():
            if not k.startswith('_'):
                print('-', k, ':', getattr(self, k))
        print('=================================')
        
        
    def __str__(self,):
        
        buff = ""
        buff += '=================================\n'
        buff += ('*'+self.config_name+'\n')
        buff += '---------------------------------\n'
        
        for k, v in self.__class__.__dict__.items():
            if not k.startswith('_'):
                buff += ('-' + str(k) + ':' + str(getattr(self, k))+'\n')
            #
        #
        buff += '=================================\n'
        
        return buff    
    

class SodaPTA_Config(Config):

    # control options
    wspice = 'wspice1.exe'
    isall = True            # whether all netlists are included [True, False]
    epochs = 49              # pta hyperparameters optimization iterations
    netlist = 'bjtff.sp'     # netlist
    multraj = "mean"         # selection of multi-curve combinations such as mean, norm2, and norm3.
    pta_input_dims = 1       # input dims of PTA model [inner control]
    pta_output_dims = 2      # output dims of PTA model [inner control]
    multraj_mode = ['mean']  # muti-curve types [inner control]

    # Neural ODE setup
    linearlayers = "32_32"   # FNN structure
    act = "softplus"         # activation func [relu, sigmoid, tanh]
    fit_loss = 0             # loss func [0:SmoothL1Loss, 1:MSELoss]
    fit_input_dims = 4       # input dims [inner control]
    fit_output_dims = 1      # output dims [inner control]
    fit_precision = 1.0      # fitting accuracy threshold
    fit_lr = 0.01            # initial learning rate during fitting
    fit_steps = 1000         # maximum epoch during curve fitting
    earlystop = True        # is earlystop [True, False]

    # pta hyperparameters update
    up_optim = 0             # optimizer selection [0, 1, 2]
    up_loss = 1              # target loss func [0, 1, 2]
    up_lr = 0.1              # learning rate during update
    is_clip = True           # is gradient clip [True, False]
    clipval = 1.823          # clip value

    # pta options
    pta_mode = 0             # pta algorithm type [1 PPTA, 2 DPTA, 3 CEPTA, 4 RampingPTA]
    bemethod = 2             ##########################################################
    algorithm = 2            #
    embed = 4                #
    tauramp = 0.1            #
    method = 0               #
    maxstep = 10.            #                inner control
    capval = 1e-4            #
    indval = 1               #
    resval = 100             #
    conval = 1e-5            #
    end_indices = 2          #
    params = [capval, indval, resval, conval]
    option = [bemethod, algorithm, embed, tauramp, method, maxstep]
                             #########################################################
    ##

    # run device config
    deviceid = 'cuda:0'
    device = None
    dtype_32 = False
    npType = None

    # GCN setup
    gcn_configs_path = 'configs/alps_GCN.json'
    gcn_out_dim = 3
    gcn_hidden_dim = 64
    gcn_L = 4
    gcn_readout = "sum"
    gcn_dropout = 0.1

    # GNN training[0]/testing[1] mode
    isgnn = 0
    
    
    def __init__(self,):
        super(SodaPTA_Config, self).__init__()
        self.config_name = 'SodaPTA_Config'
                
        