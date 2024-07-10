chip2.sp SPICE FILE
.model nenh nmos
+ level = 2
+   vto = 0.779   kp = 3.52e-05   gamma = 1.04
+   phi = 0.6
+
+   cgso = 5.2e-10   cgdo = 5.2e-10
+   rsh = 25   cj = 0.00042
+   mj = 0.5   cjsw = 9e-10   mjsw = 0.33
+   tox = 5e-08   nsub = 1e+16
+   nss = 0   nfs = 1.306e+11   tpg = 1
+   xj = 3.85e-08   ld = 1e-07   uo = 400
+   ucrit = 999000   uexp = 0.001001
+   vmax = 32585.3   neff = 0.01001
+
+   delta = 1.33
.model penh pmos
+ level = 2
+   vto = -0.988   kp = 1.206e-05   gamma = 0.619
+   phi = 0.6
+
+   cgso = 4e-10   cgdo = 4e-10
+   rsh = 95   cj = 0.00032
+   mj = 0.5   cjsw = 5.5e-10   mjsw = 0.33
+   tox = 5e-08   nsub = 8.158e+14
+   nss = 0   nfs = 5.55e+09   tpg = -1
+   xj = 1.46e-07   ld = 2.52e-07   uo = 150
+   ucrit = 54941   uexp = 0.17
+   vmax = 100000   neff = 0.01001
+
+   delta = 1.129
.subckt cntl1b 1 2 3 4 5
+ 6 7 8 9 10 11
cc8 3 2 1.7682e-13
cc7 4 2 1.7584e-13
cc6 5 2 1.7486e-13
cc5 6 2 1.7388e-13
cc4 7 2 1.659e-13
cc3 8 2 1.659e-13
cc2 9 2 1.659e-13
cc1 10 2 1.659e-13
cdataout1 11 2 9.8e-15
.ends cntl1b
.subckt out16 1 2 3 4 5
+ 6 7 8 9
md13 10 7 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 10 7 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 6 11 10 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 6 3 10 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md9 11 3 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 11 3 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md1 12 11 4 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 12 3 4 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md3 6 3 5 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 6 11 5 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 1 7 12 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 7 12 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
cc5 3 2 3.63e-14
cin16 4 2 8.4e-15
cout16 5 2 8.4e-15
cto32 6 2 2.408e-14
cfroms16 7 2 1.172e-14
cphi1b 8 2 8.1e-15
cphi2b 9 2 1.98e-14
cI0 10 2 4.2e-15
cI1 11 2 3.094e-14
cI2 12 2 4.2e-15
.ends out16
.subckt out32 1 2 3 4 5
+ 6 7
md13 8 5 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 8 5 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 4 9 8 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 4 3 8 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md9 9 3 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 9 3 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md1 10 9 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 10 3 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md3 4 3 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 4 9 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 1 5 10 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 5 10 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
cc6 3 2 3.63e-14
cto64 4 2 2.408e-14
cfrom16 5 2 1.76e-14
cout32 6 2 8.4e-15
cin32 7 2 8.4e-15
cI0 8 2 4.2e-15
cI1 9 2 3.094e-14
cI2 10 2 4.2e-15
.ends out32
.subckt out64 1 2 3 4 5
+ 6 7
md6 2 4 8 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 1 4 8 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 3 9 5 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 3 7 5 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md2 8 7 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md1 8 9 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 9 7 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 9 7 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md10 3 7 10 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 3 9 10 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 10 4 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 10 4 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
cto128 3 2 2.408e-14
cfrom32 4 2 1.76e-14
cout64 5 2 8.4e-15
cin64 6 2 8.4e-15
cc7 7 2 3.63e-14
cI0 8 2 4.2e-15
cI1 10 2 4.2e-15
cI2 9 2 3.094e-14
.ends out64
.subckt out128 1 2 3 4 5
+ 6 7
md13 8 4 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 8 4 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 3 9 8 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 3 7 8 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md9 9 7 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 9 7 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md1 10 9 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 10 7 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md3 3 7 5 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 3 9 5 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 1 4 10 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 4 10 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
ctodout 3 2 2.408e-14
cfrom64 4 2 1.76e-14
cout128 5 2 8.4e-15
cin128 6 2 8.4e-15
cc8 7 2 3.63e-14
cI0 8 2 4.2e-15
cI1 9 2 3.094e-14
cI2 10 2 4.2e-15
.ends out128
.subckt outtop 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md1 13 7 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 15 13 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 16 8 15 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 1 12 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 13 9 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 15 13 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 16 10 15 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 12 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 11 14 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 2 14 11 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 11 14 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 2 14 11 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md13 11 14 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 1 14 11 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 11 14 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md16 1 14 11 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi2b1 3 2 2.73e-14
cphi1b1 4 2 2.73e-14
cft1 5 2 1.008e-14
cft2 6 2 1.008e-14
cphi2b 7 2 8.1e-15
cphi1b 8 2 1.95e-14
cphi2 9 2 7.2e-15
cphi1 10 2 1.86e-14
cdataout 11 2 1.722e-14
cfrom128 12 2 1.776e-14
cI0 14 2 4.034e-14
cI1 13 2 4.2e-15
cI2 15 2 1.02e-14
cI3 16 2 4.2e-15
.ends outtop
.subckt muxout 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26
xot160 1 2 3 4 5
+ 27 6 7 8 out16
xot320 1 2 9 31 27
+ 10 11 out32
xot640 1 2 35 31 12
+ 13 14 out64
xot1280 1 2 39 35 15
+ 16 17 out128
xottop0 1 2 18 19 20
+ 26 21 22 23 24 25
+ 39
+ outtop
.ends muxout
.subckt shtop 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14
md16 15 9 4 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 16 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 17 10 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 3 17 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 3 17 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 17 8 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 16 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 15 7 4 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 18 5 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 19 8 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 20 19 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 6 7 20 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 11 18 5 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 19 14 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 12 20 19 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 6 13 20 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cvoutr 3 2 4.2e-15
cvinr 4 2 4.2e-15
cvoutl 5 2 4.2e-15
cvinl 6 2 4.2e-15
cphi1 7 2 2.46e-14
cphi2 8 2 2.46e-14
cphi1b 9 2 2.37e-14
cphi2b 10 2 2.28e-14
cvdd1 11 2 4e-15
cvdd2 12 2 4e-15
cphi2b1 13 2 9e-16
cphi1b1 14 2 9e-16
cI0 16 2 4.2e-15
cI1 17 2 7.8e-15
cI2 15 2 7.8e-15
cI3 18 2 7.8e-15
cI4 19 2 4.2e-15
cI5 20 2 7.8e-15
.ends shtop
.subckt revsh 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14
md16 15 7 11 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 16 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 17 8 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 12 17 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 12 17 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 17 6 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 16 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 15 5 11 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 18 10 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 19 6 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 20 19 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 9 5 20 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 4 18 10 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 19 14 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 3 20 19 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 9 13 20 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cvdd2 3 2 4e-15
cvdd1 4 2 4e-15
cphi1 5 2 2.46e-14
cphi2 6 2 2.46e-14
cphi1b 7 2 2.46e-14
cphi2b 8 2 2.46e-14
cvinl 9 2 4.2e-15
cvoutl 10 2 4.2e-15
cvinr 11 2 4.2e-15
cvoutr 12 2 4.2e-15
cphi1b1 13 2 9e-16
cphi2b1 14 2 9e-16
cI0 16 2 4.2e-15
cI1 17 2 7.8e-15
cI2 15 2 7.8e-15
cI3 18 2 7.8e-15
cI4 19 2 4.2e-15
cI5 20 2 7.8e-15
.ends revsh
.subckt low20 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.19e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low20
.subckt slice20 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip60 1 2 3 4 5
+ 6 7 8 9 10 1
+ 1 13 14 shtop
xstrip50 1 2 1 1 11
+ 12 13 14 15 16 17
+ 18 21 22 revsh
xstrip40 1 2 1 1 19
+ 20 21 22 23 24 25
+ 26 29 30 revsh
xstrip30 1 2 1 1 27
+ 28 29 30 31 32 33
+ 34 37 38 revsh
xstrip20 1 2 1 1 35
+ 36 37 38 39 40 41
+ 42 52 51 revsh
xstrip10 1 2 52 51 43
+ 44 45 46 47 48 49
+ 50
+ low20
.ends slice20
.subckt low19 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low19
.subckt slice19 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low19
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice19
.subckt low18 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.28e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low18
.subckt slice18 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low18
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice18
.subckt low17 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low17
.subckt slice17 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low17
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice17
.subckt low16 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.19e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low16
.subckt slice16 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low16
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice16
.subckt low15 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.28e-14
cphi1b 12 2 2.46e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low15
.subckt slice15 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low15
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice15
.subckt low14 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low14
.subckt slice14 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low14
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice14
.subckt low13 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.19e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low13
.subckt slice13 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low13
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice13
.subckt j11 1 2 3 4
cphi1b 3 2 1.02e-14
cphi2b 4 2 8.4e-15
.ends j11
.subckt j1 1 2 3 4 5
+ 6 7 8
cj2 3 2 1.008e-14
cj1 4 2 1.008e-14
cphi1 5 2 8.4e-15
cphi2 6 2 8.4e-15
cphi2b 7 2 8.4e-15
cphi1b 8 2 8.4e-15
.ends j1
.subckt j2 1 2 3 4 5
+ 6 7 8
cphi1 3 2 8.4e-15
cphi2 4 2 8.4e-15
cphi2b 5 2 8.4e-15
cphi1b 6 2 8.4e-15
cj2 7 2 8.4e-15
cj1 8 2 8.4e-15
.ends j2
.subckt j4 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16
cj2 3 2 1.008e-14
cj1 4 2 2.114e-14
cj3 5 2 1.106e-14
cj4 6 2 8.4e-15
cphi1b#2 7 2 8.4e-15
cphi2b#2 8 2 8.4e-15
cphi2#2 9 2 8.4e-15
cphi1#2 10 2 8.4e-15
cphi1b#1 11 2 8.4e-15
cphi2b#1 12 2 8.4e-15
cvdd1 13 2 7.2e-15
cphi2#1 14 2 8.4e-15
cphi1#1 15 2 8.4e-15
cvss1 16 2 7.2e-15
.ends j4
.subckt con21 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42
xI40 1 2 3 4 j11
xj10 1 2 5 6 7
+ 8 9 10 j1
xj2#10 1 2 11 12 13
+ 14 15 16 j2
xj2#20 1 2 17 18 19
+ 20 21 22 j2
xj40 1 2 23 24 25
+ 26 27 28 29 30 31
+ 32 33 34 35 36 j4
xj2#30 1 2 37 38 39
+ 40 41 42 j2
.ends con21
.subckt low12 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.19e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low12
.subckt slice12 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low12
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice12
.subckt low11 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low11
.subckt slice11 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low11
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice11
.subckt low10 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.28e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low10
.subckt slice10 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low10
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice10
.subckt low9 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low9
.subckt slice9 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low9
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice9
.subckt j10 1 2 3 4
cphi2b 3 2 8.4e-15
cphi1b 4 2 8.4e-15
.ends j10
.subckt j5 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18
cphi1#1 3 2 8.4e-15
cphi1#2 4 2 8.4e-15
cphi2#1 5 2 8.4e-15
cphi2#2 6 2 8.4e-15
cphi2b#1 7 2 8.4e-15
cphi2b#2 8 2 8.4e-15
cphi1b#1 9 2 8.4e-15
cphi1b#2 10 2 8.4e-15
cvdd#1 11 2 7.2e-15
cvdd#2 12 2 7.2e-15
cvss#1 13 2 7.2e-15
cvss#2 14 2 7.2e-15
cj1 15 2 2.702e-14
cj2 16 2 1.008e-14
cj3 17 2 1.106e-14
cj4 18 2 1.008e-14
.ends j5
.subckt con32 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44
xI30 1 2 3 4 j10
xj50 1 2 5 6 7
+ 8 9 10 11 12 13
+ 14 15 16 17 18 19
+ 20
+ j5
xj2#10 1 2 21 22 23
+ 24 25 26 j2
xj2#20 1 2 27 28 29
+ 30 31 32 j2
xj2#30 1 2 33 34 35
+ 36 37 38 j2
xj2#40 1 2 39 40 41
+ 42 43 44 j2
.ends con32
.subckt low8 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low8
.subckt slice8 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low8
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice8
.subckt low7 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.19e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low7
.subckt slice7 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low7
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice7
.subckt low6 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.28e-14
cphi1b 12 2 2.46e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low6
.subckt slice6 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low6
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice6
.subckt low5 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low5
.subckt slice5 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low5
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice5
.subckt j9 1 2 3 4
cphi1b 3 2 1.05e-14
cphi2b 4 2 1.05e-14
.ends j9
.subckt j7 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19
cvdd#1 3 2 9e-15
cvdd#2 4 2 9e-15
cvss#1 5 2 9e-15
cvss#2 6 2 9e-15
cphi1#1 7 2 1.05e-14
cphi1#2 8 2 1.05e-14
cphi2#1 9 2 1.05e-14
cphi2#2 10 2 1.05e-14
cphi1b#1 11 2 1.05e-14
cphi1b#2 12 2 1.05e-14
cphi2b#1 13 2 1.05e-14
cphi2b#2 14 2 1.05e-14
cj1 15 2 2.772e-14
cj2 16 2 1.008e-14
cj3 17 2 1.106e-14
cj4 18 2 1.008e-14
cj5 19 2 7e-15
.ends j7
.subckt j6 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20
cphi2b#2 3 2 1.05e-14
cphi2b#1 4 2 1.05e-14
cphi1b#2 5 2 1.05e-14
cphi1b#1 6 2 1.05e-14
cphi2#2 7 2 1.05e-14
cphi2#1 8 2 1.05e-14
cphi1#2 9 2 1.05e-14
cphi1#1 10 2 1.05e-14
cvss#2 11 2 9e-15
cvss#1 12 2 9e-15
cvdd#2 13 2 9e-15
cvdd#1 14 2 9e-15
cj6 15 2 7e-15
cj5 16 2 1.498e-14
cj4 17 2 1.106e-14
cj3 18 2 1.008e-14
cj2 19 2 2.478e-14
cj1 20 2 4.06e-15
.ends j6
.subckt j8 1 2 3 4 5
+ 6 7 8 9
cj3 3 2 1.05e-14
cj2 4 2 4.06e-15
cj1 5 2 8.26e-15
cphi1 6 2 1.05e-14
cphi2 7 2 1.05e-14
cphi2b 8 2 1.05e-14
cphi1b 9 2 1.05e-14
.ends j8
.subckt j3 1 2 3 4 5
+ 6 7 8
cphi1 3 2 1.05e-14
cphi2 4 2 1.05e-14
cphi2b 5 2 1.05e-14
cphi1b 6 2 1.05e-14
cj1 7 2 1.05e-14
cj2 8 2 1.05e-14
.ends j3
.subckt con43 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48
xI20 1 2 3 4 j9
xj70 1 2 5 6 7
+ 8 9 10 11 12 13
+ 14 15 16 17 18 19
+ 20 21 j7
xj60 1 2 22 23 24
+ 25 26 27 28 29 30
+ 31 32 33 34 37 35
+ 36 17 21 j6
xj80 1 2 38 34 37
+ 39 40 41 42 j8
xj30 1 2 43 44 45
+ 46 47 48 j3
.ends con43
.subckt low4 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md1 7 4 13 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 13 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 14 3 15 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 1 15 8 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 7 6 13 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 13 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 14 5 15 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 15 8 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 16 6 9 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 17 16 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 18 5 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 10 18 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md13 10 18 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 18 12 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 17 16 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md16 16 11 9 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi2b 3 2 2.37e-14
cphi1b 4 2 2.46e-14
cphi2 5 2 2.46e-14
cphi1 6 2 2.46e-14
cvinl 7 2 4.2e-15
cvoutl 8 2 4.2e-15
cvinr 9 2 4.2e-15
cvoutr 10 2 4.2e-15
cphi1b1 11 2 2.46e-14
cphi2b1 12 2 2.46e-14
cI0 13 2 7.8e-15
cI1 14 2 4.2e-15
cI2 15 2 7.8e-15
cI3 17 2 4.2e-15
cI4 16 2 7.8e-15
cI5 18 2 7.8e-15
.ends low4
.subckt slice4 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
+ low4
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 11 12 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice4
.subckt low3 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low3
.subckt slice3 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low3
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice3
.subckt low2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.37e-14
cphi1b 12 2 2.19e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low2
.subckt slice2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low2
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice2
.subckt low1 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
md16 13 3 6 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 14 13 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 15 4 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 5 15 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 5 15 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 15 10 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 14 13 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 13 9 6 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 16 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 17 10 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md5 8 9 18 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 1 16 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 17 11 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 8 12 18 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi1b1 3 2 2.46e-14
cphi2b1 4 2 2.46e-14
cvoutr 5 2 4.2e-15
cvinr 6 2 4.2e-15
cvoutl 7 2 4.2e-15
cvinl 8 2 4.2e-15
cphi1 9 2 2.46e-14
cphi2 10 2 2.46e-14
cphi2b 11 2 2.28e-14
cphi1b 12 2 2.37e-14
cI0 14 2 4.2e-15
cI1 15 2 7.8e-15
cI2 13 2 7.8e-15
cI3 16 2 7.8e-15
cI4 18 2 7.8e-15
cI5 17 2 4.2e-15
.ends low1
.subckt slice1 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low1
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 45 46 47
+ 48 49 50 51 52 1
+ 1 39 40 shtop
.ends slice1
.subckt clk1b 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18
cj2845l 3 2 1.106e-14
cj2845r 4 2 1.106e-14
cj2867l 5 2 1.106e-14
cj2867r 6 2 1.106e-14
cj2889l 7 2 1.106e-14
cj2889r 8 2 1.106e-14
cj281011l 9 2 5.25e-14
cj281011r 10 2 5.25e-14
cj281213l 11 2 2.702e-14
cj281213r 12 2 2.702e-14
cj282120l 13 2 1.106e-14
cj282120r 14 2 1.106e-14
cphi2b 15 2 3.0212e-13
cphi2 16 2 2.8266e-13
cphi1b 17 2 3.0212e-13
cphi1 18 2 2.8266e-13
.ends clk1b
.subckt cntldec 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
cdatain2 3 2 9.8e-15
cdatain1 4 2 9.8e-15
cc4 5 2 9.59e-14
cc3 6 2 9.59e-14
cc2 7 2 9.59e-14
cc1 8 2 9.59e-14
cc8 9 2 8.61e-14
cc7 10 2 8.61e-14
cc6 11 2 8.61e-14
cc5 12 2 8.61e-14
.ends cntldec
.subckt rshift 1 2 3 4 5
+ 6 7 8
md5 3 9 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md4 9 6 10 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md3 3 9 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 9 8 10 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m1 10 11 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m2 1 4 12 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m3 12 7 11 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m4 12 5 11 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m5 2 4 12 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m6 10 11 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
cout 3 2 1.722e-14
cin 4 2 6.3e-15
cphi1 5 2 2.58e-14
cphi2 6 2 2.49e-14
cphi1b 7 2 9e-16
cphi2b 8 2 9e-16
cI0 9 2 1.5e-14
cI1 10 2 8.4e-15
cI2 12 2 8.4e-15
cI3 11 2 1.9e-14
.ends rshift
.subckt shift 1 2 3 4 5
+ 6 7 8 9 10 11
m7 9 5 3 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m8 3 6 12 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m9 12 11 13 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m10 13 14 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m11 1 4 15 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m12 15 10 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m13 15 7 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m14 2 4 15 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m15 13 14 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m16 12 8 13 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m17 3 5 12 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m18 9 6 3 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
cout 3 2 2.19e-14
cin 4 2 6.3e-15
cfnorb 5 2 1.42e-14
cfnor 6 2 1.412e-14
cphi1 7 2 3.21e-14
cphi2 8 2 3.12e-14
cfbus 9 2 1.71e-14
cphi1b 10 2 9e-16
cphi2b 11 2 9e-16
cI0 15 2 8.4e-15
cI1 13 2 8.4e-15
cI2 12 2 8.4e-15
cI3 14 2 1.9e-14
.ends shift
.subckt condec8 1 2 3 4 5
+ 6 7 8 9 10
cc4b 3 2 6.72e-14
cc3b 4 2 6.72e-14
cc2b 5 2 6.72e-14
cc1b 6 2 6.09e-14
cc4 7 2 5.46e-14
cc3 8 2 5.46e-14
cc2 9 2 5.46e-14
cc1 10 2 6.09e-14
.ends condec8
.subckt condec7 1 2 3 4 5
+ 6 7 8 9 10
cc1 3 2 6.09e-14
cc2 4 2 6.72e-14
cc3 5 2 5.46e-14
cc4 6 2 5.46e-14
cc1b 7 2 6.09e-14
cc2b 8 2 5.46e-14
cc3b 9 2 6.72e-14
cc4b 10 2 6.72e-14
.ends condec7
.subckt condec6 1 2 3 4 5
+ 6 7 8 9 10
cc4b 3 2 6.72e-14
cc3b 4 2 5.46e-14
cc2b 5 2 6.72e-14
cc1b 6 2 6.09e-14
cc4 7 2 5.46e-14
cc3 8 2 6.72e-14
cc2 9 2 5.46e-14
cc1 10 2 6.09e-14
.ends condec6
.subckt condec5 1 2 3 4 5
+ 6 7 8 9 10
cc4b 3 2 6.72e-14
cc3b 4 2 5.46e-14
cc2b 5 2 5.46e-14
cc1b 6 2 6.09e-14
cc4 7 2 5.46e-14
cc3 8 2 6.72e-14
cc2 9 2 6.72e-14
cc1 10 2 6.09e-14
.ends condec5
.subckt condec4 1 2 3 4 5
+ 6 7 8 9 10
cc4b 3 2 5.46e-14
cc3b 4 2 6.72e-14
cc2b 5 2 6.72e-14
cc1b 6 2 6.09e-14
cc4 7 2 6.72e-14
cc3 8 2 5.46e-14
cc2 9 2 5.46e-14
cc1 10 2 6.09e-14
.ends condec4
.subckt condec3 1 2 3 4 5
+ 6 7 8 9 10
cc4b 3 2 5.46e-14
cc3b 4 2 6.72e-14
cc2b 5 2 5.46e-14
cc1b 6 2 6.09e-14
cc4 7 2 6.72e-14
cc3 8 2 5.46e-14
cc2 9 2 6.72e-14
cc1 10 2 6.09e-14
.ends condec3
.subckt condec2 1 2 3 4 5
+ 6 7 8 9 10
cc4b 3 2 5.46e-14
cc3b 4 2 5.46e-14
cc2b 5 2 6.72e-14
cc1b 6 2 6.09e-14
cc4 7 2 6.72e-14
cc3 8 2 6.72e-14
cc2 9 2 5.46e-14
cc1 10 2 6.09e-14
.ends condec2
.subckt condec1 1 2 3 4 5
+ 6 7 8 9 10
cc1 3 2 6.09e-14
cc2 4 2 6.72e-14
cc3 5 2 6.72e-14
cc4 6 2 6.72e-14
cc1b 7 2 6.09e-14
cc2b 8 2 5.46e-14
cc3b 9 2 5.46e-14
cc4b 10 2 5.46e-14
.ends condec1
.subckt ndec8 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md14 11 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md13 11 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 3 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 12 4 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 5 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 12 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 12 3 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m19 16 4 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m20 17 5 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m21 18 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md17 1 14 13 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 14 13 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 1 7 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 19 8 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 20 9 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md8 21 10 14 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md1 14 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 14 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 2 7 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cc4b15 3 2 5.4e-15
cc3b15 4 2 5.4e-15
cc2b15 5 2 5.4e-15
cc115 6 2 5.4e-15
cc4b16 7 2 5.4e-15
cc3b16 8 2 5.4e-15
cc2b16 9 2 5.4e-15
cc1b16 10 2 5.4e-15
cor15 11 2 2.492e-14
cnor15 12 2 3.062e-14
cor16 13 2 1.08e-14
cnor16 14 2 2.94e-14
cdbus 15 2 5.656e-14
.ends ndec8
.subckt ndec7 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md4 2 7 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 14 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 14 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 16 10 14 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 17 9 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 18 8 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md11 1 7 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 14 13 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md17 1 14 13 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m22 19 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m23 20 5 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m24 21 4 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md15 12 3 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md5 12 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 5 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 12 4 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 3 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 11 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 11 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
cc4b13 3 2 5.4e-15
cc3b13 4 2 5.4e-15
cc213 5 2 5.4e-15
cc113 6 2 5.4e-15
cc4b14 7 2 5.4e-15
cc3b14 8 2 5.4e-15
cc214 9 2 5.4e-15
cc1b14 10 2 5.4e-15
cor13 11 2 2.296e-14
cnor13 12 2 3.062e-14
cor14 13 2 1.12e-14
cnor14 14 2 3.258e-14
cdbus 15 2 5.656e-14
.ends ndec7
.subckt ndec6 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md4 2 11 4 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 4 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 4 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 4 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 16 8 4 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 17 9 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 18 10 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md11 1 11 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 4 5 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md17 1 4 5 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m25 19 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m26 20 13 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m27 21 14 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md15 6 15 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md5 6 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 13 6 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 6 14 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 15 6 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 7 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 7 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
cdbus 3 2 5.656e-14
cnor12 4 2 3.062e-14
cor12 5 2 1.12e-14
cnor11 6 2 3.062e-14
cor11 7 2 2.1e-14
cc1b12 8 2 5.4e-15
cc2b12 9 2 5.4e-15
cc312 10 2 5.4e-15
cc4b12 11 2 5.4e-15
cc111 12 2 5.4e-15
cc2b11 13 2 5.4e-15
cc311 14 2 5.4e-15
cc4b11 15 2 5.4e-15
.ends ndec6
.subckt ndec5 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md14 11 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md13 11 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 3 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 12 4 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 5 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 12 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 12 3 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m28 16 4 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m29 17 5 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m30 18 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md17 1 14 13 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 14 13 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 1 7 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 19 8 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 20 9 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md8 21 10 14 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md1 14 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 14 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 2 7 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cc4b9 3 2 5.4e-15
cc39 4 2 5.4e-15
cc29 5 2 5.4e-15
cc19 6 2 5.4e-15
cc4b10 7 2 5.4e-15
cc310 8 2 5.4e-15
cc210 9 2 5.4e-15
cc1b10 10 2 5.4e-15
cor9 11 2 1.904e-14
cnor9 12 2 3.062e-14
cor10 13 2 1.316e-14
cnor10 14 2 3.062e-14
cdbus 15 2 5.656e-14
.ends ndec5
.subckt ndec4 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md14 11 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md13 11 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 3 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 12 4 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 5 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 12 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 12 3 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m31 16 4 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m32 17 5 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m33 18 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md17 1 14 13 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 14 13 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 1 7 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 19 8 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 20 9 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md8 21 10 14 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md1 14 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 14 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 2 7 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cc47 3 2 5.4e-15
cc3b7 4 2 5.4e-15
cc2b7 5 2 5.4e-15
cc17 6 2 5.4e-15
cc48 7 2 5.4e-15
cc3b8 8 2 5.4e-15
cc2b8 9 2 5.4e-15
cc1b8 10 2 5.4e-15
cor7 11 2 2.1e-14
cnor7 12 2 3.258e-14
cor8 13 2 1.512e-14
cnor8 14 2 3.062e-14
cdbus 15 2 5.656e-14
.ends ndec4
.subckt ndec3 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md4 2 11 4 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 4 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 4 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 4 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 16 8 4 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 17 9 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 18 10 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md11 1 11 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 4 5 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md17 1 4 5 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m34 19 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m35 20 13 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m36 21 14 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md15 6 15 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md5 6 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 13 6 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 6 14 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 15 6 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 7 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 7 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
cdbus 3 2 5.558e-14
cnor6 4 2 3.062e-14
cor6 5 2 1.708e-14
cnor5 6 2 4.042e-14
cor5 7 2 1.12e-14
cc1b6 8 2 5.4e-15
cc26 9 2 5.4e-15
cc3b6 10 2 5.4e-15
cc46 11 2 5.4e-15
cc15 12 2 5.4e-15
cc25 13 2 5.4e-15
cc3b5 14 2 5.4e-15
cc45 15 2 5.4e-15
.ends ndec3
.subckt ndec2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15
md14 14 15 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md13 14 15 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 3 15 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 15 4 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 5 15 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 15 6 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 15 3 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m37 16 4 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m38 17 5 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m39 18 6 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md17 1 12 11 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 12 11 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md11 1 7 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 19 8 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 20 9 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md8 21 10 12 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md1 12 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 9 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 12 8 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 2 7 12 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cc43 3 2 5.4e-15
cc33 4 2 5.4e-15
cc2b3 5 2 5.4e-15
cc13 6 2 5.4e-15
cc44 7 2 5.4e-15
cc34 8 2 5.4e-15
cc2b4 9 2 5.4e-15
cc1b4 10 2 5.4e-15
cor4 11 2 1.904e-14
cnor4 12 2 3.258e-14
cdbus 13 2 5.656e-14
cor3 14 2 1.12e-14
cnor3 15 2 3.552e-14
.ends ndec2
.subckt ndec1 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16
md4 2 10 5 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 5 9 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 2 8 5 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 5 7 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md8 17 7 5 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 18 8 17 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 19 9 18 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md11 1 10 19 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md16 2 5 6 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md17 1 5 6 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m40 20 11 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m41 21 12 20 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
m42 22 13 21 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md15 16 14 22 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md5 16 11 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md6 2 12 16 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md7 16 13 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md12 2 14 16 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md13 3 16 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 3 16 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
cor1 3 2 8.26e-15
cdbus 4 2 5.656e-14
cnor2 5 2 3.454e-14
cor2 6 2 2.1e-14
cc1b2 7 2 5.4e-15
cc22 8 2 5.4e-15
cc32 9 2 5.4e-15
cc42 10 2 5.4e-15
cc11 11 2 5.4e-15
cc21 12 2 5.4e-15
cc31 13 2 5.4e-15
cc41 14 2 5.4e-15
cnor3 15 2 6.86e-15
cnor1 16 2 3.552e-14
.ends ndec1
.subckt filldec2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16
md5 16 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md6 1 12 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md7 15 11 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md8 1 11 15 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md9 14 10 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md10 1 10 14 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md11 13 9 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md12 1 9 13 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md13 16 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 2 12 16 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 15 11 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md16 2 11 15 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md17 14 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md18 2 10 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md19 13 9 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md20 2 9 13 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md1 1 9 13 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md2 13 9 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md3 1 10 14 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md4 14 10 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md21 1 11 15 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md22 15 11 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md23 2 9 13 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md24 13 9 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md25 2 10 14 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md26 14 10 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md27 2 11 15 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md28 15 11 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md29 2 12 16 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md30 16 12 2 2 nenh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md31 1 12 16 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
md32 16 12 1 1 penh l=3e-06 w=2.8e-05 
+ as=2.24e-10 ad=2.24e-10 ps=7.2e-05 pd=7.2e-05 
cor1<2> 3 2 4.9e-15
cnor1<2> 4 2 8.82e-15
cnor1<1> 5 2 8.82e-15
cor1<1> 6 2 4.9e-15
cdbus1 7 2 3.766e-14
cdbus 8 2 3.766e-14
cc1 9 2 7.186e-14
cc2 10 2 6.976e-14
cc3 11 2 6.976e-14
cc4 12 2 6.976e-14
cc1b 13 2 6.678e-14
cc2b 14 2 5.866e-14
cc3b 15 2 5.026e-14
cc4b 16 2 4.186e-14
.ends filldec2
.subckt lshift 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13
m43 13 4 7 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m44 7 3 14 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m45 14 11 15 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m46 15 16 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m47 1 18 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m48 17 10 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m49 17 8 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m50 2 18 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m51 15 16 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m52 14 9 15 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m53 7 4 14 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m54 13 3 7 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md1 18 5 12 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 18 6 12 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
cor15 3 2 1.412e-14
cnor15 4 2 1.42e-14
cor16 5 2 6.3e-15
cnor16 6 2 2.7e-15
cout 7 2 2.19e-14
cphi1 8 2 4.26e-14
cphi2 9 2 4.17e-14
cphi1b 10 2 9e-16
cphi2b 11 2 9e-16
cdin1 12 2 1.75e-14
cdin2 13 2 1.71e-14
cI0 17 2 8.4e-15
cI1 15 2 8.4e-15
cI2 14 2 8.4e-15
cI3 16 2 1.9e-14
cI4 18 2 1.98e-14
.ends lshift
.subckt cntl2b 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
cc1 3 2 3.297e-13
cc2 4 2 3.297e-13
cc3 5 2 3.297e-13
cc4 6 2 3.297e-13
cc5 7 2 3.4566e-13
cc6 8 2 3.4762e-13
cc7 9 2 3.4958e-13
cc8 10 2 3.5154e-13
cdataout2 11 2 9.8e-15
cdataout3 12 2 9.8e-15
.ends cntl2b
.subckt outtop2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18
m55 1 19 4 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m56 4 19 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m57 1 19 4 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m58 4 19 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m59 2 19 4 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m60 4 19 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m61 2 19 4 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m62 4 19 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m63 2 6 20 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m64 20 11 21 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m65 2 21 22 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m66 22 13 19 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m67 1 6 20 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m68 20 17 21 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m69 1 21 22 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m70 22 15 19 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m71 1 23 3 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m72 3 23 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m73 1 23 3 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m74 3 23 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m75 2 23 3 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m76 3 23 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m77 2 23 3 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m78 3 23 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m79 2 5 24 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m80 24 12 25 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m81 2 25 26 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m82 26 14 23 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
m83 1 5 24 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m84 24 18 25 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m85 1 25 26 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
m86 26 16 23 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cdataout2 3 2 1.722e-14
cdataout1 4 2 1.722e-14
cf128<2> 5 2 1.776e-14
cf128<1> 6 2 1.776e-14
cft1 7 2 1.008e-14
cft2 8 2 1.008e-14
cft3 9 2 1.008e-14
cft4 10 2 1.008e-14
cphi11 11 2 1.86e-14
cphi12 12 2 1.86e-14
cphi21 13 2 7.2e-15
cphi22 14 2 7.2e-15
cphi2b1 15 2 8.1e-15
cphi2b2 16 2 8.1e-15
cphi1b1 17 2 1.95e-14
cphi1b2 18 2 1.95e-14
cI0 21 2 1.02e-14
cI1 20 2 4.2e-15
cI2 19 2 4.034e-14
cI3 22 2 4.2e-15
cI4 25 2 1.02e-14
cI5 24 2 4.2e-15
cI6 23 2 3.838e-14
cI7 26 2 4.2e-15
.ends outtop2
.subckt muxout2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46
xI100 1 2 3 4 5
+ 47 6 7 8 out16
xI110 1 2 9 51 47
+ 10 11 out32
xI120 1 2 55 51 12
+ 13 14 out64
xI130 1 2 59 55 15
+ 16 17 out128
xI150 1 2 18 19 20
+ 63 21 22 23 out16
xI160 1 2 24 67 63
+ 25 26 out32
xI170 1 2 71 67 27
+ 28 29 out64
xI180 1 2 75 71 30
+ 31 32 out128
xI10 1 2 33 34 75
+ 59 35 36 37 38 39
+ 40 41 42 43 44 45
+ 46
+ outtop2
.ends muxout2
.subckt shtop2 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14
md1 11 7 15 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md2 5 15 16 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md3 16 8 17 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md4 6 17 12 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md5 11 10 15 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md6 2 15 16 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md7 16 9 17 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md8 2 17 12 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md9 18 10 13 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md10 19 18 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md11 20 9 19 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md12 14 20 2 2 nenh l=3e-06 w=7e-06 
+ as=5.6e-11 ad=5.6e-11 ps=3e-05 pd=3e-05 
md13 14 20 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md14 20 3 19 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md15 19 18 1 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
md16 18 4 13 1 penh l=3e-06 w=1.4e-05 
+ as=1.12e-10 ad=1.12e-10 ps=4.4e-05 pd=4.4e-05 
cphi2b1 3 2 9e-16
cphi1b1 4 2 9e-16
cvdd2 5 2 4e-15
cvdd1 6 2 4e-15
cphi1b 7 2 9e-16
cphi2b 8 2 9e-16
cphi2 9 2 2.46e-14
cphi1 10 2 2.46e-14
cvinl 11 2 4.2e-15
cvoutl 12 2 4.2e-15
cvinr 13 2 4.2e-15
cvoutr 14 2 4.2e-15
cI0 16 2 4.2e-15
cI1 15 2 7.8e-15
cI2 17 2 7.8e-15
cI3 18 2 7.8e-15
cI4 20 2 7.8e-15
cI5 19 2 4.2e-15
.ends shtop2
.subckt shcap2 1 2 3 4
cphi2b 3 2 2.37e-14
cphi1b 4 2 2.37e-14
.ends shcap2
.subckt slice220 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low20
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low20
.ends slice220
.subckt slice219 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low19
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low19
.ends slice219
.subckt slice218 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low18
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low18
.ends slice218
.subckt slice217 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low17
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low17
.ends slice217
.subckt slice216 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low16
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low16
.ends slice216
.subckt slice215 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low15
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low15
.ends slice215
.subckt slice214 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low14
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low14
.ends slice214
.subckt slice213 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low13
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low13
.ends slice213
.subckt con2212 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100 101
+ 102
cphi212 3 2 8.4e-15
cphi211 4 2 8.4e-15
cphi210 5 2 8.4e-15
cphi29 6 2 8.4e-15
cphi28 7 2 8.4e-15
cphi27 8 2 8.4e-15
cphi112 9 2 8.4e-15
cphi111 10 2 8.4e-15
cphi110 11 2 8.4e-15
cphi19 12 2 8.4e-15
cphi18 13 2 8.4e-15
cphi17 14 2 8.4e-15
cphi1b13 15 2 8.4e-15
cphi1b12 16 2 8.4e-15
cphi1b11 17 2 8.4e-15
cphi1b10 18 2 8.4e-15
cphi1b9 19 2 8.4e-15
cphi1b8 20 2 8.4e-15
cphi2b13 21 2 8.4e-15
cphi2b12 22 2 8.4e-15
cphi2b11 23 2 8.4e-15
cphi2b10 24 2 8.4e-15
cphi2b9 25 2 8.4e-15
cphi2b8 26 2 8.4e-15
cvss12 27 2 7.2e-15
cvss11 28 2 7.2e-15
cvss10 29 2 7.2e-15
cvss9 30 2 7.2e-15
cvss8 31 2 7.2e-15
cvss7 32 2 7.2e-15
cvdd14 33 2 7.2e-15
cvdd13 34 2 7.2e-15
cvdd12 35 2 7.2e-15
cvdd11 36 2 7.2e-15
cvdd10 37 2 7.2e-15
cvdd9 38 2 7.2e-15
cvdd8 39 2 7.2e-15
cphi26 40 2 8.4e-15
cphi25 41 2 8.4e-15
cphi24 42 2 8.4e-15
cphi23 43 2 8.4e-15
cphi22 44 2 8.4e-15
cphi21 45 2 8.4e-15
cphi16 46 2 8.4e-15
cphi15 47 2 8.4e-15
cphi14 48 2 8.4e-15
cphi13 49 2 8.4e-15
cphi12 50 2 8.4e-15
cphi11 51 2 8.4e-15
cphi1b7 52 2 1.68e-14
cphi1b6 53 2 8.4e-15
cphi1b5 54 2 8.4e-15
cphi1b4 55 2 8.4e-15
cphi1b3 56 2 8.4e-15
cphi1b2 57 2 8.4e-15
cphi1b1 58 2 8.4e-15
cphi2b7 59 2 1.68e-14
cphi2b6 60 2 8.4e-15
cphi2b5 61 2 8.4e-15
cphi2b4 62 2 8.4e-15
cphi2b3 63 2 8.4e-15
cphi2b2 64 2 8.4e-15
cphi2b1 65 2 8.4e-15
cvss6 66 2 7.2e-15
cvss5 67 2 7.2e-15
cvss4 68 2 7.2e-15
cvss3 69 2 7.2e-15
cvss2 70 2 7.2e-15
cvss1 71 2 7.2e-15
cvdd7 72 2 7.2e-15
cvdd6 73 2 7.2e-15
cvdd5 74 2 7.2e-15
cvdd4 75 2 7.2e-15
cvdd3 76 2 7.2e-15
cvdd2 77 2 7.2e-15
cvdd1 78 2 7.2e-15
cjb1612 79 2 1.008e-14
cjb3234 80 2 1.008e-14
cjb3212 81 2 8.4e-15
cjb3256 82 2 8.4e-15
cjb6412 83 2 8.4e-15
cjb641314 84 2 8.4e-15
cjb64910 85 2 1.008e-14
cjb282526 86 2 1.106e-14
cjb2812 87 2 2.114e-14
cjb282324 88 2 8.4e-15
cjb281718 89 2 8.4e-15
cjb281516 90 2 8.4e-15
cjt1612 91 2 1.008e-14
cjt3234 92 2 1.008e-14
cjt3212 93 2 8.4e-15
cjt3256 94 2 8.4e-15
cjt6412 95 2 8.4e-15
cjt641314 96 2 8.4e-15
cjt64910 97 2 1.008e-14
cjt282526 98 2 1.106e-14
cjt2812 99 2 2.114e-14
cjt282324 100 2 8.4e-15
cjt281718 101 2 8.4e-15
cjt281516 102 2 8.4e-15
.ends con2212
.subckt slice212 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low12
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low12
.ends slice212
.subckt slice211 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low11
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low11
.ends slice211
.subckt slice210 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low10
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low10
.ends slice210
.subckt slice29 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low9
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low9
.ends slice29
.subckt con3222 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100 101
+ 102
cphi212 3 2 8.4e-15
cphi211 4 2 8.4e-15
cphi210 5 2 8.4e-15
cphi29 6 2 8.4e-15
cphi28 7 2 8.4e-15
cphi27 8 2 8.4e-15
cphi112 9 2 8.4e-15
cphi111 10 2 8.4e-15
cphi110 11 2 8.4e-15
cphi19 12 2 8.4e-15
cphi18 13 2 8.4e-15
cphi17 14 2 8.4e-15
cphi1b13 15 2 8.4e-15
cphi1b12 16 2 8.4e-15
cphi1b11 17 2 8.4e-15
cphi1b10 18 2 8.4e-15
cphi1b9 19 2 8.4e-15
cphi1b8 20 2 8.4e-15
cphi2b13 21 2 8.4e-15
cphi2b12 22 2 8.4e-15
cphi2b11 23 2 8.4e-15
cphi2b10 24 2 8.4e-15
cphi2b9 25 2 8.4e-15
cphi2b8 26 2 8.4e-15
cvss12 27 2 7.2e-15
cvss11 28 2 7.2e-15
cvss10 29 2 7.2e-15
cvss9 30 2 7.2e-15
cvss8 31 2 7.2e-15
cvss7 32 2 7.2e-15
cvdd14 33 2 7.2e-15
cvdd13 34 2 7.2e-15
cvdd12 35 2 7.2e-15
cvdd11 36 2 7.2e-15
cvdd10 37 2 7.2e-15
cvdd9 38 2 7.2e-15
cvdd8 39 2 7.2e-15
cphi26 40 2 8.4e-15
cphi25 41 2 8.4e-15
cphi24 42 2 8.4e-15
cphi23 43 2 8.4e-15
cphi22 44 2 8.4e-15
cphi21 45 2 8.4e-15
cphi16 46 2 8.4e-15
cphi15 47 2 8.4e-15
cphi14 48 2 8.4e-15
cphi13 49 2 8.4e-15
cphi12 50 2 8.4e-15
cphi11 51 2 8.4e-15
cphi1b7 52 2 1.68e-14
cphi1b6 53 2 8.4e-15
cphi1b5 54 2 8.4e-15
cphi1b4 55 2 8.4e-15
cphi1b3 56 2 8.4e-15
cphi1b2 57 2 8.4e-15
cphi1b1 58 2 8.4e-15
cphi2b7 59 2 1.68e-14
cphi2b6 60 2 8.4e-15
cphi2b5 61 2 8.4e-15
cphi2b4 62 2 8.4e-15
cphi2b3 63 2 8.4e-15
cphi2b2 64 2 8.4e-15
cphi2b1 65 2 8.4e-15
cvss6 66 2 7.2e-15
cvss5 67 2 7.2e-15
cvss4 68 2 7.2e-15
cvss3 69 2 7.2e-15
cvss2 70 2 7.2e-15
cvss1 71 2 7.2e-15
cvdd7 72 2 7.2e-15
cvdd6 73 2 7.2e-15
cvdd5 74 2 7.2e-15
cvdd4 75 2 7.2e-15
cvdd3 76 2 7.2e-15
cvdd2 77 2 7.2e-15
cvdd1 78 2 7.2e-15
cjb3223 79 2 1.106e-14
cjb3245 80 2 2.702e-14
cjb6467 81 2 1.008e-14
cjb6445 82 2 1.008e-14
cjb6423 83 2 8.4e-15
cjb641213 84 2 8.4e-15
cjb641011 85 2 8.4e-15
cjb6489 86 2 8.4e-15
cjb2823 87 2 8.4e-15
cjb282223 88 2 8.4e-15
cjb281819 89 2 8.4e-15
cjb281415 90 2 8.4e-15
cjt3223 91 2 1.106e-14
cjt3245 92 2 2.702e-14
cjt6467 93 2 1.008e-14
cjt6445 94 2 1.008e-14
cjt6423 95 2 8.4e-15
cjt641213 96 2 8.4e-15
cjt641011 97 2 8.4e-15
cjt6489 98 2 8.4e-15
cjt2823 99 2 8.4e-15
cjt282223 100 2 8.4e-15
cjt281819 101 2 8.4e-15
cjt281415 102 2 8.4e-15
.ends con3222
.subckt slice28 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low8
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low8
.ends slice28
.subckt slice27 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low7
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low7
.ends slice27
.subckt slice26 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low6
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low6
.ends slice26
.subckt slice25 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low5
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low5
.ends slice25
.subckt con4232 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100 101
+ 102
cphi212 3 2 1.05e-14
cphi211 4 2 1.05e-14
cphi210 5 2 1.05e-14
cphi29 6 2 1.05e-14
cphi28 7 2 1.05e-14
cphi27 8 2 1.05e-14
cphi112 9 2 1.05e-14
cphi111 10 2 1.05e-14
cphi110 11 2 1.05e-14
cphi19 12 2 1.05e-14
cphi18 13 2 1.05e-14
cphi17 14 2 1.05e-14
cphi1b13 15 2 1.05e-14
cphi1b12 16 2 1.05e-14
cphi1b11 17 2 1.05e-14
cphi1b10 18 2 1.05e-14
cphi1b9 19 2 1.05e-14
cphi1b8 20 2 1.05e-14
cphi2b13 21 2 1.05e-14
cphi2b12 22 2 1.05e-14
cphi2b11 23 2 1.05e-14
cphi2b10 24 2 1.05e-14
cphi2b9 25 2 1.05e-14
cphi2b8 26 2 1.05e-14
cvss12 27 2 9e-15
cvss11 28 2 9e-15
cvss10 29 2 9e-15
cvss9 30 2 9e-15
cvss8 31 2 9e-15
cvss7 32 2 9e-15
cvdd14 33 2 9e-15
cvdd13 34 2 9e-15
cvdd12 35 2 9e-15
cvdd11 36 2 9e-15
cvdd10 37 2 9e-15
cvdd9 38 2 9e-15
cvdd8 39 2 9e-15
cphi26 40 2 1.05e-14
cphi25 41 2 1.05e-14
cphi24 42 2 1.05e-14
cphi23 43 2 1.05e-14
cphi22 44 2 1.05e-14
cphi21 45 2 1.05e-14
cphi16 46 2 1.05e-14
cphi15 47 2 1.05e-14
cphi14 48 2 1.05e-14
cphi13 49 2 1.05e-14
cphi12 50 2 1.05e-14
cphi11 51 2 1.05e-14
cphi1b7 52 2 2.1e-14
cphi1b6 53 2 1.05e-14
cphi1b5 54 2 1.05e-14
cphi1b4 55 2 1.05e-14
cphi1b3 56 2 1.05e-14
cphi1b2 57 2 1.05e-14
cphi1b1 58 2 1.05e-14
cphi2b7 59 2 2.1e-14
cphi2b6 60 2 1.05e-14
cphi2b5 61 2 1.05e-14
cphi2b4 62 2 1.05e-14
cphi2b3 63 2 1.05e-14
cphi2b2 64 2 1.05e-14
cphi2b1 65 2 1.05e-14
cvss6 66 2 9e-15
cvss5 67 2 9e-15
cvss4 68 2 9e-15
cvss3 69 2 9e-15
cvss2 70 2 9e-15
cvss1 71 2 9e-15
cvdd7 72 2 9e-15
cvdd6 73 2 9e-15
cvdd5 74 2 9e-15
cvdd4 75 2 9e-15
cvdd3 76 2 9e-15
cvdd2 77 2 9e-15
cvdd1 78 2 9e-15
cjb281112 79 2 1.106e-14
cjb2834 80 2 2.324e-14
cjb282122 81 2 1.05e-14
cjb281920 82 2 1.05e-14
cjb281314 83 2 1.05e-14
cjb6478 84 2 5.25e-14
cjb6456 85 2 1.106e-14
cjb6434 86 2 1.106e-14
cjb128910 87 2 1.008e-14
cjb12878 88 2 1.008e-14
cjb641112 89 2 1.106e-14
cjb2856 90 2 1.008e-14
cjt281112 91 2 1.106e-14
cjt2834 92 2 2.324e-14
cjt282122 93 2 1.05e-14
cjt281920 94 2 1.05e-14
cjt281314 95 2 1.05e-14
cjt6478 96 2 5.25e-14
cjt6456 97 2 1.106e-14
cjt6434 98 2 1.106e-14
cjt128910 99 2 1.008e-14
cjt12878 100 2 1.008e-14
cjt641112 101 2 1.106e-14
cjt2856 102 2 1.008e-14
.ends con4232
.subckt slice24 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12
+ low4
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 11 12 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 99 100 revsh
xstrip120 1 2 91 92 93
+ 94 95 96 97 98 99
+ 100
+ low4
.ends slice24
.subckt slice23 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low3
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low3
.ends slice23
.subckt slice22 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low2
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low2
.ends slice22
.subckt slice21 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30 31 32 33 34 35
+ 36 37 38 39 40 41
+ 42 43 44 45 46 47
+ 48 49 50 51 52 53
+ 54 55 56 57 58 59
+ 60 61 62 63 64 65
+ 66 67 68 69 70 71
+ 72 73 74 75 76 77
+ 78 79 80 81 82 83
+ 84 85 86 87 88 89
+ 90 91 92 93 94 95
+ 96 97 98 99 100
xstrip10 1 2 12 11 3
+ 4 5 6 7 8 9
+ 10
+ low1
xstrip20 1 2 1 1 13
+ 14 15 16 17 18 19
+ 20 12 11 revsh
xstrip30 1 2 1 1 21
+ 22 23 24 25 26 27
+ 28 15 16 revsh
xstrip40 1 2 1 1 29
+ 30 31 32 33 34 35
+ 36 23 24 revsh
xstrip50 1 2 1 1 37
+ 38 39 40 41 42 43
+ 44 31 32 revsh
xstrip60 1 2 52 51 1
+ 1 39 40 45 46 47
+ 48 49 50 shtop2
xshcap20 1 2 52 51 shcap2
xstrip70 1 2 52 51 1
+ 1 61 62 53 54 55
+ 56 57 58 shtop2
xstrip80 1 2 1 1 59
+ 60 61 62 63 64 65
+ 66 69 70 revsh
xstrip90 1 2 1 1 67
+ 68 69 70 71 72 73
+ 74 77 78 revsh
xstrip100 1 2 1 1 75
+ 76 77 78 79 80 81
+ 82 85 86 revsh
xstrip110 1 2 1 1 83
+ 84 85 86 87 88 89
+ 90 100 99 revsh
xstrip120 1 2 100 99 91
+ 92 93 94 95 96 97
+ 98
+ low1
.ends slice21
.subckt clk2b 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21 22 23
+ 24 25 26 27 28 29
+ 30
cju81011l 3 2 5.25e-14
cju81011r 4 2 5.25e-14
cju2889l 5 2 1.106e-14
cju2889r 6 2 1.106e-14
cju2867l 7 2 1.106e-14
cju2867r 8 2 1.106e-14
cju2845l 9 2 1.106e-14
cju2845r 10 2 1.106e-14
cju81213l 11 2 2.702e-14
cju81213r 12 2 2.702e-14
cju82120l 13 2 1.106e-14
cju82120r 14 2 1.106e-14
cp2b 15 2 5.8268e-13
cp2 16 2 5.6322e-13
cp1b 17 2 5.8268e-13
cp1 18 2 5.6322e-13
cjl2845l 19 2 1.106e-14
cjl2845r 20 2 1.106e-14
cjl2867l 21 2 1.106e-14
cjl2867r 22 2 1.106e-14
cjl2889l 23 2 1.106e-14
cjl2889r 24 2 1.106e-14
cjl81011l 25 2 5.25e-14
cjl81011r 26 2 5.25e-14
cjl81213l 27 2 2.702e-14
cjl81213r 28 2 2.702e-14
cjl82120l 29 2 1.106e-14
cjl82120r 30 2 1.106e-14
.ends clk2b
.subckt bcntl 1 2 3 4 5
+ 6 7 8 9 10
cc8 3 2 1.05406e-12
cc7 4 2 1.04566e-12
cc6 5 2 1.03726e-12
cc5 6 2 1.02886e-12
cc4 7 2 1.02046e-12
cc3 8 2 1.01206e-12
cc2 9 2 1.00366e-12
cc1 10 2 9.9526e-13
.ends bcntl
.subckt clkdec 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14
cc4b 3 2 1.946e-14
cc3b 4 2 1.946e-14
cc2b 5 2 1.946e-14
cc1b 6 2 1.946e-14
cc4 7 2 1.946e-14
cc3 8 2 1.946e-14
cc2 9 2 1.946e-14
cc1 10 2 1.946e-14
cphi1 11 2 1.2502e-13
cphi1b 12 2 8.61e-14
cphi2 13 2 1.2502e-13
cphi2b 14 2 8.61e-14
.ends clkdec
xcntl1bd0 1 0 3 4 5
+ 6 7 8 9 10 11 cntl1b
xmuxoutd0 1 0 6 12 13
+ 14 15 16 5 17 18
+ 19 20 4 21 22 3
+ 16 15 23 16 15 24
+ 25 11 26 muxout
xslice20d0 1 0 26 47 48
+ 26 25 24 15 16 25
+ 24 15 16 23 49 50
+ 23 25 24 15 16 22
+ 51 52 21 25 24 15
+ 16 20 53 54 19 25
+ 24 15 16 18 55 56
+ 17 13 57 58 12 25
+ 24 16 15 16 15 slice20
xslice19d0 1 0 57 95 96
+ 58 25 24 16 15 16
+ 15 25 24 15 16 55
+ 97 98 56 25 24 15
+ 16 53 99 100 54 25
+ 24 15 16 51 101 102
+ 52 25 24 15 16 49
+ 103 104 50 47 105 106
+ 48 25 24 15 16 slice19
xslice18d0 1 0 95 143 144
+ 96 25 24 16 15 16
+ 15 25 24 15 16 97
+ 145 146 98 25 24 15
+ 16 99 147 148 100 25
+ 24 15 16 101 149 150
+ 102 25 24 15 16 103
+ 151 152 104 105 153 154
+ 106 25 24 15 16 slice18
xslice17d0 1 0 143 191 192
+ 144 25 24 16 15 16
+ 15 25 24 15 16 145
+ 193 194 146 25 24 15
+ 16 147 195 196 148 25
+ 24 15 16 149 197 198
+ 150 25 24 15 16 151
+ 199 200 152 153 201 202
+ 154 25 24 15 16 slice17
xslice16d0 1 0 191 239 240
+ 192 25 24 16 15 16
+ 15 25 24 15 16 193
+ 241 242 194 25 24 15
+ 16 195 243 244 196 25
+ 24 15 16 197 245 246
+ 198 25 24 15 16 199
+ 247 248 200 201 249 250
+ 202 25 24 15 16 slice16
xslice15d0 1 0 239 287 288
+ 240 25 24 16 15 16
+ 15 25 24 15 16 241
+ 289 290 242 25 24 15
+ 16 243 291 292 244 25
+ 24 15 16 245 293 294
+ 246 25 24 15 16 247
+ 295 296 248 249 297 298
+ 250 25 24 15 16 slice15
xslice14d0 1 0 287 335 336
+ 288 25 24 16 15 16
+ 15 25 24 15 16 289
+ 337 338 290 25 24 15
+ 16 291 339 340 292 25
+ 24 15 16 293 341 342
+ 294 25 24 15 16 295
+ 343 344 296 297 345 346
+ 298 25 24 15 16 slice14
xslice13d0 1 0 335 383 383
+ 336 25 24 16 15 16
+ 15 25 24 15 16 337
+ 384 385 338 25 24 15
+ 16 339 386 387 340 25
+ 24 15 16 341 388 389
+ 342 25 24 15 16 343
+ 389 390 344 345 391 392
+ 346 25 24 15 16 slice13
xcon21d0 1 0 15 16 429
+ 383 25 24 16 15 25
+ 24 16 15 385 384 25
+ 24 16 15 387 386 430
+ 388 389 390 15 16 24
+ 25 15 16 1 24 25
+ 0 25 24 16 15 391
+ 392
+ con21
xslice12d0 1 0 429 431 432
+ 429 25 24 16 15 16
+ 15 25 24 15 16 384
+ 433 434 385 25 24 15
+ 16 386 435 436 387 25
+ 24 15 16 430 437 438
+ 430 25 24 15 16 388
+ 439 440 390 391 441 442
+ 392 25 24 15 16 slice12
xslice11d0 1 0 431 479 480
+ 432 25 24 16 15 16
+ 15 25 24 15 16 433
+ 481 482 434 25 24 15
+ 16 435 483 484 436 25
+ 24 15 16 437 485 486
+ 438 25 24 15 16 439
+ 487 488 440 441 489 490
+ 442 25 24 15 16 slice11
xslice10d0 1 0 479 527 528
+ 480 25 24 16 15 16
+ 15 25 24 15 16 481
+ 529 530 482 25 24 15
+ 16 483 531 532 484 25
+ 24 15 16 485 533 534
+ 486 25 24 15 16 487
+ 535 536 488 489 537 538
+ 490 25 24 15 16 slice10
xslice9d0 1 0 527 575 576
+ 528 25 24 16 15 16
+ 15 25 24 15 16 529
+ 575 576 530 25 24 15
+ 16 531 577 578 532 25
+ 24 15 16 533 579 580
+ 534 25 24 15 16 535
+ 581 582 536 537 583 584
+ 538 25 24 15 16 slice9
xcon32d0 1 0 16 15 25
+ 25 24 24 16 16 15
+ 15 1 1 0 0 576
+ 621 575 622 25 24 16
+ 15 578 577 25 24 16
+ 15 580 579 25 24 16
+ 15 582 581 25 24 16
+ 15 583 584 con32
xslice8d0 1 0 621 623 624
+ 621 25 24 16 15 16
+ 15 25 24 15 16 622
+ 625 626 622 25 24 15
+ 16 577 627 628 578 25
+ 24 15 16 579 629 630
+ 580 25 24 15 16 581
+ 631 632 582 583 633 634
+ 584 25 24 15 16 slice8
xslice7d0 1 0 623 671 672
+ 624 25 24 16 15 16
+ 15 25 24 15 16 625
+ 673 674 626 25 24 15
+ 16 627 675 676 628 25
+ 24 15 16 629 677 678
+ 630 25 24 15 16 631
+ 679 680 632 633 681 682
+ 634 25 24 15 16 slice7
xslice6d0 1 0 671 719 720
+ 672 25 24 16 15 16
+ 15 25 24 15 16 673
+ 721 722 674 25 24 15
+ 16 675 723 724 676 25
+ 24 15 16 677 725 726
+ 678 25 24 15 16 679
+ 727 728 680 681 729 730
+ 682 25 24 15 16 slice6
xslice5d0 1 0 719 767 768
+ 720 25 24 16 15 16
+ 15 25 24 15 16 721
+ 767 769 722 25 24 15
+ 16 723 769 770 724 25
+ 24 15 16 725 770 768
+ 726 25 24 15 16 727
+ 771 772 728 729 773 774
+ 730 25 24 15 16 slice5
xcon43d0 1 0 15 16 1
+ 1 0 0 25 25 24
+ 24 15 15 16 16 768
+ 811 767 812 769 16 16
+ 15 15 24 24 25 25
+ 0 0 1 1 813 770
+ 814 771 772 25 24 16
+ 15 25 24 16 15 774
+ 773
+ con43
xslice4d0 1 0 16 15 24
+ 25 811 815 816 811 15
+ 16 25 24 15 16 812
+ 817 818 812 25 24 15
+ 16 814 819 820 814 25
+ 24 15 16 771 821 822
+ 813 25 24 15 16 813
+ 823 824 772 773 825 826
+ 774 25 24 15 16 slice4
xslice3d0 1 0 816 863 864
+ 815 25 24 16 15 16
+ 15 25 24 15 16 817
+ 865 866 818 25 24 15
+ 16 819 867 868 820 25
+ 24 15 16 821 869 870
+ 822 25 24 15 16 823
+ 871 872 824 825 873 874
+ 826 25 24 15 16 slice3
xslice2d0 1 0 863 911 912
+ 864 25 24 16 15 16
+ 15 25 24 15 16 865
+ 913 914 866 25 24 15
+ 16 867 915 916 868 25
+ 24 15 16 869 917 918
+ 870 25 24 15 16 871
+ 919 920 872 873 921 922
+ 874 25 24 15 16 slice2
xslice1d0 1 0 911 959 960
+ 912 25 24 16 15 16
+ 15 25 24 15 16 913
+ 959 961 914 25 24 15
+ 16 915 961 962 916 25
+ 24 15 16 917 962 960
+ 918 25 24 15 16 919
+ 963 964 920 921 963 964
+ 922 25 24 15 16 slice1
xclk1bh0 1 0 1001 962 1002
+ 961 1003 959 1004 960 1005
+ 963 1006 964 16 24 15
+ 25
+ clk1b
xslice1h0 1 0 1007 1003 1004
+ 1008 25 24 16 15 16
+ 15 25 24 15 16 1009
+ 1003 1002 1010 25 24 15
+ 16 1011 1002 1001 1012 25
+ 24 15 16 1013 1001 1004
+ 1014 25 24 15 16 1015
+ 1005 1006 1016 1017 1005 1006
+ 1018 25 24 15 16 slice1
xslice2h0 1 0 1055 1007 1008
+ 1056 25 24 16 15 16
+ 15 25 24 15 16 1057
+ 1009 1010 1058 25 24 15
+ 16 1059 1011 1012 1060 25
+ 24 15 16 1061 1013 1014
+ 1062 25 24 15 16 1063
+ 1015 1016 1064 1065 1017 1018
+ 1066 25 24 15 16 slice2
xslice3h0 1 0 1103 1055 1056
+ 1104 25 24 16 15 16
+ 15 25 24 15 16 1105
+ 1057 1058 1106 25 24 15
+ 16 1107 1059 1060 1108 25
+ 24 15 16 1109 1061 1062
+ 1110 25 24 15 16 1111
+ 1063 1064 1112 1113 1065 1066
+ 1114 25 24 15 16 slice3
xslice4h0 1 0 16 15 24
+ 25 1151 1104 1103 1151 15
+ 16 25 24 15 16 1152
+ 1105 1106 1152 25 24 15
+ 16 1153 1107 1108 1153 25
+ 24 15 16 1154 1109 1110
+ 1155 25 24 15 16 1155
+ 1111 1112 1156 1157 1113 1114
+ 1158 25 24 15 16 slice4
xcon43h0 1 0 15 16 1
+ 1 0 0 25 25 24
+ 24 15 15 16 16 1195
+ 1151 1196 1152 1197 16 16
+ 15 15 24 24 25 25
+ 0 0 1 1 1155 1198
+ 1153 1154 1156 25 24 16
+ 15 25 24 16 15 1158
+ 1157
+ con43
xslice5h0 1 0 1199 1196 1195
+ 1200 25 24 16 15 16
+ 15 25 24 15 16 1201
+ 1196 1197 1202 25 24 15
+ 16 1203 1197 1198 1204 25
+ 24 15 16 1205 1198 1195
+ 1206 25 24 15 16 1207
+ 1154 1156 1208 1209 1157 1158
+ 1210 25 24 15 16 slice5
xslice6h0 1 0 1247 1199 1200
+ 1248 25 24 16 15 16
+ 15 25 24 15 16 1249
+ 1201 1202 1250 25 24 15
+ 16 1251 1203 1204 1252 25
+ 24 15 16 1253 1205 1206
+ 1254 25 24 15 16 1255
+ 1207 1208 1256 1257 1209 1210
+ 1258 25 24 15 16 slice6
xslice7h0 1 0 1295 1247 1248
+ 1296 25 24 16 15 16
+ 15 25 24 15 16 1297
+ 1249 1250 1298 25 24 15
+ 16 1299 1251 1252 1300 25
+ 24 15 16 1301 1253 1254
+ 1302 25 24 15 16 1303
+ 1255 1256 1304 1305 1257 1258
+ 1306 25 24 15 16 slice7
xslice8h0 1 0 1343 1295 1296
+ 1343 25 24 16 15 16
+ 15 25 24 15 16 1344
+ 1297 1298 1344 25 24 15
+ 16 1345 1299 1300 1346 25
+ 24 15 16 1347 1301 1302
+ 1348 25 24 15 16 1349
+ 1303 1304 1350 1351 1305 1306
+ 1352 25 24 15 16 slice8
xcon32h0 1 0 16 15 25
+ 25 24 24 16 16 15
+ 15 1 1 0 0 1389
+ 1343 1390 1344 25 24 16
+ 15 1346 1345 25 24 16
+ 15 1348 1347 25 24 16
+ 15 1350 1349 25 24 16
+ 15 1351 1352 con32
xslice9h0 1 0 1391 1390 1389
+ 1392 25 24 16 15 16
+ 15 25 24 15 16 1393
+ 1390 1389 1394 25 24 15
+ 16 1395 1345 1346 1396 25
+ 24 15 16 1397 1347 1348
+ 1398 25 24 15 16 1399
+ 1349 1350 1400 1401 1351 1352
+ 1402 25 24 15 16 slice9
xslice10h0 1 0 1439 1391 1392
+ 1440 25 24 16 15 16
+ 15 25 24 15 16 1441
+ 1393 1394 1442 25 24 15
+ 16 1443 1395 1396 1444 25
+ 24 15 16 1445 1397 1398
+ 1446 25 24 15 16 1447
+ 1399 1400 1448 1449 1401 1402
+ 1450 25 24 15 16 slice10
xslice11h0 1 0 1487 1439 1440
+ 1488 25 24 16 15 16
+ 15 25 24 15 16 1489
+ 1441 1442 1490 25 24 15
+ 16 1491 1443 1444 1492 25
+ 24 15 16 1493 1445 1446
+ 1494 25 24 15 16 1495
+ 1447 1448 1496 1497 1449 1450
+ 1498 25 24 15 16 slice11
xslice12h0 1 0 1535 1487 1488
+ 1535 25 24 16 15 16
+ 15 25 24 15 16 1536
+ 1489 1490 1537 25 24 15
+ 16 1538 1491 1492 1539 25
+ 24 15 16 1540 1493 1494
+ 1540 25 24 15 16 1541
+ 1495 1496 1542 1543 1497 1498
+ 1544 25 24 15 16 slice12
xcon21h0 1 0 15 16 1535
+ 1581 25 24 16 15 25
+ 24 16 15 1537 1536 25
+ 24 16 15 1539 1538 1540
+ 1541 1582 1542 15 16 24
+ 25 15 16 1 24 25
+ 0 25 24 16 15 1543
+ 1544
+ con21
xslice13h0 1 0 1583 1581 1581
+ 1584 25 24 16 15 16
+ 15 25 24 15 16 1585
+ 1536 1537 1586 25 24 15
+ 16 1587 1538 1539 1588 25
+ 24 15 16 1589 1541 1582
+ 1590 25 24 15 16 1591
+ 1582 1542 1592 1593 1543 1544
+ 1594 25 24 15 16 slice13
xslice14h0 1 0 1631 1583 1584
+ 1632 25 24 16 15 16
+ 15 25 24 15 16 1633
+ 1585 1586 1634 25 24 15
+ 16 1635 1587 1588 1636 25
+ 24 15 16 1637 1589 1590
+ 1638 25 24 15 16 1639
+ 1591 1592 1640 1641 1593 1594
+ 1642 25 24 15 16 slice14
xslice15h0 1 0 1679 1631 1632
+ 1680 25 24 16 15 16
+ 15 25 24 15 16 1681
+ 1633 1634 1682 25 24 15
+ 16 1683 1635 1636 1684 25
+ 24 15 16 1685 1637 1638
+ 1686 25 24 15 16 1687
+ 1639 1640 1688 1689 1641 1642
+ 1690 25 24 15 16 slice15
xslice16h0 1 0 1727 1679 1680
+ 1728 25 24 16 15 16
+ 15 25 24 15 16 1729
+ 1681 1682 1730 25 24 15
+ 16 1731 1683 1684 1732 25
+ 24 15 16 1733 1685 1686
+ 1734 25 24 15 16 1735
+ 1687 1688 1736 1737 1689 1690
+ 1738 25 24 15 16 slice16
xslice17h0 1 0 1775 1727 1728
+ 1776 25 24 16 15 16
+ 15 25 24 15 16 1777
+ 1729 1730 1778 25 24 15
+ 16 1779 1731 1732 1780 25
+ 24 15 16 1781 1733 1734
+ 1782 25 24 15 16 1783
+ 1735 1736 1784 1785 1737 1738
+ 1786 25 24 15 16 slice17
xslice18h0 1 0 1823 1775 1776
+ 1824 25 24 16 15 16
+ 15 25 24 15 16 1825
+ 1777 1778 1826 25 24 15
+ 16 1827 1779 1780 1828 25
+ 24 15 16 1829 1781 1782
+ 1830 25 24 15 16 1831
+ 1783 1784 1832 1833 1785 1786
+ 1834 25 24 15 16 slice18
xslice19h0 1 0 1871 1823 1824
+ 1872 25 24 16 15 16
+ 15 25 24 15 16 1873
+ 1825 1826 1874 25 24 15
+ 16 1875 1827 1828 1876 25
+ 24 15 16 1877 1829 1830
+ 1878 25 24 15 16 1879
+ 1831 1832 1880 1881 1833 1834
+ 1882 25 24 15 16 slice19
xslice20h0 1 0 1919 1881 1882
+ 1919 25 24 15 16 25
+ 24 15 16 1920 1879 1880
+ 1920 25 24 15 16 1921
+ 1877 1878 1922 25 24 15
+ 16 1923 1875 1876 1924 25
+ 24 15 16 1925 1873 1874
+ 1926 1927 1871 1872 1928 25
+ 24 16 15 16 15 slice20
xmuxouth0 1 0 6 1928 1927
+ 1965 15 16 5 1926 1925
+ 1924 1923 4 1922 1921 3
+ 16 15 1920 16 15 24
+ 25 1966 1919 muxout
xcntl1bh0 1 0 3 4 5
+ 6 7 8 9 10 1966 cntl1b
xcntldeccd0 1 0 1987 1988 7
+ 8 9 10 3 4 5
+ 6
+ cntldec
xshift1d0 1 0 14 1989 25
+ 24 15 16 rshift
xshift2d0 1 0 1989 1994 1995
+ 1996 25 24 1987 15 16 shift
xshift3d0 1 0 1994 2001 2002
+ 2003 25 24 1987 15 16 shift
xcondec8gh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec8
xcondec7gh0 1 0 10 9 8
+ 7 2011 2010 2009 2008 condec7
xcondec6gh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec6
xcondec5gh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec5
xcondec4gh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec4
xcondec3gh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec3
xcondec2gh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec2
xcondec1gh0 1 0 10 9 8
+ 7 2011 2010 2009 2008 condec1
xndec8g0 1 0 10 2010 2009
+ 2008 2011 2010 2009 2008 2012
+ 2013 2014 2015 2016 ndec8
xndec7g0 1 0 10 9 2009
+ 2008 2011 9 2009 2008 2023
+ 2024 2025 2026 2016 ndec7
xndec6g0 1 0 2016 2033 2034
+ 2035 2036 2008 8 2010 2011
+ 2008 8 2010 10 ndec6
xndec5g0 1 0 10 9 8
+ 2008 2011 9 8 2008 2043
+ 2044 2045 2046 2016 ndec5
xndec4g0 1 0 10 2010 2009
+ 7 2011 2010 2009 7 2053
+ 2054 2055 2056 2016 ndec4
xndec3g0 1 0 2016 2063 2064
+ 2065 2066 7 2009 9 2011
+ 7 2009 9 10 ndec3
xndec2g0 1 0 10 2010 8
+ 7 2011 2010 8 7 2073
+ 2074 2016 2075 2076 ndec2
xndec1g0 1 0 2083 2016 2084
+ 2085 7 8 9 2011 7
+ 8 9 10 2076 2086 ndec1
xfilldec2gh0 1 0 2093 2094 2086
+ 2083 2095 2016 10 9 8
+ 7 2011 2010 2009 2008 filldec2
xshift16g0 1 0 2013 2012 2014
+ 2015 2096 25 24 15 16
+ 2016 2016 lshift
xshift15g0 1 0 2102 2096 2025
+ 2026 25 24 2016 15 16 shift
xshift14g0 1 0 2107 2102 2023
+ 2024 25 24 2016 15 16 shift
xshift13g0 1 0 2112 2107 2034
+ 2033 25 24 2016 15 16 shift
xshift12g0 1 0 2117 2112 2036
+ 2035 25 24 2016 15 16 shift
xshift11g0 1 0 2122 2117 2045
+ 2046 25 24 2016 15 16 shift
xshift10g0 1 0 2127 2122 2043
+ 2044 25 24 2016 15 16 shift
xshift9g0 1 0 2132 2127 2055
+ 2056 25 24 2016 15 16 shift
xshift8g0 1 0 2137 2132 2053
+ 2054 25 24 2016 15 16 shift
xshift7g0 1 0 2142 2137 2064
+ 2063 25 24 2016 15 16 shift
xshift6g0 1 0 2147 2142 2066
+ 2065 25 24 2016 15 16 shift
xshift5g0 1 0 2152 2147 2073
+ 2074 25 24 2016 15 16 shift
xshift4g0 1 0 2157 2152 2075
+ 2076 25 24 2016 15 16 shift
xshift3g0 1 0 2162 2157 2085
+ 2084 25 24 2016 15 16 shift
xshift2g0 1 0 2167 2162 2083
+ 2086 25 24 2016 15 16 shift
xshift1g0 1 0 2172 2167 25
+ 24 15 16 rshift
xcntldecgh0 1 0 2095 2016 7
+ 8 9 10 3 4 5
+ 6
+ cntldec
xcntl2bbc0 1 0 10 9 8
+ 7 6 5 4 3 2177
+ 2178
+ cntl2b
xmuxout2bc0 1 0 6 2179 2180
+ 2181 15 16 5 2182 2183
+ 2184 2185 4 2186 2187 3
+ 6 2188 2189 2190 15 16
+ 5 2191 2192 2193 2194 4
+ 2195 2196 3 2178 2177 2197
+ 2198 2199 2200 25 25 24
+ 24 16 16 15 15 muxout2
xslice220bc0 1 0 2180 2241 2242
+ 2179 25 24 16 15 16
+ 15 25 24 15 16 2183
+ 2243 2244 2182 25 24 15
+ 16 2185 2245 2246 2184 25
+ 24 15 16 2187 2247 2248
+ 2186 25 24 15 16 2197
+ 2249 2250 2197 24 25 2198
+ 2251 2252 2198 15 16 24
+ 25 2199 2253 2254 2199 25
+ 24 15 16 2200 2255 2256
+ 2200 25 24 15 16 2196
+ 2257 2258 2195 25 24 15
+ 16 2194 2259 2260 2193 25
+ 24 15 16 2192 2261 2262
+ 2191 2189 2263 2264 2188 25
+ 24 16 15 16 15 slice220
xslice219bc0 1 0 2241 2337 2338
+ 2242 25 24 16 15 16
+ 15 25 24 15 16 2243
+ 2339 2340 2244 25 24 15
+ 16 2245 2341 2342 2246 25
+ 24 15 16 2247 2343 2344
+ 2248 25 24 15 16 2249
+ 2345 2346 2250 24 25 2251
+ 2347 2348 2252 15 16 24
+ 25 2253 2349 2350 2254 25
+ 24 15 16 2255 2351 2352
+ 2256 25 24 15 16 2257
+ 2353 2354 2258 25 24 15
+ 16 2259 2355 2356 2260 25
+ 24 15 16 2261 2357 2358
+ 2262 2263 2359 2360 2264 25
+ 24 16 15 16 15 slice219
xslice218bc0 1 0 2337 2433 2434
+ 2338 25 24 16 15 16
+ 15 25 24 15 16 2339
+ 2435 2436 2340 25 24 15
+ 16 2341 2437 2438 2342 25
+ 24 15 16 2343 2439 2440
+ 2344 25 24 15 16 2345
+ 2441 2442 2346 24 25 2347
+ 2443 2444 2348 15 16 24
+ 25 2349 2445 2446 2350 25
+ 24 15 16 2351 2447 2448
+ 2352 25 24 15 16 2353
+ 2449 2450 2354 25 24 15
+ 16 2355 2451 2452 2356 25
+ 24 15 16 2357 2453 2454
+ 2358 2359 2455 2456 2360 25
+ 24 16 15 16 15 slice218
xslice217bc0 1 0 2433 2529 2530
+ 2434 25 24 16 15 16
+ 15 25 24 15 16 2435
+ 2531 2532 2436 25 24 15
+ 16 2437 2533 2534 2438 25
+ 24 15 16 2439 2535 2536
+ 2440 25 24 15 16 2441
+ 2537 2538 2442 24 25 2443
+ 2539 2540 2444 15 16 24
+ 25 2445 2541 2542 2446 25
+ 24 15 16 2447 2543 2544
+ 2448 25 24 15 16 2449
+ 2545 2546 2450 25 24 15
+ 16 2451 2547 2548 2452 25
+ 24 15 16 2453 2549 2550
+ 2454 2455 2551 2552 2456 25
+ 24 16 15 16 15 slice217
xslice216bc0 1 0 2529 2625 2626
+ 2530 25 24 16 15 16
+ 15 25 24 15 16 2531
+ 2627 2628 2532 25 24 15
+ 16 2533 2629 2630 2534 25
+ 24 15 16 2535 2631 2632
+ 2536 25 24 15 16 2537
+ 2633 2634 2538 24 25 2539
+ 2635 2636 2540 15 16 24
+ 25 2541 2637 2638 2542 25
+ 24 15 16 2543 2639 2640
+ 2544 25 24 15 16 2545
+ 2641 2642 2546 25 24 15
+ 16 2547 2643 2644 2548 25
+ 24 15 16 2549 2645 2646
+ 2550 2551 2647 2648 2552 25
+ 24 16 15 16 15 slice216
xslice215bc0 1 0 2625 2721 2722
+ 2626 25 24 16 15 16
+ 15 25 24 15 16 2627
+ 2723 2724 2628 25 24 15
+ 16 2629 2725 2726 2630 25
+ 24 15 16 2631 2727 2728
+ 2632 25 24 15 16 2633
+ 2729 2730 2634 24 25 2635
+ 2731 2732 2636 15 16 24
+ 25 2637 2733 2734 2638 25
+ 24 15 16 2639 2735 2736
+ 2640 25 24 15 16 2641
+ 2737 2738 2642 25 24 15
+ 16 2643 2739 2740 2644 25
+ 24 15 16 2645 2741 2742
+ 2646 2647 2743 2744 2648 25
+ 24 16 15 16 15 slice215
xslice214bc0 1 0 2721 2817 2818
+ 2722 25 24 16 15 16
+ 15 25 24 15 16 2723
+ 2819 2820 2724 25 24 15
+ 16 2725 2821 2822 2726 25
+ 24 15 16 2727 2823 2824
+ 2728 25 24 15 16 2729
+ 2825 2826 2730 24 25 2731
+ 2827 2828 2732 15 16 24
+ 25 2733 2829 2830 2734 25
+ 24 15 16 2735 2831 2832
+ 2736 25 24 15 16 2737
+ 2833 2834 2738 25 24 15
+ 16 2739 2835 2836 2740 25
+ 24 15 16 2741 2837 2838
+ 2742 2743 2839 2840 2744 25
+ 24 16 15 16 15 slice214
xslice213bc0 1 0 2817 2913 2913
+ 2818 25 24 16 15 16
+ 15 25 24 15 16 2819
+ 2914 2915 2820 25 24 15
+ 16 2821 2916 2917 2822 25
+ 24 15 16 2823 2918 2919
+ 2824 25 24 15 16 2825
+ 2919 2920 2826 24 25 2827
+ 2921 2922 2828 15 16 24
+ 25 2829 2923 2924 2830 25
+ 24 15 16 2831 2925 2926
+ 2832 25 24 15 16 2833
+ 2927 2925 2834 25 24 15
+ 16 2835 2928 2929 2836 25
+ 24 15 16 2837 2930 2931
+ 2838 2839 2932 2932 2840 25
+ 24 16 15 16 15 slice213
xcon2212bc0 1 0 24 24 24
+ 24 24 24 25 25 25
+ 25 25 25 15 15 15
+ 15 15 15 16 16 16
+ 16 16 16 0 0 0
+ 0 0 0 1 1 1
+ 1 1 1 1 24 24
+ 24 24 24 24 25 25
+ 25 25 25 25 15 15
+ 15 15 15 15 15 16
+ 16 16 16 16 16 16
+ 0 0 0 0 0 0
+ 1 1 1 1 1 1
+ 1 2913 3005 2914 2915 2916
+ 2917 3006 2919 2918 2920 2921
+ 2922 2932 3007 2930 2931 2928
+ 2929 3008 2925 2927 2926 2923
+ 2924
+ con2212
xslice212bc0 1 0 3005 3009 3010
+ 3005 25 24 16 15 16
+ 15 25 24 15 16 2914
+ 3011 3012 2915 25 24 15
+ 16 2916 3013 3014 2917 25
+ 24 15 16 3006 3015 3016
+ 3006 25 24 15 16 2918
+ 3017 3018 2920 24 25 2921
+ 3019 3020 2922 15 16 24
+ 25 2923 3021 3022 2924 25
+ 24 15 16 2927 3023 3024
+ 2926 25 24 15 16 3008
+ 3025 3026 3008 25 24 15
+ 16 2928 3027 3028 2929 25
+ 24 15 16 2930 3029 3030
+ 2931 3007 3031 3032 3007 25
+ 24 16 15 16 15 slice212
xslice211bc0 1 0 3009 3105 3106
+ 3010 25 24 16 15 16
+ 15 25 24 15 16 3011
+ 3107 3108 3012 25 24 15
+ 16 3013 3109 3110 3014 25
+ 24 15 16 3015 3111 3112
+ 3016 25 24 15 16 3017
+ 3113 3114 3018 24 25 3019
+ 3115 3116 3020 15 16 24
+ 25 3021 3117 3118 3022 25
+ 24 15 16 3023 3119 3120
+ 3024 25 24 15 16 3025
+ 3121 3122 3026 25 24 15
+ 16 3027 3123 3124 3028 25
+ 24 15 16 3029 3125 3126
+ 3030 3031 3127 3128 3032 25
+ 24 16 15 16 15 slice211
xslice210bc0 1 0 3105 3201 3202
+ 3106 25 24 16 15 16
+ 15 25 24 15 16 3107
+ 3203 3204 3108 25 24 15
+ 16 3109 3205 3206 3110 25
+ 24 15 16 3111 3207 3208
+ 3112 25 24 15 16 3113
+ 3209 3210 3114 24 25 3115
+ 3211 3212 3116 15 16 24
+ 25 3117 3213 3214 3118 25
+ 24 15 16 3119 3215 3216
+ 3120 25 24 15 16 3121
+ 3217 3218 3122 25 24 15
+ 16 3123 3219 3220 3124 25
+ 24 15 16 3125 3221 3222
+ 3126 3127 3223 3224 3128 25
+ 24 16 15 16 15 slice210
xslice29bc0 1 0 3201 3297 3298
+ 3202 25 24 16 15 16
+ 15 25 24 15 16 3203
+ 3297 3298 3204 25 24 15
+ 16 3205 3299 3300 3206 25
+ 24 15 16 3207 3301 3302
+ 3208 25 24 15 16 3209
+ 3303 3304 3210 24 25 3211
+ 3305 3306 3212 15 16 24
+ 25 3213 3307 3308 3214 25
+ 24 15 16 3215 3309 3310
+ 3216 25 24 15 16 3217
+ 3311 3312 3218 25 24 15
+ 16 3219 3313 3314 3220 25
+ 24 15 16 3221 3315 3316
+ 3222 3223 3315 3316 3224 25
+ 24 16 15 16 15 slice29
xcon3222bc0 1 0 24 24 24
+ 24 24 24 25 25 25
+ 25 25 25 15 15 15
+ 15 15 15 16 16 16
+ 16 16 16 0 0 0
+ 0 0 0 1 1 1
+ 1 1 1 1 24 24
+ 24 24 24 24 25 25
+ 25 25 25 25 15 15
+ 15 15 15 15 15 16
+ 16 16 16 16 16 16
+ 0 0 0 0 0 0
+ 1 1 1 1 1 1
+ 1 3297 3298 3389 3390 3299
+ 3300 3301 3302 3303 3304 3305
+ 3306 3315 3316 3391 3392 3313
+ 3314 3311 3312 3309 3310 3307
+ 3308
+ con3222
xslice28bc0 1 0 3389 3393 3394
+ 3389 25 24 16 15 16
+ 15 25 24 15 16 3390
+ 3395 3396 3390 25 24 15
+ 16 3299 3397 3398 3300 25
+ 24 15 16 3301 3399 3400
+ 3302 25 24 15 16 3303
+ 3401 3402 3304 24 25 3305
+ 3403 3404 3306 15 16 24
+ 25 3307 3405 3406 3308 25
+ 24 15 16 3309 3407 3408
+ 3310 25 24 15 16 3311
+ 3409 3410 3312 25 24 15
+ 16 3313 3411 3412 3314 25
+ 24 15 16 3392 3413 3414
+ 3392 3391 3415 3416 3391 25
+ 24 16 15 16 15 slice28
xslice27bc0 1 0 3393 3489 3490
+ 3394 25 24 16 15 16
+ 15 25 24 15 16 3395
+ 3491 3492 3396 25 24 15
+ 16 3397 3493 3494 3398 25
+ 24 15 16 3399 3495 3496
+ 3400 25 24 15 16 3401
+ 3497 3498 3402 24 25 3403
+ 3499 3500 3404 15 16 24
+ 25 3405 3501 3502 3406 25
+ 24 15 16 3407 3503 3504
+ 3408 25 24 15 16 3409
+ 3505 3506 3410 25 24 15
+ 16 3411 3507 3508 3412 25
+ 24 15 16 3413 3509 3510
+ 3414 3415 3511 3512 3416 25
+ 24 16 15 16 15 slice27
xslice26bc0 1 0 3489 3585 3586
+ 3490 25 24 16 15 16
+ 15 25 24 15 16 3491
+ 3587 3588 3492 25 24 15
+ 16 3493 3589 3590 3494 25
+ 24 15 16 3495 3591 3592
+ 3496 25 24 15 16 3497
+ 3593 3594 3498 24 25 3499
+ 3595 3596 3500 15 16 24
+ 25 3501 3597 3598 3502 25
+ 24 15 16 3503 3599 3600
+ 3504 25 24 15 16 3505
+ 3601 3602 3506 25 24 15
+ 16 3507 3603 3604 3508 25
+ 24 15 16 3509 3605 3606
+ 3510 3511 3607 3608 3512 25
+ 24 16 15 16 15 slice26
xslice25bc0 1 0 3585 3681 3682
+ 3586 25 24 16 15 16
+ 15 25 24 15 16 3587
+ 3681 3683 3588 25 24 15
+ 16 3589 3683 3684 3590 25
+ 24 15 16 3591 3684 3682
+ 3592 25 24 15 16 3593
+ 3685 3686 3594 24 25 3595
+ 3687 3688 3596 15 16 24
+ 25 3597 3689 3690 3598 25
+ 24 15 16 3599 3691 3692
+ 3600 25 24 15 16 3601
+ 3693 3694 3602 25 24 15
+ 16 3603 3695 3693 3604 25
+ 24 15 16 3605 3696 3695
+ 3606 3607 3696 3694 3608 25
+ 24 16 15 16 15 slice25
xcon4232bc0 1 0 24 24 24
+ 24 24 24 25 25 25
+ 25 25 25 15 15 15
+ 15 15 15 16 16 16
+ 16 16 16 0 0 0
+ 0 0 0 1 1 1
+ 1 1 1 1 24 24
+ 24 24 24 24 25 25
+ 25 25 25 25 15 15
+ 15 15 15 15 15 16
+ 16 16 16 16 16 16
+ 0 0 0 0 0 0
+ 1 1 1 1 1 1
+ 1 3769 3685 3686 3687 3688
+ 3682 3681 3683 3770 3771 3684
+ 3772 3773 3691 3692 3689 3690
+ 3694 3696 3695 3774 3775 3693
+ 3776
+ con4232
xslice24bc0 1 0 16 15 24
+ 25 3770 3777 3778 3770 15
+ 16 25 24 15 16 3771
+ 3779 3780 3771 25 24 15
+ 16 3772 3781 3782 3772 25
+ 24 15 16 3685 3783 3784
+ 3769 25 24 15 16 3769
+ 3785 3786 3686 24 25 3687
+ 3787 3788 3688 15 16 24
+ 25 3689 3789 3790 3690 25
+ 24 15 16 3773 3791 3792
+ 3692 25 24 15 16 3691
+ 3793 3794 3773 25 24 15
+ 16 3776 3795 3796 3776 25
+ 24 15 16 3775 3797 3798
+ 3775 16 15 24 25 3774
+ 3799 3800 3774 15 16 slice24
xslice23bc0 1 0 3778 3873 3874
+ 3777 25 24 16 15 16
+ 15 25 24 15 16 3779
+ 3875 3876 3780 25 24 15
+ 16 3781 3877 3878 3782 25
+ 24 15 16 3783 3879 3880
+ 3784 25 24 15 16 3785
+ 3881 3882 3786 24 25 3787
+ 3883 3884 3788 15 16 24
+ 25 3789 3885 3886 3790 25
+ 24 15 16 3791 3887 3888
+ 3792 25 24 15 16 3793
+ 3889 3890 3794 25 24 15
+ 16 3795 3891 3892 3796 25
+ 24 15 16 3797 3893 3894
+ 3798 3800 3895 3896 3799 25
+ 24 16 15 16 15 slice23
xslice22bc0 1 0 3873 3969 3970
+ 3874 25 24 16 15 16
+ 15 25 24 15 16 3875
+ 3971 3972 3876 25 24 15
+ 16 3877 3973 3974 3878 25
+ 24 15 16 3879 3975 3976
+ 3880 25 24 15 16 3881
+ 3977 3978 3882 24 25 3883
+ 3979 3980 3884 15 16 24
+ 25 3885 3981 3982 3886 25
+ 24 15 16 3887 3983 3984
+ 3888 25 24 15 16 3889
+ 3985 3986 3890 25 24 15
+ 16 3891 3987 3988 3892 25
+ 24 15 16 3893 3989 3990
+ 3894 3895 3991 3992 3896 25
+ 24 16 15 16 15 slice22
xslice21bc0 1 0 3969 4065 4066
+ 3970 25 24 16 15 16
+ 15 25 24 15 16 3971
+ 4065 4067 3972 25 24 15
+ 16 3973 4067 4068 3974 25
+ 24 15 16 3975 4068 4066
+ 3976 25 24 15 16 3977
+ 4069 4070 3978 24 25 3979
+ 4070 4069 3980 15 16 24
+ 25 3981 4071 4072 3982 25
+ 24 15 16 3983 4072 4071
+ 3984 25 24 15 16 3985
+ 4073 4074 3986 25 24 15
+ 16 3987 4075 4073 3988 25
+ 24 15 16 3989 4076 4075
+ 3990 3991 4076 4074 3992 25
+ 24 16 15 16 15 slice21
xclk2bbcfg0 1 0 4149 4074 4150
+ 4076 4151 4075 4152 4073 4153
+ 4072 4154 4071 16 24 15
+ 25 4155 4068 4156 4067 4157
+ 4065 4158 4066 4159 4069 4160
+ 4070
+ clk2b
xslice21fg0 1 0 4161 4157 4158
+ 4162 25 24 16 15 16
+ 15 25 24 15 16 4163
+ 4157 4156 4164 25 24 15
+ 16 4165 4156 4155 4166 25
+ 24 15 16 4167 4155 4158
+ 4168 25 24 15 16 4169
+ 4159 4160 4170 24 25 4171
+ 4160 4159 4172 15 16 24
+ 25 4173 4154 4153 4174 25
+ 24 15 16 4175 4153 4154
+ 4176 25 24 15 16 4177
+ 4152 4149 4178 25 24 15
+ 16 4179 4151 4152 4180 25
+ 24 15 16 4181 4150 4151
+ 4182 4183 4150 4149 4184 25
+ 24 16 15 16 15 slice21
xslice22fg0 1 0 4257 4161 4162
+ 4258 25 24 16 15 16
+ 15 25 24 15 16 4259
+ 4163 4164 4260 25 24 15
+ 16 4261 4165 4166 4262 25
+ 24 15 16 4263 4167 4168
+ 4264 25 24 15 16 4265
+ 4169 4170 4266 24 25 4267
+ 4171 4172 4268 15 16 24
+ 25 4269 4173 4174 4270 25
+ 24 15 16 4271 4175 4176
+ 4272 25 24 15 16 4273
+ 4177 4178 4274 25 24 15
+ 16 4275 4179 4180 4276 25
+ 24 15 16 4277 4181 4182
+ 4278 4279 4183 4184 4280 25
+ 24 16 15 16 15 slice22
xslice23fg0 1 0 4353 4257 4258
+ 4354 25 24 16 15 16
+ 15 25 24 15 16 4355
+ 4259 4260 4356 25 24 15
+ 16 4357 4261 4262 4358 25
+ 24 15 16 4359 4263 4264
+ 4360 25 24 15 16 4361
+ 4265 4266 4362 24 25 4363
+ 4267 4268 4364 15 16 24
+ 25 4365 4269 4270 4366 25
+ 24 15 16 4367 4271 4272
+ 4368 25 24 15 16 4369
+ 4273 4274 4370 25 24 15
+ 16 4371 4275 4276 4372 25
+ 24 15 16 4373 4277 4278
+ 4374 4375 4279 4280 4376 25
+ 24 16 15 16 15 slice23
xslice24fg0 1 0 16 15 24
+ 25 4449 4354 4353 4449 15
+ 16 25 24 15 16 4450
+ 4355 4356 4450 25 24 15
+ 16 4451 4357 4358 4451 25
+ 24 15 16 4452 4359 4360
+ 4453 25 24 15 16 4453
+ 4361 4362 4454 24 25 4455
+ 4363 4364 4456 15 16 24
+ 25 4457 4365 4366 4458 25
+ 24 15 16 4459 4367 4368
+ 4460 25 24 15 16 4461
+ 4369 4370 4459 25 24 15
+ 16 4462 4371 4372 4462 25
+ 24 15 16 4463 4373 4374
+ 4463 16 15 24 25 4464
+ 4376 4375 4464 15 16 slice24
xcon4232fg0 1 0 24 24 24
+ 24 24 24 25 25 25
+ 25 25 25 15 15 15
+ 15 15 15 16 16 16
+ 16 16 16 0 0 0
+ 0 0 0 1 1 1
+ 1 1 1 1 24 24
+ 24 24 24 24 25 25
+ 25 25 25 25 15 15
+ 15 15 15 15 15 16
+ 16 16 16 16 16 16
+ 0 0 0 0 0 0
+ 1 1 1 1 1 1
+ 1 4453 4452 4454 4455 4456
+ 4537 4538 4539 4449 4450 4540
+ 4451 4459 4461 4460 4457 4458
+ 4541 4542 4543 4464 4463 4544
+ 4462
+ con4232
xslice25fg0 1 0 4545 4538 4537
+ 4546 25 24 16 15 16
+ 15 25 24 15 16 4547
+ 4538 4539 4548 25 24 15
+ 16 4549 4539 4540 4550 25
+ 24 15 16 4551 4540 4537
+ 4552 25 24 15 16 4553
+ 4452 4454 4554 24 25 4555
+ 4455 4456 4556 15 16 24
+ 25 4557 4457 4458 4558 25
+ 24 15 16 4559 4461 4460
+ 4560 25 24 15 16 4561
+ 4544 4541 4562 25 24 15
+ 16 4563 4543 4544 4564 25
+ 24 15 16 4565 4542 4543
+ 4566 4567 4542 4541 4568 25
+ 24 16 15 16 15 slice25
xslice26fg0 1 0 4641 4545 4546
+ 4642 25 24 16 15 16
+ 15 25 24 15 16 4643
+ 4547 4548 4644 25 24 15
+ 16 4645 4549 4550 4646 25
+ 24 15 16 4647 4551 4552
+ 4648 25 24 15 16 4649
+ 4553 4554 4650 24 25 4651
+ 4555 4556 4652 15 16 24
+ 25 4653 4557 4558 4654 25
+ 24 15 16 4655 4559 4560
+ 4656 25 24 15 16 4657
+ 4561 4562 4658 25 24 15
+ 16 4659 4563 4564 4660 25
+ 24 15 16 4661 4565 4566
+ 4662 4663 4567 4568 4664 25
+ 24 16 15 16 15 slice26
xslice27fg0 1 0 4737 4641 4642
+ 4738 25 24 16 15 16
+ 15 25 24 15 16 4739
+ 4643 4644 4740 25 24 15
+ 16 4741 4645 4646 4742 25
+ 24 15 16 4743 4647 4648
+ 4744 25 24 15 16 4745
+ 4649 4650 4746 24 25 4747
+ 4651 4652 4748 15 16 24
+ 25 4749 4653 4654 4750 25
+ 24 15 16 4751 4655 4656
+ 4752 25 24 15 16 4753
+ 4657 4658 4754 25 24 15
+ 16 4755 4659 4660 4756 25
+ 24 15 16 4757 4661 4662
+ 4758 4759 4663 4664 4760 25
+ 24 16 15 16 15 slice27
xslice28fg0 1 0 4833 4737 4738
+ 4833 25 24 16 15 16
+ 15 25 24 15 16 4834
+ 4739 4740 4834 25 24 15
+ 16 4835 4741 4742 4836 25
+ 24 15 16 4837 4743 4744
+ 4838 25 24 15 16 4839
+ 4745 4746 4840 24 25 4841
+ 4747 4748 4842 15 16 24
+ 25 4843 4749 4750 4844 25
+ 24 15 16 4845 4751 4752
+ 4846 25 24 15 16 4847
+ 4753 4754 4848 25 24 15
+ 16 4849 4755 4756 4850 25
+ 24 15 16 4851 4757 4758
+ 4851 4852 4759 4760 4852 25
+ 24 16 15 16 15 slice28
xcon3222fg0 1 0 24 24 24
+ 24 24 24 25 25 25
+ 25 25 25 15 15 15
+ 15 15 15 16 16 16
+ 16 16 16 0 0 0
+ 0 0 0 1 1 1
+ 1 1 1 1 24 24
+ 24 24 24 24 25 25
+ 25 25 25 25 15 15
+ 15 15 15 15 15 16
+ 16 16 16 16 16 16
+ 0 0 0 0 0 0
+ 1 1 1 1 1 1
+ 1 4925 4926 4833 4834 4835
+ 4836 4837 4838 4839 4840 4841
+ 4842 4927 4928 4852 4851 4849
+ 4850 4847 4848 4845 4846 4843
+ 4844
+ con3222
xslice29fg0 1 0 4929 4925 4926
+ 4930 25 24 16 15 16
+ 15 25 24 15 16 4931
+ 4925 4926 4932 25 24 15
+ 16 4933 4835 4836 4934 25
+ 24 15 16 4935 4837 4838
+ 4936 25 24 15 16 4937
+ 4839 4840 4938 24 25 4939
+ 4841 4842 4940 15 16 24
+ 25 4941 4843 4844 4942 25
+ 24 15 16 4943 4845 4846
+ 4944 25 24 15 16 4945
+ 4847 4848 4946 25 24 15
+ 16 4947 4849 4850 4948 25
+ 24 15 16 4949 4927 4928
+ 4950 4951 4927 4928 4952 25
+ 24 16 15 16 15 slice29
xslice210fg0 1 0 5025 4929 4930
+ 5026 25 24 16 15 16
+ 15 25 24 15 16 5027
+ 4931 4932 5028 25 24 15
+ 16 5029 4933 4934 5030 25
+ 24 15 16 5031 4935 4936
+ 5032 25 24 15 16 5033
+ 4937 4938 5034 24 25 5035
+ 4939 4940 5036 15 16 24
+ 25 5037 4941 4942 5038 25
+ 24 15 16 5039 4943 4944
+ 5040 25 24 15 16 5041
+ 4945 4946 5042 25 24 15
+ 16 5043 4947 4948 5044 25
+ 24 15 16 5045 4949 4950
+ 5046 5047 4951 4952 5048 25
+ 24 16 15 16 15 slice210
xslice211fg0 1 0 5121 5025 5026
+ 5122 25 24 16 15 16
+ 15 25 24 15 16 5123
+ 5027 5028 5124 25 24 15
+ 16 5125 5029 5030 5126 25
+ 24 15 16 5127 5031 5032
+ 5128 25 24 15 16 5129
+ 5033 5034 5130 24 25 5131
+ 5035 5036 5132 15 16 24
+ 25 5133 5037 5038 5134 25
+ 24 15 16 5135 5039 5040
+ 5136 25 24 15 16 5137
+ 5041 5042 5138 25 24 15
+ 16 5139 5043 5044 5140 25
+ 24 15 16 5141 5045 5046
+ 5142 5143 5047 5048 5144 25
+ 24 16 15 16 15 slice211
xslice212fg0 1 0 5217 5121 5122
+ 5217 25 24 16 15 16
+ 15 25 24 15 16 5218
+ 5123 5124 5219 25 24 15
+ 16 5220 5125 5126 5221 25
+ 24 15 16 5222 5127 5128
+ 5222 25 24 15 16 5223
+ 5129 5130 5224 24 25 5225
+ 5131 5132 5226 15 16 24
+ 25 5227 5133 5134 5228 25
+ 24 15 16 5229 5135 5136
+ 5230 25 24 15 16 5231
+ 5137 5138 5231 25 24 15
+ 16 5232 5139 5140 5233 25
+ 24 15 16 5234 5141 5142
+ 5235 5236 5143 5144 5236 25
+ 24 16 15 16 15 slice212
xcon2212fg0 1 0 24 24 24
+ 24 24 24 25 25 25
+ 25 25 25 15 15 15
+ 15 15 15 16 16 16
+ 16 16 16 0 0 0
+ 0 0 0 1 1 1
+ 1 1 1 1 24 24
+ 24 24 24 24 25 25
+ 25 25 25 25 15 15
+ 15 15 15 15 15 16
+ 16 16 16 16 16 16
+ 0 0 0 0 0 0
+ 1 1 1 1 1 1
+ 1 5309 5217 5218 5219 5220
+ 5221 5222 5310 5223 5224 5225
+ 5226 5311 5236 5234 5235 5232
+ 5233 5231 5312 5229 5230 5227
+ 5228
+ con2212
xslice213fg0 1 0 5313 5309 5309
+ 5314 25 24 16 15 16
+ 15 25 24 15 16 5315
+ 5218 5219 5316 25 24 15
+ 16 5317 5220 5221 5318 25
+ 24 15 16 5319 5223 5310
+ 5320 25 24 15 16 5321
+ 5310 5224 5322 24 25 5323
+ 5225 5226 5324 15 16 24
+ 25 5325 5227 5228 5326 25
+ 24 15 16 5327 5312 5230
+ 5328 25 24 15 16 5329
+ 5229 5312 5330 25 24 15
+ 16 5331 5232 5233 5332 25
+ 24 15 16 5333 5234 5235
+ 5334 5335 5311 5311 5336 25
+ 24 16 15 16 15 slice213
xslice214fg0 1 0 5409 5313 5314
+ 5410 25 24 16 15 16
+ 15 25 24 15 16 5411
+ 5315 5316 5412 25 24 15
+ 16 5413 5317 5318 5414 25
+ 24 15 16 5415 5319 5320
+ 5416 25 24 15 16 5417
+ 5321 5322 5418 24 25 5419
+ 5323 5324 5420 15 16 24
+ 25 5421 5325 5326 5422 25
+ 24 15 16 5423 5327 5328
+ 5424 25 24 15 16 5425
+ 5329 5330 5426 25 24 15
+ 16 5427 5331 5332 5428 25
+ 24 15 16 5429 5333 5334
+ 5430 5431 5335 5336 5432 25
+ 24 16 15 16 15 slice214
xslice215fg0 1 0 5505 5409 5410
+ 5506 25 24 16 15 16
+ 15 25 24 15 16 5507
+ 5411 5412 5508 25 24 15
+ 16 5509 5413 5414 5510 25
+ 24 15 16 5511 5415 5416
+ 5512 25 24 15 16 5513
+ 5417 5418 5514 24 25 5515
+ 5419 5420 5516 15 16 24
+ 25 5517 5421 5422 5518 25
+ 24 15 16 5519 5423 5424
+ 5520 25 24 15 16 5521
+ 5425 5426 5522 25 24 15
+ 16 5523 5427 5428 5524 25
+ 24 15 16 5525 5429 5430
+ 5526 5527 5431 5432 5528 25
+ 24 16 15 16 15 slice215
xslice216fg0 1 0 5601 5505 5506
+ 5602 25 24 16 15 16
+ 15 25 24 15 16 5603
+ 5507 5508 5604 25 24 15
+ 16 5605 5509 5510 5606 25
+ 24 15 16 5607 5511 5512
+ 5608 25 24 15 16 5609
+ 5513 5514 5610 24 25 5611
+ 5515 5516 5612 15 16 24
+ 25 5613 5517 5518 5614 25
+ 24 15 16 5615 5519 5520
+ 5616 25 24 15 16 5617
+ 5521 5522 5618 25 24 15
+ 16 5619 5523 5524 5620 25
+ 24 15 16 5621 5525 5526
+ 5622 5623 5527 5528 5624 25
+ 24 16 15 16 15 slice216
xslice217fg0 1 0 5697 5601 5602
+ 5698 25 24 16 15 16
+ 15 25 24 15 16 5699
+ 5603 5604 5700 25 24 15
+ 16 5701 5605 5606 5702 25
+ 24 15 16 5703 5607 5608
+ 5704 25 24 15 16 5705
+ 5609 5610 5706 24 25 5707
+ 5611 5612 5708 15 16 24
+ 25 5709 5613 5614 5710 25
+ 24 15 16 5711 5615 5616
+ 5712 25 24 15 16 5713
+ 5617 5618 5714 25 24 15
+ 16 5715 5619 5620 5716 25
+ 24 15 16 5717 5621 5622
+ 5718 5719 5623 5624 5720 25
+ 24 16 15 16 15 slice217
xslice218fg0 1 0 5793 5697 5698
+ 5794 25 24 16 15 16
+ 15 25 24 15 16 5795
+ 5699 5700 5796 25 24 15
+ 16 5797 5701 5702 5798 25
+ 24 15 16 5799 5703 5704
+ 5800 25 24 15 16 5801
+ 5705 5706 5802 24 25 5803
+ 5707 5708 5804 15 16 24
+ 25 5805 5709 5710 5806 25
+ 24 15 16 5807 5711 5712
+ 5808 25 24 15 16 5809
+ 5713 5714 5810 25 24 15
+ 16 5811 5715 5716 5812 25
+ 24 15 16 5813 5717 5718
+ 5814 5815 5719 5720 5816 25
+ 24 16 15 16 15 slice218
xslice219fg0 1 0 5889 5793 5794
+ 5890 25 24 16 15 16
+ 15 25 24 15 16 5891
+ 5795 5796 5892 25 24 15
+ 16 5893 5797 5798 5894 25
+ 24 15 16 5895 5799 5800
+ 5896 25 24 15 16 5897
+ 5801 5802 5898 24 25 5899
+ 5803 5804 5900 15 16 24
+ 25 5901 5805 5806 5902 25
+ 24 15 16 5903 5807 5808
+ 5904 25 24 15 16 5905
+ 5809 5810 5906 25 24 15
+ 16 5907 5811 5812 5908 25
+ 24 15 16 5909 5813 5814
+ 5910 5911 5815 5816 5912 25
+ 24 16 15 16 15 slice219
xslice220fg0 1 0 5985 5889 5890
+ 5986 25 24 16 15 16
+ 15 25 24 15 16 5987
+ 5891 5892 5988 25 24 15
+ 16 5989 5893 5894 5990 25
+ 24 15 16 5991 5895 5896
+ 5992 25 24 15 16 5993
+ 5897 5898 5993 24 25 5994
+ 5899 5900 5994 15 16 24
+ 25 5995 5901 5902 5995 25
+ 24 15 16 5996 5903 5904
+ 5996 25 24 15 16 5997
+ 5905 5906 5998 25 24 15
+ 16 5999 5907 5908 6000 25
+ 24 15 16 6001 5909 5910
+ 6002 6003 5911 5912 6004 25
+ 24 16 15 16 15 slice220
xmuxout2fg0 1 0 6 5986 5985
+ 6077 15 16 5 5988 5987
+ 5990 5989 4 5992 5991 3
+ 6 6004 6003 2172 15 16
+ 5 6002 6001 6000 5999 4
+ 5998 5997 3 6078 6079 5993
+ 5994 5995 5996 25 25 24
+ 24 16 16 15 15 muxout2
xbcntl0 1 0 3 4 5
+ 6 7 8 9 10 bcntl
xcntl1be0 1 0 3 4 5
+ 6 7 8 9 10 6120 cntl1b
xmuxoute0 1 0 6 6121 6122
+ 6123 24 25 5 6124 6125
+ 6126 6127 4 6128 6129 3
+ 25 24 6130 25 24 15
+ 16 6120 6131 muxout
xslice20e0 1 0 6131 6152 6153
+ 6131 16 15 24 25 16
+ 15 24 25 6130 6154 6155
+ 6130 16 15 24 25 6129
+ 6156 6157 6128 16 15 24
+ 25 6127 6158 6159 6126 16
+ 15 24 25 6125 6160 6161
+ 6124 6122 6162 6163 6121 16
+ 15 25 24 25 24 slice20
xslice19e0 1 0 6162 6200 6201
+ 6163 16 15 25 24 25
+ 24 16 15 24 25 6160
+ 6202 6203 6161 16 15 24
+ 25 6158 6204 6205 6159 16
+ 15 24 25 6156 6206 6207
+ 6157 16 15 24 25 6154
+ 6208 6209 6155 6152 6210 6211
+ 6153 16 15 24 25 slice19
xslice18e0 1 0 6200 6248 6249
+ 6201 16 15 25 24 25
+ 24 16 15 24 25 6202
+ 6250 6251 6203 16 15 24
+ 25 6204 6252 6253 6205 16
+ 15 24 25 6206 6254 6255
+ 6207 16 15 24 25 6208
+ 6256 6257 6209 6210 6258 6259
+ 6211 16 15 24 25 slice18
xslice17e0 1 0 6248 6296 6297
+ 6249 16 15 25 24 25
+ 24 16 15 24 25 6250
+ 6298 6299 6251 16 15 24
+ 25 6252 6300 6301 6253 16
+ 15 24 25 6254 6302 6303
+ 6255 16 15 24 25 6256
+ 6304 6305 6257 6258 6306 6307
+ 6259 16 15 24 25 slice17
xslice16e0 1 0 6296 6344 6345
+ 6297 16 15 25 24 25
+ 24 16 15 24 25 6298
+ 6346 6347 6299 16 15 24
+ 25 6300 6348 6349 6301 16
+ 15 24 25 6302 6350 6351
+ 6303 16 15 24 25 6304
+ 6352 6353 6305 6306 6354 6355
+ 6307 16 15 24 25 slice16
xslice15e0 1 0 6344 6392 6393
+ 6345 16 15 25 24 25
+ 24 16 15 24 25 6346
+ 6394 6395 6347 16 15 24
+ 25 6348 6396 6397 6349 16
+ 15 24 25 6350 6398 6399
+ 6351 16 15 24 25 6352
+ 6400 6401 6353 6354 6402 6403
+ 6355 16 15 24 25 slice15
xslice14e0 1 0 6392 6440 6441
+ 6393 16 15 25 24 25
+ 24 16 15 24 25 6394
+ 6442 6443 6395 16 15 24
+ 25 6396 6444 6445 6397 16
+ 15 24 25 6398 6446 6447
+ 6399 16 15 24 25 6400
+ 6448 6449 6401 6402 6450 6451
+ 6403 16 15 24 25 slice14
xslice13e0 1 0 6440 6488 6488
+ 6441 16 15 25 24 25
+ 24 16 15 24 25 6442
+ 6489 6490 6443 16 15 24
+ 25 6444 6491 6492 6445 16
+ 15 24 25 6446 6493 6494
+ 6447 16 15 24 25 6448
+ 6494 6495 6449 6450 6496 6497
+ 6451 16 15 24 25 slice13
xcon21e0 1 0 24 25 6534
+ 6488 16 15 25 24 16
+ 15 25 24 6490 6489 16
+ 15 25 24 6492 6491 6535
+ 6493 6494 6495 24 25 15
+ 16 24 25 1 15 16
+ 0 16 15 25 24 6496
+ 6497
+ con21
xslice12e0 1 0 6534 6536 6537
+ 6534 16 15 25 24 25
+ 24 16 15 24 25 6489
+ 6538 6539 6490 16 15 24
+ 25 6491 6540 6541 6492 16
+ 15 24 25 6535 6542 6543
+ 6535 16 15 24 25 6493
+ 6544 6545 6495 6496 6546 6547
+ 6497 16 15 24 25 slice12
xslice11e0 1 0 6536 6584 6585
+ 6537 16 15 25 24 25
+ 24 16 15 24 25 6538
+ 6586 6587 6539 16 15 24
+ 25 6540 6588 6589 6541 16
+ 15 24 25 6542 6590 6591
+ 6543 16 15 24 25 6544
+ 6592 6593 6545 6546 6594 6595
+ 6547 16 15 24 25 slice11
xslice10e0 1 0 6584 6632 6633
+ 6585 16 15 25 24 25
+ 24 16 15 24 25 6586
+ 6634 6635 6587 16 15 24
+ 25 6588 6636 6637 6589 16
+ 15 24 25 6590 6638 6639
+ 6591 16 15 24 25 6592
+ 6640 6641 6593 6594 6642 6643
+ 6595 16 15 24 25 slice10
xslice9e0 1 0 6632 6680 6681
+ 6633 16 15 25 24 25
+ 24 16 15 24 25 6634
+ 6680 6681 6635 16 15 24
+ 25 6636 6682 6683 6637 16
+ 15 24 25 6638 6684 6685
+ 6639 16 15 24 25 6640
+ 6686 6687 6641 6642 6688 6689
+ 6643 16 15 24 25 slice9
xcon32e0 1 0 25 24 16
+ 16 15 15 25 25 24
+ 24 1 1 0 0 6681
+ 6726 6680 6727 16 15 25
+ 24 6683 6682 16 15 25
+ 24 6685 6684 16 15 25
+ 24 6687 6686 16 15 25
+ 24 6688 6689 con32
xslice8e0 1 0 6726 6728 6729
+ 6726 16 15 25 24 25
+ 24 16 15 24 25 6727
+ 6730 6731 6727 16 15 24
+ 25 6682 6732 6733 6683 16
+ 15 24 25 6684 6734 6735
+ 6685 16 15 24 25 6686
+ 6736 6737 6687 6688 6738 6739
+ 6689 16 15 24 25 slice8
xslice7e0 1 0 6728 6776 6777
+ 6729 16 15 25 24 25
+ 24 16 15 24 25 6730
+ 6778 6779 6731 16 15 24
+ 25 6732 6780 6781 6733 16
+ 15 24 25 6734 6782 6783
+ 6735 16 15 24 25 6736
+ 6784 6785 6737 6738 6786 6787
+ 6739 16 15 24 25 slice7
xslice6e0 1 0 6776 6824 6825
+ 6777 16 15 25 24 25
+ 24 16 15 24 25 6778
+ 6826 6827 6779 16 15 24
+ 25 6780 6828 6829 6781 16
+ 15 24 25 6782 6830 6831
+ 6783 16 15 24 25 6784
+ 6832 6833 6785 6786 6834 6835
+ 6787 16 15 24 25 slice6
xslice5e0 1 0 6824 6872 6873
+ 6825 16 15 25 24 25
+ 24 16 15 24 25 6826
+ 6872 6874 6827 16 15 24
+ 25 6828 6874 6875 6829 16
+ 15 24 25 6830 6875 6873
+ 6831 16 15 24 25 6832
+ 6876 6877 6833 6834 6878 6879
+ 6835 16 15 24 25 slice5
xcon43e0 1 0 24 25 1
+ 1 0 0 16 16 15
+ 15 24 24 25 25 6873
+ 6916 6872 6917 6874 25 25
+ 24 24 15 15 16 16
+ 0 0 1 1 6918 6875
+ 6919 6876 6877 16 15 25
+ 24 16 15 25 24 6879
+ 6878
+ con43
xslice4e0 1 0 25 24 15
+ 16 6916 6920 6921 6916 24
+ 25 16 15 24 25 6917
+ 6922 6923 6917 16 15 24
+ 25 6919 6924 6925 6919 16
+ 15 24 25 6876 6926 6927
+ 6918 16 15 24 25 6918
+ 6928 6929 6877 6878 6930 6931
+ 6879 16 15 24 25 slice4
xslice3e0 1 0 6921 6968 6969
+ 6920 16 15 25 24 25
+ 24 16 15 24 25 6922
+ 6970 6971 6923 16 15 24
+ 25 6924 6972 6973 6925 16
+ 15 24 25 6926 6974 6975
+ 6927 16 15 24 25 6928
+ 6976 6977 6929 6930 6978 6979
+ 6931 16 15 24 25 slice3
xslice2e0 1 0 6968 7016 7017
+ 6969 16 15 25 24 25
+ 24 16 15 24 25 6970
+ 7018 7019 6971 16 15 24
+ 25 6972 7020 7021 6973 16
+ 15 24 25 6974 7022 7023
+ 6975 16 15 24 25 6976
+ 7024 7025 6977 6978 7026 7027
+ 6979 16 15 24 25 slice2
xslice1e0 1 0 7016 7064 7065
+ 7017 16 15 25 24 25
+ 24 16 15 24 25 7018
+ 7064 7066 7019 16 15 24
+ 25 7020 7066 7067 7021 16
+ 15 24 25 7022 7067 7065
+ 7023 16 15 24 25 7024
+ 7068 7069 7025 7026 7068 7069
+ 7027 16 15 24 25 slice1
xclk1bae0 1 0 7106 7067 7107
+ 7066 7108 7064 7109 7065 7110
+ 7068 7111 7069 25 15 24
+ 16
+ clk1b
xslice1a0 1 0 7112 7108 7109
+ 7113 16 15 25 24 25
+ 24 16 15 24 25 7114
+ 7108 7107 7115 16 15 24
+ 25 7116 7107 7106 7117 16
+ 15 24 25 7118 7106 7109
+ 7119 16 15 24 25 7120
+ 7110 7111 7121 7122 7110 7111
+ 7123 16 15 24 25 slice1
xslice2a0 1 0 7160 7112 7113
+ 7161 16 15 25 24 25
+ 24 16 15 24 25 7162
+ 7114 7115 7163 16 15 24
+ 25 7164 7116 7117 7165 16
+ 15 24 25 7166 7118 7119
+ 7167 16 15 24 25 7168
+ 7120 7121 7169 7170 7122 7123
+ 7171 16 15 24 25 slice2
xslice3a0 1 0 7208 7160 7161
+ 7209 16 15 25 24 25
+ 24 16 15 24 25 7210
+ 7162 7163 7211 16 15 24
+ 25 7212 7164 7165 7213 16
+ 15 24 25 7214 7166 7167
+ 7215 16 15 24 25 7216
+ 7168 7169 7217 7218 7170 7171
+ 7219 16 15 24 25 slice3
xslice4a0 1 0 25 24 15
+ 16 7256 7209 7208 7256 24
+ 25 16 15 24 25 7257
+ 7210 7211 7257 16 15 24
+ 25 7258 7212 7213 7258 16
+ 15 24 25 7259 7214 7215
+ 7260 16 15 24 25 7260
+ 7216 7217 7261 7262 7218 7219
+ 7263 16 15 24 25 slice4
xcon43a0 1 0 24 25 1
+ 1 0 0 16 16 15
+ 15 24 24 25 25 7300
+ 7256 7301 7257 7302 25 25
+ 24 24 15 15 16 16
+ 0 0 1 1 7260 7303
+ 7258 7259 7261 16 15 25
+ 24 16 15 25 24 7263
+ 7262
+ con43
xslice5a0 1 0 7304 7301 7300
+ 7305 16 15 25 24 25
+ 24 16 15 24 25 7306
+ 7301 7302 7307 16 15 24
+ 25 7308 7302 7303 7309 16
+ 15 24 25 7310 7303 7300
+ 7311 16 15 24 25 7312
+ 7259 7261 7313 7314 7262 7263
+ 7315 16 15 24 25 slice5
xslice6a0 1 0 7352 7304 7305
+ 7353 16 15 25 24 25
+ 24 16 15 24 25 7354
+ 7306 7307 7355 16 15 24
+ 25 7356 7308 7309 7357 16
+ 15 24 25 7358 7310 7311
+ 7359 16 15 24 25 7360
+ 7312 7313 7361 7362 7314 7315
+ 7363 16 15 24 25 slice6
xslice7a0 1 0 7400 7352 7353
+ 7401 16 15 25 24 25
+ 24 16 15 24 25 7402
+ 7354 7355 7403 16 15 24
+ 25 7404 7356 7357 7405 16
+ 15 24 25 7406 7358 7359
+ 7407 16 15 24 25 7408
+ 7360 7361 7409 7410 7362 7363
+ 7411 16 15 24 25 slice7
xslice8a0 1 0 7448 7400 7401
+ 7448 16 15 25 24 25
+ 24 16 15 24 25 7449
+ 7402 7403 7449 16 15 24
+ 25 7450 7404 7405 7451 16
+ 15 24 25 7452 7406 7407
+ 7453 16 15 24 25 7454
+ 7408 7409 7455 7456 7410 7411
+ 7457 16 15 24 25 slice8
xcon32a0 1 0 25 24 16
+ 16 15 15 25 25 24
+ 24 1 1 0 0 7494
+ 7448 7495 7449 16 15 25
+ 24 7451 7450 16 15 25
+ 24 7453 7452 16 15 25
+ 24 7455 7454 16 15 25
+ 24 7456 7457 con32
xslice9a0 1 0 7496 7495 7494
+ 7497 16 15 25 24 25
+ 24 16 15 24 25 7498
+ 7495 7494 7499 16 15 24
+ 25 7500 7450 7451 7501 16
+ 15 24 25 7502 7452 7453
+ 7503 16 15 24 25 7504
+ 7454 7455 7505 7506 7456 7457
+ 7507 16 15 24 25 slice9
xslice10a0 1 0 7544 7496 7497
+ 7545 16 15 25 24 25
+ 24 16 15 24 25 7546
+ 7498 7499 7547 16 15 24
+ 25 7548 7500 7501 7549 16
+ 15 24 25 7550 7502 7503
+ 7551 16 15 24 25 7552
+ 7504 7505 7553 7554 7506 7507
+ 7555 16 15 24 25 slice10
xslice11a0 1 0 7592 7544 7545
+ 7593 16 15 25 24 25
+ 24 16 15 24 25 7594
+ 7546 7547 7595 16 15 24
+ 25 7596 7548 7549 7597 16
+ 15 24 25 7598 7550 7551
+ 7599 16 15 24 25 7600
+ 7552 7553 7601 7602 7554 7555
+ 7603 16 15 24 25 slice11
xslice12a0 1 0 7640 7592 7593
+ 7640 16 15 25 24 25
+ 24 16 15 24 25 7641
+ 7594 7595 7642 16 15 24
+ 25 7643 7596 7597 7644 16
+ 15 24 25 7645 7598 7599
+ 7645 16 15 24 25 7646
+ 7600 7601 7647 7648 7602 7603
+ 7649 16 15 24 25 slice12
xcon21a0 1 0 24 25 7640
+ 7686 16 15 25 24 16
+ 15 25 24 7642 7641 16
+ 15 25 24 7644 7643 7645
+ 7646 7687 7647 24 25 15
+ 16 24 25 1 15 16
+ 0 16 15 25 24 7648
+ 7649
+ con21
xslice13a0 1 0 7688 7686 7686
+ 7689 16 15 25 24 25
+ 24 16 15 24 25 7690
+ 7641 7642 7691 16 15 24
+ 25 7692 7643 7644 7693 16
+ 15 24 25 7694 7646 7687
+ 7695 16 15 24 25 7696
+ 7687 7647 7697 7698 7648 7649
+ 7699 16 15 24 25 slice13
xslice14a0 1 0 7736 7688 7689
+ 7737 16 15 25 24 25
+ 24 16 15 24 25 7738
+ 7690 7691 7739 16 15 24
+ 25 7740 7692 7693 7741 16
+ 15 24 25 7742 7694 7695
+ 7743 16 15 24 25 7744
+ 7696 7697 7745 7746 7698 7699
+ 7747 16 15 24 25 slice14
xslice15a0 1 0 7784 7736 7737
+ 7785 16 15 25 24 25
+ 24 16 15 24 25 7786
+ 7738 7739 7787 16 15 24
+ 25 7788 7740 7741 7789 16
+ 15 24 25 7790 7742 7743
+ 7791 16 15 24 25 7792
+ 7744 7745 7793 7794 7746 7747
+ 7795 16 15 24 25 slice15
xslice16a0 1 0 7832 7784 7785
+ 7833 16 15 25 24 25
+ 24 16 15 24 25 7834
+ 7786 7787 7835 16 15 24
+ 25 7836 7788 7789 7837 16
+ 15 24 25 7838 7790 7791
+ 7839 16 15 24 25 7840
+ 7792 7793 7841 7842 7794 7795
+ 7843 16 15 24 25 slice16
xslice17a0 1 0 7880 7832 7833
+ 7881 16 15 25 24 25
+ 24 16 15 24 25 7882
+ 7834 7835 7883 16 15 24
+ 25 7884 7836 7837 7885 16
+ 15 24 25 7886 7838 7839
+ 7887 16 15 24 25 7888
+ 7840 7841 7889 7890 7842 7843
+ 7891 16 15 24 25 slice17
xslice18a0 1 0 7928 7880 7881
+ 7929 16 15 25 24 25
+ 24 16 15 24 25 7930
+ 7882 7883 7931 16 15 24
+ 25 7932 7884 7885 7933 16
+ 15 24 25 7934 7886 7887
+ 7935 16 15 24 25 7936
+ 7888 7889 7937 7938 7890 7891
+ 7939 16 15 24 25 slice18
xslice19a0 1 0 7976 7928 7929
+ 7977 16 15 25 24 25
+ 24 16 15 24 25 7978
+ 7930 7931 7979 16 15 24
+ 25 7980 7932 7933 7981 16
+ 15 24 25 7982 7934 7935
+ 7983 16 15 24 25 7984
+ 7936 7937 7985 7986 7938 7939
+ 7987 16 15 24 25 slice19
xslice20a0 1 0 8024 7986 7987
+ 8024 16 15 24 25 16
+ 15 24 25 8025 7984 7985
+ 8025 16 15 24 25 8026
+ 7982 7983 8027 16 15 24
+ 25 8028 7980 7981 8029 16
+ 15 24 25 8030 7978 7979
+ 8031 8032 7976 7977 8033 16
+ 15 25 24 25 24 slice20
xmuxouta0 1 0 6 8033 8032
+ 8070 24 25 5 8031 8030
+ 8029 8028 4 8027 8026 3
+ 25 24 8025 25 24 15
+ 16 8071 8024 muxout
xcntl1ba0 1 0 3 4 5
+ 6 7 8 9 10 8071 cntl1b
xcntldecef0 1 0 8092 8093 7
+ 8 9 10 3 4 5
+ 6
+ cntldec
xshift1e0 1 0 6123 8094 25
+ 24 24 25 rshift
xshift2e0 1 0 8094 8099 8100
+ 8101 25 24 8093 24 25 shift
xshift3e0 1 0 8099 8106 8107
+ 8108 25 24 8093 24 25 shift
xshift4e0 1 0 8106 8113 8114
+ 8115 25 24 8093 24 25 shift
xshift5e0 1 0 8113 8120 8121
+ 8122 25 24 8093 24 25 shift
xshift6e0 1 0 8120 8127 8128
+ 8129 25 24 8093 24 25 shift
xshift7e0 1 0 8127 8134 8135
+ 8136 25 24 8093 24 25 shift
xshift8e0 1 0 8134 8141 8142
+ 8143 25 24 8093 24 25 shift
xshift9e0 1 0 8141 8148 8149
+ 8150 25 24 8093 24 25 shift
xshift10e0 1 0 8148 8155 8156
+ 8157 25 24 8093 24 25 shift
xshift11e0 1 0 8155 8162 8163
+ 8164 25 24 8093 24 25 shift
xshift12e0 1 0 8162 8169 8170
+ 8171 25 24 8093 24 25 shift
xshift13e0 1 0 8169 8176 8177
+ 8178 25 24 8093 24 25 shift
xshift14e0 1 0 8176 8183 8184
+ 8185 25 24 8093 24 25 shift
xshift15e0 1 0 8183 8190 8191
+ 8192 25 24 8093 24 25 shift
xshift16e0 1 0 8197 8198 8199
+ 8200 8190 25 24 24 25
+ 8093 8093 lshift
xfilldecef0 1 0 8206 8207 8101
+ 8100 8092 8093 10 9 8
+ 7 8208 8209 8210 8211 filldec2
xndec1e0 1 0 8100 8093 8108
+ 8107 7 8 9 8208 7
+ 8 9 10 8115 8101 ndec1
xndec2e0 1 0 10 8209 8
+ 7 8208 8209 8 7 8121
+ 8122 8093 8114 8115 ndec2
xndec3e0 1 0 8093 8136 8135
+ 8129 8128 7 8210 9 8208
+ 7 8210 9 10 ndec3
xndec4e0 1 0 10 8209 8210
+ 7 8208 8209 8210 7 8142
+ 8143 8149 8150 8093 ndec4
xndec5e0 1 0 10 9 8
+ 8211 8208 9 8 8211 8156
+ 8157 8163 8164 8093 ndec5
xndec6e0 1 0 8093 8178 8177
+ 8171 8170 8211 8 8209 8208
+ 8211 8 8209 10 ndec6
xndec7e0 1 0 10 9 8210
+ 8211 8208 9 8210 8211 8184
+ 8185 8191 8192 8093 ndec7
xndec8e0 1 0 10 8209 8210
+ 8211 8208 8209 8210 8211 8198
+ 8197 8199 8200 8093 ndec8
xcondec1ef0 1 0 10 9 8
+ 7 8208 8209 8210 8211 condec1
xcondec2ef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec2
xcondec3ef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec3
xcondec4ef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec4
xcondec5ef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec5
xcondec6ef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec6
xcondec7ef0 1 0 10 9 8
+ 7 8208 8209 8210 8211 condec7
xcondec8ef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec8
xndec1f0 1 0 8206 8092 8260
+ 8261 7 8 9 8208 7
+ 8 9 10 8262 8207 ndec1
xndec2f0 1 0 10 8209 8
+ 7 8208 8209 8 7 8269
+ 8270 8092 8271 8262 ndec2
xndec3f0 1 0 8092 8278 8279
+ 8280 8281 7 8210 9 8208
+ 7 8210 9 10 ndec3
xndec4f0 1 0 10 8209 8210
+ 7 8208 8209 8210 7 8288
+ 8289 8290 8291 8092 ndec4
xndec5f0 1 0 10 9 8
+ 8211 8208 9 8 8211 8298
+ 8299 8300 8301 8092 ndec5
xndec6f0 1 0 8092 8308 8309
+ 8310 8311 8211 8 8209 8208
+ 8211 8 8209 10 ndec6
xndec7f0 1 0 10 9 8210
+ 8211 8208 9 8210 8211 8318
+ 8319 8320 8321 8092 ndec7
xndec8f0 1 0 10 8209 8210
+ 8211 8208 8209 8210 8211 8328
+ 8329 8330 8331 8092 ndec8
xshift1f0 1 0 6077 8338 25
+ 24 15 16 rshift
xshift2f0 1 0 8338 8343 8206
+ 8207 25 24 8092 15 16 shift
xshift3f0 1 0 8343 8348 8261
+ 8260 25 24 8092 15 16 shift
xshift4f0 1 0 8348 8353 8271
+ 8262 25 24 8092 15 16 shift
xshift5f0 1 0 8353 8358 8269
+ 8270 25 24 8092 15 16 shift
xshift6f0 1 0 8358 8363 8281
+ 8280 25 24 8092 15 16 shift
xshift7f0 1 0 8363 8368 8279
+ 8278 25 24 8092 15 16 shift
xshift8f0 1 0 8368 8373 8288
+ 8289 25 24 8092 15 16 shift
xshift9f0 1 0 8373 8378 8290
+ 8291 25 24 8092 15 16 shift
xshift10f0 1 0 8378 8383 8298
+ 8299 25 24 8092 15 16 shift
xshift11f0 1 0 8383 8388 8300
+ 8301 25 24 8092 15 16 shift
xshift12f0 1 0 8388 8393 8311
+ 8310 25 24 8092 15 16 shift
xshift13f0 1 0 8393 8398 8309
+ 8308 25 24 8092 15 16 shift
xshift14f0 1 0 8398 8403 8318
+ 8319 25 24 8092 15 16 shift
xshift15f0 1 0 8403 8408 8320
+ 8321 25 24 8092 15 16 shift
xshift16f0 1 0 8329 8328 8330
+ 8331 8408 25 24 15 16
+ 8092 8092 lshift
xclkdecabef0 1 0 8211 8210 8209
+ 8208 7 8 9 10 25
+ 15 24 16 clkdec
xshift16a0 1 0 8418 8419 8420
+ 8421 8422 25 24 24 25
+ 8423 8423 lshift
xshift15a0 1 0 8429 8422 8430
+ 8431 25 24 8423 24 25 shift
xshift14a0 1 0 8436 8429 8437
+ 8438 25 24 8423 24 25 shift
xshift13a0 1 0 8443 8436 8444
+ 8445 25 24 8423 24 25 shift
xshift12a0 1 0 8450 8443 8451
+ 8452 25 24 8423 24 25 shift
xshift11a0 1 0 8457 8450 8458
+ 8459 25 24 8423 24 25 shift
xshift10a0 1 0 8464 8457 8465
+ 8466 25 24 8423 24 25 shift
xshift9a0 1 0 8471 8464 8472
+ 8473 25 24 8423 24 25 shift
xshift8a0 1 0 8478 8471 8479
+ 8480 25 24 8423 24 25 shift
xshift7a0 1 0 8485 8478 8486
+ 8487 25 24 8423 24 25 shift
xshift6a0 1 0 8492 8485 8493
+ 8494 25 24 8423 24 25 shift
xshift5a0 1 0 8499 8492 8500
+ 8501 25 24 8423 24 25 shift
xshift4a0 1 0 8506 8499 8507
+ 8508 25 24 8423 24 25 shift
xshift3a0 1 0 8513 8506 8514
+ 8515 25 24 8423 24 25 shift
xshift2a0 1 0 8520 8513 8521
+ 8522 25 24 8423 24 25 shift
xshift1a0 1 0 8070 8520 25
+ 24 24 25 rshift
xndec8a0 1 0 10 8209 8210
+ 8211 8208 8209 8210 8211 8419
+ 8418 8420 8421 8423 ndec8
xndec7a0 1 0 10 9 8210
+ 8211 8208 9 8210 8211 8437
+ 8438 8430 8431 8423 ndec7
xndec6a0 1 0 8423 8445 8444
+ 8452 8451 8211 8 8209 8208
+ 8211 8 8209 10 ndec6
xndec5a0 1 0 10 9 8
+ 8211 8208 9 8 8211 8465
+ 8466 8458 8459 8423 ndec5
xndec4a0 1 0 10 8209 8210
+ 7 8208 8209 8210 7 8479
+ 8480 8472 8473 8423 ndec4
xndec3a0 1 0 8423 8487 8486
+ 8494 8493 7 8210 9 8208
+ 7 8210 9 10 ndec3
xndec2a0 1 0 10 8209 8
+ 7 8208 8209 8 7 8500
+ 8501 8423 8507 8508 ndec2
xndec1a0 1 0 8521 8423 8515
+ 8514 7 8 9 8208 7
+ 8 9 10 8508 8522 ndec1
xcondec8ab0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec8
xcondec7ab0 1 0 10 9 8
+ 7 8208 8209 8210 8211 condec7
xcondec6ab0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec6
xcondec5ab0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec5
xcondec4ab0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec4
xcondec3ab0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec3
xcondec2ab0 1 0 8211 8210 8209
+ 8208 7 8 9 10 condec2
xcondec1ab0 1 0 10 9 8
+ 7 8208 8209 8210 8211 condec1
xndec8b0 1 0 10 8209 8210
+ 8211 8208 8209 8210 8211 8579
+ 8580 8581 8582 8583 ndec8
xndec7b0 1 0 10 9 8210
+ 8211 8208 9 8210 8211 8590
+ 8591 8592 8593 8583 ndec7
xndec6b0 1 0 8583 8600 8601
+ 8602 8603 8211 8 8209 8208
+ 8211 8 8209 10 ndec6
xndec5b0 1 0 10 9 8
+ 8211 8208 9 8 8211 8610
+ 8611 8612 8613 8583 ndec5
xndec4b0 1 0 10 8209 8210
+ 7 8208 8209 8210 7 8620
+ 8621 8622 8623 8583 ndec4
xndec3b0 1 0 8583 8630 8631
+ 8632 8633 7 8210 9 8208
+ 7 8210 9 10 ndec3
xndec2b0 1 0 10 8209 8
+ 7 8208 8209 8 7 8640
+ 8641 8583 8642 8643 ndec2
xndec1b0 1 0 8650 8583 8651
+ 8652 7 8 9 8208 7
+ 8 9 10 8643 8653 ndec1
xfilldec2ab0 1 0 8650 8653 8522
+ 8521 8583 8423 10 9 8
+ 7 8208 8209 8210 8211 filldec2
xshift16b0 1 0 8580 8579 8581
+ 8582 8660 25 24 15 16
+ 8583 8583 lshift
xshift15b0 1 0 8666 8660 8592
+ 8593 25 24 8583 15 16 shift
xshift14b0 1 0 8671 8666 8590
+ 8591 25 24 8583 15 16 shift
xshift13b0 1 0 8676 8671 8601
+ 8600 25 24 8583 15 16 shift
xshift12b0 1 0 8681 8676 8603
+ 8602 25 24 8583 15 16 shift
xshift11b0 1 0 8686 8681 8612
+ 8613 25 24 8583 15 16 shift
xshift10b0 1 0 8691 8686 8610
+ 8611 25 24 8583 15 16 shift
xshift9b0 1 0 8696 8691 8622
+ 8623 25 24 8583 15 16 shift
xshift8b0 1 0 8701 8696 8620
+ 8621 25 24 8583 15 16 shift
xshift7b0 1 0 8706 8701 8631
+ 8630 25 24 8583 15 16 shift
xshift6b0 1 0 8711 8706 8633
+ 8632 25 24 8583 15 16 shift
xshift5b0 1 0 8716 8711 8640
+ 8641 25 24 8583 15 16 shift
xshift4b0 1 0 8721 8716 8642
+ 8643 25 24 8583 15 16 shift
xshift3b0 1 0 8726 8721 8652
+ 8651 25 24 8583 15 16 shift
xshift2b0 1 0 8731 8726 8650
+ 8653 25 24 8583 15 16 shift
xshift1b0 1 0 2181 8731 25
+ 24 15 16 rshift
xcntldecab0 1 0 8583 8423 7
+ 8 9 10 3 4 5
+ 6
+ cntldec
xcntl2bfg0 1 0 10 9 8
+ 7 6 5 4 3 6079
+ 6078
+ cntl2b
xndec1h0 1 0 2093 2095 8740
+ 8741 7 8 9 2011 7
+ 8 9 10 8742 2094 ndec1
xndec2h0 1 0 10 2010 8
+ 7 2011 2010 8 7 8749
+ 8750 2095 8751 8742 ndec2
xndec3h0 1 0 2095 8758 8759
+ 8760 8761 7 2009 9 2011
+ 7 2009 9 10 ndec3
xndec4h0 1 0 10 2010 2009
+ 7 2011 2010 2009 7 8768
+ 8769 8770 8771 2095 ndec4
xndec5h0 1 0 10 9 8
+ 2008 2011 9 8 2008 8778
+ 8779 8780 8781 2095 ndec5
xndec6h0 1 0 2095 8788 8789
+ 8790 8791 2008 8 2010 2011
+ 2008 8 2010 10 ndec6
xndec7h0 1 0 10 9 2009
+ 2008 2011 9 2009 2008 8798
+ 8799 8800 8801 2095 ndec7
xndec8h0 1 0 10 2010 2009
+ 2008 2011 2010 2009 2008 8808
+ 8809 8810 8811 2095 ndec8
xshift1h0 1 0 1965 8818 25
+ 24 15 16 rshift
xshift2h0 1 0 8818 8823 2093
+ 2094 25 24 2095 15 16 shift
xshift3h0 1 0 8823 8828 8741
+ 8740 25 24 2095 15 16 shift
xshift4h0 1 0 8828 8833 8751
+ 8742 25 24 2095 15 16 shift
xshift5h0 1 0 8833 8838 8749
+ 8750 25 24 2095 15 16 shift
xshift6h0 1 0 8838 8843 8761
+ 8760 25 24 2095 15 16 shift
xshift7h0 1 0 8843 8848 8759
+ 8758 25 24 2095 15 16 shift
xshift8h0 1 0 8848 8853 8768
+ 8769 25 24 2095 15 16 shift
xshift9h0 1 0 8853 8858 8770
+ 8771 25 24 2095 15 16 shift
xshift10h0 1 0 8858 8863 8778
+ 8779 25 24 2095 15 16 shift
xshift11h0 1 0 8863 8868 8780
+ 8781 25 24 2095 15 16 shift
xshift12h0 1 0 8868 8873 8791
+ 8790 25 24 2095 15 16 shift
xshift13h0 1 0 8873 8878 8789
+ 8788 25 24 2095 15 16 shift
xshift14h0 1 0 8878 8883 8798
+ 8799 25 24 2095 15 16 shift
xshift15h0 1 0 8883 8888 8800
+ 8801 25 24 2095 15 16 shift
xshift16h0 1 0 8809 8808 8810
+ 8811 8888 25 24 15 16
+ 2095 2095 lshift
xclkdeccdgh0 1 0 2008 2009 2010
+ 2011 7 8 9 10 25
+ 15 24 16 clkdec
xshift16c0 1 0 8898 8899 8900
+ 8901 8902 25 24 15 16
+ 1988 1988 lshift
xshift15c0 1 0 8908 8902 8909
+ 8910 25 24 1988 15 16 shift
xshift14c0 1 0 8915 8908 8916
+ 8917 25 24 1988 15 16 shift
xshift13c0 1 0 8922 8915 8923
+ 8924 25 24 1988 15 16 shift
xshift12c0 1 0 8929 8922 8930
+ 8931 25 24 1988 15 16 shift
xshift11c0 1 0 8936 8929 8937
+ 8938 25 24 1988 15 16 shift
xshift10c0 1 0 8943 8936 8944
+ 8945 25 24 1988 15 16 shift
xshift9c0 1 0 8950 8943 8951
+ 8952 25 24 1988 15 16 shift
xshift8c0 1 0 8957 8950 8958
+ 8959 25 24 1988 15 16 shift
xshift7c0 1 0 8964 8957 8965
+ 8966 25 24 1988 15 16 shift
xshift6c0 1 0 8971 8964 8972
+ 8973 25 24 1988 15 16 shift
xshift5c0 1 0 8978 8971 8979
+ 8980 25 24 1988 15 16 shift
xshift4c0 1 0 8985 8978 8986
+ 8987 25 24 1988 15 16 shift
xshift3c0 1 0 8992 8985 8993
+ 8994 25 24 1988 15 16 shift
xshift2c0 1 0 8999 8992 9000
+ 9001 25 24 1988 15 16 shift
xshift1c0 1 0 2190 8999 25
+ 24 15 16 rshift
xndec8c0 1 0 10 2010 2009
+ 2008 2011 2010 2009 2008 8899
+ 8898 8900 8901 1988 ndec8
xndec7c0 1 0 10 9 2009
+ 2008 2011 9 2009 2008 8916
+ 8917 8909 8910 1988 ndec7
xndec6c0 1 0 1988 8924 8923
+ 8931 8930 2008 8 2010 2011
+ 2008 8 2010 10 ndec6
xndec5c0 1 0 10 9 8
+ 2008 2011 9 8 2008 8944
+ 8945 8937 8938 1988 ndec5
xndec4c0 1 0 10 2010 2009
+ 7 2011 2010 2009 7 8958
+ 8959 8951 8952 1988 ndec4
xndec3c0 1 0 1988 8966 8965
+ 8973 8972 7 2009 9 2011
+ 7 2009 9 10 ndec3
xndec2c0 1 0 10 2010 8
+ 7 2011 2010 8 7 8979
+ 8980 1988 8986 8987 ndec2
xndec1c0 1 0 9000 1988 8994
+ 8993 7 8 9 2011 7
+ 8 9 10 8987 9001 ndec1
xcondec8cd0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec8
xcondec7cd0 1 0 10 9 8
+ 7 2011 2010 2009 2008 condec7
xcondec6cd0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec6
xcondec5cd0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec5
xcondec4cd0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec4
xcondec3cd0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec3
xcondec2cd0 1 0 2008 2009 2010
+ 2011 7 8 9 10 condec2
xcondec1cd0 1 0 10 9 8
+ 7 2011 2010 2009 2008 condec1
xndec8d0 1 0 10 2010 2009
+ 2008 2011 2010 2009 2008 9058
+ 9059 9060 9061 1987 ndec8
xndec7d0 1 0 10 9 2009
+ 2008 2011 9 2009 2008 9068
+ 9069 9070 9071 1987 ndec7
xndec6d0 1 0 1987 9078 9079
+ 9080 9081 2008 8 2010 2011
+ 2008 8 2010 10 ndec6
xndec5d0 1 0 10 9 8
+ 2008 2011 9 8 2008 9088
+ 9089 9090 9091 1987 ndec5
xndec4d0 1 0 10 2010 2009
+ 7 2011 2010 2009 7 9098
+ 9099 9100 9101 1987 ndec4
xndec3d0 1 0 1987 9108 9109
+ 9110 9111 7 2009 9 2011
+ 7 2009 9 10 ndec3
xndec2d0 1 0 10 2010 8
+ 7 2011 2010 8 7 9118
+ 9119 1987 9120 9121 ndec2
xndec1d0 1 0 1995 1987 2003
+ 2002 7 8 9 2011 7
+ 8 9 10 9121 1996 ndec1
xfilldec2cd0 1 0 1995 1996 9001
+ 9000 1987 1988 10 9 8
+ 7 2011 2010 2009 2008 filldec2
xshift16d0 1 0 9059 9058 9060
+ 9061 9134 25 24 15 16
+ 1987 1987 lshift
xshift15d0 1 0 9140 9134 9070
+ 9071 25 24 1987 15 16 shift
xshift14d0 1 0 9145 9140 9068
+ 9069 25 24 1987 15 16 shift
xshift13d0 1 0 9150 9145 9079
+ 9078 25 24 1987 15 16 shift
xshift12d0 1 0 9155 9150 9081
+ 9080 25 24 1987 15 16 shift
xshift11d0 1 0 9160 9155 9090
+ 9091 25 24 1987 15 16 shift
xshift10d0 1 0 9165 9160 9088
+ 9089 25 24 1987 15 16 shift
xshift9d0 1 0 9170 9165 9100
+ 9101 25 24 1987 15 16 shift
xshift8d0 1 0 9175 9170 9098
+ 9099 25 24 1987 15 16 shift
xshift7d0 1 0 9180 9175 9109
+ 9108 25 24 1987 15 16 shift
xshift6d0 1 0 9185 9180 9111
+ 9110 25 24 1987 15 16 shift
xshift5d0 1 0 9190 9185 9118
+ 9119 25 24 1987 15 16 shift
xshift4d0 1 0 2001 9190 9120
+ 9121 25 24 1987 15 16 shift
Vphi1 25 0 pwl (0 0 5e-08 0 5.1e-08 5 1e-07 5 
+ 1.01e-07 0 1.5e-07 0 1.51e-07 5 2e-07 5 
+ 2.01e-07 0 2.5e-07 0 2.51e-07 5 3e-07 5 
+ 3.01e-07 0 3.5e-07 0 3.51e-07 5 4e-07 5 
+ 4.01e-07 0 4.5e-07 0 4.51e-07 5 5e-07 5 
+ 5.01e-07 0 5.5e-07 0 5.51e-07 5 6e-07 5 
+ 6.01e-07 0 6.5e-07 0 6.51e-07 5 7e-07 5 
+ 7.01e-07 0 7.5e-07 0 7.51e-07 5 8e-07 5 
+ 8.01e-07 0 8.5e-07 0 8.51e-07 5 9e-07 5 
+ 9.01e-07 0 9.5e-07 0 9.51e-07 5 1e-06 5 
+ 1.001e-06 0 1.05e-06 0 1.051e-06 5 1.1e-06 5 
+ 1.101e-06 0 1.15e-06 0 1.151e-06 5 1.2e-06 5 
+ 1.201e-06 0 1.25e-06 0 1.251e-06 5 1.3e-06 5 
+ 1.301e-06 0 1.35e-06 0 1.351e-06 5 1.4e-06 5 
+ 1.401e-06 0 1.45e-06 0 1.451e-06 5 1.5e-06 5 
+ 1.501e-06 0 1.55e-06 0 1.551e-06 5 1.6e-06 5 
+ 1.601e-06 0 1.65e-06 0 1.651e-06 5 1.7e-06 5 
+ 1.701e-06 0 1.75e-06 0 1.751e-06 5 1.8e-06 5 
+ 1.801e-06 0 1.85e-06 0 1.851e-06 5 1.9e-06 5 
+ 1.901e-06 0 1.95e-06 0 1.951e-06 5 2e-06 5 
+ 2.001e-06 0 2.05e-06 0 2.051e-06 5 2.1e-06 5 
+ 2.101e-06 0 2.15e-06 0 2.151e-06 5 2.2e-06 5 
+ 2.201e-06 0 2.25e-06 0 2.251e-06 5 2.3e-06 5 
+ 2.301e-06 0 2.35e-06 0 2.351e-06 5 2.4e-06 5 
+ 2.401e-06 0 2.45e-06 0 2.451e-06 5 2.5e-06 5 
+ 2.501e-06 0 2.55e-06 0 2.551e-06 5 2.6e-06 5 
+ 2.601e-06 0 2.65e-06 0 2.651e-06 5 2.7e-06 5 
+ 2.701e-06 0 2.75e-06 0 2.751e-06 5 2.8e-06 5 
+ 2.801e-06 0 2.85e-06 0 2.851e-06 5 2.9e-06 5 
+ 2.901e-06 0 2.95e-06 0 2.951e-06 5 3e-06 5 
+ 3.001e-06 0 3.05e-06 0 3.051e-06 5 3.1e-06 5 
+ 3.101e-06 0 3.15e-06 0 3.151e-06 5 3.2e-06 5 
+ 3.201e-06 0 3.25e-06 0 3.251e-06 5 3.3e-06 5 
+ 3.301e-06 0 3.35e-06 0 3.351e-06 5 3.4e-06 5 
+ 3.401e-06 0 3.45e-06 0 3.451e-06 5 3.5e-06 5 
+ 3.501e-06 0 3.55e-06 0 3.551e-06 5 3.6e-06 5 
+ 3.601e-06 0 3.65e-06 0 3.651e-06 5 3.7e-06 5 
+ 3.701e-06 0 3.75e-06 0 3.751e-06 5 3.8e-06 5 
+ 3.801e-06 0 3.85e-06 0 3.851e-06 5 3.9e-06 5 
+ 3.901e-06 0 3.95e-06 0 3.951e-06 5 4e-06 5 
+ 4.001e-06 0 4.05e-06 0 4.051e-06 5 4.1e-06 5 
+ 4.101e-06 0 4.15e-06 0 4.151e-06 5 4.2e-06 5 
+ 4.201e-06 0 4.25e-06 0 4.251e-06 5 4.3e-06 5 
+ 4.301e-06 0 4.35e-06 0 4.351e-06 5 4.4e-06 5 
+ 4.401e-06 0 4.45e-06 0 4.451e-06 5 4.5e-06 5 
+ 4.501e-06 0 4.55e-06 0 4.551e-06 5 4.6e-06 5 
+ 4.601e-06 0 4.65e-06 0 4.651e-06 5 4.7e-06 5 
+ 4.701e-06 0 4.75e-06 0 4.751e-06 5 4.8e-06 5 
+ 4.801e-06 0 4.85e-06 0 4.851e-06 5 4.9e-06 5 
+ 4.901e-06 0 4.95e-06 0 4.951e-06 5 5e-06 5 
+ 5.001e-06 0 5.05e-06 0 )
Vphi1b 15 0 pwl (0 5 5e-08 5 5.1e-08 0 1e-07 0 
+ 1.01e-07 5 1.5e-07 5 1.51e-07 0 2e-07 0 
+ 2.01e-07 5 2.5e-07 5 2.51e-07 0 3e-07 0 
+ 3.01e-07 5 3.5e-07 5 3.51e-07 0 4e-07 0 
+ 4.01e-07 5 4.5e-07 5 4.51e-07 0 5e-07 0 
+ 5.01e-07 5 5.5e-07 5 5.51e-07 0 6e-07 0 
+ 6.01e-07 5 6.5e-07 5 6.51e-07 0 7e-07 0 
+ 7.01e-07 5 7.5e-07 5 7.51e-07 0 8e-07 0 
+ 8.01e-07 5 8.5e-07 5 8.51e-07 0 9e-07 0 
+ 9.01e-07 5 9.5e-07 5 9.51e-07 0 1e-06 0 
+ 1.001e-06 5 1.05e-06 5 1.051e-06 0 1.1e-06 0 
+ 1.101e-06 5 1.15e-06 5 1.151e-06 0 1.2e-06 0 
+ 1.201e-06 5 1.25e-06 5 1.251e-06 0 1.3e-06 0 
+ 1.301e-06 5 1.35e-06 5 1.351e-06 0 1.4e-06 0 
+ 1.401e-06 5 1.45e-06 5 1.451e-06 0 1.5e-06 0 
+ 1.501e-06 5 1.55e-06 5 1.551e-06 0 1.6e-06 0 
+ 1.601e-06 5 1.65e-06 5 1.651e-06 0 1.7e-06 0 
+ 1.701e-06 5 1.75e-06 5 1.751e-06 0 1.8e-06 0 
+ 1.801e-06 5 1.85e-06 5 1.851e-06 0 1.9e-06 0 
+ 1.901e-06 5 1.95e-06 5 1.951e-06 0 2e-06 0 
+ 2.001e-06 5 2.05e-06 5 2.051e-06 0 2.1e-06 0 
+ 2.101e-06 5 2.15e-06 5 2.151e-06 0 2.2e-06 0 
+ 2.201e-06 5 2.25e-06 5 2.251e-06 0 2.3e-06 0 
+ 2.301e-06 5 2.35e-06 5 2.351e-06 0 2.4e-06 0 
+ 2.401e-06 5 2.45e-06 5 2.451e-06 0 2.5e-06 0 
+ 2.501e-06 5 2.55e-06 5 2.551e-06 0 2.6e-06 0 
+ 2.601e-06 5 2.65e-06 5 2.651e-06 0 2.7e-06 0 
+ 2.701e-06 5 2.75e-06 5 2.751e-06 0 2.8e-06 0 
+ 2.801e-06 5 2.85e-06 5 2.851e-06 0 2.9e-06 0 
+ 2.901e-06 5 2.95e-06 5 2.951e-06 0 3e-06 0 
+ 3.001e-06 5 3.05e-06 5 3.051e-06 0 3.1e-06 0 
+ 3.101e-06 5 3.15e-06 5 3.151e-06 0 3.2e-06 0 
+ 3.201e-06 5 3.25e-06 5 3.251e-06 0 3.3e-06 0 
+ 3.301e-06 5 3.35e-06 5 3.351e-06 0 3.4e-06 0 
+ 3.401e-06 5 3.45e-06 5 3.451e-06 0 3.5e-06 0 
+ 3.501e-06 5 3.55e-06 5 3.551e-06 0 3.6e-06 0 
+ 3.601e-06 5 3.65e-06 5 3.651e-06 0 3.7e-06 0 
+ 3.701e-06 5 3.75e-06 5 3.751e-06 0 3.8e-06 0 
+ 3.801e-06 5 3.85e-06 5 3.851e-06 0 3.9e-06 0 
+ 3.901e-06 5 3.95e-06 5 3.951e-06 0 4e-06 0 
+ 4.001e-06 5 4.05e-06 5 4.051e-06 0 4.1e-06 0 
+ 4.101e-06 5 4.15e-06 5 4.151e-06 0 4.2e-06 0 
+ 4.201e-06 5 4.25e-06 5 4.251e-06 0 4.3e-06 0 
+ 4.301e-06 5 4.35e-06 5 4.351e-06 0 4.4e-06 0 
+ 4.401e-06 5 4.45e-06 5 4.451e-06 0 4.5e-06 0 
+ 4.501e-06 5 4.55e-06 5 4.551e-06 0 4.6e-06 0 
+ 4.601e-06 5 4.65e-06 5 4.651e-06 0 4.7e-06 0 
+ 4.701e-06 5 4.75e-06 5 4.751e-06 0 4.8e-06 0 
+ 4.801e-06 5 4.85e-06 5 4.851e-06 0 4.9e-06 0 
+ 4.901e-06 5 4.95e-06 5 4.951e-06 0 5e-06 0 
+ 5.001e-06 5 5.05e-06 5 )
Vphi2 24 0 pwl (0 5 5e-08 5 5.1e-08 0 1e-07 0 
+ 1.01e-07 5 1.5e-07 5 1.51e-07 0 2e-07 0 
+ 2.01e-07 5 2.5e-07 5 2.51e-07 0 3e-07 0 
+ 3.01e-07 5 3.5e-07 5 3.51e-07 0 4e-07 0 
+ 4.01e-07 5 4.5e-07 5 4.51e-07 0 5e-07 0 
+ 5.01e-07 5 5.5e-07 5 5.51e-07 0 6e-07 0 
+ 6.01e-07 5 6.5e-07 5 6.51e-07 0 7e-07 0 
+ 7.01e-07 5 7.5e-07 5 7.51e-07 0 8e-07 0 
+ 8.01e-07 5 8.5e-07 5 8.51e-07 0 9e-07 0 
+ 9.01e-07 5 9.5e-07 5 9.51e-07 0 1e-06 0 
+ 1.001e-06 5 1.05e-06 5 1.051e-06 0 1.1e-06 0 
+ 1.101e-06 5 1.15e-06 5 1.151e-06 0 1.2e-06 0 
+ 1.201e-06 5 1.25e-06 5 1.251e-06 0 1.3e-06 0 
+ 1.301e-06 5 1.35e-06 5 1.351e-06 0 1.4e-06 0 
+ 1.401e-06 5 1.45e-06 5 1.451e-06 0 1.5e-06 0 
+ 1.501e-06 5 1.55e-06 5 1.551e-06 0 1.6e-06 0 
+ 1.601e-06 5 1.65e-06 5 1.651e-06 0 1.7e-06 0 
+ 1.701e-06 5 1.75e-06 5 1.751e-06 0 1.8e-06 0 
+ 1.801e-06 5 1.85e-06 5 1.851e-06 0 1.9e-06 0 
+ 1.901e-06 5 1.95e-06 5 1.951e-06 0 2e-06 0 
+ 2.001e-06 5 2.05e-06 5 2.051e-06 0 2.1e-06 0 
+ 2.101e-06 5 2.15e-06 5 2.151e-06 0 2.2e-06 0 
+ 2.201e-06 5 2.25e-06 5 2.251e-06 0 2.3e-06 0 
+ 2.301e-06 5 2.35e-06 5 2.351e-06 0 2.4e-06 0 
+ 2.401e-06 5 2.45e-06 5 2.451e-06 0 2.5e-06 0 
+ 2.501e-06 5 2.55e-06 5 2.551e-06 0 2.6e-06 0 
+ 2.601e-06 5 2.65e-06 5 2.651e-06 0 2.7e-06 0 
+ 2.701e-06 5 2.75e-06 5 2.751e-06 0 2.8e-06 0 
+ 2.801e-06 5 2.85e-06 5 2.851e-06 0 2.9e-06 0 
+ 2.901e-06 5 2.95e-06 5 2.951e-06 0 3e-06 0 
+ 3.001e-06 5 3.05e-06 5 3.051e-06 0 3.1e-06 0 
+ 3.101e-06 5 3.15e-06 5 3.151e-06 0 3.2e-06 0 
+ 3.201e-06 5 3.25e-06 5 3.251e-06 0 3.3e-06 0 
+ 3.301e-06 5 3.35e-06 5 3.351e-06 0 3.4e-06 0 
+ 3.401e-06 5 3.45e-06 5 3.451e-06 0 3.5e-06 0 
+ 3.501e-06 5 3.55e-06 5 3.551e-06 0 3.6e-06 0 
+ 3.601e-06 5 3.65e-06 5 3.651e-06 0 3.7e-06 0 
+ 3.701e-06 5 3.75e-06 5 3.751e-06 0 3.8e-06 0 
+ 3.801e-06 5 3.85e-06 5 3.851e-06 0 3.9e-06 0 
+ 3.901e-06 5 3.95e-06 5 3.951e-06 0 4e-06 0 
+ 4.001e-06 5 4.05e-06 5 4.051e-06 0 4.1e-06 0 
+ 4.101e-06 5 4.15e-06 5 4.151e-06 0 4.2e-06 0 
+ 4.201e-06 5 4.25e-06 5 4.251e-06 0 4.3e-06 0 
+ 4.301e-06 5 4.35e-06 5 4.351e-06 0 4.4e-06 0 
+ 4.401e-06 5 4.45e-06 5 4.451e-06 0 4.5e-06 0 
+ 4.501e-06 5 4.55e-06 5 4.551e-06 0 4.6e-06 0 
+ 4.601e-06 5 4.65e-06 5 4.651e-06 0 4.7e-06 0 
+ 4.701e-06 5 4.75e-06 5 4.751e-06 0 4.8e-06 0 
+ 4.801e-06 5 4.85e-06 5 4.851e-06 0 4.9e-06 0 
+ 4.901e-06 5 4.95e-06 5 4.951e-06 0 5e-06 0 
+ 5.001e-06 5 5.05e-06 5 )
Vphi2b 16 0 pwl (0 0 5e-08 0 5.1e-08 5 1e-07 5 
+ 1.01e-07 0 1.5e-07 0 1.51e-07 5 2e-07 5 
+ 2.01e-07 0 2.5e-07 0 2.51e-07 5 3e-07 5 
+ 3.01e-07 0 3.5e-07 0 3.51e-07 5 4e-07 5 
+ 4.01e-07 0 4.5e-07 0 4.51e-07 5 5e-07 5 
+ 5.01e-07 0 5.5e-07 0 5.51e-07 5 6e-07 5 
+ 6.01e-07 0 6.5e-07 0 6.51e-07 5 7e-07 5 
+ 7.01e-07 0 7.5e-07 0 7.51e-07 5 8e-07 5 
+ 8.01e-07 0 8.5e-07 0 8.51e-07 5 9e-07 5 
+ 9.01e-07 0 9.5e-07 0 9.51e-07 5 1e-06 5 
+ 1.001e-06 0 1.05e-06 0 1.051e-06 5 1.1e-06 5 
+ 1.101e-06 0 1.15e-06 0 1.151e-06 5 1.2e-06 5 
+ 1.201e-06 0 1.25e-06 0 1.251e-06 5 1.3e-06 5 
+ 1.301e-06 0 1.35e-06 0 1.351e-06 5 1.4e-06 5 
+ 1.401e-06 0 1.45e-06 0 1.451e-06 5 1.5e-06 5 
+ 1.501e-06 0 1.55e-06 0 1.551e-06 5 1.6e-06 5 
+ 1.601e-06 0 1.65e-06 0 1.651e-06 5 1.7e-06 5 
+ 1.701e-06 0 1.75e-06 0 1.751e-06 5 1.8e-06 5 
+ 1.801e-06 0 1.85e-06 0 1.851e-06 5 1.9e-06 5 
+ 1.901e-06 0 1.95e-06 0 1.951e-06 5 2e-06 5 
+ 2.001e-06 0 2.05e-06 0 2.051e-06 5 2.1e-06 5 
+ 2.101e-06 0 2.15e-06 0 2.151e-06 5 2.2e-06 5 
+ 2.201e-06 0 2.25e-06 0 2.251e-06 5 2.3e-06 5 
+ 2.301e-06 0 2.35e-06 0 2.351e-06 5 2.4e-06 5 
+ 2.401e-06 0 2.45e-06 0 2.451e-06 5 2.5e-06 5 
+ 2.501e-06 0 2.55e-06 0 2.551e-06 5 2.6e-06 5 
+ 2.601e-06 0 2.65e-06 0 2.651e-06 5 2.7e-06 5 
+ 2.701e-06 0 2.75e-06 0 2.751e-06 5 2.8e-06 5 
+ 2.801e-06 0 2.85e-06 0 2.851e-06 5 2.9e-06 5 
+ 2.901e-06 0 2.95e-06 0 2.951e-06 5 3e-06 5 
+ 3.001e-06 0 3.05e-06 0 3.051e-06 5 3.1e-06 5 
+ 3.101e-06 0 3.15e-06 0 3.151e-06 5 3.2e-06 5 
+ 3.201e-06 0 3.25e-06 0 3.251e-06 5 3.3e-06 5 
+ 3.301e-06 0 3.35e-06 0 3.351e-06 5 3.4e-06 5 
+ 3.401e-06 0 3.45e-06 0 3.451e-06 5 3.5e-06 5 
+ 3.501e-06 0 3.55e-06 0 3.551e-06 5 3.6e-06 5 
+ 3.601e-06 0 3.65e-06 0 3.651e-06 5 3.7e-06 5 
+ 3.701e-06 0 3.75e-06 0 3.751e-06 5 3.8e-06 5 
+ 3.801e-06 0 3.85e-06 0 3.851e-06 5 3.9e-06 5 
+ 3.901e-06 0 3.95e-06 0 3.951e-06 5 4e-06 5 
+ 4.001e-06 0 4.05e-06 0 4.051e-06 5 4.1e-06 5 
+ 4.101e-06 0 4.15e-06 0 4.151e-06 5 4.2e-06 5 
+ 4.201e-06 0 4.25e-06 0 4.251e-06 5 4.3e-06 5 
+ 4.301e-06 0 4.35e-06 0 4.351e-06 5 4.4e-06 5 
+ 4.401e-06 0 4.45e-06 0 4.451e-06 5 4.5e-06 5 
+ 4.501e-06 0 4.55e-06 0 4.551e-06 5 4.6e-06 5 
+ 4.601e-06 0 4.65e-06 0 4.651e-06 5 4.7e-06 5 
+ 4.701e-06 0 4.75e-06 0 4.751e-06 5 4.8e-06 5 
+ 4.801e-06 0 4.85e-06 0 4.851e-06 5 4.9e-06 5 
+ 4.901e-06 0 4.95e-06 0 4.951e-06 5 5e-06 5 
+ 5.001e-06 0 5.05e-06 0 )
Vdin1 8423 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin2 8583 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin3 1988 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin4 1987 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin5 8093 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin6 8092 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin7 2016 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vdin8 2095 0 pwl (0 0 5e-07 0 5.01e-07 5 1e-06 5 
+ 1.001e-06 0 1.5e-06 0 1.501e-06 5 2e-06 5 
+ 2.001e-06 0 2.5e-06 0 2.501e-06 5 3e-06 5 
+ 3.001e-06 0 3.5e-06 0 3.501e-06 5 4e-06 5 
+ 4.001e-06 0 4.5e-06 0 4.501e-06 5 5e-06 5 
+ 5.001e-06 0 )
Vc1 10 0 pwl (0 5 5e-06 5 5.001e-06 0 1e-05 0 
+ 1.0001e-05 5 )
Vc2 9 0 pwl (0 5 5e-06 5 5.001e-06 0 1e-05 0 
+ 1.0001e-05 5 )
Vc3 8 0 pwl (0 5 5e-06 5 5.001e-06 0 1e-05 0 
+ 1.0001e-05 5 )
Vc4 7 0 pwl (0 5 5e-06 5 5.001e-06 0 1e-05 0 
+ 1.0001e-05 5 )
Vc5 6 0 pwl (0 0 5e-06 0 5.001e-06 5 1e-05 5 
+ 1.0001e-05 0 )
Vc6 5 0 pwl (0 0 5e-06 0 5.001e-06 5 1e-05 5 
+ 1.0001e-05 0 )
Vc7 4 0 pwl (0 0 5e-06 0 5.001e-06 5 1e-05 5 
+ 1.0001e-05 0 )
Vc8 3 0 pwl (0 0 5e-06 0 5.001e-06 5 1e-05 5 
+ 1.0001e-05 0 )
VVDD 1 0 5
*.print TRAN v(24) v(8423) v(8071) v(2177) v(2178) v(11) 
+v(6120) v(6079) v(6078) v(1966) 
.options limpts=50000 itl5=50000
*.TRAN 1e-08 5e-06
.op
.end
