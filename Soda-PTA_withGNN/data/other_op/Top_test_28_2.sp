************************************************************************
* auCdl Netlist:
*
* Library Name: Toyota_ToshibaLib
* Top Cell Name: Top_test
* View Name: schematic
* Netlisted on: Nov 28 16:08:09 2005
************************************************************************

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

.PARAM Vm=4.424E-6
.PARAM Vin=3.213E-6

*.PARAM Vm=2.2E-6
*.PARAM Vin=1E-6
.PARAM k=1.4
.PARAM Ra='8.31441/(28.96E-3)'
.PARAM Ta='273+24'
.PARAM Pa=1
.PARAM a=1.433E-7
.PARAM b=-1.0817E-3
.PARAM kRTa='k*Ra*Ta/97.86E3'
.PARAM Vinial='97.86E3/(Ra*Ta)'
*.PARAM thcoef='700*1E-6/101.3*sqrt((273+25)*Ra)'
.PARAM thcoef='100*1E-6/101.3*sqrt((273+25)*Ra)'
.PARAM Ct_input='20*thcoef*sqrt(97.86E3)'


************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Output_Pad_cell
* View Name: schematic
************************************************************************

.SUBCKT Output_Pad_cell Inout Vdd Vss
*.PININFO Vdd:I Vss:I Inout:B
MM1 Inout Vss Vss Vss NMOS W=280e-6*ScaleF1+deltwN1 L=600e-9*ScaleF1+deltlN1 M=1
MM0 Inout Vdd Vdd Vdd PMOS W=440e-6*ScaleF1+deltwP1 L=600e-9*ScaleF1+deltlP1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Pad_TestPart_Output
* View Name: schematic
************************************************************************

.SUBCKT Pad_TestPart_Output N0 N1 N2 N3 N4 N5 N6 Vdd Vss
*.PININFO N0:I N1:I N2:I N3:I N4:I N5:I N6:I Vdd:I Vss:I
XI14 N6 Vdd Vss / Output_Pad_cell
XI5 N4 Vdd Vss / Output_Pad_cell
XI4 N5 Vdd Vss / Output_Pad_cell
XI3 N3 Vdd Vss / Output_Pad_cell
XI2 N2 Vdd Vss / Output_Pad_cell
XI1 N1 Vdd Vss / Output_Pad_cell
XI0 N0 Vdd Vss / Output_Pad_cell
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: OP_AMP_DS
* View Name: schematic
************************************************************************

.SUBCKT OP_AMP_DS Vdd Vin+ Vin- Vout Vss
*.PININFO Vdd:I Vin+:I Vin-:I Vss:I Vout:O
CC0 Vout net5 1.5p $[CP]
RR0 net5 net8 10K $[RH]
MM2 net8 Vin+ net15 Vss NMOS W=16e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM1 net12 Vin- net15 Vss NMOS W=16e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM8 net15 net24 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM7 Vout net24 Vss Vss NMOS W=12e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM5 net24 net24 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM9 net24 net24 Vdd Vdd PMOS W=2e-6*ScaleF1+deltwP1 L=5e-6*ScaleF1+deltlP1 M=1
MM4 net8 net12 Vdd Vdd PMOS W=12e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM6 Vout net8 Vdd Vdd PMOS W=70e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM3 net12 net12 Vdd Vdd PMOS W=12e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Testpart_Output
* View Name: schematic
************************************************************************

.SUBCKT Testpart_Output Vdd Vin1 Vin2 Vin3 Vin4 Vin5 Vin6 Vin7 Vout+ Vout- Vout_D Vout_M Vout_M_D Vout_OPAMP Vout_S Vss
*.PININFO Vdd:I Vin1:I Vin2:I Vin3:I Vin4:I Vin5:I Vin6:I Vin7:I Vss:I Vout+:O
*+Vout-:O Vout_D:O Vout_M:O Vout_M_D:O Vout_OPAMP:O Vout_S:O
XI6 Vdd Vin6 Vout+ Vout+ Vss / OP_AMP_DS
XI5 Vdd Vin7 Vout- Vout- Vss / OP_AMP_DS
XI4 Vdd Vin5 Vout_S Vout_S Vss / OP_AMP_DS
XI3 Vdd Vin3 Vout_M_D Vout_M_D Vss / OP_AMP_DS
XI2 Vdd Vin4 Vout_OPAMP Vout_OPAMP Vss / OP_AMP_DS
XI1 Vdd Vin2 Vout_M Vout_M Vss / OP_AMP_DS
XI0 Vdd Vin1 Vout_D Vout_D Vss / OP_AMP_DS
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: OP_AMP_DS_test
* View Name: schematic
************************************************************************

.SUBCKT OP_AMP_DS_test Vdd Vin+ Vin- Vout Vss
*.PININFO Vdd:I Vin+:I Vin-:I Vss:I Vout:O
CC0 Vout net77 1.5p $[CP]
MM3 net61 net61 Vdd Vdd PMOS W=12e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM9 net73 net73 Vdd Vdd PMOS W=2e-6*ScaleF1+deltwP1 L=5e-6*ScaleF1+deltlP1 M=1
MM4 net57 net61 Vdd Vdd PMOS W=12e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM6 Vout net57 Vdd Vdd PMOS W=70e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM2 net57 Vin+ net64 Vss NMOS W=16e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM1 net61 Vin- net64 Vss NMOS W=16e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM8 net64 net73 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM7 Vout net73 Vss Vss NMOS W=12e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM5 net73 net73 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
RR0 net77 net57 10K $[RH]
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Multiplier_Huang_test
* View Name: schematic
************************************************************************

.SUBCKT Multiplier_Huang_test Gnd Vb+ Vb- Vdd Vout+ Vout- Vss Vx+ Vx- Vy+ Vy-
*.PININFO Gnd:I Vb+:I Vb-:I Vdd:I Vss:I Vx+:I Vx-:I Vy+:I Vy-:I Vout+:O Vout-:O
XI19 Vdd Gnd net107 Vout- Vss / OP_AMP_DS_test
XI15 Vdd Gnd net142 Vout+ Vss / OP_AMP_DS_test
MM27 net118 Vy+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM26 net122 Vy- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM25 net116 Vy- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM24 net114 Vy+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM23 net146 Vx- net114 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM22 net142 Vx- net122 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM21 net146 Vx+ net116 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM20 net142 Vx+ net118 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM16 net110 Vb+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM18 net154 Vb- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM17 net112 Vb- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM0 net146 Vout+ net178 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM15 net142 Vout- net110 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM14 net146 Vout- net154 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM13 net142 Vout+ net112 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM19 net178 Vb+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM31 net142 net146 net185 Vdd PMOS W=58e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM30 net185 net197 Vdd Vdd PMOS W=58e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM29 net197 net197 Vdd Vdd PMOS W=58e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM28 net146 net146 net197 Vdd PMOS W=58e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
RR3 net154 net110 10K $[RH]
RR2 net178 net112 10K $[RH]
RR9 net122 net114 10K $[RH]
RR8 net118 net116 10K $[RH]
RR7 net107 Vout+ 50K $[RH]
RR6 Vout- net107 50K $[RH]
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: OP_AMP_test
* View Name: schematic
************************************************************************

