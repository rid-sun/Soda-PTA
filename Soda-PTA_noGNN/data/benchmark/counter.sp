*this is a 10 bit binary counter with 220 transistors
*mspice driven run, uid = 0.00000000
*local_lib/spice_mod/l3u.nom.d0e0.t25c.lv3 from n3u0e0r.lv3.2 nb3 and pb3
.model nmod nmos(
+ vto    =  1.04647e+0
+ uo     =  5.16319e+2
+ kappa  =  2.00000e-2
+ nsub   =  7.01467e+16
+ nfs    =  1.79789e+12
+ theta  =  1.74362e-2
+ vmax   =  1.68337e+5
+ eta    =  1.43309e+0
+ tox    =  4.50000e-8
+ xj     =  6.00000e-7
+ tpg    =  1.00000e+0
+ js     =  1.00000e-6
+ cj     =  7.81669e-4
+ pb     =  9.59560e-1
+ rsh    =  3.70100e+1
+ level  =  3)
* seq no:     5  ta629   g0229a   w37   d3   3u-n   25c   5/13/85

.model pmod pmos(
+ vto    = -1.39671e+0
+ uo     =  9.58639e+1
+ kappa  =  2.00000e-2
+ nsub   =  6.22052e+15
+ nfs    =  1.45154e+12
+ theta  =  5.93543e-2
+ vmax   =  4.80791e+5
+ eta    =  8.82997e-1
+ tox    =  4.50000e-8
+ xj     =  6.00000e-7
+ tpg    = -1.00000e+0
+ js     =  1.00000e-6
+ cj     =  2.40779e-4
+ pb     =  8.96812e-1
+ rsh    =  1.32400e+2
+ level  =  3)
* seq no:    14  ta629   g0229a   w37   d4   3u-p   25c   5/13/85
.model dnpw d(cjo 4.0e-4 vj 0.92 is 1.0e-7 n 3.17)
.model dppn d(cjo 1.3e-4 vj 0.90 is 1.0e-7 n 3.42)


vdd 21 0 dc 10.0
vres 72 0 pulse(0 5 0 5ns 5ns 100ns 200ns)
vclk 93 0 pulse(0 5 0 5ns 5ns 10ns 20ns)
m$770 70 69 68 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$769 70 73 85 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$768 71 69 67 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$767 71 73 85 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$766 65 64 63 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$765 65 74 84 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$764 66 64 62 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$763 66 74 84 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$762 60 59 58 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$761 60 75 83 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$760 61 59 57 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$759 61 75 83 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$758 55 54 53 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$757 55 76 92 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$756 56 54 52 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$755 56 76 92 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$754 50 49 48 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$753 50 77 91 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$752 51 49 47 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$751 51 77 91 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$750 45 44 43 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$749 45 78 86 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$748 46 44 42 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$747 46 78 86 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$746 40 39 38 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$745 40 79 87 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$744 41 39 37 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$743 41 79 87 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$742 35 34 33 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$741 35 80 88 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$740 36 34 32 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$739 36 80 88 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$738 30 29 28 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$737 30 82 89 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$736 31 29 27 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$735 31 82 89 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$734 25 24 23 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$733 25 93 90 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$732 26 24 22 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$731 26 93 90 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$730 70 73 68 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$729 70 69 85 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$728 71 73 67 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$727 71 69 85 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$726 65 74 63 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$725 65 64 84 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$724 66 74 62 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$723 66 64 84 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$722 60 75 58 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$721 60 59 83 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$720 61 75 57 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$719 61 59 83 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$718 55 76 53 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$717 55 54 92 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$716 56 76 52 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$715 56 54 92 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$714 50 77 48 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$713 50 49 91 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$712 51 77 47 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$711 51 49 91 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$710 45 78 43 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$709 45 44 86 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$708 46 78 42 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$707 46 44 86 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$706 40 79 38 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$705 40 39 87 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$704 41 79 37 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$703 41 39 87 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$702 35 80 33 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$701 35 34 88 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$700 36 80 32 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$699 36 34 88 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$698 30 82 28 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$697 30 29 89 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$696 31 82 27 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$695 31 29 89 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$694 25 93 23 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$693 25 24 90 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$692 26 93 22 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$691 26 24 90 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$640 24 93 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$639 22 23 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$638 82 25 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$637 29 82 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$636 27 28 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$635 80 30 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$634 34 80 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$633 32 33 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$632 79 35 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$631 39 79 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$630 37 38 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$629 78 40 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$628 44 78 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$627 42 43 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$626 77 45 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$625 49 77 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$624 47 48 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$623 76 50 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$622 54 76 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$621 52 53 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$620 75 55 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$619 59 75 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$618 57 58 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$617 74 60 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$616 64 74 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$615 62 63 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$614 73 65 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$613 69 73 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$612 67 68 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$611 81 70 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$610 23 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$609 23 26 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$608 90 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$607 90 82 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$606 28 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$605 28 31 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$604 89 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$603 89 80 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$602 33 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$601 33 36 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$600 88 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$599 88 79 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$598 38 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$597 38 41 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$596 87 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$595 87 78 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$594 43 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$593 43 46 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$592 86 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$591 86 77 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$590 48 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$589 48 51 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$588 91 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$587 91 76 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$586 53 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$585 53 56 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$584 92 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$583 92 75 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$582 58 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$581 58 61 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$580 83 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$579 83 74 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$578 63 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$577 63 66 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$576 84 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$575 84 73 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$574 68 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$573 68 71 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$572 85 72 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$571 85 81 21 21 pmod w=56u l=3u ad=504p as=504p*pw56l3
m$570 24 93 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$569 22 23 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$568 82 25 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$567 29 82 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$566 27 28 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$565 80 30 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$564 34 80 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$563 32 33 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$562 79 35 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$561 39 79 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$560 37 38 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$559 78 40 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$558 44 78 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$557 42 43 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$556 77 45 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$555 49 77 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$554 47 48 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$553 76 50 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$552 54 76 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$551 52 53 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$550 75 55 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$549 59 75 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$548 57 58 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$547 74 60 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$546 64 74 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$545 62 63 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$544 73 65 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$543 69 73 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$542 67 68 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$541 81 70 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$540 20 26 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$539 23 72 20 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$538 19 82 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$537 90 72 19 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$536 18 31 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$535 28 72 18 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$534 17 80 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$533 89 72 17 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$532 16 36 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$531 33 72 16 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$530 15 79 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$529 88 72 15 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$528 14 41 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$527 38 72 14 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$526 13 78 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$525 87 72 13 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$524 12 46 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$523 43 72 12 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$522 11 77 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$521 86 72 11 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$520 10 51 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$519 48 72 10 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$518 9 76 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$517 91 72 9 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$516 8 56 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$515 53 72 8 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$514 7 75 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$513 92 72 7 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$512 6 61 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$511 58 72 6 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$510 5 74 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$509 83 72 5 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$508 4 66 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$507 63 72 4 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$506 3 73 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$505 84 72 3 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$504 2 71 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$503 68 72 2 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$502 1 81 0 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
m$501 85 72 1 0 nmod w=23u l=3u ad=207p as=207p*nw23l3
.temp 25.0
*.print tran v(0) v(93) v(72) v(82) v(80) v(79)
*.tran 0.5e-9 1.0e-7   
.op
.opt acct
.end
