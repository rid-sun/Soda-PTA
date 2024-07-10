DCOSC - DC PART OF 1KHZ OSCILLATOR                                     
.WIDTH IN=72                                                          
*.OPT ACCT LIST NODE LVLCOD=1                                           
VCC 2 0 5.6                                                            
Q1 2 1 8 Q1                                                           
Q2 3 6 5 Q1                                                            
Q3 2 10 12 Q1                                                          
Q4 11 3 7 Q1                                                           
Q5 10 11 13 Q1                                                         
Q6 2 10 9 Q1                                                           
Q7 3 8 4 Q1                                                            
R1 2 3 12K                                                             
R2 4 5 300                                                             
R3 4 0 1.5K                                                            
R4 10 1 98.603K                                                        
R5 2 11 7.5K                                                           
R6 7 0 1K                                                             
R7 12 6 5K                                                            
R8 6 0 10K                                                             
R9 2 10 1.5K                                                           
R10 13 0 240                                                           
R11 9 0 147                                                            
.MODEL Q1 NPN(BF=60 BR=0.205 IS=1.21E-15)                              
*.END                 

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end                                