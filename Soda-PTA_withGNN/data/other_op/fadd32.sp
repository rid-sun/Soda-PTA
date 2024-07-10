fadd32.sp SPICE FILE
.model nenh nmos  level = 2    vto = 0.62249   kp = 6.32664e-05   gamma = 0.639243    phi = 0.31    cgso = 2.89e-10   cgdo = 2.89e-10    rsh = 60   cj = 0.000327    mj = 1.067   cjsw = 1.74e-10   mjsw = 0.195    tox = 2.25e-08   nsub = 1.066e+16    nss = 3e+10   nfs = 4.55168e+12   tpg = 1    xj = 9e-07   ld = 0   uo = 1215.74    ucrit = 174667   uexp = 0.0461235    vmax = 177269   neff = 4.6883    delta = 0
.model penh pmos  level = 2    vto = -0.63025   kp = 2.63544e-05   gamma = 0.618101    phi = 0.541111    cgso = 3.35e-10   cgdo = 3.35e-10    rsh = 150   cj = 0.000475    mj = 0.341   cjsw = 2.23e-10   mjsw = 0.307    tox = 2.25e-08   nsub = 6.57544e+16    nss = 3e+10   nfs = 1.66844e+11   tpg = -1    xj = 1.12799e-07   ld = 3e-08   uo = 361.941    ucrit = 637449   uexp = 0.0888696    vmax = 63253.3   neff = 0.64354    delta = 0
.subckt cnand 1 2 3 4 5
ml1 6 1 5 5 nenh l=3e-06 w=1.4e-05  as=5.6e-11 ad=5.6e-11 ps=3.6e-05 pd=3.6e-05 
ml2 4 1 3 4 penh l=3e-06 w=2.8e-05  as=1.12e-10 ad=1.12e-10 ps=6.4e-05 pd=6.4e-05 
ml3 6 2 3 5 nenh l=3e-06 w=1.4e-05  as=5.6e-11 ad=5.6e-11 ps=3.6e-05 pd=3.6e-05 
ml4 4 2 3 4 penh l=3e-06 w=2.8e-05  as=1.12e-10 ad=1.12e-10 ps=6.4e-05 pd=6.4e-05 
.ends cnand
.subckt halfadd 1 2 3 4 5  6
xlt1 1 2 3 5 6 cnand
xlt2 3 2 8 5 6 cnand
xlt3 1 3 10 5 6 cnand
xlt4 10 8 4 5 6 cnand
.ends halfadd
.subckt fulladd 1 2 3 4 5  6 7
xha1 2 3 8 9 6  7  halfadd
xha2 9 1 16 5 6  7  halfadd
xna3 8 16 4 6 7 cnand
clt1 5 7 5e-14
clt2 4 7 5e-14
.ends fulladd
xful1 3 4 5 6 7  1 0 fulladd
xful2 6 24 25 26 27  1 0 fulladd
xful3 26 44 45 46 47  1 0 fulladd
xful4 46 64 65 66 67  1 0 fulladd
xful5 66 84 85 86 87  1 0 fulladd
xful6 86 104 105 106 107  1 0 fulladd
xful7 106 124 125 126 127  1 0 fulladd
xful8 126 144 145 3 146  1 0 fulladd
cout1 7 0 5e-14
cout2 27 0 5e-14
cout3 47 0 5e-14
cout4 67 0 5e-14
cout5 87 0 5e-14
cout6 107 0 5e-14
cout7 127 0 5e-14
cout8 146 0 5e-14
cout9 46 0 5e-14
Va8 144 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va7 124 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va6 104 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va5 84 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va4 64 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va3 44 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va2 24 0 pwl (0 0 3e-08 0 3.1e-08 5 4e-08 5  4.1e-08 0 7e-08 0 7.1e-08 5 8e-08 5  8.1e-08 0 1.1e-07 0 )
Va1 4 0 pwl (0 0 2e-08 0 2.1e-08 5 4e-08 5  4.1e-08 0 6e-08 0 6.1e-08 5 8e-08 5  8.1e-08 0 1e-07 0 1.01e-07 5 1.2e-07 5  )
Vb8 145 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb7 125 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb6 105 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb5 85 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb4 65 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb3 45 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb2 25 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
Vb1 5 0 pwl (0 0 1e-08 0 1.1e-08 5 4e-08 5  4.1e-08 0 5e-08 0 5.1e-08 5 8e-08 5  8.1e-08 0 9e-08 0 9.1e-08 5 1.2e-07 5  )
VVDD 1 0 5
*.print TRAN v(7) v(27) v(47) v(67) v(87) v(107) v(127) v(146) v(3) v(4) v(24) v(44) v(64) v(84) v(104) v(124) v(144) v(5) v(25) v(45) v(65) v(85) v(105) v(125) v(145) 
.options limpts=50000 itl5=50000
.op
*.TRAN 1e-09 1e-07
.end
