ring11.sp SPICE FILE
.subckt inv 1 4 5
M1 2 1 5 5 penh l=1e-06 w=3.33e-05   as=0 ad=0 ps=0 pd=0 
M2 2 1 0 0 nenh l=1e-06 w=5e-06   as=0 ad=0 ps=0 pd=0 
M3 4 1 3 0 nenh l=1e-06 w=2e-05   as=0 ad=0 ps=0 pd=0 
M4 3 2 0 0 nenh l=1e-06 w=5e-06   as=0 ad=0 ps=0 pd=0 
Q1 5 2 4 0 NPNBJT 
Q2 4 3 0 0 NPNBJT 
CL 4 0 1e-12
.ends inv
x01 1 2 25  inv
x02 2 3 25  inv
x03 3 4 25  inv
x04 4 5 25  inv
x05 5 6 25  inv
x06 6 7 25  inv
x07 7 8 25  inv
x08 8 9 25  inv
x09 9 10 25  inv
x10 10 11 25  inv
x11 11 1 25  inv
.MODEL NPNBJT NPN    is = 4.8e-18   bf = 100   nf = 1    ikf = 0.00096    br = 8   nr = 1    ikr = 0.02    rb = 200    re = 15   rc = 150    cje = 1.5e-14   mje = 0.5    tf = 2e-11   xtf = 100   vtf = 3    itf = 0.04   tr = 4e-10    cjc = 2e-14   mjc = 0.5    cjs = 8e-14    mjs = 0.5  
.model nenh nmos  level = 2    vto = 0.626634   kp = 5.28837e-05   gamma = 0.287822    phi = 0.880849     cgso = 2.89e-10   cgdo = 2.89e-10    rsh = 68   cj = 0.000345    mj = 0.916   cjsw = 1.74e-10   mjsw = 0.195    tox = 2.25e-08   nsub = 9.31807e+16    nss = 3e+10   nfs = 0.01   tpg = 1    xj = 9e-07   ld = 0   uo = 511.152    ucrit = 200   uexp = 0.0161578    vmax = 57064.3   neff = 0.261026     delta = 3.02002
.model penh pmos  level = 2    vto = -0.617486   kp = 1.93032e-05   gamma = 0.527415    phi = 0.85     cgso = 3.35e-10   cgdo = 3.35e-10    rsh = 154   cj = 0.000421    mj = 0.3285   cjsw = 2.23e-10   mjsw = 0.307    tox = 2.25e-08   nsub = 8.55587e+14    nss = 3e+10   nfs = 1e+11   tpg = -1    xj = 5.03159e-09   ld = 6e-08   uo = 33.9632    ucrit = 98755.5   uexp = 0.141605    vmax = 6786.31   neff = 12.182     delta = 6.01138
Vz25 25 0 6 
.print tran v(1) v(11) 
.options acct
.TRAN 2e-10 6e-08
.end