.SUBCKT OP_AMP_test Vdd Vin+ Vin- Vout Vss
*.PININFO Vdd:I Vin+:I Vin-:I Vss:I Vout:O
CC1 net79 Vout 1.5p $[CP]
MM3 net62 net62 Vdd Vdd PMOS W=16e-6*ScaleF1+deltwP1 L=2e-6*ScaleF1+deltlP1 M=1
MM6 Vout net58 Vdd Vdd PMOS W=90e-6*ScaleF1+deltwP1 L=2e-6*ScaleF1+deltlP1 M=1
MM4 net58 net62 Vdd Vdd PMOS W=16e-6*ScaleF1+deltwP1 L=2e-6*ScaleF1+deltlP1 M=1
MM9 net74 net74 Vdd Vdd PMOS W=2e-6*ScaleF1+deltwP1 L=5e-6*ScaleF1+deltlP1 M=1
MM5 net74 net74 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM7 Vout net74 Vss Vss NMOS W=12e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM8 net65 net74 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM1 net62 Vin- net65 Vss NMOS W=20e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM2 net58 Vin+ net65 Vss NMOS W=20e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
RR0 net58 net79 10K $[RH]
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Square_root_cell_test
* View Name: schematic
************************************************************************

.SUBCKT Square_root_cell_test Iout Vdd Vss Vx+ Vx-
*.PININFO Vdd:I Vss:I Vx+:I Vx-:I Iout:O
MM10 net83 net83 net54 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM11 net66 net54 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM9 net54 net54 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM12 Iout net83 net66 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM2 net67 Vx- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM4 net71 Vx+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM8 net83 Vx- net71 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM7 Iout Vx- net91 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM6 net83 Vx+ net67 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM5 Iout Vx+ net95 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM3 net91 Vx- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM1 net95 Vx+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Square_root_test
* View Name: schematic
************************************************************************

.SUBCKT Square_root_test Gnd Vdd Vin Vout Vss
*.PININFO Gnd:I Vdd:I Vin:I Vss:I Vout:O
XI4 Vdd Vin net056 net44 Vss / OP_AMP_DS_test
XI3 Vdd Gnd net039 net056 Vss / OP_AMP_DS_test
XI2 Vdd Gnd net22 net45 Vss / OP_AMP_DS_test
XI1 Vdd Gnd net26 net46 Vss / OP_AMP_DS_test
XI0 net039 Vdd Vss net46 net45 / Square_root_cell_test
MM0 Vdd net44 Vout Vss NMOS W=200e-6*ScaleF1+deltwN1 L=600e-9*ScaleF1+deltlN1 M=1
RR5 Vout Gnd 200K $[RH]
RR4 net039 net056 245K $[RH]
RR3 net22 net45 100K $[RH]
RR2 net46 net22 100K $[RH]
RR1 Vout net26 200K $[RH]
RR0 net26 net46 100K $[RH]
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Multiplier_cell_test
* View Name: schematic
************************************************************************

.SUBCKT Multiplier_cell_test Iout Vdd Vss Vx+ Vx- Vy+ Vy-
*.PININFO Vdd:I Vss:I Vx+:I Vx-:I Vy+:I Vy-:I Iout:O
MM5 Iout Vx+ net50 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM6 net26 Vx+ net42 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM7 Iout Vx- net46 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM8 net26 Vx- net38 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM4 net38 Vy+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM2 net42 Vy- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM3 net46 Vy- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM1 net50 Vy+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM10 net26 net26 net21 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM9 net21 net21 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM12 net9 net21 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM11 Iout net26 net9 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Multiplier_test
* View Name: schematic
************************************************************************

.SUBCKT Multiplier_test Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
XI5 net51 Vdd Vss net37 net33 net45 net29 / Multiplier_cell_test
XI15 Vdd Gnd net31 net29 Vss / OP_AMP_DS_test
XI12 Vdd Gnd net39 net37 Vss / OP_AMP_DS_test
XI13 Vdd Gnd net35 net45 Vss / OP_AMP_DS_test
XI14 Vdd Gnd net43 net33 Vss / OP_AMP_DS_test
XI11 Vdd Gnd net51 Vout Vss / OP_AMP_DS_test
RR9 net31 net29 100K $[RH]
RR8 net45 net31 100K $[RH]
RR7 net43 net33 100K $[RH]
RR4 Vin2 net35 100K $[RH]
RR3 net39 net37 25K $[RH]
RR2 Vin1 net39 100K $[RH]
RR1 net51 Vout 970.00K $[RH]
RR6 net37 net43 100K $[RH]
RR5 net35 net45 25K $[RH]
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Divider_test
* View Name: schematic
************************************************************************

.SUBCKT Divider_test Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
XI2 Vdd Vin1 net6 Vout Vss / OP_AMP_DS_test
XI3 Gnd Vdd Vin2 Vout net6 Vss / Multiplier_test
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Test_part
* View Name: schematic
************************************************************************

.SUBCKT Test_part Gnd3 Vb+ Vb- Vdd3 Vin_D_1 Vin_D_2 Vin_M_1 Vin_M_2 Vin_M_D_1 Vin_M_D_2 Vin_OPAMP_M Vin_OPAMP_P Vin_S Vout+ Vout- Vout_D Vout_M Vout_M_D Vout_OPAMP Vout_S Vref_M_D Vss3 Vx+ Vx- Vy+ Vy-
*.PININFO Gnd3:I Vb+:I Vb-:I Vdd3:I Vin_D_1:I Vin_D_2:I Vin_M_1:I Vin_M_2:I
*+Vin_M_D_1:I Vin_M_D_2:I Vin_OPAMP_M:I Vin_OPAMP_P:I Vin_S:I Vref_M_D:I Vss3:I
*+Vx+:I Vx-:I Vy+:I Vy-:I Vout+:O Vout-:O Vout_D:O Vout_M:O Vout_M_D:O
*+Vout_OPAMP:O Vout_S:O
XI11 Gnd3 Vb+ Vb- Vdd3 Vout+ Vout- Vss3 Vx+ Vx- Vy+ Vy- / Multiplier_Huang_test
XI5 Vdd3 Vin_OPAMP_P Vin_OPAMP_M Vout_OPAMP Vss3 / OP_AMP_test
XI2 Gnd3 Vdd3 Vin_S Vout_S Vss3 / Square_root_test
XI4 Gnd3 Vdd3 Vin_D_1 Vin_D_2 Vout_D Vss3 / Divider_test
XI1 Gnd3 Vdd3 net53 Vref_M_D Vout_M_D Vss3 / Divider_test
XI3 Gnd3 Vdd3 Vin_M_1 Vin_M_2 Vout_M Vss3 / Multiplier_test
XI0 Gnd3 Vdd3 Vin_M_D_1 Vin_M_D_2 net53 Vss3 / Multiplier_test
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Input_Pad_cell
* View Name: schematic
************************************************************************

.SUBCKT Input_Pad_cell In Out Vdd Vss
*.PININFO Vdd:I Vss:I In:B Out:B
MM1 In Vss Vss Vss NMOS W=280e-6*ScaleF1+deltwN1 L=600e-9*ScaleF1+deltlN1 M=1
MM0 In Vdd Vdd Vdd PMOS W=440e-6*ScaleF1+deltwP1 L=600e-9*ScaleF1+deltlP1 M=1
RR0 In Out 150 $[RLD]
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Pad_TestPart_Input
* View Name: schematic
************************************************************************

