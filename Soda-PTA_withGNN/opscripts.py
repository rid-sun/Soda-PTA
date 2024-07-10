import os
import sys
import subprocess

args = ['python run.py --isall=True --netlist=\'bjtff.sp\' --multraj=\'mean\' --linearlayers=\'32_32\' --act=\'softplus\' --fit_loss=0 --fit_lr=0.01 --fit_precision=1.0 --earlystop=True --up_loss=1 --up_lr=0.1  --up_optim=0 --is_clip=True --clipval=1.823 --dtype_32=False --pta_mode=2 --isgnn=0', \
        'python run.py --isall=True --netlist=\'bjtff.sp\' --multraj=\'mean\' --linearlayers=\'32_32\' --act=\'softplus\' --fit_loss=0 --fit_lr=0.01 --fit_precision=1.0 --earlystop=True --up_loss=1 --up_lr=0.1  --up_optim=0 --is_clip=True --clipval=1.823 --dtype_32=False --pta_mode=2 --isgnn=1']
dir = ['result\\DPTA', 'result\\DPTA']

for idx, arg in enumerate(args):
    print(arg)
    print('begin')
    try:
        # 
        ret = subprocess.run(arg, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True,text=True)
    except Exception as e:
        pass
    print('end')
    
    # 
    _stderr = ret.stderr
    _stdout = ret.stdout

    # 
    err_file_path = os.path.join(dir[idx], "error.log")
    out_file_path = os.path.join(dir[idx], "stdout.log")
    with open(err_file_path, 'w', encoding='utf-8') as err_file:
        if _stderr is not None:
            err_file.write(_stderr)
    with open(out_file_path, 'w', encoding='utf-8') as out_file:
        if _stdout is not None:
            out_file.write(_stdout)