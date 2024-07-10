SCHMITT CKT - ECL COMPATIBLE SCHMITT TRIGGER                           
.WIDTH IN=72                                                          
*.OPT ACCT LIST NODE LVLCOD=1                                           
*.TRAN 10NS 1000NS                                                      
VIN 1 0 PULSE(-1.6 -1.2 10NS 400NS 400NS 100NS 10000NS)                
VEE 8 0 -5                                                            
RIN 1 2 50                                                             
RC1 0 3 50                                                            
R1 3 5 185                                                             
R2 5 8 760                                                            
RC2 0 6 100                                                           
RE 4 8 260                                                           
RTH1 7 8 125                                                          
RTH2 7 0 85                                                           
CLOAD 7 0 5PF                                                          
Q1 3 2 4 QSTD OFF                                                     
Q2 6 5 4 QSTD                                                         
Q3 0 6 7 QSTD                                                         
Q4 0 6 7 QSTD                                                         
.MODEL QSTD NPN(IS=1.0E-16 BF=50 BR=0.1 RB=50 RC=10 TF=0.12NS TR=5NS    CJE=0.4PF PE=0.8 ME=0.4 CJC=0.5PF PC=0.8 MC=0.333 CCS=1PF VA=50)  
*.PRINT TRAN V(1) V(3) V(5) V(6)                                       
*.PLOT TRAN V(3) V(5) V(6) V(1)                                        
*.END         


.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end                                          