.SUBCKT Pad_TestPart_Input In1 In2 In3 In4 In5 In6 In7 In8 In9 In10 In11 In12 In13 In14 In15 In16 Out1 Out2 Out3 Out4 Out5 Out6 Out7 Out8 Out9 Out10 Out11 Out12 Out13 Out14 Out15 Out16 Vdd Vss
*.PININFO In1:I In2:I In3:I In4:I In5:I In6:I In7:I In8:I In9:I In10:I In11:I
*+In12:I In13:I In14:I In15:I In16:I Vdd:I Vss:I Out1:O Out2:O Out3:O Out4:O
*+Out5:O Out6:O Out7:O Out8:O Out9:O Out10:O Out11:O Out12:O Out13:O Out14:O
*+Out15:O Out16:O
XI15 In1 Out1 Vdd Vss / Input_Pad_cell
XI14 In2 Out2 Vdd Vss / Input_Pad_cell
XI13 In3 Out3 Vdd Vss / Input_Pad_cell
XI12 In4 Out4 Vdd Vss / Input_Pad_cell
XI11 In5 Out5 Vdd Vss / Input_Pad_cell
XI10 In8 Out8 Vdd Vss / Input_Pad_cell
XI9 In7 Out7 Vdd Vss / Input_Pad_cell
XI8 In6 Out6 Vdd Vss / Input_Pad_cell
XI7 In14 Out14 Vdd Vss / Input_Pad_cell
XI6 In15 Out15 Vdd Vss / Input_Pad_cell
XI5 In16 Out16 Vdd Vss / Input_Pad_cell
XI4 In13 Out13 Vdd Vss / Input_Pad_cell
XI3 In12 Out12 Vdd Vss / Input_Pad_cell
XI2 In11 Out11 Vdd Vss / Input_Pad_cell
XI1 In10 Out10 Vdd Vss / Input_Pad_cell
XI0 In9 Out9 Vdd Vss / Input_Pad_cell
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Pad_TopCell_Output
* View Name: schematic
************************************************************************

.SUBCKT Pad_TopCell_Output N0 N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12 N13 N14 N15 N16 N17 N18 N19 N20 N21 N22 N23 N24 N25 N26 N27 N28 N29 Vdd Vss
*.PININFO N0:I N1:I N2:I N3:I N4:I N5:I N6:I N7:I N8:I N9:I N10:I N11:I N12:I
*+N13:I N14:I N15:I N16:I N17:I N18:I N19:I N20:I N21:I N22:I N23:I N24:I N25:I
*+N26:I N27:I N28:I N29:I Vdd:I Vss:I
XI29 N29 Vdd Vss / Output_Pad_cell
XI28 N28 Vdd Vss / Output_Pad_cell
XI27 N27 Vdd Vss / Output_Pad_cell
XI26 N26 Vdd Vss / Output_Pad_cell
XI25 N25 Vdd Vss / Output_Pad_cell
XI24 N24 Vdd Vss / Output_Pad_cell
XI23 N12 Vdd Vss / Output_Pad_cell
XI22 N13 Vdd Vss / Output_Pad_cell
XI21 N14 Vdd Vss / Output_Pad_cell
XI20 N15 Vdd Vss / Output_Pad_cell
XI19 N16 Vdd Vss / Output_Pad_cell
XI18 N17 Vdd Vss / Output_Pad_cell
XI17 N18 Vdd Vss / Output_Pad_cell
XI16 N19 Vdd Vss / Output_Pad_cell
XI15 N20 Vdd Vss / Output_Pad_cell
XI14 N21 Vdd Vss / Output_Pad_cell
XI13 N22 Vdd Vss / Output_Pad_cell
XI12 N23 Vdd Vss / Output_Pad_cell
XI11 N6 Vdd Vss / Output_Pad_cell
XI10 N7 Vdd Vss / Output_Pad_cell
XI9 N8 Vdd Vss / Output_Pad_cell
XI8 N11 Vdd Vss / Output_Pad_cell
XI7 N9 Vdd Vss / Output_Pad_cell
XI6 N10 Vdd Vss / Output_Pad_cell
XI5 N4 Vdd Vss / Output_Pad_cell
XI4 N3 Vdd Vss / Output_Pad_cell
XI3 N5 Vdd Vss / Output_Pad_cell
XI2 N2 Vdd Vss / Output_Pad_cell
XI1 N1 Vdd Vss / Output_Pad_cell
XI0 N0 Vdd Vss / Output_Pad_cell
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon2_output
* View Name: schematic
************************************************************************

.SUBCKT Vcon2_output Vcon2 Vcon2_in_1 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vcon_in_2 Vcon_in_3 Vcon_in_4 Vcon_in_5 Vcon_in_6 Vcon_in_7 Vdd2 Vss2
*.PININFO Vcon2_in_1:I Vcon_in_2:I Vcon_in_3:I Vcon_in_4:I Vcon_in_5:I
*+Vcon_in_6:I Vcon_in_7:I Vdd2:I Vss2:I Vcon2:O Vcon2_test_1:O Vcon2_test_2:O
*+Vcon2_test_3:O Vcon2_test_4:O Vcon2_test_5:O Vcon2_test_6:O
XI6 Vdd2 Vcon_in_7 Vcon2_test_6 Vcon2_test_6 Vss2 / OP_AMP_DS
XI5 Vdd2 Vcon_in_6 Vcon2_test_5 Vcon2_test_5 Vss2 / OP_AMP_DS
XI4 Vdd2 Vcon_in_5 Vcon2_test_4 Vcon2_test_4 Vss2 / OP_AMP_DS
XI3 Vdd2 Vcon_in_4 Vcon2_test_3 Vcon2_test_3 Vss2 / OP_AMP_DS
XI2 Vdd2 Vcon_in_3 Vcon2_test_2 Vcon2_test_2 Vss2 / OP_AMP_DS
XI1 Vdd2 Vcon_in_2 Vcon2_test_1 Vcon2_test_1 Vss2 / OP_AMP_DS
XI0 Vdd2 Vcon2_in_1 Vcon2 Vcon2 Vss2 / OP_AMP_DS
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: OP_AMP
* View Name: schematic
************************************************************************

.SUBCKT OP_AMP Vdd Vin+ Vin- Vout Vss
*.PININFO Vdd:I Vin+:I Vin-:I Vss:I Vout:O
CC1 net040 Vout 1.5p $[CP]
RR0 net029 net040 10K $[RH]
MM5 net013 net013 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM7 Vout net013 Vss Vss NMOS W=12e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM8 net12 net013 Vss Vss NMOS W=4e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM1 net9 Vin- net12 Vss NMOS W=20e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM2 net029 Vin+ net12 Vss NMOS W=20e-6*ScaleF1+deltwN1 L=2e-6*ScaleF1+deltlN1 M=1
MM3 net9 net9 Vdd Vdd PMOS W=16e-6*ScaleF1+deltwP1 L=2e-6*ScaleF1+deltlP1 M=1
MM6 Vout net029 Vdd Vdd PMOS W=90e-6*ScaleF1+deltwP1 L=2e-6*ScaleF1+deltlP1 M=1
MM4 net029 net9 Vdd Vdd PMOS W=16e-6*ScaleF1+deltwP1 L=2e-6*ScaleF1+deltlP1 M=1
MM9 net013 net013 Vdd Vdd PMOS W=2e-6*ScaleF1+deltwP1 L=5e-6*ScaleF1+deltlP1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vref_block
* View Name: schematic
************************************************************************

