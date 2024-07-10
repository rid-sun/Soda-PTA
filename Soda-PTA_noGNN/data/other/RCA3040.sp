RCA3040 CKT - RCA 3040 WIDEBAND AMPLIFIER                              
.WIDTH IN=72                                                           
*.OPT ACCT LIST NODE LVLCOD=1                                          
*.DC VIN -0.25 0.25 0.005                                               
*.AC DEC 10 1 10GHZ                                                     
*.TRAN 0.5NS 50NS                                                      
VIN 1 0 SIN(0 0.1 50MEG) AC 1                                          
VCC 2 0 15.0                                                        
VEE 3 0 -15.0                                                         
RS1 30 1 1K                                                           
RS2 31 0 1K                                                          
R1 6 3 4.8K                                                            
R2 5 3 4.8K                                                            
R3 9 3 0.811K                                                         
R4 8 3 2.17K                                                          
R5 8 0 0.82K                                                          
R6 2 14 1.32K                                                          
R7 2 12 4.5K                                                          
R8 2 15 1.32K                                                         
R9 16 0 5.25K                                                          
R10 17 0 5.25K                                                       
Q1 2 31 6 QNL                                                         
Q2 2 30 5 QNL                                                        
Q3 10 5 7 QNL                                                        
Q4 11 6 7 QNL                                                        
Q5 14 12 10 QNL                                                       
Q6 15 12 11 QNL                                                      
Q7 12 12 13 QNL                                                       
Q8 13 13 0 QNL                                                       
Q9 7 8 9 QNL                                                          
Q10 2 15 16 QNL                                                       
Q11 2 14 17 QNL                                                       
.MODEL QNL NPN(BF=80 RB=100 CCS=2PF TF=0.3NS TR=6NS CJE=3PF CJC=2PF    
+   VA=50)                                                             
*.PRINT DC V(16) V(17)                                                  
*.PLOT DC V(17)                                                         
*.PRINT AC VM(17) VP(17)                                               
*.PLOT AC VM(17) VP(17)                                               
*.PRINT TRAN V(16) V(17)                                               
*.PLOT TRAN V(17)                                                       
*.END      

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
*minstep=1.0e-06
*minstep=1.0e-09
.end   