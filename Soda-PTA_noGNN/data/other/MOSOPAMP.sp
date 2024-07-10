Operational Amplifier 2004.3.3 Y.I
*Johns and Martin: Analog Integrated Circuits, p.251
*
vdd 1 0 dc 2.5
vss 7 0 dc -2.5
m10 2 2 1 1 PMOS w=25um l=1.6um
m11 3 2 1 1 PMOS w=25um l=1.6um
m14 2 3 4 7 NMOS w=25um l=1.6um
m12 3 3 5 7 NMOS w=25um l=1.6um
m15 4 5 6 7 NMOS w=100um l=1.6um
m13 5 5 7 7 NMOS w=25um l=1.6um
rb 6 7 8k
m5 8 2 1 1 PMOS w=300um l=1.6um
m1 10 9 8 1 PMOS w=300um l=1.6um
m2 12 11 8 1 PMOS w=300um l=1.6um
m3 10 10 7 7 NMOS w=150um l=1.6um
m4 12 10 7 7 NMOS w=150um l=1.6um
*vin- 9 0 dc 0
vin- 9 14 dc 0
vin+ 11 0 dc 0 ac 1
m6 13 2 1 1 PMOS w=300um l=1.6um
m8 1 13 14 7 NMOS w=500um l=1.6um
m7 13 12 7 7 NMOS w=300um l=1.6um
m9 14 12 7 7 NMOS w=500um l=1.6um
cc 15 13 5pF
m16 15 3 12 7 NMOS w=100um l=1.6um
rl 14 0 10k
rstartup 3 0 10Meg
*
*
*
*.op
*.ac dec 20 0.1k 100Meg
*.print ac vdb(14)
*.option post brief
.model PMOS PMOS (LEVEL=2 VTO=-0.9 UO=175 TOX=1.8E-8 LD=6E-8 GAMMA= 0.8 NSUB=7.5E16 PHI=0.7 PB=0.9 CJ=4.0E-4 CJSW=2.8E-10 MJ=0.5 MJSW=0.3)
.model NMOS NMOS (LEVEL=2 VTO=0.7 UO=500 TOX=1.8E-8 LD=6E-8 GAMMA=0.5 NSUB=3E16 PHI=0.7 PB=0.9 CJ=2.5E-4 CJSW=2.0E-10 MJ=0.5 MJSW=0.3)
*.end 

.OPTIONS DELMAX=1000ns
.op
.pstran
.end