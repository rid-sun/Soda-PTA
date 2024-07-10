DIFPAIR CKT - SIMPLE DIFFERENTIAL PAIR                                  
.WIDTH IN=72                                                           
*.OPT ACCT LIST NODE LVLCOD=1                                           
*.TF V(5) VIN                                                         
*.DC VIN -0.25 0.25 0.005                                               
*.AC DEC 10 1 10GHZ                                                      
*.TRAN 5NS 500NS                                                       
VIN 1 0 SIN(0 0.1 5MEG) AC 1                                          
VCC 8 0 12                                                           
VEE 9 0 -12                                                           
Q1 4 2 6 QNL                                                            
Q2 5 3 6 QNL                                                         
RS1 1 2 1K                                                            
RS2 3 0 1K                                                            
RC1 4 8 10K                                                           
RC2 5 8 10K                                                           
Q3 6 7 9 QNL                                                          
Q4 7 7 9 QNL                                                          
RBIAS 7 8 20K                                                          
.MODEL QNL NPN(BF=80 RB=100 CCS=2PF TF=0.3NS TR=6NS CJE=3PF CJC=2PF   
+   VA=50)                                                             
*.PRINT DC V(4) V(5)                                                   
*.PLOT DC V(5)                                                         
*.PRINT AC VM(5) VP(5)                                                 
*.PLOT AC VM(5) VP(5)                                                  
*.PRINT TRAN V(4) V(5)                                                  
*.PLOT TRAN V(5)                                                        
*.END          

.OPTIONS DELMAX=1000ns
.op
*.pstran convval=1.0e-05 initstep=1.0e-05 minstep=1.0e-06 maxstep=1.0e6 tau=1.0e-04 vbe0=0.0 kvgs0=0.0  tauramp=0.0
.end 
                                                 