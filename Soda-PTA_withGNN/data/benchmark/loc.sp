LOC CIRCUIT
*
*
* Udy Shrivistava
*
*Adios Amigos
*
*                iOCD   iCC  iEE1  iEE2  OCD     CC      EE1    EE2
.SUBCKT  LOCDCE   82    83   84     85   86      87      88     89
*
LSSOCD 86       82     10.528NH
RSSOCD 86       82     1.E4
LVCC   87       1      11.69NH
RVCC   87       1      1.E4
LVEE1  88       2      20.328NH
RVEE1  88       2      1.E4
LVEE2  89       3      20.468NH
RVEE2  89       3      1.E4
 
*
RVCCT   1      83   1.U
RVEE1T  2      84   1.U
RVEE2T  3      85   1.U
*
KOCDCC  LSSOCD          LVCC            .8266
KOODEE1 LSSOCD          LVEE1           .5838
KOODEE2 LSSOCD          LVEE2           .5808
KCCEE1  LVCC            LVEE1           .5485
KCCEE2  LVCC            LVEE2           .5503
KEE1EE2  LVEE1          LVEE2           .4187
.ENDS
*
VEE1    119   0   -5.2
VEE2    218   0   -3.4
VTERM   112   0   -2.
VQUIET  103   0   -1.67
RVCCAT  117     0   1.U
RVEE1AT 119     113   1.U
RVEE2AT 118     218   1.U
*
*
VSIN1  101  0  PULSE(-1.67 -.873 0.0 .250nS .250NS 4.75NS 10.NS)
*
*               SIMULTANEOUSLY SWITCHING GATES ON CHIP 1
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
XDRVR1          22  23    24   25    26  101  27  21  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2  in   bb  out
*        iOCD   iCC  iEE1  iEE2  OCD     CC      EE1    EE2
XLALL1    21    22   23     24   102    117     113     118  LOCDCE
*
*
*
ROUT1    106    112      50.
*
*               SIMULTANEOUSLY SWITCHING GATES ON CHIP 2
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
XDRVR2          32  33    34   35    36  106  37  31  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2  in   bb  out
*        iOCD   iCC  iEE1  iEE2  OCD    CC      EE1     EE2
XLALL2    31    32   33     34   107    117     113     118  LOCDCE
*
*
ROUT2    107    112      50.
*
*               SIMULTANEOUSLY SWITCHING GATES ON CHIP 3
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
XDRVR3          22  23    24   25    26  103  27  41  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2  in   bb  out
*        iOCD   iCC  iEE1  iEE2  OCD     CC      EE1    EE2
XLALL3    41    22   23     24   104    117     113     118  LOCDCE
*
ROUT3    108    112      50.
*
*               SIMULTANEOUSLY SWITCHING GATES ON CHIP 4
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
XDRVR4          32  33    34   35    36  108  37  51  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2  in   bb  out
*        iOCD   iCC  iEE1  iEE2  OCD    CC      EE1     EE2
XLALL4    51    32   33     34   109    117     113     118  LOCDCE
*
ROUT4    109    112      50.
*
*
*               SIMULTANEOUSLY SWITCHING GATES ON CHIP 5
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
XDRVR5          62  63    64   65    66  101  67  61  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2  in   bb  out
*        iOCD   iCC  iEE1  iEE2  OCD    CC      EE1     EE2
XLALL5    61    62   63     64   105    117     113     118  LOCDCE
*
*
*
ROUT5    110    112      50.
*
*               SIMULTANEOUSLY SWITCHING GATES ON CHIP 6
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
XDRVR6          72  73    74   75    76  110  77  71  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2  in   bb  out
*        iOCD   iCC  iEE1  iEE2  OCD    CC      EE1     EE2
XLALL6    71    71   73     74   111    117     113     118  LOCDCE
*
*
ROUT6    111    112      50.
*
*
*       Attach coupled three lines
*
*          in1 in2 in3 as1 as2 as3 bs1 bs2 bs3 cs1 cs2 cs3
X3LNST     102 104 105 114 124 134 115 125 135 116 126 136
+ 106 108 110 112       0       THRLNS
* ot1 ot2 ot3 ee3       cc
*
*
*.TRAN 33ps 20.0ns
.OP
.PRINT DC  V(102) V(106) V(107)  V(104) V(108) V(109) V(116)
*.INCLUDE REST_ECL
*.INCLUDE SUBVO50
*
*
*
*       OPTIONS FOR TRANSIENT ANALYSIS
*
.OPTION NOMOD
.OPTION LIMPTS=3001
.OPTION METHOD=GEAR
.OPTION MAXORD=6
.OPTION LVLTIM=2
.OPTION ABSTOL=10.nA
.OPTION ITL4=5
.OPTION ITL5=0
.OPTION RELTOL=.01
.OPTION TRTOL=10.
.OPTION VNTOL=1.mV
.OPTION NUMDGT=4
.OPTION ACCT
*
*
*Subcircuit for signal pins 8.9 mm long
*       R(@1GHz)=694*.6 milli ohm L=1.12nH, C=2.8pF
*               in  out VTERM(-2)
.SUBCKT SIGPIN 151 152  29
RSXX1   151     1       208.m
LSXX1   1       2       4.0NH
CSSXX   2       29       3.2PF
RSXX2   2       3       208.m
LSXX2   3       152     4.0NH
RSXX3   152       29    10.K
.ENDS
*
*Subcircuit for  a short (2.54 cm) stub and signal pins
*               tl pin  VTERM(-2) VCC
.SUBCKT TLPIN 153 154   28     49
TLX1    153     49       1       49       Z0=55. TD=158.4PS
XSIP1   1       154     28  SIGPIN
.ENDS
*
*       One section of triply coupled transmission lines
*       with transmission line , resistors and stubs.
*
*               in1  in2 in3 ot1 ot2 ot3 st1 st2  st3 ee3 cc
.SUBCKT TL3PIN  155  156 157 158 159 160 161 162 163  148 50
*
XLINE31 155 50  156 50 157 50 61 50 62 50 63 50  50 LINE3
*Resistance for 50 um x 10um (Zo=50) is 1.82*.6ohm/cm
RTLX11  61      158     7.4
RTLX12  62      159     7.4
RTLX13  63      160     7.4
XTLP1   158     161     148          SIGPIN
XTLP2   159     162     148          SIGPIN
XTLP3   160     163     148          SIGPIN
.ENDS
*
*
*
*       Three section of triply coupled transmission lines
*       with transmission line , resistors and stubs.
*       This has three input nodes
*               three nodes each of the three stubs(a b and c)
*               three nodes at the last stage
*               The last stage may be  terminated in 50 ohms
*
*               in1 in2 in3 as1 as2 as3 bs1 bs2 bs3 cs1 cs2 cs3
.SUBCKT THRLNS  165  166 167 168 169 170 171 172 173 174 175 176
+ 177 178 179 194  59
* ot1 ot2 ot3 ee3  cc
XSIP2   165     7       194     SIGPIN
XSIP3   166     8       194     SIGPIN
XSIP4   167     9       194     SIGPIN
XTL3P1  7  8 9 1  2  3 168 169 170  194 59 TL3PIN
XTL3P2  1  2  3 4 5 6 171 172 173  194 59 TL3PIN
XTL3P3  4 5 6 174 175 176 177 178 179 194 59 TL3PIN
*RLOAX1   177    194     50.
*RLOAX2   178    194     50.
*RLOAX3   179    194     50.
.ENDS
*
*SUBCIRCUIT FOR THREE LINES
*Rogers board w=2 s=3 p=5 hy=2 h=8 t=1
*
*
*       8/3 INCH LONG LINE ON THE CU/PI SYSTEM
*
*GENERATE TRANSFORMERS
*
*TRANSFORMER WITH A TURNS RATIO OF  0.01871
.SUBCKT TX101 701 702 703 704
R012 701 702 1E10
G012 701 702 5 703 0.01871MEG
E054 5 704 701 702 0.01871
R053 5 703 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF -.1567
.SUBCKT TX102 711 712 713 714
R112 711 712 1E10
G112 712 711 5 713 .1567MEG
E154 714 5 711 712 .1567
R153 5 713 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF -0.9082
.SUBCKT TX103 721 722 723 724
R272 721 722 1E10
G272 722 721 5 723 0.9082MEG
E254 724 5 721 722 0.9082
R253 5 723 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF .9991
.SUBCKT TX201 801 802 803 804
R312 801 802 1E10
G312 801 802 5 803 .9991MEG
E354 5 804 801 802 .9991
R353 5 803 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF -.009381
.SUBCKT TX202 811 812 813 814
R412 811 812 1E10
G412 812 811 5 813 .009381MEG
E454 814 5 811 812 .009381
R453 5 813 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF .04982
.SUBCKT TX203 821 822 823 824
R512 821 822 1E10
G512 821 822 5 823 .04982MEG
E554 5 824 821 822 .04982
R553 5 823 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF .1743
.SUBCKT TX301 901 902 903 904
R612 901 902 1E10
G612 901 902 5 903 .1743MEG
E654 5 904 901 902 .1743
R653 5 903 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF 1.092
.SUBCKT TX302 911 912 913 914
R712 911 912 1E10
G712 911 912 5 913 1.092MEG
E754 5 914 911 912 1.092
R753 5 913 1U
.ENDS
*TRANSFORMER WITH A TURNS RATIO OF -.03442
.SUBCKT TX303 921 922 923 924
R812 921 922 1E10
G812 922 921 5 923 .03442MEG
E854 924 5 921 922 .03442
R853 5 923 1U
.ENDS
*
*COLUMNS OF CONGRUENCE TRANSFORMERS
*
.SUBCKT CTX301 3001 3010 3002 3003 3004 3005 3006 3007
XC11 3001 3010  3002 3003 TX101
XC12 3001  3010 3004 3005 TX201
XC13 3001  3010 3006 3007 TX301
.ENDS
.SUBCKT CTX302 3101 3110 3102 3103 3104 3105 3106 3107
XC21 3101 3110 3102 3103  TX102
XC22 3101 3110 3104 3105  TX202
XC23 3101 3110 3106 3107  TX302
.ENDS
.SUBCKT CTX303 3201 3210 3202 3203 3204 3205 3206 3207
XC31 3201 3210 3202 3203  TX103
XC32 3201 3210 3204 3205  TX203
XC33 3201 3210 3206 3207  TX303
.ENDS
*                                                             GND
.SUBCKT LINE3 731 732 733 734 735 736 831 832 833 834 835 836 837
*
*CONNECT TRANSMISSION LINES
*
TL1 3117 837 3217 837  Z0=61.131976    TD=422.4PS
TL2 3118 837 3218 837   Z0=49.415657     TD=422.4PS
TL3 3119 837 3219 837   Z0=40.88558     TD=422.4PS
*
*HOOK UP CONGRUENCE TRANSFORMER AT INPUT
*
XTIN1 3117 837 731 3111 733 3112 735 3113 CTX301
XTIN2 3118 837 3111 3114 3112 3115 3113 3116 CTX302
XTIN3 3119 837 3114 732 3115 734 3116 736 CTX303
*
*
*HOOK UP CONGRUENCE TRANSFORMER AT OUTPUT
*
XTOUT1 3217 837 831 3211 833 3212 835 3213 CTX301
XTOUT2 3218 837 3211 3214 3212 3215 3213 3216 CTX302
XTOUT3 3219 837 3214 832 3215 834 3216 836 CTX303
.ENDS
*
*Adios Amigos
*
*SUBCIRCUIT FOR THE 50 OHM DRIVER USING MCA 3 TECHNOLOGY
*
* SMNPN IS 1.75um*4.25um SIZE TRANSISTOR *****************
*
.MODEL SMNPN NPN (IS=6.5E-18 BF=120. VAF=30. IKF=8.E-3
+ISE=3.4E-16 NE=2.0 BR=10. VAR=5.0 IKR=7.E-4
+IRB=1.0E-5 RB=378.544 RBM=120. RE=17.5 RC=74.
+CJE=2.34E-14 VJE=0.9 MJE=0.4 CJC=2.74E-14 VJC=0.67
+MJC=0.32 XCJC=0.3 CJS=5.38E-14 VJS=0.6 MJS=0.4
+FC=0.9 TF=8.0E-12 TR=1.0E-9 ITF=2.1E-2 XTF=10. VTF=1.4
+XTB=0.73 )
*
* LGNPN IS 2um*12um SIZE TRANSISTOR **********************
*
.MODEL LGNPN NPN (IS=2.33E-17 BF=120. VAF=30. IKF=2.87E-2
+ISE=1.22E-15 NE=2. BR=10. VAR=5. IKR=2.51E-3
+IRB=3.58E-5 RB=162.679 RBM=47.5 RE=4.886 RC=34.663
+CJE=6.4E-14 VJE=0.9 MJE=0.4 CJC=5.13E-14 VJC=0.67
+MJC=0.32 XCJC=0.3 CJS=9.65E-14 VJS=0.6 MJS=0.4
+FC=0.9 TF=8.0E-12 TR=1.0E-9 ITF=7.52E-2 XTF=10. VTF=1.4
+XTB=0.73 )
*
* OUTPUT IS ASIC VO50 TRANSISTOR **********************
*
.MODEL OUTPUT NPN (IS=3.6E-16 BF=183. VAF=15.16
+IKF=470.0E-3 ISE=1.0E-14 NE=2.0 BR=62. VAR=4.1
+IKR=300.0E-3 IRB=43.0E-6 RB=240. RBM=5. RE=0.37
+RC=7.582 CJE=3.57E-13 VJE=0.85 MJE=0.33 CJC=2.38E-13
+VJC=0.77 MJC=0.5 XCJC=0.3 CJS=4.29E-13 VJS=0.7
+MJS=0.5 TF=5.0E-12 )
*
*       Output driver for 50 ohm terminations
*
*
*       SET UP SUBCKT FOR THE ECL Buffer
*             cc  ee in bb nor or out  vcs v1n v2n Vcs2  Vee2
.SUBCKT  GATE  99  1  4  5  6   7   9   13  14  15 93    92
*
* SET UP RESISTER VALUES FOR THE LOGIC GATE AND BIAS DRIVER
*
RNOR    99      6       295
ROR     99      7       295
REE     2       1       156
*
RMIR    15      1       156
RMIR2   99      14      1057.5
RCS21   21      92      625
RCS22   22      92      625
*
* SET UP RESISTER VALUES FOR THE LOGIC GATE AND BIAS DRIVER
*
Q11     3       13      2       LGNPN
Q21     6       4       3       LGNPN
Q31     7       5       3       LGNPN
Q51     99      6       23      LGNPN
Q61     23      93      21      LGNPN
Q71     99      7       24      LGNPN
Q81     24      93      22      LGNPN
Q41     99      7       9       OUTPUT
Q42     99      7       9       OUTPUT
*
Q1MRA   14      13      15      LGNPN
Q1MRB   99      14      13      LGNPN
*
.ENDS GATE
*
*
*       SET UP THR SUBCIRCUIT FOR THE VBB2 GENERATOR
*                0.0     -3.4     -2.1
*               cc      ee2      cs2
.SUBCKT VCS2  97      96       95
RMIR2    15       96      625
RMIR22   97      14      1736
*
*       SET UP BIPOLAR CIRCUIT ELEMENTS
*
Q1MRA2   14      95      15      LGNPN
Q1MRB2   97      14      95      LGNPN
.ENDS VCS2
*
*       SET UP THR SUBCIRCUIT FOR THE VBB GENERATOR
*               cc      ee      cs       bb
.SUBCKT VBBGEN  98      8       16      19
REBB    17      8       156
REFBB   18      8       156
RNBB12  98      20      156
*
*       SET UP BIPOLAR CIRCUIT ELEMENTS
*
Q61     20      16      17      LGNPN
Q71     19      16      18      LGNPN
Q81     98      20      19      LGNPN
.ENDS VBBGEN
*
*       SET UP the COMPLETE SUBCIRCUIT FOR VO50
*
*XSUBVO50       2   3    11   12    17  10  18  20  SUBVO50
*               cc  ee1  ee2  vcs1 vcs2 in  bb  out
.SUBCKT SUBVO50 2   3    11   12    17  10  18  20
*
*       cc  ee1  in  bb1  nor  or  out  vcs1  v1n  v2n Vcs2 Vee2
XDRV10  2    3   10  18   25   26   20    12  29    30  17  11  GATE
*
*        cc     ee1      cs1     bb1
XBBV1    2       3       12      18    VBBGEN
*
*        cc     ee2     cs2
XVCS2    2       11      17      VCS2
*
.ENDS
*
.END

