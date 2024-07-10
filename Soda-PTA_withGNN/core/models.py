import torch
import torch.nn as nn
from collections import OrderedDict

class Net(nn.Module):
    def __init__(self, layers, act):
        super(Net, self).__init__()

        self.layers = layers
        
        layers_dict = OrderedDict()
        for l in range(len(self.layers)-2):
            in_dim = layers[l]
            out_dim = layers[l+1]
            
            layers_dict['linear'+str(l+1)] = nn.Linear(in_dim, out_dim)
            
            if act=='relu':
                layers_dict['act'+str(l+1)] = nn.ReLU()
            elif act=='tanh':
                layers_dict['act'+str(l+1)] = nn.Tanh()
            elif act=='leakyRelu':
                layers_dict['act'+str(l+1)] = nn.LeakyReLU()
            elif act=='softplus':
                layers_dict['act'+str(l+1)] = nn.Softplus()
            elif act=='elu':
                layers_dict['act'+str(l+1)] = nn.ELU()
            else:
                raise Exception('Error: unknow activation function.')
            #
            
        #
        
        in_dim = self.layers[-2]
        out_dim = self.layers[-1]
        
        layers_dict['linear'+str(len(self.layers)-1)] = nn.Linear(in_dim, out_dim)
        
        self.net = nn.Sequential(layers_dict)

        self.initWeights(act)
        
    def forward(self, X):
        return self.net(X)
    
    def initWeights(self, act):
        # 
        for m in self.net.modules():
            if isinstance(m, nn.Linear):
                if act == 'leakyRelu' or act == 'relu':
                    nn.init.kaiming_uniform_(m.weight, mode='fan_in', nonlinearity='leaky_relu' if act == 'leakyRelu' else 'relu')
                else:
                    nn.init.normal_(m.weight, mean=0, std=0.1)
                if m.bias != None:
                    nn.init.zeros_(m.bias)


class PTA(nn.Module):
    def __init__(self, in_dim, out_dim):
        super(PTA, self).__init__()
        self.linear = nn.Linear(in_dim, out_dim)
        # self.act = nn.LeakyReLU() # 
        self.act = nn.Softplus()
        # self.act = nn.Tanh()

        self.initWeights()
        
    def forward(self, X):
        X = X.reshape(-1, 1)
        tmp = self.linear(X)
        # return self.act(tmp)
        return tmp

    def set_pta_params(self, params):
        params = torch.tensor(params, dtype=self.linear.weight.data.dtype).to(self.linear.weight.data.device)
        params = torch.log(params) # 
        # params = torch.log(1 + params) # 
        self.linear.weight.data = params.view_as(self.linear.weight.data)
    
    def initWeights(self):
        if self.linear.bias != None:
            nn.init.constant_(self.linear.bias, val=0)


def get_fcnn_regressor(in_dim, out_dim, linearlayers, act='softplus'):

    substrings = linearlayers.split("_")
    linears = [int(substring) for substring in substrings]
    layers = [in_dim] + linears + [out_dim]
    
    return Net(layers, act)
