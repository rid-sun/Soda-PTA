UA741 CKT - UA 741 OPERATIONAL AMPLIFIER/ POSITIVE FEEDBACK
*2001.01.22                                 
.WIDTH IN=72                                                            
*.OPT ACCT LIST NOMOD                                     
*.OP
*.DC VIN -0.15 0.15 0.005                                                
*.AC DEC 10 1 10GHZ                                                      
*.TRAN 2.5US 250US                                                       
VCC 27 0 1.0                                                             
VEE 26 0 -1.0                                                            
VIN 30 0 DC 0.016                                  
*RS1 2 30 1K                                                             
*RS2 1 0 1K                                                              
*RF 24 2 100K  
*positive feedback
RS1 1 30 1K                                                             
RS2 2 0 1K                                                              
RF 24 1 100K                                                           
R1 10 26 1K                                                             
R2 9 26 50K                                                             
R3 11 26 1K                                                             
R4 12 26 3K                                                             
R5 15 17 39K                                                            
R6 21 20 40K                                                            
R7 14 26 50K                                                            
R8 18 26 50                                                             
R9 24 25 25                                                             
R10 23 24 50                                                            
R11 13 26 50K                                                           
*COMP 22 8 30PF                                                          
Q1 3 1 4 QNL                                                            
Q2 3 2 5 QNL                                                            
Q3 7 6 4 QPL                                                            
Q4 8 6 5 QPL                                                            
Q5 7 9 10 QNL                                                           
Q6 8 9 11 QNL                                                           
Q7 27 7 9 QNL                                                           
Q8 6 15 12 QNL                                                          
Q9 15 15 26 QNL                                                         
Q10 3 3 27 QPL                                                          
Q11 6 3 27 QPL                                                          
Q12 17 17 27 QPL                                                        
Q14 22 17 27 QPL                                                        
Q15 22 22 21 QNL                                                        
Q16 22 21 20 QNL                                                        
Q17 13 13 26 QNL                                                        
Q18 27 8 14 QNL                                                         
Q19 20 14 18 QNL                                                        
Q20 22 23 24 QNL                                                        
Q21 13 25 24 QPL                                                        
Q22 27 22 23 QNL                                                        
Q23 26 20 25 QPL                                                        
.MODEL QNL NPN(BF=80 RB=100 VA=0)                                              
.MODEL QPL PNP(BF=10 RB=20 VA=0)        
*.MODEL QNL NPN(BF=80 RB=100 VA=50)                                              
*.MODEL QPL PNP(BF=10 RB=20 VA=50)        
*.PRINT DC V(8) V(24)                                                    
*.PLOT DC V(24)                                                          
*.PRINT AC VM(24) VP(24)                                                 
*.PLOT AC VM(24) VP(24)                                                  
*.PRINT TRAN V(8) V(24)                                                  
*.PLOT TRAN V(24) V(8)                                                   
*.END

.OPTIONS DELMAX=1000ns
.op
*.gmin
.end 