.SUBCKT Vref_block Gnd1 Vdd1 Vref Vref1 Vref2 Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss1
*.PININFO Gnd1:I Vdd1:I Vref:I Vss1:I Vref1:O Vref2:O Vref_Vcon2_1:O
*+Vref_Vcon2_2:O Vref_Vcon6:O
RR7 net083 Gnd1 2.2K $[RH]
RR6 net085 Gnd1 16.7K $[RH]
RR5 net30 net083 97.8K $[RH]
RR4 net36 net085 83.3K $[RH]
RR3 net33 Gnd1 100K $[RH]
RR2 Vref2 net33 14.77K $[RH]
XI20 Vdd1 net083 Vref_Vcon6 Vref_Vcon6 Vss1 / OP_AMP
XI19 Vdd1 net085 Vref_Vcon2_1 Vref_Vcon2_1 Vss1 / OP_AMP
XI12 Vdd1 Vref Vref_Vcon2_2 Vref_Vcon2_2 Vss1 / OP_AMP
XI11 Vdd1 Vref Vref1 Vref1 Vss1 / OP_AMP
XI3 Vdd1 Vref net30 net30 Vss1 / OP_AMP
XI2 Vdd1 Vref net33 Vref2 Vss1 / OP_AMP
XI1 Vdd1 Vref net36 net36 Vss1 / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Multiplier_cell
* View Name: schematic
************************************************************************

.SUBCKT Multiplier_cell Iout Vdd Vss Vx+ Vx- Vy+ Vy-
*.PININFO Vdd:I Vss:I Vx+:I Vx-:I Vy+:I Vy-:I Iout:O
MM5 Iout Vx+ net50 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM6 net26 Vx+ net42 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM7 Iout Vx- net46 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM8 net26 Vx- net38 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM4 net38 Vy+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM2 net42 Vy- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM3 net46 Vy- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM1 net50 Vy+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM10 net26 net26 net21 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM9 net21 net21 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM12 net9 net21 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM11 Iout net26 net9 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Multiplier
* View Name: schematic
************************************************************************

.SUBCKT Multiplier Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
RR9 net31 net046 100K $[RH]
RR8 net45 net31 100K $[RH]
RR7 net43 net33 100K $[RH]
RR4 Vin2 net35 100K $[RH]
RR3 net39 net37 25K $[RH]
RR2 Vin1 net39 100K $[RH]
RR1 net51 Vout 970.00K $[RH]
RR6 net37 net43 100K $[RH]
RR5 net35 net45 25K $[RH]
XI5 net51 Vdd Vss net37 net33 net45 net046 / Multiplier_cell
XI15 Vdd Gnd net31 net046 Vss / OP_AMP_DS
XI12 Vdd Gnd net39 net37 Vss / OP_AMP_DS
XI13 Vdd Gnd net35 net45 Vss / OP_AMP_DS
XI14 Vdd Gnd net43 net33 Vss / OP_AMP_DS
XI11 Vdd Gnd net51 Vout Vss / OP_AMP_DS
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Divider
* View Name: schematic
************************************************************************

.SUBCKT Divider Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
XI2 Vdd Vin1 net6 Vout Vss / OP_AMP_DS
XI3 Gnd Vdd Vin2 Vout net6 Vss / Multiplier
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon12_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon12_block Gnd Vcon6 Vcon12 Vdd Vout2 Vout4 Vss
*.PININFO Gnd:I Vcon6:I Vdd:I Vout2:I Vout4:I Vss:I Vcon12:O
RR3 Vcon12 Gnd 40K $[RH]
RR2 net16 Vcon12 60K $[RH]
RR1 net19 Gnd 20K $[RH]
RR0 net12 net19 50K $[RH]
XI2 Gnd Vdd net24 net12 net15 Vss / Multiplier
XI3 Vdd net15 net16 net16 Vss / OP_AMP
XI1 Vdd Vcon6 net19 net12 Vss / OP_AMP
XI0 Gnd Vdd Vout4 Vout2 net24 Vss / Divider
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon10_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon10_block Gnd Vcon2 Vcon10 Vdd Vss
*.PININFO Gnd:I Vcon2:I Vdd:I Vss:I Vcon10:O
RR1 net7 Gnd 100K $[RH]
RR0 Vcon10 net7 22K $[RH]
XI0 Vdd Vcon2 net7 Vcon10 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon8_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon8_block Gnd Vcon2 Vcon8 Vdd Vout1 Vout3 Vss
*.PININFO Gnd:I Vcon2:I Vdd:I Vout1:I Vout3:I Vss:I Vcon8:O
RR3 Vcon8 Gnd 40K $[RH]
RR2 net16 Vcon8 60K $[RH]
RR1 net19 Gnd 20K $[RH]
RR0 net12 net19 50K $[RH]
XI2 Gnd Vdd net24 net12 net15 Vss / Multiplier
XI3 Vdd net15 net16 net16 Vss / OP_AMP
XI1 Vdd Vcon2 net19 net12 Vss / OP_AMP
XI0 Gnd Vdd Vout3 Vout1 net24 Vss / Divider
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon7_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon7_block Gnd Vcon1 Vcon7 Vdd Vss
*.PININFO Gnd:I Vcon1:I Vdd:I Vss:I Vcon7:O
RR1 net7 Gnd 100K $[RH]
RR0 Vcon7 net7 22K $[RH]
XI0 Vdd Vcon1 net7 Vcon7 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Suntraction
* View Name: schematic
************************************************************************

.SUBCKT Suntraction Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
RR4 Vin2 net14 100K $[RH]
RR3 net14 Vout 100K $[RH]
RR2 net16 net14 100K $[RH]
RR1 net18 net16 100K $[RH]
RR0 Vin1 net18 100K $[RH]
XI1 Vdd Gnd net14 Vout Vss / OP_AMP
XI0 Vdd Gnd net18 net16 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon6_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon6_block Gnd Vdd Vout4 Vout6 Vref_Vcon6 Vss
*.PININFO Gnd:I Vdd:I Vout4:I Vref_Vcon6:I Vss:I Vout6:O
RR1 net5 Gnd 28.0466K $[RH]
RR0 net14 net5 71.9534K $[RH]
XI1 Gnd Vdd net9 Vref_Vcon6 Vout6 Vss / Suntraction
XI2 Vdd net5 net9 net9 Vss / OP_AMP
XI0 Vdd Vout4 net14 net14 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Square_root_cell
* View Name: schematic
************************************************************************

.SUBCKT Square_root_cell Iout Vdd Vss Vx+ Vx-
*.PININFO Vdd:I Vss:I Vx+:I Vx-:I Iout:O
MM1 net16 Vx+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM3 net8 Vx- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM2 net12 Vx- Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM4 net4 Vx+ Vss Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM8 net28 Vx- net4 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM7 Iout Vx- net8 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM6 net28 Vx+ net12 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM5 Iout Vx+ net16 Vss NMOS W=2e-6*ScaleF1+deltwN1 L=11e-6*ScaleF1+deltlN1 M=1
MM10 net28 net28 net43 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM11 net39 net43 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM9 net43 net43 Vdd Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
MM12 Iout net28 net39 Vdd PMOS W=28e-6*ScaleF1+deltwP1 L=1e-6*ScaleF1+deltlP1 M=1
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Square_root
* View Name: schematic
************************************************************************

.SUBCKT Square_root Gnd Square_root_trim_1 Square_root_trim_2 Vdd Vin Vout Vss
*.PININFO Gnd:I Vdd:I Vin:I Vss:I Square_root_trim_1:O Square_root_trim_2:O
*+Vout:O
MM0 Vdd net44 Vout Vss NMOS W=200e-6*ScaleF1+deltwN1 L=600e-9*ScaleF1+deltlN1 M=1
RR5 Vout Gnd 200K $[RH]
RR4 Square_root_trim_2 Square_root_trim_1 290K $[RH]
RR3 net22 net45 100K $[RH]
RR2 net46 net22 100K $[RH]
RR1 Vout net26 200K $[RH]
RR0 net26 net46 100K $[RH]
XI0 Square_root_trim_2 Vdd Vss net46 net45 / Square_root_cell
XI4 Vdd Vin Square_root_trim_1 net44 Vss / OP_AMP_DS
XI3 Vdd Gnd Square_root_trim_2 Square_root_trim_1 Vss / OP_AMP_DS
XI2 Vdd Gnd net22 net45 Vss / OP_AMP_DS
XI1 Vdd Gnd net26 net46 Vss / OP_AMP_DS
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Adding
* View Name: schematic
************************************************************************

