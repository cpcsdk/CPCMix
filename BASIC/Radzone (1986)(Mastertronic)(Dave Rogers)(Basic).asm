3 CALL 34642
4 RUN 900
8 POKE &99B2,an
9 POKE &99B4,16*id+1
10 |PRE
20 |MID:ON onsc GOTO 40,1190,1390,40030,110,5290,3890,6010,2890
40 IF an THEN SOUND 129,0,2,0,PEEK(&9CC8),0,PEEK(&9CC8)*3-3
50 ON PEEK(&9CC8)GOTO 20,20,20
60 |POST,@og,@sli:id=PEEK(&99B2):an=id
70 ON sli GOTO 10,9,10,10,400,700,190,220,225,525,520,120,230,235,300,150,500,780,750,1005,1003,1001,1007,999,900
99 GOTO 10
100 '
110 FOR n=1 TO 25:NEXT:GOTO 40
120 IF id=5 THEN an=1
121 GOTO 8
150 id=id+(id=3)-(id=7):GOTO 9
190 id=7:GOTO 9
220 an=3:GOTO 227
225 an=7
227 IF id=0 THEN an=0:id=5
228 sl=NOT sl:IF sl AND(id=1) THEN id=5
229 GOTO 8
230 IF id THEN an=3:GOTO 8:ELSE 10
235 IF id THEN an=7:GOTO 8:ELSE 10
300 '
305 IF fyl>6 AND pty=0 THEN 10
310 |PU,scr,og:|PU,scr,og+20:POKE og,57:POKE og+20,0:fyl=fyl+1:GOSUB 380:pty=0:GOSUB 800:an=5:GOTO 8
350 '
380 a$="0"+STR$(fyl):|DIG,51092,@a$:RETURN
390 a$=STR$(s!)
395 |DIG,51090-2*LEN(a$),@a$:RETURN
400 '
405 GOSUB 800:|PR,pp,174,pp+20,128:POKE &99B2,5
410 apl=apl+1:|DIS,5,0:fyl=9:GOSUB 380:t$="Nine Lives!":FOR n=1 TO 71*apl:s!=s!+7:GOSUB 390:SOUND 135,50-n MOD 15,7,7:NEXT:pty=0:GOSUB 800:GOTO 1043
500 '
502 DI:k=PEEK(og):rk=PEEK(14086+k):IF rk=114 OR pty=1 THEN EI:GOTO 700
505 EI:POKE og,rk:GOTO 550
520 og=og-1
525 p=og-&9D40:|PR,p,207,p+1,208:|P,p,207,p+1,208:|PU,scr,og+1:k=130
550 |PU,scr,og:s!=s!+4*(k-85):GOSUB 390:n=30+RND*120:SOUND 130,n,90,0,9,k MOD 8+(k=130):SOUND 132,n*0.99,90,0,9,k MOD 8
560 |L4,@nob:POKE &9CCE,MAX(1,6-nob/2)
570 IF nob THEN id=RND*8:GOTO 9
600 '
620 clrd=clrd+1:GOSUB 650:PRINT"SAFE ZONE!
625 FOR n=1 TO 214:INK 1,RND*RND*25:SOUND 129,270-n,3,7,0,4:SOUND 132,290-n,3,7,0,4:NEXT:INK 1,10:GOSUB 670
630 IF clrd<40 THEN 1046
632 '
635 GOSUB 650:PRINT" MISSION COMPLETED!",,," MegaBonus Awarded:":FOR d=1 TO 900:s!=s!+7:GOSUB 390:NEXT:GOSUB 650:PRINT"  Oops!",,," Here we go again!":clrd=0:go=0:FOR clf=1 TO 5000:NEXT:GOTO 980
650 '
660 GOSUB 1090:FOR n=0 TO 459 STEP 2:|PR,n,84,n+1,84:NEXT:LOCATE 6,8:PEN 2:PRINT CHR$(22)CHR$(1);:RETURN
670 FOR n=459 TO 0 STEP -1:|PR,n,PEEK(&9D40+n):NEXT:PRINT CHR$(22)CHR$(0):RETURN
700 '
710 |BAR,20:SOUND 129,2000,9,0,9,0,4:an=1+RND*7:IF id=0 THEN id=an
740 GOTO 8
750 '
760 fyl=fyl+PI-4:SOUND 129,9,700,7,0,2:SOUND 132,0,700,7,0,3:FOR n=639 TO 70 STEP -2:PLOT n,22,12:PLOT n,24:NEXT:SOUND 135,3000,77,0,9,0,11:GOSUB 380
770 IF fyl THEN:|DIS,0,2:pp=nter:pty=0:GOSUB 810:GOSUB 850:GOTO 10
774 pc=clrd*100\41:IF clf THEN pc=100
775 GOSUB 650:PRINT"GAME OVER
776 LOCATE 3,4:PEN 9:PRINT"P to Play Again":LOCATE 3,11:PEN 11:PRINT"Your mission was"," "pc;"% successful
777 FOR n=1 TO 255:IF LOWER$(INKEY$)="p" THEN RUN 900
778 NEXT:GOSUB 670:GOTO 775
780 '
790 pty=1:GOSUB 800:id=0:SOUND 129,40,-18,0,1,10:GOTO 8
800 '
801 dp=0
805 pp=PEEK(&A420)+256*PEEK(&A421)+dp:dp=0
810 |DF,0,1,0,pp,&99B3,14939,14948,14965,14982
815 IF pty THEN |DF,0,1,0,pp,&99B3,14902,14911,14920,14929
820 POKE &9CCF,pty:RETURN
849 '
850 FOR n=463 TO 479:|PR,460,135,461,136,462,187,n,188-(n>475),480,137,484,139:NEXT:POKE &9CCC,17:RETURN
890 MODE 1:PRINT"Corruption, please re-load":PEN RND*4:GOTO 890
900 'jdr/ch/86
901 CLEAR:DEFINT a-z:KEY DEF 66,1,47,47,47:CALL &BB48:ON ERROR GOTO 890
902 |INK:MODE 0:BORDER 0:a$="000000 ":GOSUB 395:fyl=6:GOSUB 380:GOSUB 850
910 RANDOMIZE TIME:og=0:sli=1:nob=0:c=0:scr=41:pp=373:pty=1:GOSUB 810:PAPER 0
980 POKE &9CCA,&98:POKE &9CCB,&50
990 GOTO 1030
999 id=5
1000 '
1001 sd=2:dp=-420:n=5:GOTO 1009
1003 sd=0:dp=-19:n=3:GOTO 1009
1005 sd=3:dp=420:n=1:GOTO 1009
1007 sd=1:dp=19:n=7
1009 IF id<>n THEN dp=0:GOTO 10
1010 scr=PEEK(15129+4*scr+sd):IF INKEY(9)=160 THEN:INPUT scr:IF scr>99 THEN POKE &AE45,0:END
1020 GOSUB 1090:LOCATE 1,1:IF las OR scr=6 THEN SOUND 135,0,0:|SW,0,460,9,3
1030 FOR s=0 TO 10:|DIS,s,1:NEXT:id=0:|CS,0:onsc=1:las=0:GOSUB 805:nter=pp:t$="Zone"+STR$(scr)
1040 ON scr GOSUB 1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500,2600,2700,2800,2900,3000,3100,3200,3300,3400,3500,3600,3700,3800,3900,4000,4100,4200,4300,4400,4500,4600,4700,4800,4900,5000,5100,5200
1041 |PU,scr:IF go THEN |SCLL,sd ELSE GOSUB 660
1042 IF INSTR(" 4 33 34 17",STR$(scr)) THEN INK 6,17 ELSE IF las THEN INK 6,16,6:SPEED INK 3,3 ELSE |INK:SPEED INK 22,22
1043 t$=SPACE$(8-LEN(t$)/2)+t$+SPACE$(8)
1044 IF dem THEN 1050
1045 col=15:|L4,@nob:POKE &9CCE,MAX(1,6-nob/2):POKE &9CCD,0
1046 IF nob OR scr=3 THEN 1048
1047 GOSUB 850:pty=0:GOSUB 800:POKE &9CCE,255:col=3
1048 TAG:FOR n=0 TO 15:SOUND 129,99,1,6:PLOT 192+n*28,14,2:PRINT CHR$(62);:PLOT 192+n*28,14,col:PRINT MID$(t$,n+1,1);:NEXT:TAGOFF
1050 ON scr GOSUB 1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150,2250,2350,2450,2550,2650,2750,2850,2950,3050,3150,3250,3350,3450,3550,3650,3750,3850,3950,4050,4150,4250,4350,4450,4550,4650,4750,4850,4950,5050,5150,5250
1058 IF go=0 THEN GOSUB 670:go=1
1059 IF dem THEN 7030
1070 GOTO 9
1075 '
1080 a=&9D40:FOR n=1 TO 12:a=a+23+3*INT(RND*6):IF PEEK(a)=0 THEN POKE a,10
1082 NEXT:RETURN
1090 dum=REMAIN(0)+REMAIN(1)+REMAIN(2)+REMAIN(3)+FRE(""):RETURN
1100 '
1105 FOR n=0 TO 1:|S,16567,180+n,10,16,8,20:|RVS:NEXT:|P,14270:GOSUB 1080
1122 FOR n=1 TO 5:|DF,n,0,32,17+8*n-99*(n>2),14663-8*(n>2),14535,14535,14537,14537:NEXT:|DF,8,2,160,28,14724,14058
1150 onsc=2:RETURN
1190 |KROL,25917,0,32157,2,34077,3:|SW,444,11,148,148,149,149:GOTO 40
1200  |S,15420,40,20,21,1,0:|P,14289
1215 FOR n=1 TO 6:|DF,n,0,160,381,14792,14181:NEXT:|DF,7,4,160,4,14611,14488,14471,14488,14471:RETURN
1250 GOTO 4050
1300 t$="Eatablapple
1305 sc3=sc3+1-sd*2:IF sc3=0 THEN scr=8:GOTO 1800
1306 IF sc3>3 THEN t$="TURN BACK !!
1310 |S,17474,80,2,19,10,2:|P,14299:GOSUB 1080
1330 FOR n=1 TO 5:|DF,n,6,160,200+n*3,14825,14564:NEXT:|DIS,5,1
1340 IF apl<3 THEN |DF,4,1,64,100+RND*300,15100,14166:RETURN
1350 onsc=3:POKE &9CCE,apl+3
1351 IF sc3=6 THEN GOSUB 660:PRINT"  You ignored the   warning and drowned!":FOR d=1 TO 9000:NEXT:GOTO 775
1360 EVERY 8 GOSUB 1370:RETURN
1370 |WAVES,80,20:IF (SQ(2) AND 7)=0 THEN RETURN
1385 ENV 8,5,1,7+RND*12,5,-1,15+RND*35:SOUND 2,0,220+RND*270,5,8,0,9+RND*6:RETURN
1390 |KROL,30717,1:GOTO 40
1399 t$="The Outlet":|CS,156:|S,15880,p,20,14,1,0:rk=21181+rk*32:|KMOV,rk,25021,rk,25085:RETURN
1400 p=20:rk=123:GOSUB 1399:|P,14321
1420 FOR n=1 TO 6:|DF,n,0,160,78,14621,14100,14104,14100,14095:NEXT
1430 FOR n=7 TO 8:|DF,n,0,160,430,14686,14076+n:NEXT
1440 RETURN
1450 |SA,200,0,201,20,0,-20:|SB,203,0,204,20,202,-20:i=210
1485 EVERY 50 GOSUB 1490
1488 EVERY 70,2 GOSUB 1499:RETURN
1490 IF RND>RND THEN |KMIR,27581,27613:i=360
1491 |SAB,40,i:SOUND 130,3000,11,i/52,0,5:i=i XOR 442:RETURN
1499 SOUND 130,5+RND*15,1,6:SOUND 132,5+RND*20,1,6:RETURN
1500  p=175:rk=84:GOSUB 1399:|RVS:|P,14338
1520 FOR n=1 TO 3:|DF,n,6,160,52*n,14867,14109:NEXT:|DF,4,1,160,351,14885,14522:RETURN
1550 GOTO 1450
1600  p=166:rk=121:GOSUB 1399:|P,14360
1605 GOSUB 1520:|DF,4,6,160,211,14877,14109:RETURN
1650 GOTO 1450
1700 t$="Very Heavy Water
1705 |S,18206,20,20,22,1,0
1730 FOR n=1 TO 6:|DF,n,0,160,456+2*(n>3),14999+n-6*(n>3),14581+n/2:NEXT:|DF,7,0,160,454,15020,14581:|DF,8,1,32,210,15030,14126,14129,14138,14147
1740 RETURN
1750 GOTO 1360
1800 t$="Mined Out
1805 GOSUB 1310:|S,17512,120,5,17,4,5:|P,14379
1810 FOR n=1 TO 5:|DF,n,1,160,160+n*27,14600,14126,14129,14138,14147:NEXT
1820 RETURN
1850 |SA,113,0,171,1,172,20,173,21:|SB,114,0,175,1,176,20,177,21
1851 INK 6,18,7:SPEED INK 4,2:EVERY 13,2 GOSUB 1890:GOTO 1360
1890 |SAB,120+RND*200,5:RETURN
1900 t$="ZipZone
1905 |S,17597,0,4,23,5,4:|P,14395:FOR n=1 TO 9:|DF,n,0,160,16+n*4,14640,14451:NEXT
1950 RETURN
2000 t$="Quark Park
2005 |S,17766,20,20,22,1,0
2020 FOR n=1 TO 5:|DF,n,0,32,132,14677+n,14077+n*2:NEXT:|DF,6,0,160,99,14768,14544:RETURN
2050 onsc=4:EVERY 10 GOSUB 2070:RETURN
2070 |WAVES,310,8:RETURN
2100  |S,17689,29,11,7,3,136:|P,14402
2110 FOR n=1 TO 3:|DF,n,2,160,344,14828,14091,14058,14091,14058:NEXT:|DF,4,4,160,282,14832,14002,14019,14053,14019
2150 GOTO 3755
2200  |CS,90:|S,16820,80,20,19,1,1:|P,18,190
2210 FOR n=1 TO 3:|DF,n,4,160,164+n*44+40*(scr=34),14603,14002,14019,14053,14019:NEXT:|DF,4,3,160,423,14763,14596,14586,14596,14586
2250 RETURN
2300  |S,15471,61,20,20,1,0:|P,28253:GOSUB 1080:GOTO 2210
2350 GOTO 4050
2400  GOSUB 2200:|RVS:|P,28284
2450 RETURN
2500  |CS,156:FOR n=0 TO 2:|S,16478,21+n*140,6,7,3,6:NEXT:|P,28307
2510 FOR n=1 TO 5:|DF,n,3,160,122,14807,14596,14586,14596,14586:NEXT:RETURN
2550 GOTO 1450
2600 t$="In the Cage
2605 |CS,90:FOR n=0 TO 2:|S,17200,21+n*140,6,7,3,6:NEXT:|P,28329
2630 FOR n=1 TO 4:|DF,n,2,160,n*6-1-58*(n=4),14653,14058,14091,14058,14091:NEXT:|DF,5,0,176,161,14691,14077
2650 RETURN
2700 t$="Nirvana?
2705 |CS,5:|P,14437:FOR n=1 TO 8:|DF,n,0,32,229,14771+n,14084:NEXT
2750 RETURN
2800 t$="Tubulifts
2805 |S,34173,0,20,23,1,1
2810 |DF,1,3,128,340,15384,15417:|DF,2,6,128,356,15389,15361,15369,15365,15369:|DF,3,6,128,97,15402,15373:|DF,4,6,128,437,15394,15353,15377,15357,15377
2850 onsc=9:RETURN
2890 |KROL,32157,2,34077,3:GOTO 40
2900  GOSUB 2800:|RVS:|P,27133
2910 FOR n=1 TO 4:|DF,n,6,128,456,15404+n,15359+RND*24:NEXT
2950 RETURN
3000  |S,16160,182,16,14,2,-160:|P,28362
3020 |P,28376:GOSUB 1080
3030 t$="Tower of Babel
3031 FOR n=1 TO 4:|DF,n,1,160,n*40-12,14719,14522:NEXT:|DF,5,4,160,6,14603,14002,14019,14053,14019
3050 RETURN
3100  |S,16240,322,16,10,3,-160:GOSUB 3020:GOTO 3240
3150 RETURN
3200  |S,16400,80,2,19,10,2:|S,16240,162,16,9,2,-160:|P,28399
3210 GOSUB 3030
3240 |P,28410:|DF,5,2,160,213,14813,14058
3250 RETURN
3300  |S,19473,220,20,12,11,-20:|S,25237,406,8,3,1,1:|P,28417
3310 FOR n=1 TO 7:|DF,n,0,160,273+n*9,15048,14540:NEXT:|DF,3,6,160,262,15052,14109
3350 RETURN
3400  rk=84:p=1:GOSUB 1399:|CS,156:|S,16527,40,2,13,9,22:|S,16553,251,3,4,4,2:|P,28438
3410 FOR n=1 TO 7:|DF,n,0,32,41+n*22,15101+n,14104:NEXT
3450 GOTO 1488
3500  GOTO 3600
3550 GOTO 3650
3600  |S,16727,0,4,23,5,4:|P,28464:IF scr=26 THEN |P,28489
3630 FOR n=1 TO 5:|DF,n,0,0,4*n-1,14723+6*n,14458:NEXT:|DF,6,1,48,208,14816,14113:|DF,7,0,48,388,14820,14510,14510,14460,14460
3645 las=1:RETURN
3650 |SA,7,0,7,20,7,40,7,60,7,80,7:|SB,9,0,9,20,9,40,9,60,9,80,9
3655 |SW,120,100,7,9:i=7:EVERY 40 GOSUB 3660
3660 p=121+4*INT(RND*5)+(160 AND(RND>0.5)):|SAB,p,1
3670 i=i+1+2*(PEEK(&9D40+p)=7):SOUND 130,2000,999,i\2:SOUND 132,2045-i*5,999,i/2:RETURN
3700  |S,18646,41,18,21,1,0:GOSUB 1080
3720 |DF,1,1,176,132,14843,14522:|DF,2,1,176,122,14853,14522
3730 onsc=5:i=0:las=1:RETURN
3750 EVERY 50,3 GOSUB 3760
3755 EVERY 60,2 GOSUB 3790:RETURN
3760 |SW,108,244,7,9:i=i XOR 2000:SOUND 130,i,254,5:SOUND 132,i*1.01,254,5:RETURN
3790 |SW,RND*260,200,100,101:RETURN
3800 t$="Boot Hill Mast
3805 |S,19385,392,8,4,4,-4:|S,19214,89,9,19,1,1:|P,28504:GOSUB 1080
3810 |DF,1,2,160,361,15033,14058:|DF,2,2,160,368,15035,14058:RETURN
3850 onsc=7:las=1:p=0:EVERY 90 GOSUB 3895:RETURN
3890 |SW,p,9,10,11:p=RND*400:|SW,p,9,10,11:GOTO 40
3895 |SW,191,143,90,91:IF id OR RND >0.7 THEN RETURN
3896 s=RND*20:d=RND*80:ENT -9,s,-d,RND*9,s,d,RND*9:SOUND 130,RND*200,500,3,0,9:SOUND 132,RND*200,500,3,0,9,RND*15*-(RND>RND):RETURN
3900  |S,19024,0,4,23,5,4:|P,28512
3910 FOR n=1 TO 7:|DF,n,0,160,16,15040,14581+n/2:NEXT:RETURN
3950 EVERY 8 GOSUB 3960:EVERY 13,1 GOSUB 3990:GOTO 1488
3960 |WAVES,360,20:RETURN
3990 POKE 15042,113+RND*14:INK 6,1+RND*24:RETURN
4000 t$="Schlobolob
4005 |CS,132:|S,17242,80,8,19,3,6:|P,28523
4020 FOR n=1 TO 7:|DF,n,0,0,394+6*n,14692+n*2,14577:IF n>4 THEN |DF,n,0,0,134+6*n,14704+n*5-25,14577
4025 NEXT
4030 |DF,8,0,48,132,14691,14077:RETURN
4050 EVERY 90 GOSUB 4095
4095 |SW,162,233,90,91:RETURN
4100  s31=s31-1+sd*2:IF s31=0 THEN scr=1:GOTO 1100
4103 t$="Acropolis"+STR$(s31)
4104 IF s31>5 THEN t$="Enlightenment":IF s31=8 THEN s31=0:scr=17:GOTO 2700
4105 |S,19116,0,4,23,5,4:|P,28537:GOSUB 1080
4120 FOR n=1 TO 8:|DF,n,0,32,(229+s31*20)MOD 460,14771+n,14100:NEXT
4150 RETURN
4200  |S,17465,340,1,1,120,1:|S,17394,20,5,16,4,45:|P,28554
4210 GOSUB 1080:GOSUB 2210:|DIS,1,1:onsc=4:RETURN
4250 GOTO 4050
4300  |S,17465,340,1,1,120,1:|S,17394,148,5,16,7,-16:|P,28574:GOTO 4210
4350 GOTO 4050
4400  |CS,84:|S,17394,162,5,16,8,-32:|S,19208,400,2,3,10,2:|P,28597:GOTO 2210
4450 GOTO 4050
4500  |CS,90:|S,16438,226,10,4,13,29:|S,25261,441,5,1,8,5:|P,28614
4530 FOR n=1 TO 6:|DF,n,1,160,17+n*58,15045,14494:NEXT
4550 EVERY 60 GOSUB 4570:RETURN
4570 i=210 AND(RND>RND):|SW,i,249,96,98:RETURN
4600  GOSUB 4500:|RVS:|P,99,191,200,193
4650 GOTO 4550
4700  |CS,156:|S,25149,201,11,8,3,160:|S,19417,153,5,10,1,1:|P,28633
4720 |DF,1,5,160,98,15079,14173:|DF,2,5,160,34,&99B3,14173
4750 INK 6,1,2:GOTO 4550
4800  |CS,99:|S,25149,445,11,8,3,160:|P,28655
4810 FOR n=1 TO 5:|DF,n,1,160,210,&99B3,14153,14153,14208,14208:NEXT
4850 GOTO 4750
4900  |S,20172,0,20,23,1,0
4910 |DF,1,0,128,121,14250,14458:|DF,2,0,128,11,14257,14458:|DF,3,0,128,254,14250,14458:|DF,4,0,0,97,14263,14458:|DF,5,1,176,15,14224,14113:|DF,6,1,176,223,14231,14522:|DF,7,1,176,418,14246,14494
4950 GOTO 3755
5000  |S,22036,260,5,10,2,15:|S,21981,5,5,23,2,5:|P,28669:GOSUB 1080
5011 FOR n=1 TO 6:|DF,n,0,160,240-199*(n>3),15057-11*(n>3),14181:NEXT:|DF,7,4,160,238,14603,14002,14019,14053,14019
5050 EVERY 70 GOSUB 5090:RETURN
5090 |SW,280,120,79,78:RETURN
5100  |S,19713,0,20,23,1,1:|P,459,192
5110 |DF,1,0,0,19,14754,14544
5150 EVERY 90 GOSUB 5190:ms=85:GOSUB 850:las=1
5152 st(1)=28701:st(2)=28981:st(3)=29181:st(4)=29313
5154 p(1)=28701:p(2)=28981:p(3)=29181:v=0:po=0:SOUND 135,0,0:onsc=8
5156 RETURN
5190 IF id OR PEEK(&A451) THEN RETURN
5195 TAG:PLOT 204,14,1:PRINT MID$("  Welcome to . * RAD-ZONE *. T for a Tour. Written by: .J.Dave Rogers.  Colin Hogg . ",ms MOD 84 XOR 126 AND ms>128,13);:ms=(ms+14)MOD 168:TAGOFF:RETURN
5200 t$="Double Helix
5205 |S,16520,0,2,1,230,2:|S,16522,15,1,4,8,55:|P,25341
5230 FOR n=1 TO 8:|DF,n,0,160,n*55-20,14780,14460,14469,14460,14460:NEXT
5250 onsc=6:RETURN
5290 |KROL,25917,0:GOTO 40
6000 '
6010 |SQ,@c:IF c THEN p=p(c):SOUND PEEK(p),256*PEEK(p+1)+PEEK(p+2),PEEK(p+3),0,4+c+v,4+c:p=p+4:IF p>=st(c+1) THEN p=st(c):v=RND*5 AND(v=0)
6011 p(c)=p
6020 |SW,po,9,10,11:po=RND*400:|SW,po,9,10,11:POKE &9CCD,0
6030 IF LOWER$(INKEY$) <>"t" GOTO 50
7000 '
7010 GOSUB 1090:dem=1:tr=0
7030 FOR n=1 TO 20:IF LOWER$(INKEY$)="s" THEN dem=0:scr=41:go=0:GOTO 1020
7031 NEXT
7040 LOCATE 7,25:INK 6,13:PEN 6:PRINT" S Stops Tour":sd=PEEK(15305+tr):tr=(tr+1)MOD 44:GOTO 1010
7060 '
40030 |SQ,@c:ON c GOTO 40040,40050,40060:GOTO 50
40040 SOUND 49,PEEK(15117+RND*8),25,0,10:GOTO 50
40050 SOUND 42,PEEK(15117+RND(0)*8)/0.75,25,0,10:GOTO 50
40060 SOUND 28,PEEK(15117+mel)*4-0.6,25,7,0,10:mel=(mel-2+RND*RND*9)AND 15:GOTO 50