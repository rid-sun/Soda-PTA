*.GLOBAL vss1 vdd1 gnd1 gnd2 vdd2 vss2 Vdd3 vss3 gnd3 Gnd
*.PIN vss!
*+ vdd!
*+ gnd!
*+ gnda!
*+ vdda!
*+ vssa!
.PARAM  reshtc1=0 reshtc2=0 resltc1=0 resltc2=0 scalef=0.19 deltwn=0.04u  
.PARAM  deltwp=0.04u deltln=-0.16u deltlp=-0.16u rshflag=0 rshw=1u scalef1=1.0 deltwn1=0.0u 
.PARAM  deltwp1=0.0u deltln1=0u deltlp1=0u rshflag1=0 rshw1=1u


************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: OP_AMP
* View Name: schematic  R1+C1+M9
************************************************************************

.SUBCKT OP_AMP Vdd Vin+ Vin- Vout Vss
*.PININFO Vdd:I Vin+:I Vin-:I Vss:I Vout:O
CC1 net040 Vout 1.5p $[CP]
RR0 net029 net040 10K $[RH]
MM5 net013 net013 Vss Vss NMOS W=4e-6 L=2e-6 M=1
MM7 Vout net013 Vss Vss NMOS W=12e-6 L=2e-6 M=1
MM8 net12 net013 Vss Vss NMOS W=4e-6 L=2e-6 M=1
MM1 net9 Vin- net12 Vss NMOS W=20e-6 L=2e-6 M=1
MM2 net029 Vin+ net12 Vss NMOS W=20e-6 L=2e-6 M=1
MM3 net9 net9 Vdd Vdd PMOS W=16e-6 L=2e-6 M=1
MM6 Vout net029 Vdd Vdd PMOS W=90e-6 L=2e-6 M=1
MM4 net029 net9 Vdd Vdd PMOS W=16e-6 L=2e-6 M=1
MM9 net013 net013 Vdd Vdd PMOS W=2e-6 L=5e-6 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Suntraction
* View Name: schematic    R5+2(R1+C1+M9)
************************************************************************

.SUBCKT Suntraction Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
RR4 Vin2 net14 100K $[RH]
RR3 net14 Vout 100K $[RH]
RR2 net16 net14 100K $[RH]
RR1 net18 net16 100K $[RH]
RR0 Vin1 net18 100K $[RH]
XI1 Vdd Gnd net14 Vout Vss  OP_AMP
XI0 Vdd Gnd net18 net16 Vss  OP_AMP
.ENDS



X1 Gnd Vdd Vin1 Vin2 Vout Vss Suntraction

V3 Vin1 Gnd 1V

V4 Vin2 Gnd 2V


V1 Vdd Gnd 2.5
V2 Gnd Vss 2.5




********************************
*********************************************************************
**                                                                 **
**   HV-BC-0.6M V(SP3.2.0a) for Hspice                             **
**   date:2003/11/10                                               **
**   File name:HVBC06M_SP3.2.0a_cmos                               **
**   Modelname:nmas/pmos(05v),nmosmvo/pmosmvo(12v)                 **
**   Section:ww(N&P=Wafer),    tt(N&P=Typical),                    **
**           ss(N&P=Slow ),    ff(N&P=Fast   ),                    **
**           sf(N=Slow&P=Fast),fs(N=Fast&P=Slow)                   **
**   05v: lmax=1001u(05u),wmax=100001u(40u)                        **
**   12v: lmax=1001u(10u),wmax=100001u(40u)                        **
**   ()Cadence parametor                                           **
**                                                                 **
**   modified by (ASetsuGi) m.sugano                               **
*********************************************************************
**
************************************************************************************
************************************************************************************
**                                                                                **
**   Wafer                                                                        **
**                                                                                **
************************************************************************************
************************************************************************************

************************************************************************************
************************************************************************************
**                                                                                **
**   Typical                                                                      **
**                                                                                **
************************************************************************************
************************************************************************************
*.lib tt

**--------------------
** Nch Typical (05v) -
**--------------------
.model   nmos  nmos
+level   = 53