.SUBCKT Adding Gnd Vdd Vin1 Vin2 Vout Vss
*.PININFO Gnd:I Vdd:I Vin1:I Vin2:I Vss:I Vout:O
RR2 net8 Vout 50k $[RH]
RR1 Vin2 net8 50k $[RH]
RR0 Vin1 net8 50k $[RH]
XI0 Vdd Gnd net8 Vout Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon2_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon2_block Gnd Square_root_trim_1 Square_root_trim_2 System_input Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vdd Vout3 Vout4 Vref_Vcon2_1 Vref_Vcon2_2 Vss
*.PININFO Gnd:I System_input:I Vdd:I Vout3:I Vout4:I Vref_Vcon2_1:I
*+Vref_Vcon2_2:I Vss:I Square_root_trim_1:O Square_root_trim_2:O Vcon2:O
*+Vcon2_test_1:O Vcon2_test_2:O Vcon2_test_3:O Vcon2_test_4:O Vcon2_test_5:O
*+Vcon2_test_6:O
RR2 net075 Gnd 100K $[RH]
RR3 net054 net075 30K $[RH]
RR1 Vcon2_test_3 Gnd 97.36K $[RH]
RR0 net11 Vcon2_test_3 2.64K $[RH]
XI4 Gnd Square_root_trim_1 Square_root_trim_2 Vdd Vcon2_test_3 Vcon2_test_4 Vss / Square_root
XI21 Vdd System_input net075 net054 Vss / OP_AMP
XI20 Vdd net075 net055 net055 Vss / OP_AMP
XI7 Vdd Vcon2_test_2 net11 net11 Vss / OP_AMP
XI5 Vdd Vcon2_test_5 Vcon2_test_6 Vcon2_test_6 Vss / OP_AMP
XI18 Gnd Vdd Vcon2_test_4 Vref_Vcon2_2 Vcon2_test_5 Vss / Divider
XI3 Gnd Vdd net30 Vref_Vcon2_2 Vcon2_test_2 Vss / Divider
XI6 Gnd Vdd Vcon2_test_6 net055 Vcon2 Vss / Multiplier
XI2 Gnd Vdd net36 Vcon2_test_1 net30 Vss / Multiplier
XI1 Gnd Vdd Vout4 Vout3 Vcon2_test_1 Vss / Suntraction
XI0 Gnd Vdd Vout4 Vref_Vcon2_1 net36 Vss / Adding
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Vcon1_block
* View Name: schematic
************************************************************************

.SUBCKT Vcon1_block Gnd Vcon1 Vcon1_test_1 Vcon1_trim_1 Vdd Vout3 Vref Vss
*.PININFO Gnd:I Vdd:I Vout3:I Vref:I Vss:I Vcon1:O Vcon1_test_1:O
*+Vcon1_trim_1:O
RR9 net048 net046 95.2K $[RH]
RR10 net046 Gnd 100K $[RH]
RR7 net021 Vcon1_test_1 100K $[RH]
RR8 Vcon1 net021 400K $[RH]
RR6 Vcon1_test_1 Vcon1_trim_1 500K $[RH]
RR5 Vcon1_trim_1 net048 100K $[RH]
RR4 Vcon1_trim_1 net11 100K $[RH]
RR3 net11 net13 100K $[RH]
RR2 net13 net020 100K $[RH]
RR1 Gnd net24 100K $[RH]
RR0 net24 net020 94.01K $[RH]
XI10 Vdd Vref net046 net048 Vss / OP_AMP
XI8 Vdd Gnd net021 Vcon1 Vss / OP_AMP
XI2 Vdd Gnd Vcon1_trim_1 Vcon1_test_1 Vss / OP_AMP
XI1 Vdd Gnd net13 net11 Vss / OP_AMP
XI0 Vdd Vout3 net24 net020 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Calculation_block
* View Name: schematic
************************************************************************

.SUBCKT Calculation_block Gnd2 Square_root_trim_1 Square_root_trim_2 System_input Vcon1 Vcon1_test_1 Vcon1_trim_1 Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd2 Vout1 Vout2 Vout3 Vout4 Vref Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss2
*.PININFO Gnd2:I System_input:I Vdd2:I Vout1:I Vout2:I Vout3:I Vout4:I Vref:I
*+Vref_Vcon2_1:I Vref_Vcon2_2:I Vref_Vcon6:I Vss2:I Square_root_trim_1:O
*+Square_root_trim_2:O Vcon1:O Vcon1_test_1:O Vcon1_trim_1:O Vcon2:O
*+Vcon2_test_1:O Vcon2_test_2:O Vcon2_test_3:O Vcon2_test_4:O Vcon2_test_5:O
*+Vcon2_test_6:O Vcon6:O Vcon7:O Vcon8:O Vcon10:O Vcon12:O
XI6 Gnd2 Vcon6 Vcon12 Vdd2 Vout2 Vout4 Vss2 / Vcon12_block
XI5 Gnd2 Vcon2 Vcon10 Vdd2 Vss2 / Vcon10_block
XI4 Gnd2 Vcon2 Vcon8 Vdd2 Vout1 Vout3 Vss2 / Vcon8_block
XI3 Gnd2 Vcon1 Vcon7 Vdd2 Vss2 / Vcon7_block
XI2 Gnd2 Vdd2 Vout4 Vcon6 Vref_Vcon6 Vss2 / Vcon6_block
XI1 Gnd2 Square_root_trim_1 Square_root_trim_2 System_input Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vdd2 Vout3 Vout4 Vref_Vcon2_1 Vref_Vcon2_2 Vss2 / Vcon2_block
XI0 Gnd2 Vcon1 Vcon1_test_1 Vcon1_trim_1 Vdd2 Vout3 Vref Vss2 / Vcon1_block
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: VCC_SINK
* View Name: schematic
************************************************************************

.SUBCKT VCC_SINK Gnd Iout Vdd Vin Vss
*.PININFO Gnd:I Vdd:I Vin:I Vss:I Iout:B
RR0 net9 Gnd 20K $[RH]
MM1 Iout net11 net9 Vss NMOS W=100e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
XI1 Vdd Vin net9 net11 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: VCC_SOURCE
* View Name: schematic
************************************************************************

.SUBCKT VCC_SOURCE Gnd Iout Vdd Vin Vss
*.PININFO Gnd:I Vdd:I Vin:I Vss:I Iout:B
RR1 net17 Gnd 20K $[RH]
MM1 net11 net19 net17 Vss NMOS W=100e-6*ScaleF1+deltwN1 L=1e-6*ScaleF1+deltlN1 M=1
MM2 Iout net11 Vdd Vdd PMOS W=200e-6*ScaleF1+deltwP1 L=100e-6*ScaleF1+deltlP1 M=1
MM0 net11 net11 Vdd Vdd PMOS W=200e-6*ScaleF1+deltwP1 L=100e-6*ScaleF1+deltlP1 M=1
XI1 Vdd Vin net17 net19 Vss / OP_AMP
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Differential_block
* View Name: schematic
************************************************************************

