1 ' COULEURS 2 - XL VERSION
2 ' BY JOE MOULDING
3 ' COPYRIGHT SLEEPWALKER PD 1993
10 INK 1,26:INK 2,24:INK 3,18:INK 4,2:INK 5,3:INK 6,6:INK 7,3:INK 8,15:INK 9,24:INK 10,7:INK 11,9:INK 12,13:INK 13,17:INK 14,19:INK 15,16
20 LEV=1:PLAY=1:DIF=0:SPE=0:ROWS=12:STICK=0:BON=0:sfr=40
25 DIM colo(11):FOR rt=1 TO 11:READ colo(rt):NEXT:GOSUB 10000:DATA 1,2,3,4,6,8,10,15,13,5,12
30 DIM RW(2),SC(2),DEAD(2),Sw(9,11,2),X(2),Y(2),CO(2),REST(2),st(2),sco(2)
40 RANDOMIZE TIME
50 GOTO 15000
100 GOTO 2000
1010 ' 1,x2,y2
1020 PLOT x2,y2,col1:DRAWR 0,10:DRAWR 0,10,col2:RETURN
1030 ' 2
1040 PLOT x2+13,y2,col1:DRAWR -13,0:DRAWR 0,10:DRAWR 13,0:DRAWR 0,10,col2:DRAWR -13,0:RETURN
1050 ' 3
1060 PLOT x2,y2,col1:DRAWR 13,0:DRAWR 0,10:DRAWR -7,0:PLOTR 7,0:DRAWR 0,10,col2:DRAWR -13,0:RETURN
1070 ' 4
1080 PLOT x2+7,y2,col1:DRAWR 0,10:PLOTR 6,-5:DRAWR -13,0:DRAWR 0,5:DRAWR 0,10,col2:RETURN
1090 ' 5
1100 PLOT x2,y2,col1:DRAWR 13,0:DRAWR 0,10:DRAWR -13,0:DRAWR 0,10,col2:DRAWR 13,0:RETURN
1110 ' 6
1120 PLOT x2+13,y2+20,col2:DRAWR -13,0:DRAWR 0,-10:DRAWR 13,0,col1:DRAWR 0,-10:DRAWR -13,0:DRAWR 0,10:RETURN
1130 ' 7
1140 PLOT x2+10,y2,col1:DRAWR 0,10:DRAWR 3,10,col2:DRAWR -13,0:RETURN
1150 ' 8
1160 PLOT x2,y2+10,col2:DRAWR 0,10:DRAWR 13,0:DRAWR 0,-10:DRAWR 0,-10,col1:DRAWR -13,0:DRAWR 0,10:DRAWR 13,0:RETURN
1170 ' 9
1180 PLOT x2,y2,col1:DRAWR 13,0:DRAWR 0,10:DRAWR -13,0:DRAWR 0,10,col2:DRAWR 13,0:DRAWR 0,-10:RETURN
1190 ' 0 (O)
1200 PLOT x2,y2+10,col1:DRAWR 0,-10:DRAWR 13,0:DRAWR 0,10:DRAWR 0,10,col2:DRAWR -13,0:DRAWR 0,-10:RETURN
1210 ' q
1220 PLOT x2,y2+10,col2:DRAWR 0,10:DRAWR 13,0:DRAWR 0,-10:DRAWR 0,-10,col1:DRAWR -1,0:PLOTR -2,-3:DRAWR -4,10:PLOTR 1,-7:DRAWR -7,0:DRAWR 0,10:RETURN
1230 ' w
1240 PLOT x2,y2+20,col2:DRAWR 3,-10:DRAWR 3,-10,col1:DRAWR 3,10:DRAWR 3,10,col2:DRAWR 3,-10:DRAWR 3,-10,col1:DRAWR 3,10:DRAWR 3,10,col2:RETURN
1250 ' e
1260 PLOT x2+11,y2,col1:DRAWR -11,0:DRAWR 0,10:DRAWR 11,0:PLOTR -11,0:DRAWR 0,10,col2:DRAWR 11,0:RETURN
1270 ' R
1280 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 13,-10:PLOTR -13,10:DRAWR 0,10,COL2:DRAWR 9,0:DRAWR 0,-10:DRAWR -9,0:RETURN
1290 ' T
1300 PLOT X2,Y2+20,COL2:DRAWR 13,0:PLOTR -6,0:DRAWR 0,-10:DRAWR 0,-10,COL1:RETURN
1310 ' Y
1320 PLOT X2,Y2+20,COL2:DRAWR 6,-10:DRAWR 6,10:PLOT X2+6,Y2,COL1:DRAWR 0,10:RETURN
1330 ' U
1340 PLOT X2,Y2+20,COL2:DRAWR 0,-10:DRAWR 0,-10,COL1:DRAWR 13,0:DRAWR 0,10:DRAWR 0,10,COL2:RETURN
1350 ' I
1360 PLOT X2,Y2,COL1:DRAWR 10,0:PLOTR -5,0:DRAWR 0,10:DRAWR 0,10,COL2:PLOTR -5,0:DRAWR 10,0:RETURN
1370 ' P
1380 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 13,0:DRAWR 0,10,COL2:DRAWR -13,0:DRAWR 0,-10:RETURN
1390 ' A
1400 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 13,0:DRAWR 0,-10:PLOTR -13,10,COL2:DRAWR 0,10:DRAWR 13,0:DRAWR 0,-10:RETURN
1410 ' D
1420 PLOT X2,Y2+10,COL1:DRAWR 0,-10:DRAWR 9,0:DRAWR 4,3:DRAWR 0,7:DRAWR 0,7,COL2:DRAWR -4,3:DRAWR -9,0:DRAWR 0,-10:RETURN
1430 ' F
1440 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 13,0:PLOTR -13,0:DRAWR 0,10,COL2:DRAWR 13,0:RETURN
1450 ' G
1460 PLOT X2+13,Y2+20,COL2:DRAWR -13,0:DRAWR 0,-10:DRAWR 0,-10,COL1:DRAWR 13,0:DRAWR 0,10:DRAWR -7,0:RETURN
1470 ' H
1480 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 13,0:DRAWR 0,-10:PLOTR 0,10:DRAWR 0,10,COL2:PLOTR -13,0:DRAWR 0,-10:RETURN
1490 ' J
1500 PLOT X2,Y2,COL1:DRAWR 13,0:DRAWR 0,10:DRAWR 0,10,COL2:RETURN
1510 ' K
1520 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 13,-10:PLOTR -13,20,COL2:DRAWR 0,-10:DRAWR 8,10:RETURN
1530 ' L
1540 PLOT X2+13,Y2,COL1:DRAWR -13,0:DRAWR 0,10:DRAWR 0,10,COL2:RETURN
1550 ' Z
1560 PLOT X2+13,Y2,COL1:DRAWR -13,0:DRAWR 6,10:DRAWR 7,10,COL2:DRAWR -13,0:RETURN
1570 ' X
1580 PLOT X2,Y2,COL1:DRAWR 7,10:DRAWR 6,-10:PLOTR 0,20,COL2:DRAWR -6,-10:DRAWR -7,10:RETURN
1590 , C
1600 PLOT X2+13,Y2,COL1:DRAWR -13,0:DRAWR 0,10:DRAWR 0,10,COL2:DRAWR 13,0:RETURN
1610 ' V
1620 PLOT X2,Y2+20,COL2:DRAWR 3,-10:DRAWR 3,-10,COL1:DRAWR 3,10:DRAWR 3,10,COL2:RETURN
1630 ' B
1640 PLOT X2,Y2+10,COL1:DRAWR 13,0:DRAWR 0,-10:DRAWR -13,0:DRAWR 0,10:DRAWR 0,10,COL2:DRAWR 9,0:DRAWR 0,-10:RETURN
1650 ' N
1660 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 0,10,COL2:DRAWR 6,-10:DRAWR 6,-10,COL1:DRAWR 0,10:DRAWR 0,10,COL2:RETURN
1670 ' M
1680 PLOT X2,Y2,COL1:DRAWR 0,10:DRAWR 0,10,COL2:DRAWR 6,-10:DRAWR 6,10:DRAWR 0,-10:DRAWR 0,-10,COL1:RETURN
1690 FOR nuq=1 TO LEN(abc$):g$=MID$(abc$,nuq,1):IF g$=" " THEN 1720
1700 po=ASC(g$)
1710 po=po-64:IF PO<1 THEN 1740 ELSE ON po GOSUB 1400,1640,1600,1420,1260,1440,1460,1480,1360,1500,1520,1540,1680,1660,1200,1380,1220,1280,1100,1300,1340,1620,1240,1580,1320,1560:
1720 IF G$="1" THEN X2=X2+10 ELSE IF G$="W" THEN X2=X2+28 ELSE x2=x2+20
1725 IF TE=1 THEN Y2=Y2-3:TE=2 ELSE IF TE=2 THEN Y2=Y2+3:TE=1
1730 X2=X2+RC:NEXT NUQ:RETURN
1740 PO=PO+16:IF PO=-2 THEN GOSUB 1760 ELSE IF PO=0 THEN GOSUB 1200 ELSE ON PO GOSUB 1020,1040,1060,1080,1100,1120,1140,1160,1180:
1750 GOTO 1720
1760 PLOT X2,Y2,COL1:DRAWR 0,2:RETURN
2000 WINDOW #1,1,10,4,24:WINDOW #2,11,20,4,24:PAPER #1,0:PAPER #2,0:FOR rt=1 TO play:sco(rt)=sfr
2010 PRINT #RT,"1���������":PRINT #rt,CHR$(22)CHR$(1)CHR$(11)"4���������"
2020 FOR rg=1 TO 18:PRINT #rt,"1�       �":PRINT #rt,CHR$(11)"4�       �":NEXT rg
2030 PRINT #rt,"1���������":PRINT #rt,CHR$(11)"4���������"CHR$(22)CHR$(0);:IF PLAY=1 THEN Y(2)=5:X(2)=5:CO(2)=5
2039 FOR KL=1 TO 7:SW(KL,0,RT)=1:NEXT
2040 NEXT rt
2050 WINDOW #1,2,10,5,22:WINDOW #2,12,20,5,22
2060 a$="ROWS:":XX=8:YY=30:COI=14:GOSUB 9020:A$="PNTS:":XX=8:YY=14:GOSUB 9020:IF PLAY=2 THEN XX=328:YY=30:COI=15:A$="ROWS:":GOSUB 9020:A$="PNTS:":XX=328:YY=14:GOSUB 9020
2070 A$="PLY1-JOYSTICK":XX=4:YY=365:COI=14:GOSUB 9020:IF PLAY=2 THEN A$="PLY2-CURSOR":XX=324:YY=365:COI=15:GOSUB 9020
2075 IF PLAY=1 THEN ABC$="BY JOE MOULDING":RC=1:COL1=6:COL2=5:X2=330:Y2=260:GOSUB 1690:ABC$="SLEEPWALKER PD":RC=0:X2=340:Y2=190:GOSUB 1690
2080 IF DIF=0 THEN BL=3:BL1=1 ELSE BL=10:BL1=0
2090 IF SPE=0 THEN SP=30 ELSE SP=4
2100 WINDOW #3,5,10,24,24:WINDOW #4,5,10,25,25:WINDOW #5,15,20,24,24:WINDOW #6,15,20,25,25:PEN #3,14:PEN #4,14:PEN #5,15:PEN #6,15:FOR RT=3 TO 6:PAPER #RT,0:NEXT RT
2110 GOSUB 9050
2120 IF LEV=1 THEN 2200 ELSE FOR P=1 TO PLAY:IF LEV=2 THEN RESTORE 12000 ELSE IF LEV=3 THEN RESTORE 12100 ELSE IF LEV=4 THEN RESTORE 12200 ELSE IF LEV=5 THEN RESTORE 12300
2130 READ RB:FOR RT=1 TO RB:READ X(P),Y(P),E:GOSUB 3800:sw(x(P),y(P),p)=co(P):NEXT RT,P
2200 GOSUB 9050:IF bon=0 THEN 2250
2210 FOR p=1 TO play:FOR u=1 TO 7:x(p)=u:FOR u1=9 TO 1 STEP -1:y(p)=u1:IF sw(x(P),y(P),p)=0 AND SW(X(P),Y(P)-1,P)<12 AND SW(X(P),Y(P)-1,P)>0 THEN co(P)=INT(RND*BL+1+BL1):sw(x(P),y(P),p)=co(P)+11:GOSUB 8020:GOTO 2230
2220 NEXT u1
2230 NEXT u,p
2250 IF PLAY=1 THEN DEAD(2)=1
2500 IF TRE=1 THEN 13500 ELSE FOR P=1 TO 2:GOSUB 9050:IF DEAD(P)=0 THEN X(P)=INT(RND*7+1):GOSUB 9100:IF SW(X(P),9,P)>0 AND SW(X(P),9,P)<12 THEN DEAD(P)=2
2510 SOUND 1,x(p)*75,15,13:NEXT P
2520 IF DEAD(1)=2 THEN LET P=1:GOSUB 12999
2530 IF DEAD(2)=2 THEN LET P=2:GOSUB 12999
2540 IF DEAD(1)=1 AND DEAD(2)=1 THEN 14000
2545 FOR P=1 TO 2:IF DEAD(P)=0 THEN LET Y(P)=9:CO(P)=INT(RND*BL+1+BL1):GOSUB 8000
2547 NEXT P
2550 FOR P=1 TO 2:IF DEAD(P)=0 AND SW(X(p),Y(p),P)>11 THEN GOSUB 7500
2555 IF dead(p)=0 AND rest(p)=0 AND stic(p)=1 THEN GOSUB 8500
2560 NEXT P
2570 FOR RI=1 TO sp
2580 R$=INKEY$
2585 IF R$="" THEN GOSUB 7000
2590 IF R$="\t" THEN GOSUB 7020
2600 IF R$=CHR$(242) THEN GOSUB 7040
2610 IF R$=CHR$(243) THEN GOSUB 7060
2620 R$=UPPER$(R$):IF R$="Z" THEN GOSUB 7000
2630 IF R$="X" THEN GOSUB 7020
2640 IF R$="Q" THEN IF DEAD(1)=0 THEN 17000
2650 NEXT ri
2660 FOR p=1 TO 2:IF dead(p)=0 AND rest(p)=0 AND stic(p)=1 THEN GOSUB 8500
2670 IF dead(p)=0 AND rest(p)=0 AND sw(x(p),y(p)-1,p)>0 AND sw(x(p),y(p)-1,p)<12 THEN rest(p)=1
2680 NEXT p
2690 IF rest(1)=1 AND rest(2)=1 THEN 3000
2691 IF REST(2)=1 AND DEAD(1)=1 THEN 3000
2692 IF REST(1)=1 AND DEAD(2)=1 THEN 3000
2695 FOR p=1 TO 2:IF y(p)=1 AND dead(p)=0 THEN rest(p)=1
2700 IF dead(p)=0 AND rest(p)=0 THEN GOSUB 8010:y(p)=y(p)-1:GOSUB 8000
2710 NEXT p:GOTO 2550
3000 FOR p=1 TO play:IF dead(p)=0 THEN a=st(p):GOSUB 9010:sw(x(p),y(p),p)=co(p):rest(p)=0 ELSE 3500
3010 FOR b=1 TO 9:FOR a=1 TO 7:IF sw(a,b,p)=0 OR sw(a,b,p)>10 THEN 3030 ELSE IF sw(a,b,p)=sw(a+1,b,p) AND sw(a+1,b,p)=sw(a+2,b,p) THEN 3100
3020 IF sw(a,b,p)=sw(a,b+1,p) AND sw(a,b,p)=sw(a,b+2,p) THEN 3150
3030 NEXT a,b
3040 NEXT p:GOTO 2500
3100 stic(p)=0:GOSUB 3600:rw(p)=rw(p)+1:sc(p)=sc(p)+(sw(a,b,p)*2):FOR rx=0 TO 2:x(p)=a+rx:y(p)=b:GOSUB 7600:co(p)=INT(RND*bl+1+bl1):GOSUB 18000:NEXT:GOSUB 20100
3110 GOTO 3200
3150 stic(p)=0:GOSUB 3600:rw(p)=rw(p)+1:sc(p)=sc(p)+(sw(a,b,p)*2):FOR rx=2 TO 0 STEP -1::x(p)=a:y(p)=b+rx:GOSUB 7600:co(p)=INT(RND*bl+1+bl1):GOSUB 18000:NEXT:GOSUB 20100:GOTO 3200
3200 CU=0:ui=0:FOR a=1 TO 7:FOR b=1 TO 8
3205 IF sw(a,b,p)=0 THEN 3220
3207 IF sw(a,b,p)>11 THEN 3250
3210 NEXT b,a:IF ui=1 THEN 3200 ELSE IF cu=1 THEN 3010 ELSE GOTO 3500
3220 IF sw(a,b+1,p)>0 AND sw(a,b+1,p)<>11 THEN x(p)=a:y(p)=b+1:GOSUB 8010:y(p)=b:e=sw(a,b+1,p):GOSUB 3700:sw(a,b,p)=sw(a,b+1,p):sw(a,b+1,p)=0:ui=1:cu=1
3230 GOTO 3207
3250 IF sw(a,b+1,p)<11 AND sw(a,b+1,p)>0 THEN x(p)=a:y(p)=b+1:GOSUB 8010:y(p)=b:e=sw(a,b+1,p):GOSUB 3700:GOSUB 7500:sw(a,b,p)=sw(a,b+1,p):sw(a,b+1,p)=0:ui=1:cu=1
3260 GOTO 3210
3500 GOTO 3040
3600 c=700-(sw(a,b,p)*40):SOUND 1,c,15,13:SOUND 1,c-50,15,13:SOUND 1,c,5,13:SOUND 1,c-75,15,13:RETURN
3700 IF sw(a,b+1,p)<11 THEN co(p)=e:GOSUB 8000 ELSE co(p)=e-11:GOSUB 8020
3710 co(p)=e:RETURN
3800 IF E>11 THEN CO(P)=E-11 ELSE CO(P)=E
3810 GOSUB 8000:RETURN
7000 p=1:IF dead(1)=0 AND rest(1)=0 AND x(1)>1 THEN IF sw(x(1)-1,y(1),1)=0 THEN GOSUB 8010:x(1)=x(1)-1:GOSUB 8000 ELSE IF sw(x(1)-1,y(1),1)>11 THEN GOSUB 8010:x(1)=x(1)-1:GOSUB 8000:GOSUB 7500
7010 RETURN
7020 p=1:IF dead(1)=0 AND rest(1)=0 AND x(1)<7 THEN IF sw(x(1)+1,y(1),1)=0 THEN GOSUB 8010:x(1)=x(1)+1:GOSUB 8000 ELSE IF sw(x(1)+1,y(1),1)>11 THEN GOSUB 8010:x(1)=x(1)+1:GOSUB 8000:GOSUB 7500
7030 RETURN
7040 p=2:IF dead(2)=0 AND rest(2)=0 AND x(2)>1 THEN IF sw(x(2)-1,y(2),2)=0 THEN GOSUB 8010:x(2)=x(2)-1:GOSUB 8000 ELSE IF sw(x(2)-1,y(2),2)>11 THEN GOSUB 8010:x(2)=x(2)-1:GOSUB 8000:GOSUB 7500
7050 RETURN
7060 p=2:IF dead(2)=0 AND rest(2)=0 AND x(2)<7 THEN IF sw(x(2)+1,y(2),2)=0 THEN GOSUB 8010:x(2)=x(2)+1:GOSUB 8000 ELSE IF sw(x(2)+1,y(2),2)>11 THEN GOSUB 8010:x(2)=x(2)+1:GOSUB 8000:GOSUB 7500
7070 RETURN
7500 IF Co(P)=SW(X(P),Y(P),P)-11 THEN SOUND 1,120,5,13:SOUND 1,95,10,13:SOUND 1,75,10,13:SC(P)=SC(P)+4:GOSUB 9050 ELSE SOUND 1,1000,10,13
7510 SW(X(P),Y(P),P)=0:RETURN
7600 LOCATE #P,1,1:PRINT #P,CHR$(22)CHR$(1):FOR ry=0 TO 1:LOCATE #p,x(P),((17+ry)-((y(P)-1)*2)):PEN #p,0:PRINT #p,CHR$(207);:NEXT:FOR s=1 TO 100:NEXT s
7610 FOR ry=0 TO 1:LOCATE #p,x(P),((17+ry)-((y(P)-1)*2)):PEN #p,0:PRINT #p,CHR$(127):NEXT:FOR s=1 TO 100:NEXT
7620 FOR ry=0 TO 1:LOCATE #p,x(P),((17+ry)-((y(P)-1)*2)):PEN #p,0:PRINT #p,CHR$(143):NEXT:FOR s=1 TO 100:NEXT:LOCATE #P,1,1:PRINT #P,CHR$(22)CHR$(0):RETURN
8000 LOCATE #P,X(P),(17-((Y(P)-1)*2)):PEN #P,COLO(CO(P)):PRINT #P,CHR$(230):LOCATE #P,X(P),(18-((Y(P)-1)*2)):PRINT #P,CHR$(231):RETURN
8010 LOCATE #P,X(P),(17-((Y(P)-1)*2)):PRINT #P," ":LOCATE #P,X(P),(18-((Y(P)-1)*2)):PRINT #P," ":RETURN
8020 FOR ry=0 TO 1:LOCATE #p,x(P),((17+ry)-((y(P)-1)*2)):PEN #p,colo(co(P)):PRINT #p,CHR$(232):NEXT:RETURN
8030 LOCATE A,B:PRINT "1�":PEN 4:LOCATE A,B:PRINT CHR$(22)CHR$(1)"�"CHR$(22)CHR$(0);:RETURN
8500 IF sw(x(p)-1,y(p),p)=co(P) OR sw(x(p)+1,y(p),p)=co(P) OR sw(x(p),y(p)+1,p)=co(P) OR sw(x(p),y(p)-1,p)=co(P) THEN rest(p)=1:SOUND 1,100,15,13
8510 RETURN
9000 LOCATE a,2:PEN  1:PRINT "�"CHR$(22)CHR$(1):PEN 4:LOCATE A,2:PRINT "�2":LOCATE A,2:PRINT "�"CHR$(22)CHR$(0);:RETURN
9010 LOCATE a,2:PEN 1:PRINT "�"CHR$(22)CHR$(1):PEN 4:LOCATE A,2:PRINT "�"CHR$(22)CHR$(0);:RETURN
9020 TAG:PLOT -20,0,CoI:FOR I=1 TO LEN(A$):MOVE XX,YY:L$=MID$(A$,I,1):PRINT L$;:SP=20        
9030 IF L$="Q" OR L$="W" OR L$="M" OR L$="X" OR L$="Y" OR L$="T" THEN SP=24 ELSE IF L$="I" OR L$="1" OR L$="[" OR L$="\\" OR L$="]" THEN SP=16      
9040 XX=XX+SP:NEXT I:TAGOFF:RETURN    
9050 PRINT #3,RW(1):PRINT #4,SC(1):IF PLAY=2 THEN PRINT #5,RW(2):PRINT #6,SC(2)
9060 FOR p1=1 TO 2:IF dead(p1)=0 AND STICK=1 AND sc(p1)>sco(p1) THEN sco(p1)=sco(p1)+sfr:STIC(P1)=1:FOR s=800 TO 50 STEP -25:SOUND 1,s,1,13,15:NEXT:PEN #p1,0:GOTO 20000
9070 NEXT
9080 IF RW(1)+RW(2)>ROWS-1 THEN TRE=1
9090 RETURN
9100 IF P=1 THEN A=X(P)+1 ELSE IF P=2 THEN A=X(P)+11
9110 GOSUB 9000:st(p)=a:RETURN
9150 FOR A=2 TO 8:B=6:GOSUB 8030:B=10:GOSUB 8030:NEXT:RETURN
9200 FOR A=12 TO 18:B=6:GOSUB 8030:B=10:GOSUB 8030:NEXT:RETURN
10000 SYMBOL 230,&0,&3E,&67,&5F,&5F,&5F,&5F,&7F:SYMBOL 231,&7F,&7F,&7F,&7F,&7F,&7F,&7F,&3E 
10010 SYMBOL 232,&48,&11,&24,&9A,&59,&24,&88,&12:SYMBOL 233,&0,&0,&0,&F,&1F,&1F,&1C,&1C
10020 SYMBOL 234,&0,&1F,&3F,&70,&60,&60,&63,&63:SYMBOL 235,&1C,&1C,&1C,&1F,&1F,&F,&0,&0
10030 SYMBOL 236,&63,&63,&63,&60,&60,&70,&3F,&1F:SYMBOL 237,&0,&0,&0,&F8,&FC,&FC,&1C,&1C
10040 SYMBOL 238,&0,&FC,&FE,&7,&3,&3,&E3,&E3:SYMBOL 239,&1C,&1C,&1C,&FC,&FC,&F8,&0,&0
10050 SYMBOL 240,&63,&E3,&E3,&3,&3,&7,&FE,&FC:SYMBOL 241,&1C,&1C,&1C,&1C,&1C,&1C,&1C,&1C
10060 SYMBOL 242,&63,&63,&63,&63,&63,&63,&63,&63:SYMBOL 243,&0,&0,&0,&FF,&FF,&FF,&0,&0
10070 SYMBOL 244,&0,&FF,&FF,&0,&0,&0,&FF,&FF:SYMBOL 245,&0,&0,&3C,&7E,&7E,&7E,&3C,&0
10080 RETURN
12000 DATA 3,1,5,11,4,2,11,7,5,11
12100 DATA 13,1,6,11,1,5,14,1,4,11,1,1,15,2,1,16,4,4,11,4,1,17,6,4,11,6,1,16,7,6,11,7,5,14,7,4,11,7,1,15
12200 DATA 24,1,6,10,1,5,11,1,3,6,1,2,6,1,1,1,2,6,10,2,5,11,2,3,7,2,2,7,2,1,1,3,5,11,4,2,8,4,1,8,5,5,11,6,6,9,6,5,11,6,3,5,6,2,5,6,1,2,7,6,9,7,5,11,7,3,4,7,2,4,7,1,2
12300 DATA 9,1,5,11,2,6,11,2,4,11,4,6,11,4,4,11,5,6,11,5,4,11,6,3,11,7,5,11
12999 i1=500:i2=2000:i3=5:T$="GAME OVER"
13000 yy=256:IF P=1 THEN GOSUB 9150:WINDOW #1,2,8,9,11:CLS #1:COI=14:XX=50 ELSE GOSUB 9200:WINDOW #2,12,18,9,11:CLS #2:COI=15:XX=370
13010 A$=T$:GOSUB 9020:FOR RT=i1 TO i2 STEP i3:SOUND 1,RT,1,13:SOUND 2,RT-2,1,13:NEXT:DEAD(P)=1:RETURN
13500 TRE=0:IF RW(1)>RW(2) THEN SC(1)=SC(1)+30:PRINT #4,SC(1)
13510 IF RW(2)>RW(1) THEN SC(2)=SC(2)+30:PRINT #6,SC(2)
13520 i1=2000:i2=500:i3=-5:FOR P=1 TO PLAY:IF DEAD(P)=0 THEN T$="WELL DONE":GOSUB 13000
13530 NEXT P:GOTO 14000
14000 FOR g=1 TO 1000:NEXT g:CLS:A$="PLAYER 1":COI=14:XX=100:YY=320:GOSUB 9020:A$="ROWS: "+STR$(RW(1)):XX=150:YY=280:GOSUB 9020
14010 A$="POINTS: "+STR$(SC(1)):XX=150:YY=250:GOSUB 9020:IF SC(1)>SC(2) AND PLAY=2 THEN A$="THE WINNER]":COI=12:XX=150:YY=220:GOSUB 9020
14020 IF PLAY=2 THEN A$="PLAYER 2":COI=15:XX=100:YY=180:GOSUB 9020:A$="ROWS: "+STR$(RW(2)):XX=150:YY=140::GOSUB 9020
14030 IF PLAY=2 THEN A$="POINTS: "+STR$(SC(2)):XX=150:YY=110:GOSUB 9020:IF SC(2)>SC(1) AND PLAY=2 THEN A$="THE WINNER]":COI=12:XX=150:YY=80:GOSUB 9020
14040 FOR S=1 TO 2000:NEXT S
14050 CALL &BB18
14060 CLS:ERASE RW,SC,DEAD,SW,X,Y,CO,REST,ST,SCO:UI=0:CU=0
14070 GOTO 30
15000 CLS:GOSUB 16000:ABC$="1. PLAY GAME":X2=150:Y2=270:COL1=6:COL2=10:GOSUB 1690:ABC$="2. OPTIONS":X2=150:Y2=230:GOSUB 1690
15010 ABC$="3. INSTRUCTIONS":X2=150:Y2=190:GOSUB 1690:ABC$="BY JOE MOULDING":X2=150:Y2=130:COL1=3:COL2=14:GOSUB 1690
15020 ABC$="SLEEPWALKER PD":X2=150:Y2=90:COL1=5:COL2=6:GOSUB 1690
15025 |SPEECH,&8000,3684
15030 FOR t=1 TO 300:NEXT t:GOTO 40000
15040 r=VAL(r$):ON r GOTO 15100,15200,19000,15060,15070,15025
15050 GOTO 15030
15060 sc(1)=sc(1)+50:SOUND 1,100,10,13:SOUND 2,100,10,13:SOUND 4,100,10,13:GOTO 15030
15070 sc(2)=sc(2)+50:SOUND 1,150,10,13:SOUND 2,150,10,13:SOUND 4,150,10,13:GOTO 15030
15100 CLS:COL1=8:COL2=9:X2=220:Y2=220:ABC$="GET READY":GOSUB 1690:FOR I=1 TO 3:GOSUB 50010:NEXT I:SOUND 1,525,25,13:SOUND 2,524,25,13:SOUND 4,526,25,13:CLS:GOTO 2000
15200 CLS:GOSUB 50010:col1=3:col2=14:GOSUB 15210:GOSUB 15250:GOSUB 15230:GOSUB 15260:GOSUB 15280:GOSUB 15300:GOSUB 15320:GOSUB 15327:GOSUB 15325:GOTO 15330
15210 WINDOW #1,1,20,4,5:CLS #1
15215 IF PLAY=1 THEN T$="ONE" ELSE T$="TWO"
15220 ABC$="1. PLAYERS....":X2=100:Y2=330:GOSUB 1690:abc$=t$:x2=500:GOSUB 1690:RETURN
15230 WINDOW #1,1,20,8,9:CLS #1:IF DIF=1 THEN T$="HARD" ELSE T$="EASY"
15240 ABC$="3. DIFFICULTY....":X2=100:Y2=266:GOSUB 1690:abc$=t$:x2=500:GOSUB 1690:RETURN
15250 WINDOW #1,1,20,6,7:CLS #1:ABC$="2. LEVEL....":t$=STR$(LEV):X2=100:Y2=298:GOSUB 1690:abc$=t$:x2=500:GOSUB 1690:RETURN
15260 WINDOW #1,1,20,10,11:CLS #1:IF SPE=1 THEN T$="FAST" ELSE T$="SLOW"
15270 ABC$="4. SPEED....":X2=100:Y2=234:GOSUB 1690:x2=500:abc$=t$:GOSUB 1690:RETURN
15280 WINDOW #1,1,20,12,13:CLS #1:IF BON=0 THEN T$="OFF" ELSE T$="ON"
15290 ABC$="5. BONUSES....":X2=100:Y2=202:GOSUB 1690:x2=500:abc$=t$:GOSUB 1690:RETURN
15300 WINDOW #1,1,20,14,15:CLS #1:IF STICK=1 THEN T$="ON" ELSE T$="OFF"
15310 ABC$="6. STICK FEATURE...."+T$:X2=100:Y2=170:GOSUB 1690:RETURN
15320 WINDOW #1,1,20,16,17:CLS #1:ABC$="7. ROWS NEEDED....":X2=100:Y2=138:GOSUB 1690:x2=500:abc$=STR$(rows):GOSUB 1690:RETURN
15325 ABC$="9. RETURN TO MAIN MENU":X2=100:Y2=74:GOSUB 1690:RETURN
15327 WINDOW #1,1,20,18,19:CLS #1:abc$="8. STICK EVERY....":X2=100:Y2=106:GOSUB 1690:X2=500:ABC$=STR$(SFR):GOSUB 1690:RETURN
15330 R$=INKEY$:IF R$="" THEN 15330
15340 R=VAL(R$)
15345 IF R=9 THEN 15000
15350 IF R=1 THEN IF PLAY=1 THEN PLAY=2:GOSUB 15210:GOTO 15330 ELSE PLAY=1:GOSUB 15210:GOTO 15330
15360 IF R=3 THEN IF DIF=1 THEN DIF=0:GOSUB 15230:GOTO 15330 ELSE DIF=1:GOSUB 15230:GOTO 15330
15370 IF R=2 THEN LEV=LEV+1:IF LEV>5 THEN LEV=1:GOSUB 15250:GOTO 15330 ELSE GOSUB 15250:GOTO 15330
15380 IF R=4 THEN SPE=SPE+1:IF SPE=2 THEN SPE=0:GOSUB 15260:GOTO 15330 ELSE GOSUB 15260:GOTO 15330
15390 IF R=5 THEN BON=BON+1:IF BON=2 THEN BON=0:GOSUB 15280:GOTO 15330 ELSE GOSUB 15280:GOTO 15330
15400 IF R=6 THEN STICK=STICK+1:IF STICK=2 THEN STICK=0:GOSUB 15300:GOTO 15330 ELSE GOSUB 15300:GOTO 15330
15410 IF R=7 THEN 15450
15415 IF R=8 THEN 15470
15420 GOTO 15330
15450 WINDOW #1,1,20,22,23:CLS #1:A$="ROWS - 1 TO 99:":XX=100:YY=62:COI=13:GOSUB 9020:LOCATE 14,20:PEN 13:INPUT "",RS:IF RS<1 OR RS>99 THEN CLS #1:GOTO 15330 ELSE ROWS=RS
15460 CLS #1:GOSUB 15320:GOTO 15330
15470 WINDOW #1,1,20,22,23:CLS #1:A$="STICK EVERY... - 5 TO 300:":XX=70:YY=62:COI=10:GOSUB 9020:LOCATE 14,21:PEN 10:INPUT "",RS:IF RS<5 OR RS>300 THEN CLS #1:GOTO 15330 ELSE SFR=RS
15480 CLS #1:GOSUB 15327:GOTO 15330
16000 COL1=8:COL2=2:abc$="COULEURS  2   XL VERSION":X2=70:Y2=330:TE=1:GOSUB 1690:TE=0:RETURN
17000 IF DEAD(1)=0 THEN DEAD(1)=2
17010 IF DEAD(2)=0 THEN DEAD(2)=2
17020 GOTO 2520
18000 IF BON=1 THEN SW(X(p),y(p),p)=co(p)+11:GOSUB 8020 ELSE SW(X(P),Y(P),P)=0
18010 RETURN
19000 CLS:GOSUB 50010:RESTORE 19500
19005 CLS:READ col1,col2
19010 READ x2,y2:IF x2=0 THEN CALL &BB18:GOTO 19005 ELSE IF x2=1 THEN CALL &BB18:GOTO 15000
19020 READ abc$:GOSUB 1690:GOTO 19010
19500 DATA 8,9,20,320,"WELCOME. DIFFERENT COLOURED"
19510 DATA 20,290,"BLOCKS FALL FROM THE SKY."
19520 DATA 20,260,"YOU CAN MOVE THEM LEFT AND"
19530 DATA 20,230,"RIGHT. THEY FALL UNTIL THEY"
19540 DATA 20,200,"HIT THE GROUND OR OTHER"
19550 DATA 20,170,"BLOCKS. THE IDEA OF THE"
19560 DATA 20,140,"GAME IS TO PLACE THREE"
19570 DATA 20,110,"BLOCKS OF THE SAME COLOUR"
19580 DATA 20,80,"IN A ROW. HORIZONTALLY OR"
19590 DATA 20,50,"VERTICALLY.   PRESS ANY KEY."
19600 DATA 0,0,14,3,20,320,"THESE BLOCKS THEN DISAPPEAR."
19610 DATA 20,290,"THE GAME ENDS WHEN YOU AND"
19620 DATA 20,260,"THE OTHER PLAYER HAVE MADE"
19630 DATA 20,230,"ENOUGH ROWS DISAPPEAR."
19640 DATA 20,200,"IF THE PILE OF BLOCKS REACHES"
19650 DATA 20,170,"THE TOP OF THE SCREEN THEN"
19660 DATA 20,140,"YOU LOSE."
19670 DATA 20,110,"THERE ARE DIFFERENT LEVELS."
19680 DATA 20,80,"ON HIGHER LEVELS THERE ARE"
19690 DATA 20,50,"GREY BLOCKS WHICH STAY IN THE"
19700 DATA 20,20,"AIR.     PRESS ANY KEY."
19710 DATA 0,0,6,5,20,320,"IF YOU CHANGE THE OPTIONS"
19720 DATA 20,290,"YOU CAN MAKE IT SO THAT THERE"
19730 DATA 20,260,"ARE BONUS FLAKES. THESE ARE"
19740 DATA 20,230,"DIFFERENT COLOURED FLAKES"
19750 DATA 20,200,"WHICH APPEAR WHEN YOU GET A"
19760 DATA 20,170,"ROW OR AT THE START OF THE GAME."
19770 DATA 20,140,"IF YOU LAND A COLOURED BLOCK"
19780 DATA 20,110,"ON A FLAKE OF THE SAME COLOUR"
19790 DATA 20,80,"YOU GAIN POINTS. PRESS ANY KEY."
19800 DATA 0,0,6,5,20,320,"THERE IS ALSO A STICK"
19810 DATA 20,290,"FEATURE. EVERY 40 POINTS YOU"
19820 DATA 20,260,"GET YOU RECIEVE A STICK BONUS."
19830 DATA 20,230,"IF YOU THEN HAVE A BLOCK WHICH"
19840 DATA 20,200,"TOUCHES A BLOCK OF THE SAME"
19850 DATA 20,170,"COLOUR AS IT PASSES  THE BLOCK"
19860 DATA 20,140,"WILL STICK TO THE OTHER BLOCK."
19870 DATA 20,110,"THE STICK FEATURE IS PRESENT"
19880 DATA 20,80,"UNTIL THE NEXT TIME A ROW IS"
19885 DATA 20,50,"MADE.  PRESS ANY KEY."
19890 DATA 0,0,8,9,20,320,"YOU CAN CHANGE VARIOUS THINGS"
19900 DATA 20,290,"ON THE OPTIONS MENU..."
19910 DATA 20,260,"EASY.HARD... SLOW.FAST..."
19920 DATA 20,230,"DIFFERENT LEVELS... ETC."
19930 DATA 20,200,"ON HARD THERE ARE MORE COLOURS."
19935 DATA 20,170,"YOU CAN ALTER THE TOTAL NUMBER"
19937 DATA 20,140,"OF ROWS UNTIL THE END OF THE"
19938 DATA 20,110,"GAME. THE WINNER IS THE ONE"
19939 DATA 20,80,"WITH THE MOST POINTS."
19940 DATA 0,0,14,3,20,320,"THE ONE WHO HAS THE MOST"
19950 DATA 20,290,"ROWS AT THE END OF THE GAME"
19960 DATA 20,260,"GETS SOME POINTS ADDED TO HIS"
19970 DATA 20,230,"SCORE.   PRESS Q TO QUIT."
19975 DATA 20,200,"PLAYER ONE USES JOYSTICK"
19980 DATA 20,170,"OR Z AND X. PLAYER TWO"
19985 DATA 20,140,"USES CURSOR KEYS."
19990 DATA 20,110,"G00D LUCK.  PRESS ANY KEY."
19995 DATA 1,0
20000 IF P1=1 THEN PAPER #p1,14 ELSE PAPER #p1,15
20010 FOR UQ=1 TO 5:LOCATE #P1,9,6+UQ:RESTORE 20020:READ A$:PRINT #P1,A$:NEXT UQ:PAPER #P1,0:GOTO 9070
20020 DATA "S","T","I","C","K"
20100 FOR UQ=1 TO 5:LOCATE #P,9,6+UQ:PRINT #P," ":NEXT UQ:RETURN
40000 ENT 1,6,-1,1,12,1,1,6,-1,1
40010 a=1
40020 RESTORE 40110
40030 READ n:IF n=99 THEN READ l:period=0 ELSE IF n=98 THEN READ e,n,o,l:GOSUB 40080 ELSE IF n=96 THEN 40060 ELSE IF n=97 THEN 40010 ELSE READ o,l:GOSUB 40080
40040 c=c+1:SOUND 1,period,l,11,0,e,0:IF period>0 THEN SOUND 2,period-1,l,14,0,e,0:SOUND 4,period+1,l,14,0,e,0 ELSE SOUND 2,period,l,14,0,e,0:SOUND 4,period,l,14,0,e,0
40050 r$=INKEY$:IF r$="" THEN 40030 ELSE 40070
40060 a=a+1:IF a<5 THEN 40020 ELSE GOTO 40030
40070 r=VAL(r$):ON r GOTO 15100,15200,19000,15060,15070,15025
40075 GOTO 40030
40080 freq=440*(2^(o-1+((n-10)/12)))
40090 period=ROUND(125000/freq)  
40100 RETURN
40110 DATA 98,0,9,0,12,4,0,12,9,0,27,0,0,30,99,5,0,0,15,2,0,30,99,5,2,0,15,4,0,22,99,7,4,0,22
40120 DATA 9,0,50,0,1,12,4,1,12,1,1,12,4,1,12,2,1,12,6,1,12,2,1,12,6,1,12,4,1,12,8,1,12,4,1,12,8,1,12
40130 DATA 96,98,1
40140 DATA 9,1,10,9,2,42,9,1,10,9,2,42,9,1,10,9,2,42,9,1,10,9,2,33,10,1,10,10,2,42,9,1,10,9,2,42,9,1,10,9,2,42,9,1,10,9,2,42,9,1,10,9,2,33,10,1,10,10,2,42,97
50010 U1=1000:FOR U=50 TO 525 STEP 5:SOUND 1,U,1,13:SOUND 2,U1,1,13:SOUND 3,U1-1,1,13:U1=U1-5:NEXT U:RETURN