import dgl
import numpy as np
import torch
from .convert import get_netlist


def creat_graph(netlist_path, dtype="float"):

    # step1: parser netlist
    final_netlist, flatten_netlist = get_netlist(netlist_path)
   
    # step2: summary
    all_nodes = []
    for device_name, nodes in flatten_netlist.items():
        for node in nodes:
            if node in all_nodes:
                continue
            else:
                all_nodes.append(node)
    all_nodes.sort()
    # print("all_nodes:",all_nodes)

    # step3: create graph
    graph = dgl.DGLGraph()
    # 3.1 add nodes
    graph.add_nodes(len(all_nodes))  # 添加了len(all_nodes)个节点,编号从0到len(all_nodes)-1

    # 
    n_feat_dict = {}
    n_feat = []
    e_feat = []
    e_feat_coding_4 = ['01', '02', '03', '12', '13', '23']
    e_feat_coding_3 = ['01', '02', '12']

    index_map_node = {
        'B': 0,  'C': 1,  'D': 2,  'E': 3,  'F': 4,  
        'G': 5,  'H': 6,  'I': 7,  'J': 8,  'L': 9, 
        'M': 10, 'Q': 11, 'R': 12, 'V': 13, 'Z': 14
    }
    index_map_edge = {
        'B': 0, 'C': 1, 'D': 2, 'E': 3, 'F': 4, 'G': 5,
        'H': 6, 'I': 7, 'J': 8, 'L': 11, 'M': 12, 'Q': 18,
        'R': 21, 'V': 22, 'Z': 23
    }
    # 3.2 Second pass through, obtaining node features 
    # (node features are the counts of various types of 
    # devices connected to each node).
    for device_name, nodes in flatten_netlist.items():
        device_type = device_name[0].upper()
        if device_type not in index_map_node:
            print(f"no implementation:{device_name}")
            continue
        index = index_map_node[device_type]
        history_nodes = []
        for node in nodes:
            if node not in n_feat_dict:
                one_n_feat = np.zeros(16, dtype=int)
                # 
                if node.upper() == '0' or node.upper() == 'GND':
                    one_n_feat[15] = 1

                if device_type in index_map_node:
                    one_n_feat[index] += 1
                
                n_feat_dict.update({node: one_n_feat})
                history_nodes.append(node)
            else:
                if node not in history_nodes:
                    if device_type in index_map_node:
                        n_feat_dict[node][index] += 1

                history_nodes.append(node)

                
    # 
    for key in sorted(n_feat_dict):
        n_feat.append(n_feat_dict[key])

    # 3.3 Third pass through, obtaining edge features.
    for device_name, nodes in flatten_netlist.items():
        device_type = device_name[0].upper()
        if device_type not in index_map_edge:
            print(f"no implementation:{device_name}")
            continue
        if device_type not in 'JMQZ':
            one_e_feat = np.zeros(26, dtype=int)
            index = index_map_edge[device_type]
            one_e_feat[index] = 1
            graph.add_edges(all_nodes.index(nodes[0]), all_nodes.index(nodes[1]))
            e_feat.append(one_e_feat)
            continue
        index_offset = 8    
       
        if device_type == 'J':
            index_offset = 8
        elif device_type == 'M':
            index_offset = 12
        elif device_name == 'Q':
            index_offset = 18
        elif device_name == 'Z':
            index_offset = 23
            
        if device_type in 'JQZ':
            for m, node1 in enumerate(nodes):
                for n, node2 in enumerate(nodes):
                    if m >= n or node1 == node2:
                        continue
                    one_e_feat = np.zeros(26, dtype=int)
                    one_e_feat[index_offset + e_feat_coding_3.index(str(m) + str(n))] = 1
                    graph.add_edges(all_nodes.index(node1), all_nodes.index(node2))
                    e_feat.append(one_e_feat)
     
        if device_type == 'M':
            for m, node1 in enumerate(nodes):
                for n, node2 in enumerate(nodes):
                    if m >= n or node1 == node2:
                        continue
                    one_e_feat = np.zeros(26, dtype=int)
                    one_e_feat[index_offset + e_feat_coding_4.index(str(m) + str(n))] = 1
                    graph.add_edges(all_nodes.index(node1), all_nodes.index(node2))
                    e_feat.append(one_e_feat)

        
    # 
    n_feat = torch.from_numpy(np.array(n_feat))
    if dtype == "double":
        graph.ndata['feat'] = n_feat.double()
    else:
        graph.ndata['feat'] = n_feat.float()

    # 
    e_feat = torch.from_numpy(np.array(e_feat))
    if dtype == "double":
        graph.edata['feat'] = e_feat.double()
    else:
        graph.edata['feat'] = e_feat.float()

    return graph