.SUBCKT Differential_block Gnd1 Vcon1 Vcon2 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd1 Vout1 Vout1_C Vout2 Vout2_C Vout3 Vout3_C Vout4 Vout4_C Vref1 Vref2 Vss1
*.PININFO Gnd1:I Vcon1:I Vcon2:I Vcon6:I Vcon7:I Vcon8:I Vcon10:I Vcon12:I
*+Vdd1:I Vref1:I Vref2:I Vss1:I Vout1:O Vout1_C:O Vout2:O Vout2_C:O Vout3:O
*+Vout3_C:O Vout4:O Vout4_C:O
XI7 Vdd1 Vref1 Vout3_C Vout3 Vss1 / OP_AMP
XI6 Vdd1 Vref1 Vout4_C Vout4 Vss1 / OP_AMP
XI3 Vdd1 Vref2 Vout2_C Vout2 Vss1 / OP_AMP
XI2 Vdd1 Vref2 Vout1_C Vout1 Vss1 / OP_AMP
XI11 Gnd1 Vout3_C Vdd1 Vcon7 Vss1 / VCC_SINK
XI10 Gnd1 Vout4_C Vdd1 Vcon10 Vss1 / VCC_SINK
XI5 Gnd1 Vout2_C Vdd1 Vcon2 Vss1 / VCC_SINK
XI0 Gnd1 Vout1_C Vdd1 Vcon1 Vss1 / VCC_SINK
XI9 Gnd1 Vout3_C Vdd1 Vcon8 Vss1 / VCC_SOURCE
XI8 Gnd1 Vout4_C Vdd1 Vcon12 Vss1 / VCC_SOURCE
XI4 Gnd1 Vout2_C Vdd1 Vcon6 Vss1 / VCC_SOURCE
XI1 Gnd1 Vout1_C Vdd1 Vcon2 Vss1 / VCC_SOURCE
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Top_cell
* View Name: schematic
************************************************************************

.SUBCKT Top_cell Gnd1 Gnd2 Square_root_trim_1 Square_root_trim_2 System_input Vcon1 Vcon1_test_1 Vcon1_trim_1 Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd1 Vdd2 Vout1 Vout1_C Vout2 Vout2_C Vout3 Vout3_C Vout4 Vout4_C Vref Vref1 Vref2 Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss1 Vss2
*.PININFO Gnd1:I Gnd2:I System_input:I Vdd1:I Vdd2:I Vref:I Vss1:I Vss2:I
*+Square_root_trim_1:O Square_root_trim_2:O Vcon1:O Vcon1_test_1:O
*+Vcon1_trim_1:O Vcon2:O Vcon2_test_1:O Vcon2_test_2:O Vcon2_test_3:O
*+Vcon2_test_4:O Vcon2_test_5:O Vcon2_test_6:O Vcon6:O Vcon7:O Vcon8:O Vcon10:O
*+Vcon12:O Vout1:O Vout1_C:O Vout2:O Vout2_C:O Vout3:O Vout3_C:O Vout4:O
*+Vout4_C:O Vref1:O Vref2:O Vref_Vcon2_1:O Vref_Vcon2_2:O Vref_Vcon6:O
XI9 Gnd1 Vdd1 Vref Vref1 Vref2 Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss1 / Vref_block
XI11 Gnd2 Square_root_trim_1 Square_root_trim_2 System_input Vcon1 Vcon1_test_1 Vcon1_trim_1 Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd2 Vout1 Vout2 Vout3 Vout4 Vref Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss2 / Calculation_block
XI3 Gnd1 Vcon1 Vcon2 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd1 Vout1 Vout1_C Vout2 Vout2_C Vout3 Vout3_C Vout4 Vout4_C Vref1 Vref2 Vss1 / Differential_block
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Pad_TopCell_Input
* View Name: schematic
************************************************************************

.SUBCKT Pad_TopCell_Input In1 In2 Out1 Out2 Vdd Vss
*.PININFO In1:I In2:I Vdd:I Vss:I Out1:O Out2:O
XI1 In2 Out2 Vdd Vss / Input_Pad_cell
XI0 In1 Out1 Vdd Vss / Input_Pad_cell
.ENDS

************************************************************************
* Library Name: Toyota_ToshibaLib
* Cell Name: Top_test
* View Name: schematic
************************************************************************

.SUBCKT Top_test Gnd1 Gnd2 Gnd3 Square_root_trim_1 Square_root_trim_2 System_Input Vb+ Vb- Vcon1 Vcon1_test_1 Vcon1_trim_1 Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd1 Vdd2 Vdd3 Vin_D_1 Vin_D_2 Vin_M_1 Vin_M_2 Vin_M_D_1 Vin_M_D_2 Vin_OPAMP_M Vin_OPAMP_P Vin_S Vout+ Vout- Vout1 Vout1_C Vout2 Vout2_C Vout3 Vout3_C Vout4 Vout4_C Vout_D Vout_M Vout_M_D Vout_OPAMP Vout_S Vref Vref1 Vref2 Vref_M_D Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss1 Vss2 Vss3 Vx+ Vx- Vy+ Vy-
*.PININFO Gnd1:I Gnd2:I Gnd3:I System_Input:I Vb+:I Vb-:I Vdd1:I Vdd2:I Vdd3:I
*+Vin_D_1:I Vin_D_2:I Vin_M_1:I Vin_M_2:I Vin_M_D_1:I Vin_M_D_2:I Vin_OPAMP_M:I
*+Vin_OPAMP_P:I Vin_S:I Vref:I Vref_M_D:I Vss1:I Vss2:I Vss3:I Vx+:I Vx-:I
*+Vy+:I Vy-:I Square_root_trim_1:O Square_root_trim_2:O Vcon1:O Vcon1_test_1:O
*+Vcon1_trim_1:O Vcon2:O Vcon2_test_1:O Vcon2_test_2:O Vcon2_test_3:O
*+Vcon2_test_4:O Vcon2_test_5:O Vcon2_test_6:O Vcon6:O Vcon7:O Vcon8:O Vcon10:O
*+Vcon12:O Vout+:O Vout-:O Vout1:O Vout1_C:O Vout2:O Vout2_C:O Vout3:O
*+Vout3_C:O Vout4:O Vout4_C:O Vout_D:O Vout_M:O Vout_M_D:O Vout_OPAMP:O
*+Vout_S:O Vref1:O Vref2:O Vref_Vcon2_1:O Vref_Vcon2_2:O Vref_Vcon6:O
RR1 net348 Square_root_trim_1 20K $[RH]
RR0 net349 Square_root_trim_2 20K $[RH]
XI67 Vout- Vout+ Vout_S Vout_OPAMP Vout_M_D Vout_M Vout_D Vdd3 Vss3 / Pad_TestPart_Output
XI74 Vdd3 net0263 net0262 net0261 net0260 net0259 net0248 net0156 Vout+ Vout- Vout_D Vout_M Vout_M_D Vout_OPAMP Vout_S Vss3 / Testpart_Output
XI1 Gnd3 net263 net262 Vdd3 net273 net272 net271 net270 net269 net268 net267 net266 net265 net0248 net0156 net0263 net0262 net0261 net0260 net0259 net264 Vss3 net261 net260 net259 net258 / Test_part
XI65 Vin_D_1 Vin_D_2 Vin_M_1 Vin_M_2 Vin_M_D_1 Vin_M_D_2 Vin_OPAMP_M Vin_OPAMP_P Vin_S Vref_M_D Vb+ Vb- Vx+ Vx- Vy+ Vy- net273 net272 net271 net270 net269 net268 net267 net266 net265 net264 net263 net262 net261 net260 net259 net258 Vdd3 Vss3 / Pad_TestPart_Input
XI64 Vcon2_test_6 Vcon2_test_5 Vref_Vcon6 Vref_Vcon2_2 Vref_Vcon2_1 Vref2 Vref1 Vout4_C Vout4 Vout3_C Vout3 Vout2_C Vout2 Vout1_C Vout1 Vcon12 Vcon10 Vcon8 Vcon7 Vcon6 Vcon2_test_4 Vcon2_test_3 Vcon2_test_2 Vcon2_test_1 Vcon2 Vcon1_trim_1 Vcon1_test_1 Vcon1 Square_root_trim_2 Square_root_trim_1 Vdd1 Vss1 / Pad_TopCell_Output
XI73 Vcon2 net0338 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 net0337 net0336 net0335 net0334 net0345 net0344 Vdd2 Vss2 / Vcon2_output
XI0 Gnd1 Gnd2 net348 net349 net311 Vcon1 Vcon1_test_1 Vcon1_trim_1 net0338 net0337 net0336 net0335 net0334 net0345 net0344 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd1 Vdd2 Vout1 Vout1_C Vout2 Vout2_C Vout3 Vout3_C Vout4 Vout4_C net310 Vref1 Vref2 Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss1 Vss2 / Top_cell
XI66 System_Input Vref net311 net310 Vdd1 Vss1 / Pad_TopCell_Input
.ENDS

