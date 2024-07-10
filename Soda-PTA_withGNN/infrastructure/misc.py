import logging
import os
import matplotlib.pyplot as plt
import numpy as np


def create_path(path): 
    try:
        if not os.path.exists(path):
            os.makedirs(path, exist_ok=True)
        #
        print("Directory '%s' created successfully" % (path))
    except OSError as error:
        print("Directory '%s' can not be created" % (path))
    #
    
def get_logger(logpath, displaying=True, saving=True, debug=False):
    logger = logging.getLogger(logpath)
    if debug:
        level = logging.DEBUG
    else:
        level = logging.INFO
    logger.setLevel(level)
    if saving:
        info_file_handler = logging.FileHandler(logpath, mode="a")
        info_file_handler.setLevel(level)
        logger.addHandler(info_file_handler)
    # if displaying:
    #     console_handler = logging.StreamHandler()
    #     console_handler.setLevel(level)
    #     logger.addHandler(console_handler)

    return logger

def stop_logger(logger):
    logger.handlers.clear()
    logging.shutdown()

def plot_train_loss(path, epoch, train_loss, netlist):
    if not os.path.exists(path + '/loss/'):
        os.mkdir(path + '/loss/')
    plt.figure()
    plt.plot(train_loss, color='blue', marker='o')
    plt.title(netlist + ' train loss')
    plt.xlabel('epochs')
    plt.ylabel('loss')
    plt.savefig(path + '/loss/' + str(epoch) + '.png')
    plt.close()

def plot_img_fit(path, gen, std, times, idx, netlist):
    if not os.path.exists(path + '/stepno/'):
        os.mkdir(path + '/stepno/')
        os.mkdir(path + '/timepoints/')
    for itr in range(std.shape[0]):
        plt.figure()
        plt.plot(np.arange(0, std.shape[1]), gen[:, itr], label='gen', color='blue', marker='o')
        plt.plot(np.arange(0, std.shape[1]), std[itr, :], label='std', color='green', marker='x')
        plt.title(netlist + ' Fit Process')
        plt.xlabel('stepno')
        plt.ylabel('voltages(Norm)')
        plt.legend()
        plt.savefig(path + '/stepno/' + str(idx) + '_' + str(itr) + '.png')
        plt.close()

        plt.figure()
        plt.plot(times, gen[:, itr], label='gen', color='blue', marker='o')
        plt.plot(times, std[itr, :], label='std', color='green', marker='x')
        plt.title(netlist + ' Fit Process')
        plt.xlabel('timepoints')
        plt.ylabel('voltages(Norm)')
        plt.legend()
        plt.savefig(path + '/timepoints/' + str(idx) + '_' + str(itr) + '.png')
        plt.close()

