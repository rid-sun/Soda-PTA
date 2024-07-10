*Operational Amplifier 2004.3.3 Y.I
*Johns and Martin: Analog Integrated Circuits, p.251
*
Vdd 1 0 dc 2.5
Vss 7 0 dc -2.5
M10 2 2 1 1 PMOS w=25um l=1.6um
M11 3 2 1 1 PMOS w=25um l=1.6um
M14 2 3 4 7 NMOS w=25um l=1.6um
M12 3 3 5 7 NMOS w=25um l=1.6um
M15 4 5 6 7 NMOS w=100um l=1.6um
M13 5 5 7 7 NMOS w=25um l=1.6um
Rb 6 7 7k

M5 8 2 1 1 PMOS w=300um l=1.6um
M1 10 9 8 1 PMOS w=300um l=1.6um
M2 12 11 8 1 PMOS w=300um l=1.6um
M3 10 10 7 7 NMOS w=150um l=1.6um
M4 12 10 7 7 NMOS w=150um l=1.6um
*Vin- 9 0 dc 0
Vin- 9 14 dc 0
Vin+ 11 0 dc 0 
*Vin+ 11 0 SIN 0 0.1m 10

M6 13 2 1 1 PMOS w=300um l=1.6um
M8 1 13 14 7 NMOS w=500um l=1.6um
M7 13 12 7 7 NMOS w=300um l=1.6um
M9 14 12 7 7 NMOS w=500um l=1.6um
*Cc 15 13 5pF
Rcc 15 13 1meg
M16 15 3 12 7 NMOS w=100um l=1.6um

Rl 14 0 10k
*Rstartup 3 0 10Meg

.MODEL PMOS PMOS LEVEL=3 VTO=-0.9 UO=175
+ TOX=1.8E-8 LD=6E-8 GAMMA= 0.8 NSUB=7.5E16 RD=1 RS=1
+ PHI=0.7 PB=0.9
*.model PMOS PMOS (LEVEL=1 VTO=-0.9 UO=175 TOX=1.8E-8 LD=6E-8 GAMMA= 0.8 NSUB=7.5E16
.MODEL NMOS NMOS LEVEL=3 VTO=0.7 UO=500
+ TOX=1.8E-8 LD=6E-8 GAMMA=0.5 NSUB=3E16
+ PHI=0.7 PB=0.9 RD=1 RS=1

*.model NMOS NMOS (LEVEL=1 VTO=0.7 UO=500 TOX=1.8E-8 LD=6E-8 GAMMA=0.5 NSUB=3E16
*.MODEL QN NPN (IS=1.0E-16 BF=80 BR=1 VA=50)
*.MODEL QP PNP (IS=1.0E-15 BF=80 BR=1 VA=50)
*.HOM debug=0 type=4
*.TRAN  0.01ms 5.1ms
*.PRINT TRAN all
*.OP
*.TRAN 1m 1
*.AC dec 20 10 1000Meg
*.PROBE ac vdb(14) vdb(12) vp(14)
*.OPTIONS post brief nomod
*.OPTIONS DCON=1
*.END 

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-09 maxstep=1.0e+6 tau=1.0e-05 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end