X1 Gnd1 Gnd2 Gnd3 Square_root_trim_1 Square_root_trim_2 System_Input Vb+ Vb- Vcon1 Vcon1_test_1 Vcon1_trim_1 Vcon2 Vcon2_test_1 Vcon2_test_2 Vcon2_test_3 Vcon2_test_4 Vcon2_test_5 Vcon2_test_6 Vcon6 Vcon7 Vcon8 Vcon10 Vcon12 Vdd1 Vdd2 Vdd3 Vin_D_1 Vin_D_2 Vin_M_1 Vin_M_2 Vin_M_D_1 Vin_M_D_2 Vin_OPAMP_M Vin_OPAMP_P Vin_S Vout+ Vout- Vout1 Vout1_C Vout2 Vout2_C Vout3 Vout3_C Vout4 Vout4_C Vout_D Vout_M Vout_M_D Vout_OPAMP Vout_S Vref Vref1 Vref2 Vref_M_D Vref_Vcon2_1 Vref_Vcon2_2 Vref_Vcon6 Vss1 Vss2 Vss3 Vx+ Vx- Vy+ Vy- Top_test

C1 Vout1 Vout1_C Vin
C11 Vout1 Gnd 1uF
C2  Vout2 Vout2_C Vm
C22 Vout2 Gnd 1uF
C3 Vout3 Vout3_C Vin
C33 Vout3 Gnd 1uF
C4 Vout4 Vout4_C Vm
C44 Vout4 Gnd 1uF

R1 Square_root_trim_1 Square_root_trim_2 1.380MEG


V1 Vdd1 Gnd1 2.5
V2 Gnd1 Vss1 2.5
V3 Vdd2 Gnd2 2.5
V4 Gnd2 Vss2 2.5
V5 Vdd3 Gnd3 2.5
V6 Gnd3 Vss3 2.5
V7 Gnd1 Gnd 0
V8 Gnd2 Gnd 0
V9 Gnd3 Gnd 0
*V10 Vin_s Gnd sin(0 0.3 0.1meg)
V14 System_input Gnd PWL 0s 1, 0.5s 1, 0.5001s 0.5, 1s 0.5, 1.001s 0.1, 1.5s 0.1, 1.5001s 0.5, 2s 0.5, 2.0001s 1, 2.5s 1, 2.5001s 1.5, 3s 1.5, 3.0001s 1, 3.5s 1, 3.5001s 0.5, 4s 0.5, 4.0001s 0.1, 4.5s 0.1
*V14 System_input Gnd! '0.217217*Ct_input'
*V14 System_input Gnd! 0.5
*V21 Vx+ Gnd sin(0 0.3 4Meg)
*V22 Vx- Gnd sin(0 -0.3 4Meg)
*V23 Vy+ Gnd sin(0 1 0.1Meg)
*V24 Vy- Gnd sin(0 -1 0.1Meg)
*V25 Vb+ Gnd 1 
*V26 Vb- Gnd -1
*V27 Vin_M_1 Gnd 1
*V28 Vin_M_2 Gnd sin(0 1 1k)
*V26 Vcon2 Gnd 0.2



V15 Vref Gnd 1.0
CC1 Square_root_trim_1 Gnd 10pF
CC2 Square_root_trim_2 Gnd 10pF
CC3 Vcon1 Gnd 10pF
CC4 Vcon1_test_1 Gnd 10pF
CC5 Vcon1_trim_1 Gnd 10pF
CC8 Vcon2 Gnd 10pF
CC9 Vcon2_test_1 Gnd 10pF
CC10 Vcon2_test_2 Gnd 10pF
CC11 Vcon2_test_3 Gnd 10pF
CC12 Vcon2_test_4 Gnd 10pF
CC13 Vcon2_test_5 Gnd 10pF
CC14 Vcon2_test_6 Gnd 10pF
CC15 Vcon6 Gnd 10pF
CC16 Vcon7 Gnd 10pF
CC17 Vcon8 Gnd 10pF
CC18 Vcon10 Gnd 10pF
CC19 Vcon12 Gnd 10pF
CC20 Vref1 Gnd 10pF
CC21 Vref2 Gnd 10pF
CC22 Vref_Vcon2_1 Gnd 10pF
CC23 Vref_Vcon2_2 Gnd 10pF
CC24 Vref_Vcon6 Gnd 10pF
CC25 Vout_s Gnd 10pF
CC26 Vref Gnd 10pF
CC27 Vout1 Gnd 10pF
CC28 Vout1_C Gnd 10pF
CC29 Vout2 Gnd 10pF
CC30 Vout2_C Gnd 10pF
CC31 Vout3 Gnd 10pF
CC32 Vout3_C Gnd 10pF
CC33 Vout4 Gnd 10pF
CC34 Vout4_C Gnd 10pF
CC35 System_input Gnd 10pF
CC36 Vin_D_1 Gnd 10pF
CC37 Vin_D_2 Gnd 10pF
CC38 Vin_M_1 Gnd 10pF
CC39 Vin_M_2 Gnd 10pF
CC40 Vin_M_D_1 Gnd 10pF
CC41 Vin_M_D_2 Gnd 10pF
CC42 Vin_OPAMP_M Gnd 10pF
CC43 Vin_OPAMP_P Gnd 10pF
CC44 Vin_S Gnd 10pF
CC45 Vref_M_D Gnd 10pF
CC46 Vb+ Gnd 10pF
CC47 Vb- Gnd 10pF
CC48 Vx+ Gnd 10pF
CC49 Vx- Gnd 10pF
CC50 Vy+ Gnd 10pF
CC51 Vy- Gnd 10pF
CC52 Vout_D Gnd 10pF
CC53 Vout_M Gnd 10pF
CC54 Vout_M_D Gnd 10pF
CC55 Vout_OPAMP Gnd 10pF
CC56 Vout_S Gnd 10pF
CC57 Vout+ Gnd 10pF
CC58 Vout- Gnd 10pF


