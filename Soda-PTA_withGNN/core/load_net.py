"""
    Utility file to select GraphNN model as
    selected by the user
"""


from . import gcn_net
# from nets.ckt.gat_net import GATNet


def GCN(net_params):
    return gcn_net.GCNNet(net_params)


# def GAT(net_params):
#     return GATNet(net_params)


def gnn_model(MODEL_NAME, net_params):
    models = {
        'GCN': GCN,
        # 'GAT': GAT
    }

    return models[MODEL_NAME](net_params)