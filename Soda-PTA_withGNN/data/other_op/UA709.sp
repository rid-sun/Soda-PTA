UA709 CKT - UA 709 OPERATIONAL AMPLIFIER                              
.WIDTH IN=72                                                          
*.OPT ACCT LIST NODE LVLCOD=1                                          
*.DC VIN -0.25 0.25 0.005                                              
*.AC DEC 10 1 10GHZ                                                   
*.TRAN 2.5US 250US                                                     
VIN 1 0 SIN(0 0.1 10KHZ) AC 1                                         
VCC 19 0 15                                                          
VEE 20 0 -15                                                          
RS1 30 1 1K                                                           
RS2 31 0 1K                                                           
RF 30 18 100K                                                         
RCOMP 7 23 1.5K                                                       
CICOMP 23 4 5000PF                                                     
COCOMP 18 15 200PF                                                    
Q1 2 31 3 QNL                                                          
Q2 4 30 3 QNL                                                          
Q3 19 6 5 QNL                                                          
Q4 7 4 11 QNL                                                         
Q5 7 11 12 QNL                                                        
Q6 6 13 12 QNL                                                        
Q7 6 2 13 QNL                                                          
Q8 19 7 21 QNL                                                        
Q9 19 17 18 QNL                                                       
Q10 17 15 16 QNL                                                      
Q11 3 8 22 QNL                                                         
Q12 8 8 20 QNL                                                       
Q13 14 14 12 QNL                                                      
Q14 15 12 10 QPL                                                       
Q15 20 17 18 QPL                                                      
R1 5 2 25K                                                           
R2 5 4 25K                                                           
R3 22 20 2.4K                                                         
R4 8 9 18K                                                            
R5 9 12 3.6K                                                          
R6 11 14 3K                                                           
R7 19 7 10K                                                           
R8 19 6 10K                                                           
R9 9 10 10K                                                          
R10 10 18 30K                                                          
R11 19 17 20K                                                         
R12 15 16 10K                                                        
R13 16 20 75.0                                                       
R14 13 14 3K                                                         
R15 21 10 1K                                                          
.MODEL QNL NPN(BF=80 RB=100 CCS=2PF TF=0.3NS TR=6NS CJE=3PF CJC=2PF    VA=50)                                                            
.MODEL QPL PNP(BF=10 RB=20 TF=1NS TR=20NS CJE=6PF CJC=4PF VA=50)      
*.PRINT DC V(7) V(18)                                                  
*.PLOT DC V(18)                                                        
*.PRINT AC VM(18) VP(18)                                                
*.PLOT AC VM(18) VP(18)                                                 
*.PRINT TRAN V(7) V(18)                                                 
*.PLOT TRAN V(18)                                                       
*.END

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end  