+lmin    = 6e-007          lmax    = 1001e-06        wmin    = 8e-007          wmax    = 100001e-06     
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2             
+tnom    = 27              xl      = 0               xw      = 0               tox     = 1.4e-008      
+toxm    = 1.4e-008        wint    = 2.16e-007       lint    = 0               dlc     = 1.5e-008      
+dwc     = 0.0             hdif    = 0               ldif    = 0               ll      = 5.04e-009     
+wl      = -1.08e-013      lln     = 0.2             wln     = 1               lw      = -2.48e-015    
+ww      = -6e-014         lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 4.13e-020       cgbo    = 1e-013          cgso    = 1.2e-010        cgdo    = 1.2e-010      
+xpart   = 0             
+vth0    = 0.74156         k1      = 1.056178        k2      = -0.01074        k3      = -29.851839    
+k3b     = 2.799866        nlx     = 2.7275229e-007  dvt0    = 20              dvt1    = 1.316978      
+dvt2    = 0.04866226      dvt0w   = 0.4978469       dvt1w   = 648865.7        dvt2w   = -0.3307591    
+nch     = 8.642e+016      voff    = -0.1050348      nfactor = 1.273615        cdsc    = 0.00030349131 
+cdscb   = 0               cdscd   = 0               cit     = 0.0001064269    u0      = 0.04291927    
+ua      = -9.475255e-010  ub      = 3.39744e-018    uc      = 8.75665e-011    ngate   = 1e+023        
+xj      = 1.8e-007        w0      = 5.404681e-006   prwg    = -0.021089969    prwb    = -0.0650251    
+wr      = 1               rdsw    = 966.94          a0      = 0.6020734       ags     = 0.1151844     
+a1      = 0               a2      = 0.99            b0      = 1.472218e-007   b1      = 7.763923e-008 
+vsat    = 69430.4         keta    = -0.019850731    dwg     = -1.06275e-008   dwb     = 1.8739019e-008
+alpha0  = -1e-006         beta0   = 27.950001       pclm    = 0.7743512       pdiblc1 = 0.09466976    
+pdiblc2 = 0.00341039      pdiblcb = 0.1665039       drout   = 0.6371863       pvag    = 0             
+pscbe1  = 5e+008          pscbe2  = 1e-006          delta   = 0.01            eta0    = 0.0228721     
+etab    = -0.240573       dsub    = 1.175091        elm     = 5               alpha1  = 13            
+vfb     = -1.0162271    
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 5e-011          cgsl    = 5e-011          vfbcv   = -0.6278         acde    = 1             
+moin    = 15              noff    = 3               voffcv  = -0.1          
+kt1     = -0.516877       kt1l    = 1.222984e-009   kt2     = -0.04805298     ute     = -1.799226     
+ua1     = 9e-010          ub1     = -7.277898e-019  uc1     = -1.29199e-012   prt     = 68.84183      
+at      = 15424.27      
+rsh     = 0               js      = 5.0e-7          jsw     = 0               cj      = 0.00108       
+mj      = 0.382           cjsw    = 2.57e-010       mjsw    = 0.275           pb      = 0.829         
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               nj      = 1               pbsw    = 0.712           tcj     = 0.00093       
+tcjsw   = 0.00087         tpb     = 0.00184         tpbsw   = 0.00181       
         
**+++++++++++++++++++++
**   Pch Typical (05v)+
**+++++++++++++++++++++
.model   pmos  pmos
+level   = 53

+lmin    = 6e-007          lmax    = 1001e-06        wmin    = 8e-007          wmax    = 100001e-06     
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2             
+tnom    = 27              xl      = 0               xw      = 0               tox     = 1.4e-008      
+toxm    = 1.4e-008        wint    = 1.4385e-007     lint    = 0               dlc     = 1.05e-007     
+dwc     = 0.0             hdif    = 0               ldif    = 0               ll      = 3.95e-020     
+wl      = 4.43916e-017    lln     = 1.9287397       wln     = 1               lw      = 4.067435e-017 
+ww      = -1.8668891e-014 lwn     = 1               wwn     = 1               lwl     = 7.775e-027    
+wwl     = -9.553991e-021  cgbo    = 1e-013          cgso    = 2.2e-010        cgdo    = 2.2e-010      
+xpart   = 0             
+vth0    = -0.665204       k1      = 0.8524597       k2      = -0.01           k3      = 2.8901083     
+k3b     = -0.4015308      nlx     = 6.14743e-007    dvt0    = 1.91496         dvt1    = 0.7365394     
+dvt2    = -0.07950291     dvt0w   = 0.28295         dvt1w   = 140375.75       dvt2w   = 0             
+nch     = 4.302e+016      voff    = -0.190127       nfactor = 2.095           cdsc    = 0             
+cdscb   = 0               cdscd   = 0               cit     = 0.000149292     u0      = 0.013752336   
+ua      = 3.508525e-010   ub      = 1.51532e-018    uc      = -6.002729e-011  ngate   = 1e+023        
+xj      = 2.2e-007        w0      = 0               prwg    = -0.026461294    prwb    = -0.03631252   
+wr      = 1               rdsw    = 1988.8199       a0      = 0.6161036       ags     = 0.03606342    
+a1      = 0               a2      = 0.641901        b0      = 2.141779e-007   b1      = 2.61e-008     
+vsat    = 91742           keta    = 0.0024697401    dwg     = -1.5405934e-008 dwb     = 2.573068e-008 
+alpha0  = 3.21e-007       beta0   = 36.988          pclm    = 2.0419481       pdiblc1 = 0.0416803     
+pdiblc2 = 0.011920854     pdiblcb = 0.06543069      drout   = 0.56            pvag    = 0             
+pscbe1  = 4e+008          pscbe2  = 1e-007          delta   = 0.01            eta0    = 0.3989897     
+etab    = -0.07000087     dsub    = 1.1006755       elm     = 5               alpha1  = 8.5           
+vfb     = -0.8481777    
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 5e-011          cgsl    = 5e-011          vfbcv   = -0.4446198      acde    = 1             
+moin    = 15              noff    = 3               voffcv  = -0.1          
+kt1     = -0.65           kt1l    = -3.475366e-008  kt2     = -0.003592312    ute     = -0.7619785    
+ua1     = 3.3742e-009     ub1     = -5.130389e-018  uc1     = -8.586461e-011  prt     = 64.53598      
+at      = -5730.662     
+rsh     = 0               js      = 3.0e-7          jsw     = 0               cj      = 0.00125       
+mj      = 0.49            cjsw    = 3.73e-010       mjsw    = 0.311           pb      = 0.937         
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               nj      = 1               pbsw    = 0.753           tcj     = 0.00087       
+tcjsw   = 0.000769        tpb     = 0.00167         tpbsw   = 0.00142       
*.endl tt

********************************


.OPTIONS DELMAX=1000ns
*.tran 10us 10000us 
*.op 10ns
.op
*.pstran
*.hom
.end