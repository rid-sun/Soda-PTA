*bjt inverter test
vcc 5 0 dc 5.
vin 1 0 pulse(0 5 10ns 40ns 40ns 110ns 300ns)
.subckt inv 5 1 6
q1 3 2 0 x33
q2 6 4 0 x33
rc1 5 3 1k
rc2 5 6 1k
rb1 1 2 10k
rb2 3 4 10k
.ends inv
x1 5 1 6 inv
x2 5 6 10 inv
x3 5 10 11 inv
x4 5 11 12 inv
x5 5 12 13 inv
x6 5 13 14 inv
*.print tran v(1) v(11) v(14)
*.tran 2ns 300ns
.options acct list
.model x33 npn(bf=80 rb=100 va=50 tf=.3e-9 tr=6.e-9)
.op
.end