.OPTIONS LIST NODE POST 
.TEMP 25
*.lib 'F:\Toyota_Circuit_Simulation\mos_model_lib\hvbc06m_cmos_05_2' tt
*.AC DEC 20 100 100MEG

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
.model   nmos  nmos level   = 53
 lmin    = 6e-007          lmax    = 1001e-06        wmin    = 8e-007          wmax    = 100001e-06 version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0 binunit = 2 tnom    = 27              xl      = 0               xw      = 0               tox     = 1.4e-008 toxm    = 1.4e-008        wint    = 2.16e-007       lint    = 0               dlc     = 1.5e-008 dwc     = 0.0             hdif    = 0               ldif    = 0               ll      = 5.04e-009 wl      = -1.08e-013      lln     = 0.2             wln     = 1               lw      = -2.48e-015 ww      = -6e-014         lwn     = 1               wwn     = 1               lwl     = 0 wwl     = 4.13e-020       cgbo    = 1e-013          cgso    = 1.2e-010        cgdo    = 1.2e-010 xpart   = 0 vth0    = 0.74156         k1      = 1.056178        k2      = -0.01074        k3      = -29.851839 k3b     = 2.799866        nlx     = 2.7275229e-007  dvt0    = 20              dvt1    = 1.316978 dvt2    = 0.04866226      dvt0w   = 0.4978469       dvt1w   = 648865.7        dvt2w   = -0.3307591 nch     = 8.642e+016      voff    = -0.1050348      nfactor = 1.273615        cdsc    = 0.00030349131 cdscb   = 0               cdscd   = 0               cit     = 0.0001064269    u0      = 0.04291927 ua      = -9.475255e-010  ub      = 3.39744e-018    uc      = 8.75665e-011    ngate   = 1e+023 xj      = 1.8e-007        w0      = 5.404681e-006   prwg    = -0.021089969    prwb    = -0.0650251 wr      = 1               rdsw    = 966.94          a0      = 0.6020734       ags     = 0.1151844 a1      = 0               a2      = 0.99            b0      = 1.472218e-007   b1      = 7.763923e-008 vsat    = 69430.4         keta    = -0.019850731    dwg     = -1.06275e-008   dwb     = 1.8739019e-008 alpha0  = -1e-006         beta0   = 27.950001       pclm    = 0.7743512       pdiblc1 = 0.09466976 pdiblc2 = 0.00341039      pdiblcb = 0.1665039       drout   = 0.6371863       pvag    = 0 pscbe1  = 5e+008          pscbe2  = 1e-006          delta   = 0.01            eta0    = 0.0228721 etab    = -0.240573       dsub    = 1.175091        elm     = 5               alpha1  = 13 vfb     = -1.0162271 clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6 cgdl    = 5e-011          cgsl    = 5e-011          vfbcv   = -0.6278         acde    = 1 moin    = 15              noff    = 3               voffcv  = -0.1 kt1     = -0.516877       kt1l    = 1.222984e-009   kt2     = -0.04805298     ute     = -1.799226 ua1     = 9e-010          ub1     = -7.277898e-019  uc1     = -1.29199e-012   prt     = 68.84183 at      = 15424.27 rsh     = 0               js      = 5.0e-7          jsw     = 0               cj      = 0.00108 mj      = 0.382           cjsw    = 2.57e-010       mjsw    = 0.275           pb      = 0.829 rd      = 0               rdc     = 0               rs      = 0               rsc     = 0 xti     = 3               nj      = 1               pbsw    = 0.712           tcj     = 0.00093 tcjsw   = 0.00087         tpb     = 0.00184         tpbsw   = 0.00181       
         
**+++++++++++++++++++++
**   Pch Typical (05v)+
**+++++++++++++++++++++
.model   pmos  pmos level   = 53
 lmin    = 6e-007          lmax    = 1001e-06        wmin    = 8e-007          wmax    = 100001e-06 version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0 binunit = 2 tnom    = 27              xl      = 0               xw      = 0               tox     = 1.4e-008 toxm    = 1.4e-008        wint    = 1.4385e-007     lint    = 0               dlc     = 1.05e-007 dwc     = 0.0             hdif    = 0               ldif    = 0               ll      = 3.95e-020 wl      = 4.43916e-017    lln     = 1.9287397       wln     = 1               lw      = 4.067435e-017 ww      = -1.8668891e-014 lwn     = 1               wwn     = 1               lwl     = 7.775e-027 wwl     = -9.553991e-021  cgbo    = 1e-013          cgso    = 2.2e-010        cgdo    = 2.2e-010 xpart   = 0 vth0    = -0.665204       k1      = 0.8524597       k2      = -0.01           k3      = 2.8901083 k3b     = -0.4015308      nlx     = 6.14743e-007    dvt0    = 1.91496         dvt1    = 0.7365394 dvt2    = -0.07950291     dvt0w   = 0.28295         dvt1w   = 140375.75       dvt2w   = 0 nch     = 4.302e+016      voff    = -0.190127       nfactor = 2.095           cdsc    = 0 cdscb   = 0               cdscd   = 0               cit     = 0.000149292     u0      = 0.013752336 ua      = 3.508525e-010   ub      = 1.51532e-018    uc      = -6.002729e-011  ngate   = 1e+023 xj      = 2.2e-007        w0      = 0               prwg    = -0.026461294    prwb    = -0.03631252 wr      = 1               rdsw    = 1988.8199       a0      = 0.6161036       ags     = 0.03606342 a1      = 0               a2      = 0.641901        b0      = 2.141779e-007   b1      = 2.61e-008 vsat    = 91742           keta    = 0.0024697401    dwg     = -1.5405934e-008 dwb     = 2.573068e-008 alpha0  = 3.21e-007       beta0   = 36.988          pclm    = 2.0419481       pdiblc1 = 0.0416803 pdiblc2 = 0.011920854     pdiblcb = 0.06543069      drout   = 0.56            pvag    = 0 pscbe1  = 4e+008          pscbe2  = 1e-007          delta   = 0.01            eta0    = 0.3989897 etab    = -0.07000087     dsub    = 1.1006755       elm     = 5               alpha1  = 8.5 vfb     = -0.8481777 clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6 cgdl    = 5e-011          cgsl    = 5e-011          vfbcv   = -0.4446198      acde    = 1 moin    = 15              noff    = 3               voffcv  = -0.1 kt1     = -0.65           kt1l    = -3.475366e-008  kt2     = -0.003592312    ute     = -0.7619785 ua1     = 3.3742e-009     ub1     = -5.130389e-018  uc1     = -8.586461e-011  prt     = 64.53598 at      = -5730.662 rsh     = 0               js      = 3.0e-7          jsw     = 0               cj      = 0.00125 mj      = 0.49            cjsw    = 3.73e-010       mjsw    = 0.311           pb      = 0.937 rd      = 0               rdc     = 0               rs      = 0               rsc     = 0 xti     = 3               nj      = 1               pbsw    = 0.753           tcj     = 0.00087 tcjsw   = 0.000769        tpb     = 0.00167         tpbsw   = 0.00142       
*.endl tt

********************************



.OPTIONS DELMAX=1000ns
*.tran 1ms 0.5s UIC
*.probe PAR('20*(1.9536-1.9401*V(Vout3))') PAR('0.1*Ct_input*sqrt(0.857*V(Vout3)*V(Vout1)*(0.167+V(Vout4)/V(Vout3))*(1-V(Vout4)/V(Vout3)))')
*.probe PAR('20*(0.0140233*V(Vout4)-0.0010817)')
*.probe PAR('0.857*V(Vout3)*V(Vout1)*(0.167+V(Vout4)/V(Vout3))*(1-V(Vout4)/V(Vout3))') PAR('sqrt(0.857*V(Vout3)*V(Vout1)*(0.167+V(Vout4)/V(Vout3))*(1-V(Vout4)/V(Vout3)))')
*.probe PAR('1.22*V(Vcon1_test)') PAR('1.4*V(Vout3)/V(Vout1)*V(Vcon2_test)') PAR('1.22*V(Vcon2)') PAR('1.4*V(Vout4)/V(Vout2)*V(Vcon6_test)')
*.op 10ns
.op
.end