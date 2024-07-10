UA727 CKT - UA 727 AMPLIFIER                                           
.WIDTH IN=72                                                           
*.OPT ACCT LIST NODE LVLCOD=1                                          
*.DC VIN -0.2 0.2 0.004                                                
*.AC DEC 10 1 10GHZ                                                   
*.TRAN 0.05US 5US                                                      
VCC1 34 0 15                                                          
VCC2 35 0 15                                                         
VEE 36 0 -15                                                         
VIN 40 0 SIN(0 0.2 500KHZ) AC 1                                       
RS1 40 1 1K                                                          
RS2 12 0 1K                                                           
IZ1 36 9 620MA                                                       
RZ1 36 9 10                                                           
IZ2 32 31 620MA                                                        
RZ2 32 31 10                                                           
R1 9 31 1K                                                           
R2 28 9 21K                                                           
R3 28 19 4.8K                                                          
R4 32 36 2.4K                                                          
R5 33 36 10                                                           
R6 26 19 2K                                                            
R7 25 36 1.5K                                                          
R8 20 36 120K                                                         
R9 11 3 60K                                                            
R10 6 8 60K                                                            
R11 34 5 3K                                                            
R12 8 9 10K                                                            
R13 22 36 15K                                                         
R14 21 36 15K                                                        
R15 23 36 15K                                                         
R16 17 9 10K                                                          
R17 34 15 3K                                                          
R18 16 17 60K                                                          
R19 11 14 60K                                                         
R21 24 36 120K                                                        
RTEMP 35 29 330K                                                    
Q3 35 29 31 QNL                                                      
Q4 35 32 33 QNL                                                      
Q5 29 33 36 QNL                                                       
Q6 29 28 27 QNL                                                       
Q7 27 27 26 QNL                                                       
Q8 19 19 25 QNL                                                     
Q9 34 1 2 QNL                                                        
Q10 2 19 20 QNL                                                      
Q11 34 34 11 QNL                                                      
Q12 3 2 4 QNL                                                          
Q13 4 19 22 QNL                                                       
Q14 6 3 5 QPL                                                         
Q15 5 6 8 QNL                                                         
Q16 34 8 10 QNL                                                        
Q17 10 19 21 QNL                                                      
Q18 34 17 18 QNL                                                     
Q19 18 19 23 QNL                                                     
Q20 15 16 17 QNL                                                      
Q21 16 14 15 QPL                                                      
Q22 14 13 4 QNL                                                       
Q23 13 19 24 QNL                                                      
Q24 34 12 13 QNL                                                       
.MODEL QNL NPN(BF=80 RB=100 CCS=2PF TF=0.3NS TR=6NS CJE=3PF CJC=2PF   
+   VA=50)                                                            
.MODEL QPL PNP(BF=10 RB=20 TF=1NS TR=20NS CJE=6PF CJC=4PF VA=50)      
*.PRINT DC V(10) V(18)                                                 
*.PLOT DC V(18)                                                      
*.PRINT AC VM(18) VP(18)                                              
*.PLOT AC VM(18) VP(18)                                                
*.PRINT TRAN V(10) V(18)                                               
*.PLOT TRAN V(18)                                                      
*.END           

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end  
                                 