import os
from collections import defaultdict

def expand_subckt(node_table, flatten_netlist, subckt_define, subckt_name, numparams, device):
    subckt = subckt_define[subckt_name]
    subckt_numparams = subckt[0]
    for sub_device, sub_device_numparams in subckt[1].items():
        if sub_device[0].upper() == 'X':
            # 
            new_numparams = []
            for con in sub_device_numparams[0]:
                if con == "0":
                    new_numparams.append("0")
                    continue
                if con in subckt_numparams:
                    index = subckt_numparams.index(con)
                    new_numparams.append(str(numparams[index]))
                    node_table.add(str(numparams[index]))
                else:
                    newnode = device + '.' + con
                    new_numparams.append(newnode)
                    node_table.add(newnode)
            expand_subckt(node_table, flatten_netlist, subckt_define, sub_device_numparams[1], new_numparams, device + '.' + sub_device)
        else:
            newname = sub_device[0] + '.' + device + '.' + sub_device
            new_numparams = []
            for con in sub_device_numparams:
                if con == "0":
                    new_numparams.append("0")
                    continue
                if con in subckt_numparams:
                    index = subckt_numparams.index(con)
                    new_numparams.append(str(numparams[index]))
                    node_table.add(str(numparams[index]))
                else:
                    newnode = device + '.' + con
                    new_numparams.append(newnode)
                    node_table.add(newnode)
            flatten_netlist.update({newname: new_numparams})


