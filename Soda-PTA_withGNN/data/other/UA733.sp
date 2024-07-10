UA733 CKT - UA 733 VIDEO PREAMPLIFIER                                  
.WIDTH IN=72                                                           
*.OPT ACCT LIST NODE LVLCOD=1                                          
VCC 11 0 8                                                            
VEE 9 0 -8                                                             
Q1 3 1 4 Q1                                                           
Q2 14 2 13 Q1                                                         
Q3 17 14 16 Q1                                                       
Q4 18 3 16 Q1                                                         
Q5 11 18 19 Q1                                                        
Q6 11 17 22 Q1                                                        
Q7 6 7 8 Q1                                                           
Q8 7 7 10 Q1                                                          
Q9 16 7 15 Q1                                                         
Q10 19 7 20 Q1                                                        
Q11 22 7 21 Q1                                                        
R1 1 0 51                                                              
R2 2 0 51                                                             
R3 11 3 2.5K                                                           
R4 11 14 2.4K                                                         
R5 4 5 50                                                             
R6 13 12 50                                                           
R7 5 6 590                                                            
R8 12 6 590                                                            
R9 11 7 10K                                                            
R10 11 17 1.1K                                                        
R11 11 18 1.1K                                                        
R12 3 19 7K                                                           
R13 14 22 7K                                                           
R14 8 9 300                                                            
R15 10 9 1.4K                                                         
R16 15 9 300                                                           
R17 20 9 400                                                          
R18 21 9 400                                                          
.MODEL Q1 NPN(BF=100 BR=2 IS=0.9901E-15)                              
*.END

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end  