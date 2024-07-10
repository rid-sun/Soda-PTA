STRING OF OPERATIONAL AMPLIFIERS

.MODEL MP PNP IS=727.80E-18 BF=4.284E3 NF=0.9943 VAF=22.13 IKF=29.820E-6 ISE=437.9E-18 NE=1.205 BR=25.99E3 NR=0.9743 VAR=18.09 IKR=12.8E-6 ISC=17.09E-15 NC=1.021 RB=618.0 IRB=0.0 RBM=0.00001 RE=4.083 RC=103.3 XTB=0.0 EG=1.110 XTI=3.0 CJE=705.106E-15 VJE=1.108 MJE=0.99 CJS=3.508E-12 VJS=1.893 MJS=1.980E-22 CJC=1.467E-12 VJC=0.899 MJC=0.99 XCJC=1.0 FC=0.5 TF=50.0E-9 XTF=0.0 VTF=0.0 ITF=0.0 TR=50.00E-9 PTF=0.0 KF=0.0 AF=1.0 SUBS=-1
.MODEL MN NPN IS=53.30E-18 BF=235.9 NF=0.9724 VAF=632.9 IKF=10.86E-3 ISE=1.567E-18 NE=1.046 BR=0.3272 NR=0.9916 VAR=2.473 IKR=1.388E-3 ISC=1.06E-15 NC=0.9955 RB=182.2 IRB=0.0 RBM=0.00001 RE=1.876 RC=207.6 XTB=0.0 EG=1.110 XTI=3.0 CJE=1.006E-12 VJE=0.4938 MJE=0.1034 CJC=786.700E-15 VJC=0.3367 MJC=0.1233 XCJC=1.0 FC=0.5 TF=150.0E-12 XTF=0.0 VTF=0.0 ITF=0.0 TR=1.50E-9 PTF=0.0 KF=0.0 AF=1.0 CJS=2.488E-12 VJS=0.2636 MJS=0.1262
*
.SUBCKT OPAMPAL NON INV OUT VPLUS VMINUS
*QNAME    C    B    E    S    TRANSISTOR TYPE
* FIRST STAGE
QA    VPLUS   NON         1    VMINUS    MN
QB    VPLUS   INV         2    VMINUS    MN
*
QC       14    14         1    VMINUS MP
QD       14    14         1    VMINUS MP
QE       14    14         1    VMINUS MP
QF        3    14         1    VMINUS MP
*
QG        4    14         2    VMINUS MP
QH       14    14         2    VMINUS MP
QI       14    14         2    VMINUS MP
QJ       14    14         2    VMINUS MP
* CURRENT SOURCES
QK        3     3    VMINUS    VMINUS    MN
QL        4     3    VMINUS    VMINUS    MN
*
QZA      13    13    VMINUS    VMINUS    MN
QZB      14    13    VMINUS    VMINUS    MN
QZC      16    16    VMINUS    VMINUS    MN
QZD      15    16    VMINUS    VMINUS    MN
* SECOND STAGE
QM    VPLUS     4         5    VMINUS    MN
QQ        6     5    VMINUS    VMINUS    MN
QS       15    15     VPLUS    VMINUS MP
QT        9    15     VPLUS    VMINUS MP
QU        9     9         8    VMINUS    MN
QV    VPLUS     9        10    VMINUS    MN
QW        9     7         6    VMINUS    MN
* THIRD STAGE
QNA     VPLUS    10    11    VMINUS    MN
QNB     VPLUS    10    11    VMINUS    MN
QNC     VPLUS    10    11    VMINUS    MN
QND     VPLUS    10    11    VMINUS    MN
QNE     VPLUS    10    11    VMINUS    MN
*
QPA    VMINUS     6    12    VMINUS MP
QPB    VMINUS     6    12    VMINUS MP
QPC    VMINUS     6    12    VMINUS MP
QPD    VMINUS     6    12    VMINUS MP
QPE    VMINUS     6    12    VMINUS MP
QPF    VMINUS     6    12    VMINUS MP
QPG    VMINUS     6    12    VMINUS MP
QPI    VMINUS     6    12    VMINUS MP
QPJ    VMINUS     6    12    VMINUS MP
*
R1        8      7    33K
R2        6      7    50K
R3       10      6    83K
R4       11    OUT    150
R5      OUT     12    150
R6    VPLUS     13    15MEG
R7    VPLUS     16    2.3MEG
*
C1        6      4    4.3PF
*
*
.ENDS OPAMPAL
*
.SUBCKT OPAMPMN NON INV OUT VPLUS VMINUS
*QNAME    C    B    E    S    TRANSISTOR TYPE
* FIRST STAGE
QA    VPLUS    NON    1    VMINUS    MN
QB    VPLUS    INV    2    VMINUS    MN
*
QC    14    14    1    VMINUS MP
QD    14    14    1    VMINUS MP
QE    14    14    1    VMINUS MP
QF    3    14    1    VMINUS MP
*
QG    4    14    2    VMINUS MP
QH    14    14    2    VMINUS MP
QI    14    14    2    VMINUS MP
QJ    14    14    2    VMINUS MP
* CURRENT SOURCES
QK    3    3    VMINUS    VMINUS    MN
QL    4    3    VMINUS    VMINUS    MN
*
QZA    13    13    VMINUS    VMINUS    MN
QZB    14    13    VMINUS    VMINUS    MN
QZC    16    16    VMINUS    VMINUS    MN
QZD    15    16    VMINUS    VMINUS    MN
* SECOND STAGE
QM    VPLUS    4    5    VMINUS    MN
QQ    6    5    VMINUS    VMINUS    MN
QS    15    15    VPLUS    VMINUS MP
QT    9    15    VPLUS    VMINUS MP
QU    9    9    8    VMINUS    MN
QV    VPLUS    9    10    VMINUS    MN
QW    9    7    6    VMINUS    MN
* THIRD STAGE
QNA    VPLUS    10    11    VMINUS    MN
QNB    VPLUS    10    11    VMINUS    MN
QNC    VPLUS    10    11    VMINUS    MN
QND    VPLUS    10    11    VMINUS    MN
QNE    VPLUS    10    11    VMINUS    MN
*
QPA    VMINUS    6    12    VMINUS MP
QPB    VMINUS    6    12    VMINUS MP
QPC    VMINUS    6    12    VMINUS MP
QPD    VMINUS    6    12    VMINUS MP
QPE    VMINUS    6    12    VMINUS MP
QPF    VMINUS    6    12    VMINUS MP
QPG    VMINUS    6    12    VMINUS MP
QPI    VMINUS    6    12    VMINUS MP
QPJ    VMINUS    6    12    VMINUS MP
*
R1    8    7    33K
R2    6    7    50K
R3    10    6    83K
R4    11    OUT    150
R5    OUT    12    150
R6    VPLUS    13    15MEG
R7    VPLUS    16    2.3MEG
*
C1    6    4    4.3PF
*
.ENDS OPAMPMN
*
VH   109   110    0V
*
*  DESCRIBE OPAMPS
XA     0    10    11     VPLUS VMINUS  OPAMPAL
XB     0    12    13     VPLUS VMINUS  OPAMPAL
XC     0    14    15     VPLUS VMINUS  OPAMPAL
XD    16    17    17     VPLUS VMINUS  OPAMPAL
XE    18    19    19     VPLUS VMINUS  OPAMPAL
XF     0    20    21     VPLUS VMINUS  OPAMPAL
XG     0    22    23     VPLUS VMINUS  OPAMPAL
XH    24    25    26     VPLUS VMINUS  OPAMPAL
XI     0    27    28     VPLUS VMINUS  OPAMPAL
XJ    33    30    31     VPLUS VMINUS  OPAMPAL
XK    33    32    34     VPLUS VMINUS  OPAMPAL
XL     0    35    36     VPLUS VMINUS  OPAMPAL
*
XM    37    38    39     VPLUS VMINUS2  OPAMPMN
XN    40    41    42     VPLUS VMINUS2  OPAMPMN
*
**  DESCRIBE RESISTORS
*  CHANGE R1 FOR STEP RESPONSE
*R1    104    103    0.01
QN1    104    200    103    VMINUS2 MP
QN2    104    200    103    VMINUS2 MP
QN3    104    200    103    VMINUS2 MP
QN4    104    200    103    VMINUS2 MP
QN5    104    200    103    VMINUS2 MP
QN6    103    200    104    VMINUS2    MN
QN7    103    200    104    VMINUS2    MN
QN8    103    200    104    VMINUS2    MN
QN9    103    200    104    VMINUS2    MN
QN10   103    200    104    VMINUS2    MN
RCURR    200    201    10K
VCURR    201    104    10V
**
R2     101    100    1K
R3     101    102    600
R4     100     14    100K
R5     100     39    100
R6      39     12    100K
R7      12    104    100K
R8      42     14    100K
R9      42     11    100K
R10     11     39    100K
R11     14     10    100K
R12     10     12    100K
R13    104     42    100
R14     42     41    100K
R15     41     39    100K
R16     40    105    100K
R17     40      0    75K
R18     14     15    10K
R19     18   VPLUS   100K
R20     18   VMINUS  100K
R21     19     22    100K
R22     22     23    300K
R23     23     27    100K
R24     12     13    10K
R25     16   VPLUS   100K
R26     16   VMINUS  100K
R27    108   VPLUS   2000K
R28    108   VMINUS  2000K
R29    108     20    100K
R30     20     21    200K
R31     21     27    100K
R32     27     28    2000K
R33     39     38    100K
R34     37      0    100K
R35     38      0    300K
R37     24      0    100K
R38    110     24    100K
R39    109     25    100K
R40     25     26    100K
R41     26     30    100K
R42     28     30    100K
R43     30     31    100K
R44     31     33    10K
R45     33     34    10K
R46     34     32    100K
R47     32      0    100K
R48     26     35    100K
R49     28     35    100K
R50     19     35    100K
R51     41      0    300K
*
**  DESCRIBE CAPACITORS
C1    100    102    150NF
C2     15     18    100NF
C3     13     16    100NF
C4     38     31    100NF
C5     17    108    800PF
*
**  VOLTAGE SOURCES
VBIAS   105      0  -50V
VPOS    VPLUS    0   35V
VNEG    VMINUS   0  -35V
VNEG2   VMINUS2  0  -70V
***
*
.options acct reltol=1e-07 abstol=5e-10 chgtol=5e-15 numdgt = 4
.OP
.print DC v(13) v(36) v(39) v(42)
.end