def get_netlist(cir_path):
    
    # 
    tmp_netlist = {}
    flatten_netlist = {}
    final_netlist = {}
    subckt_define = {}
    node_table = {'0'}

    # 
    is_control = 0
    is_subckt = 0

    # 1. First pass through the netlist, adding definitions 
    # of subcircuits and corresponding netlist statements.
    with open(cir_path, 'r', encoding='utf-8') as circuit:
        content = circuit.readlines()
        # 
        for i, current_line in enumerate(content):
            if i == 0:  # 
                continue
            current_line = current_line.strip()
            if len(current_line) == 0:
                continue
            c = current_line[0].upper()
            # 
            if c == '*' or c == '+':
                continue
            if c == '.':
                # is .control
                if current_line.split()[0].upper() == ".CONTROL":
                    is_control = 1
                if current_line.split()[0].upper() == ".ENDC\n":
                    is_control = 0
                # is subckt
                if current_line.split()[0].upper() == ".SUBCKT":
                    is_subckt = 1
                    subckt_list = current_line.split()
                    subckt_name = subckt_list[1]
                    subckt_define.update({subckt_name: [subckt_list[2: ], {}]})
                if current_line.split()[0].upper() == ".ENDS":
                    is_subckt = 0
                if current_line.split()[0].upper() == ".INC" or current_line.split()[0].upper() == ".INCLUDE":
                    if current_line.split()[1].startswith("../"):
                        inc_file_path = cir_path.replace(cir_path.split('/')[-2] + '/' + cir_path.split('/')[-1], '')\
                                        + current_line.split()[1].strip("'").strip('"').lstrip("../")
                    if current_line.split()[1].startswith("./"):
                        inc_file_path = cir_path.replace(cir_path.split('/')[-1], '')\
                                        + current_line.split()[1].strip("'").strip('"').lstrip("./")
                    else:
                        inc_file_path = cir_path.replace(cir_path.split('/')[-1], '')\
                                        + current_line.split()[1].strip("'").strip('"')
                    # 
                    # 
                    # 
                    net = get_netlist(inc_file_path)
                    tmp_netlist.update(net)
                continue

            # 
            if is_control == 1:
                continue

            if c == 'B':  # 
                b_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({b_list[0]: [b_list[1], b_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({b_list[0]: [b_list[1], b_list[2]]})
                continue
            if c == 'C':  # 
                c_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({c_list[0]: [c_list[1], c_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({c_list[0]: [c_list[1], c_list[2]]})
                continue
            if c == 'D':  # 
                d_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({d_list[0]: [d_list[1], d_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({d_list[0]: [d_list[1], d_list[2]]})
                continue
            if c == 'E':  # 
                e_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({e_list[0]: [e_list[1], e_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({e_list[0]: [e_list[1], e_list[2]]})
                continue
            if c == 'F':  # 
                f_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({f_list[0]: [f_list[1], f_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({f_list[0]: [f_list[1], f_list[2]]})
                continue
            if c == 'G':  # 
                g_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({g_list[0]: [g_list[1], g_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({g_list[0]: [g_list[1], g_list[2]]})
                continue
            if c == 'H':  # 
                h_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({h_list[0]: [h_list[1], h_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({h_list[0]: [h_list[1], h_list[2]]})
                continue
            if c == 'I':  # 
                i_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({i_list[0]: [i_list[1], i_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({i_list[0]: [i_list[1], i_list[2]]})
                continue
            if c == 'J':  # 
                j_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({j_list[0]: [j_list[1], j_list[2], j_list[3]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({j_list[0]: [j_list[1], j_list[2], j_list[3]]})
                continue
            if c == 'K':  # 
                print("not yet implemented")
                continue
            if c == 'L':  # 
                l_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({l_list[0]: [l_list[1], l_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({l_list[0]: [l_list[1], l_list[2]]})
                continue
            if c == 'M':  # 
                m_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({m_list[0]: [m_list[1], m_list[2], m_list[3], m_list[4]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({m_list[0]: [m_list[1], m_list[2], m_list[3], m_list[4]]})
                continue
            if c == 'N':
                print("not yet implemented")
                continue
            if c == 'O':
                print("not yet implemented")
                continue
            if c == 'P':
                print("not yet implemented")
                continue
            if c == 'Q':  # 
                q_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({q_list[0]: [q_list[1], q_list[2], q_list[3]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({q_list[0]: [q_list[1], q_list[2], q_list[3]]})
                continue
            if c == 'R':  # 
                r_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({r_list[0]: [r_list[1], r_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({r_list[0]: [r_list[1], r_list[2]]})
                continue
            if c == 'S':  # 
                print("not yet implemented")
                continue
            if c == 'T':
                print("not yet implemented")
                continue
            if c == 'U':
                print("not yet implemented")
                continue
            if c == 'V':
                v_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({v_list[0]: [v_list[1], v_list[2]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({v_list[0]: [v_list[1], v_list[2]]})
                continue
            if c == 'W':  # 
                print("not yet implemented")
                continue
            if c == 'X':  # 
                x_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({x_list[0]: [x_list[1: -1], x_list[-1]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({x_list[0]: [x_list[1: -1], x_list[-1]]})
                continue
            if c == 'Y':
                print("not yet implemented")
                continue
            if c == 'Z':  #
                z_list = current_line.split()
                # 
                if is_subckt == 0:
                    tmp_netlist.update({z_list[0]: [z_list[1], z_list[2], z_list[3]]})
                # 
                if is_subckt == 1:
                    subckt_define[subckt_name][1].update({z_list[0]: [z_list[1], z_list[2], z_list[3]]})
                continue

    # 2. Second pass through the netlist, forming the final netlist file.
    for device, numparams in tmp_netlist.items():
        if device[0].upper() == 'X':
            expand_subckt(node_table, flatten_netlist, subckt_define, numparams[1], numparams[0], device)
        else:
            flatten_netlist.update({device: numparams})
            for node in numparams:
                node_table.add(node)

    # 3. Third pass through the netlist, reassigning named node numbers
    #  in a reordered sequence.
    node_table_list = list(node_table)
    for device, numparams in flatten_netlist.items():
        new_numparams = []
        for con in numparams:
            new_numparams.append(node_table_list.index(con))
        final_netlist.update({device: new_numparams})
    

    return final_netlist, flatten_netlist

