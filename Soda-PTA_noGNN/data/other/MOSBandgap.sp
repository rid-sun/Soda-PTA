BANDGAP REFERENCED BIASING 2004.3.4 Y.I
*
vdd 12 0 dc 5
qd1 0 0 1 bjtp
qd2 0 0 2 bjtp 8
qd3 0 0 3 bjtp 8
*r 2 4 6.5k
*rxl 3 13 78.0k
r 2 4 5k
rxl 3 13 66k
*rstartup 7 12 10Meg
m1 5 5 1 0 NMOS L=1.6u W=10u
m2 6 5 4 0 NMOS L=1.6u W=10u
m3 7 7 5 0 NMOS L=1.6u W=10u
m4 8 7 6 0 NMOS L=1.6u W=10u
m5 7 8 9 12 PMOS L=1.6u W=10u
m6 8 8 10 12 PMOS L=1.6u W=10u
m7 9 10 12 12 PMOS L=1.6u W=10u
m8 10 10 12 12 PMOS L=1.6u W=10u
m9 11 10 12 12 PMOS L=1.6u W=10u
m10 13 8 11 12 PMOS L=1.6u W=10u
*
*.op
*
*BAKER, LI, BOYCE
*
.model bjtp pnp (is=1E-15)
.model PMOS PMOS (LEVEL=1 VTO=-0.8 GAMMA=0.4 PHI=0.58 NSUB=1E15 NSS 1E10 TPG=1
+ KP=50E-6 TOX=40E-9 LAMBDA=0.01 LD=2.5E-7 UO=580
+ RD=40 RS=40 RSH=50 CGBO=4E-10 CGDO=4E-10 CGSO=4E-10 PB=0.8 
+ MJ=0.5 MJSW=0.5 CJ=3E-4 CJSW=2.5E-10 IS=1E-14 JS=1E-8 FC=0.5)
.model NMOS NMOS (LEVEL=1 VTO=0.8 GAMMA=0.4 PHI=0.58 NSUB=1E15 NSS 1E10 TPG=1
+ KP=50E-6 TOX=40E-9 LAMBDA=0.01 LD=2.5E-7 UO=580
+ RD=40 RS=40 RSH=50 CGBO=4E-10 CGDO=4E-10 CGSO=4E-10 PB=0.8 
+ MJ=0.5 MJSW=0.5 CJ=3E-4 CJSW=2.5E-10 IS=1E-14 JS=1E-8 FC=0.5)
*
*JOHNS&MARTIN
*
*.model PMOS PMOS (LEVEL=2 VTO=-0.9 UO=175 TOX=1.8E-8 LD=6E-8 GAMMA= 0.8 
*+ NSUB=7.5E16 PHI=0.7 PB=0.9 CJ=4.0E-4 CJSW=2.8E-10 MJ=0.5 MJSW=0.3)
*.model NMOS NMOS (LEVEL=2 VTO=0.7 UO=500 TOX=1.8E-8 LD=6E-8 GAMMA=0.5 
*+ NSUB=3E16 PHI=0.7 PB=0.9 CJ=2.5E-4 CJSW=2.0E-10 MJ=0.5 MJSW=0.3)
*.end 

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-09 maxstep=1.0e+6 tau=1.0e-05 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end