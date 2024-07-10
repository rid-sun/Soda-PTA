741 OPAMP - OPEN LOOP
* This is the netlist and transistor models used for the 741 
* bipolar opamp as given in Lawrence Nagle's 
*     much referenced Ph.D. thesis on SPICE, 1975.
*
* DC OPERATING POINT & TRANSIENT ANALYSIS & AC ANALYSIS
* 
*
*
vcc 27 0 15
vee 26 0 -15
vcm 2 0 0.0
vdcoff 999 0 SIN(0.5155m .01 1K 100u 0.0)
vin 1 999 0.0 ac 1
*
r1 10 26 1k
r2 9 26 50k
r3 11 26 1k
r4 12 26 3k
r5 15 17 39k
r6 21 20 40k
r7 14 26 50k
r8 18 26 50.0
r9 24 25 25.0
r10 23 24 50.0
r11 13 26 50k
comp 22 8 30pf
q1 3 2 4 qnl
q2 3 1 5 qnl
q3 7 6 4 qpl
q4 8 6 5 qpl
q5 7 9 10 qnl
q6 8 9 11 qnl
q7 27 7 9 qnl
q8 6 15 12 qnl
q9 15 15 26 qnl
q10 3 3 27 qpl
q11 6 3 27 qpl
q12 17 17 27 qpl
q13 8 13 26 qnl
q14 22 17 27 qpl
q15 22 22 21 qnl
q16 22 21 20 qnl
q17 13 13 26 qnl
q18 27 8 14 qnl
q19 20 14 18 qnl
q20 22 23 24 qnl
q21 13 25 24 qpl
q22 27 22 23 qnl
q23 26 20 25 qpl
*
.model qnl npn (bf=80 rb=100 ccs=2p tf=0.3n tr=6n cje=3p cjc=2p vaf=50)
.model qpl pnp (bf=10 rb=20 tf=1n tr=20n cje=6p cjc=4p vaf=50)
.options acct limpts=10000 reltol=0.0001
.tran 5u 10m
.print tran v(999) v(24)
.end
