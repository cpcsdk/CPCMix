5 POKE &BDEE,&C9:KEY DEF 66,1,&20,&20,&20:CALL &BB48
10 POKE &B4E8,255:POKE &B632,255:BORDER 0:INK 0,0:MODE 0:CLEAR:n1$(1)="ONE":n1$(2)="TWO":n1$(3)="THREE":n1$(4)="FOUR":n1$(5)="FIVE":n1$(6)="SIX":ON ERROR GOTO 3610:ON BREAK GOSUB 3620:INK 0,0:INK 1,0:INK 2,9:INK 3,10:INK 4,13:INK 5,24:INK 6,2,6:INK 7,6,2
50 INK 8,24,0:INK 9,0,24:INK 10,14:INK 11,6:INK 12,3:INK 13,26:INK 14,10:INK 15,10:LOAD"SHARE1.scn",&C000:DIM sh$(16),h(16):DIM o(6,17),x(16),I(600),m$(14):p=1:RM=10:DIM s(6,16),D(999),A(25),hs$(20),hs(20):Q=42:PAPER#2,5:PEN#2,1:WINDOW#2,1,20,24,25
60 INK 0,0:INK 1,0:INK 2,9:INK 3,10:INK 4,13:INK 5,24:INK 6,2,6:INK 7,6,2:INK 8,24,0:INK 9,0,24:INK 10,14:INK 11,6:INK 12,3:INK 13,26:INK 14,10:INK 15,10:EVERY 10 GOSUB 690:FOR x=1 TO 4000:NEXT:CLS#2:PRINT#2," No. PLAYERS  (1-6)":a$=INKEY$
90 IF a$<>""THEN a$=""
100 a$=INKEY$:IF a$=""THEN 100
110 IF VAL(a$)<1 OR VAL(a$)>6 THEN 100 ELSE N=VAL(a$):PEN#2,6
120 PRINT#2,"    ";N;" PLAYERS":FOR i=1 TO 5:a$=INKEY$:IF a$<>""THEN a$=""
130 NEXT:FOR x=1 TO N:o(x,17)=10000:NEXT:FOR i=1 TO 500:NEXT:PAPER#2,1:PEN#2,5:CLS#2:LOCATE#2,1,2:PRINT#2," INSTRUCTIONS (Y/N)":a$=INKEY$:IF a$<>""THEN a$=""
160 a$=INKEY$:IF a$=""THEN 160 ELSE a$=UPPER$(a$)
170 IF a$<>"Y"AND a$<>"N"THEN 160
180 CLS#2:a$=UPPER$(a$):IF a$="Y"THEN LOCATE#2,9,2:PRINT#2,"YES"ELSE IF a$="N"THEN LOCATE#2,10,2:PRINT#2,"NO"
190 FOR i=1 TO 1000:NEXT:IF a$="N"THEN 310 ELSE IF a$="Y"THEN 220
210 GOTO 160
220 MODE 1:BORDER 0:INK 0,0:INK 1,0:INK 2,0:INK 3,0:PEN 3:PRINT" SHAREPLAY - THE STOCKMARKET SIMULATION":PRINT:PEN 2:PRINT STRING$(40,"�"):PEN 1
230 PRINT"FOR  1 TO 6 PLAYERS  THIS GAME  PROVIDES";"THE ENJOYMENT OF PLAYING THE STOCKMARKET";"WITHOUT ANY RISK OF PERSONAL  BANKRUPTCY":PEN 3:PRINT"TO PURCHASE SHARES  ";:PEN 2:PRINT"PRESS [1] ";:PEN 1
240 PRINT"AND FOLLOW";"THE USER PROMPTS DISPLAYED ON THE SCREEN":PEN 3:PRINT"TO SELL SHARES ";:PEN 2:PRINT" PRESS [2]";:PEN 1:PRINT" AND FOLLOW THE";"USER PROMPTS  DISPLAYED  ON  THE  SCREEN":PEN 3:PRINT"PRESSING  ";:PEN 2:PRINT"[3] CHECK SHARES";:PEN 1
260 PRINT"  WILL DISPLAY";"YOUR CURRENT HOLDINGS  AND THE PROFIT OR";"LOSS THAT YOU HAVE MADE ON  TRANSACTIONS":PEN 3:PRINT"PRESSING ";:PEN 2:PRINT"[4] REVIEW MOVES";:PEN 1
270 PRINT"  WILL  DISPLAY";"THE LAST  100 MOVEMENTS (WEEKS)  OF  THE";"MARKET'S FLUCTUATIONS  IN GRAPHICAL FORM";:PEN 2:PRINT:PRINT STRING$(40,"�"):PEN 3:PRINT"ALL TRANSACTIONS ATTRACT  BROKERAGE DUTY";:INK 0,0:INK 1,6:INK 2,24:INK 3,26:FOR i=1 TO 5000
280 NEXT:PEN 3:LOCATE 1,25:PRINT CHR$(24);"        PRESS ANY KEY  TO CONTINUE      ";CHR$(24);:a$=INKEY$:IF a$<>""THEN a$=""
300 a$=INKEY$:IF a$=""THEN 300
310 MODE 1:PEN#7,1:INK 1,1:INK 2,24:INK 3,1,26:WINDOW#7,10,31,9,17:CLS#7:DI:WHILE S<>-99:GOSUB 690:LOCATE#7,6,5:PEN#7,3:PRINT#7,"PLEASE  WAIT":INK 3,INT(RND*26)+1:WEND:PEN#7,6:FOR R=1 TO 500:NEXT:CLS#7:FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$=""
340 NEXT:PRINT#7:FOR i=1 TO N
360 LOCATE#7,1,i:PRINT#7,"PLAYER ";n1$(i):LOCATE#7,14,i:INPUT#7,"",N$(i):IF LEN(N$(i))>6 THEN 360
370 IF LEN(N$(i))<1 THEN N$(i)=n1$(i)
380 NEXT:FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$=""
400 NEXT
410 OPENIN"hiscores.shp":FOR i=1 TO 10:INPUT#9,hs$(i):INPUT#9,hs(i):NEXT:CLOSEIN:PEN 1:INK 1,1:INK 2,24:INK 3,1,26:MODE 1:LOAD"HISCORE.SCN",&C000:PAPER 1:PEN 3:LOCATE 11,7:PRINT USING"\\      \\   � #######";hs$(1);hs(1):PEN 2:FOR i=9 TO 17:LOCATE 11,i
420 PRINT USING"\\      \\   � #######";hs$(i-7);hs(i-7):NEXT:FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$=""
440 NEXT:IF F<>1 THEN 510 ELSE WINDOW#0,1,40,1,25:LOCATE#0,9,25:PAPER#0,0:PEN#0,2:PRINT#0,"[E] ND  OR [P] LAY AGAIN";
460 READ S:IF S=-99 THEN RESTORE ELSE SOUND 1,S,20,15,,1:SOUND 2,S+2,20,15,,1
470 a$=INKEY$:IF a$=""THEN 460 ELSE a$=UPPER$(a$)
480 IF a$="P"THEN RUN"SHARE.BAS"
490 IF a$="E"THEN CLS:NEW
500 GOTO 470
510 PAPER 0:FOR R=1 TO 70:a$=INKEY$:GOSUB 690:IF a$<>""THEN 530
520 NEXT
530 RANDOMIZE TIME:OPENIN"SHARE.DAT":FOR i=1 TO 16:INPUT#9,sh$(i):NEXT:FOR i=1 TO 16:INPUT#9,a:h(i)=INT(RND*100)+a:NEXT:CLOSEIN
540 m$(1)="                              ...U.N. DECLARES WHALES ENDANGERED SPECIES...              ...LIFELONG SOAP UNDER THREAT OF CLOSURE...                ....NEW CHEMICAL PROCESS SAVES COMPANY FROM BANKRUPTCY...                                      "
550 m$(3)="                                     ...VALUE OF AMERICAN DOLLAR FALLS OVERNIGHT...                      ...COST OF MOST IMPORTED GOODS SKYROCKETS...                    ...BUSINESS CLOSURES WIDESPREAD...                                      "
560 m$(5)="                                    ....A BLACK ACTIVIST GROUP OF TERRORISTS TAKE OVER GOLDMINES IN SOUTH AFRICA....                  ....GOLD PRICES SOAR ....                     ....MARKET DEPRESSED...                                        "
570 m$(7)="                                     ...THE AMERICAN GOVERNMENT ANNOUNCES NEW RECORD DEFICIT....                 ....PANIC SELLING BY LARGE SHAREHOLDERS...              ....MARKET INDEX TAKES A DIVE...                                        "
580 m$(9)="                                     ...REVOLUTION IN PAPUA NEW GUINEA..                     ...ALL TRADE STOPPED IN REGION...                        ...MAJOR COMPANY ASSETS SEIZED BY REVOLUTIONARIES ...                                       "
590 m$(2)="                                     ...BRITISH BANKS ANNOUNCE MAJOR INVESTMENT IN A.S.E.A.N. REGION...                               ...BOOM IN REGIONS CAPITAL WORKS PREDICTED BY POLITICAL LEADERS...                                       "
600 m$(4)="                                     ...AMERICAN PRESIDENT ANNOUNCES TOTAL REPEAL OF U.S. PROTECTIONIST LEGISLATION...                            ...MAJOR BOOST TO PRIMARY INDUSTRY AND TRADE PREDICTED...                                       "
610 m$(6)="                                     ...BRITISH GOVERNMENT ANNOUNCES AGREEMENT ON NEW WAGES AND PRODUCTIVITY ...                                 ...TRADE UNIONS PROMISE 2 YEAR STRIKE FREE PERIOD...                                       "
620 m$(8)="                                     ...UNIONS BAN ALL IMPORTS FROM JAPAN ON TRADE ISSUES...                              ...DOCKS AT STANDSTILL...                       ...NO END TO DISPUTE IN SIGHT...                                       "
630 m$(10)="                                     ...CAPITAL GAINS INVESTIGATION UNDERWAY...                  ...YOUR TRADING PRACTICES UNDER SUSPICION...            ...TAXES AND FINES LEVIED ON YOUR BANK BALANCE...                                        "
640 m$(11)="                                     ...PROTECTIONIST POLICIES ADOPTED BY GOVERNMENT...                           ...IMPORT TARIFFS INTRODUCED...                      ...LOCAL BUSINESS SALES IMPROVE....                                        "
650 m$(12)="                                     ...FRINGE BENEFIT TAX LEGISLATION REPEALED...                                                    ...DRAMATIC IMPROVEMENT IN ECONOMY PREDICTED BY BUSINESS LEADERS....                                        "
660 m$(13)="                                     ...GOVERNMENT DECLARES TOTAL WAGE FREEZE FOR TWELVE MONTHS TRIAL...                                                     ...UNION DEMANDS FOR PRICE FREEZE REJECTED...                                        "
670 m$(14)="                                     ...DEPRECIATION ALLOWANCES RAISED AS OF LAST FINANCIAL YEAR...                                                       ...NEW RATE RESULTS IN CREDIT TO YOUR ACCOUNT...                                        "
680 t=9:GOTO 740
690 ENT 1,3,1,10:READ S:IF S=-99 THEN RESTORE ELSE SOUND 1,S,20,15,,1:SOUND 2,S+2,20,15,,1
700 RETURN:DATA 261,233,207,195,195,164,174,164,164,164,164,164,174,164,174,164,174,195,220,246,246,195,195,164,164,146,146,138,138,138,138,146,146,164,164,164
720 DATA 130,130,146,146,130,130,130,164,164,174,174,195,195,195,195,164,195,164,195,164,195,164,195,164,195,164,174,174,-99
730 MODE 1:WINDOW#0,1,40,1,25:WINDOW#1,1,40,1,25:WINDOW#2,1,40,1,40:WINDOW#3,1,40,1,25:WINDOW#4,1,40,1,25:WINDOW#5,1,40,1,25
740 BORDER 0:INK 0,0:INK 1,0:INK 2,0:INK 3,0:MODE 1:LOAD"SHARE2.scn",&C000:BORDER 10:INK 0,6:INK 1,26:INK 2,0:INK 3,24:RANDOMIZE TIME:ORIGIN 0,0:WINDOW#2,26,37,18,18:WINDOW#3,26,38,17,21:WINDOW#4,2,39,24,24:PAPER#4,0:PEN#4,2:PAPER#3,0:PAPER#3,2
760 DEF FNI=(h(1)+h(2)+h(3)+h(4)+h(5)+h(6)+h(7)+h(8)+h(9)+h(10)+h(11)+h(12)+h(13)+h(14)+h(15)+h(16))/16:I(Q)=FNI:I(Q)=FNI:I(Q)=INT(I(Q)):Q=Q+1:IF Q>599 THEN GOSUB 3590
790 RANDOMIZE TIME:EVERY 30 GOSUB 870
810 BORDER 13:GOSUB 2630:GOSUB 3100:IF B(p)<>1 THEN o(p,0)=0:FOR i=1 TO 16:o(p,0)=o(p,0)+(o(p,i)*(h(i))):NEXT:o(p,0)=o(p,0)+o(p,17):IF o(p,0)<500 THEN 3450
830 IF o(p,0)>999999 THEN a$="X":GOTO 3160
840 EVERY 40 GOSUB 870:FOR i=1 TO 16:IF h(i)<5 THEN h(i)=5 ELSE IF h(i)>500 THEN h(i)=500:NEXT
860 GOTO 2540
870 DI:IF INKEY(64)<>-1 THEN RETURN
880 IF INKEY(65)<>-1 THEN DI:CLS#3:RETURN
890 IF INKEY(57)<>-1 THEN DI:CLS#3:RETURN
900 IF INKEY(56)<>-1 THEN DI:CLS#3:RETURN
910 IF INKEY(49)<>-1 THEN DI:CLS#3:RETURN
920 IF N=1 THEN t=9 ELSE t=t-0.1
930 IF RND>0.05 THEN RETURN
940 FOR R=1 TO 8:x=INT(RND*3):IF RND>0.7 THEN x=x*-1
960 IF FNI<30 THEN x=INT(RND*4)+1
970 IF FNI>150 THEN x=INT(RND*3)*-1
980 h(R)=INT(h(R)+x):IF h(R)<5 THEN h(R)=5 ELSE IF h(R)>500 THEN h(R)=500
1000 NEXT:FOR R=9 TO 16:x=INT(RND*5):IF RND>0.6 THEN x=x*-1
1020 h(R)=INT(h(R)+x):NEXT:IF FNI<30 THEN x=INT(RND*6)
1040 IF FNI>200 THEN x=INT(RND*4)*-1
1050 FOR R=1 TO 16:IF h(R)<5 THEN h(R)=5 ELSE IF h(R)>500 THEN h(R)=500
1060 NEXT
1070 FOR R=1 TO 16:h(R)=INT(h(R)):NEXT:PEN 1:d$="###":ORIGIN 0,0:MOVE 266,348:TAG:PRINT USING d$;h(1);:TAGOFF:MOVE 266,326:TAG:PRINT USING d$;h(2);:TAGOFF:MOVE 266,301:TAG:PRINT USING d$;h(3);:TAGOFF:MOVE 266,275:TAG:PRINT USING d$;h(4);:TAGOFF
1080 MOVE 266,252:TAG:PRINT USING d$;h(5);:TAGOFF:MOVE 266,230:TAG:PRINT USING d$;h(6);:TAGOFF:MOVE 266,205:TAG:PRINT USING d$;h(7);:TAGOFF:MOVE 266,180:TAG:PRINT USING d$;h(8);:TAGOFF:MOVE 573,348:TAG:PRINT USING d$;h(9);:TAGOFF:MOVE 573,326:TAG
1090 PRINT USING d$;h(10);:TAGOFF:MOVE 573,301:TAG:PRINT USING d$;h(11);:TAGOFF:MOVE 573,275:TAG:PRINT USING d$;h(12);:TAGOFF:MOVE 573,252:TAG:PRINT USING d$;h(13);:TAGOFF:MOVE 573,230:TAG:PRINT USING d$;h(14);:TAGOFF:MOVE 573,205:TAG
1100 PRINT USING d$;h(15);:TAGOFF:MOVE 573,180:TAG:PRINT USING d$;h(16);:TAGOFF
1110 FOR R=1 TO 16:IF h(R)<5 THEN h(R)=5 ELSE IF h(R)>500 THEN h(R)=500
1120 NEXT:PAPER#3,0:PEN#3,2:LOCATE#3,1,2:PRINT#3,USING"    ###.##";FNI:LOCATE#3,1,5:PRINT#3,USING"######";FIX(o(p,17)):I(Q)=FNI:I(Q)=INT(I(Q)):Q=Q+1:IF Q>599 THEN GOSUB 3590
1150 IF t>0 THEN RETURN ELSE 2290
1160 DI:CLS#3:SOUND 1,500,20:PEN#3,3:PRINT#3,"PURCHASE FROM";:SOUND 1,500,15:PRINT#3,"WHICH COMPANY":PEN#3,2:PRINT#3,"    A - P":IF t<0.1 THEN t=0.3
1180 a$=INKEY$:IF a$=""THEN 1180 ELSE a$=UPPER$(a$)
1190 IF ASC(a$)<65 OR ASC(a$)>80 THEN 1180 ELSE a=((ASC(a$))-64)
1200 CLS#3:PEN#3,3:PRINT#3,"  HOW MANY  ";:PEN#3,1:PRINT#3,sh$(a);:PEN#3,2:PRINT#3,"DO YOU WANT":INPUT#3,"   ",x
1210 IF((x*h(a))+((x*h(a))*0.02))>o(p,17)THEN CLS#3:DI:SOUND 1,500,20:PRINT#3,"INSUFFICIENT":PRINT#3,"  FINANCE":PEN#3,3:SOUND 1,500,20:PRINT#3,"TRANSACTION":PRINT#3," CANCELLED":PEN#3,2:FOR i=1 TO 1000:NEXT:GOSUB 2260:GOTO 1200
1220 o(p,17)=(o(p,17)-((x*h(a)*1.02))):o(p,a)=o(p,a)+x:s(p,a)=s(p,a)+(x*h(a)*1.02):IF(x>500 AND h(a)>20)THEN h(a)=h(a)+(INT(RND*(x/500))):GOSUB 1070
1230 FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
1240 CLS#3:GOSUB 3100:EI:RETURN
1250 DI:CLS#3:SOUND 1,500,20:PEN#3,3:PRINT#3," SELL  WHICH";:SOUND 1,500,15:PRINT#3,"   COMPANY":PEN#3,2:PRINT#3,"    A - P":IF t<0.1 THEN t=0.2
1270 a$=INKEY$:IF a$=""THEN 1270 ELSE a$=UPPER$(a$)
1280 IF ASC(a$)<65 OR ASC(a$)>80 THEN 1270 ELSE a=((ASC(a$))-64)
1290 CLS#3:PEN#3,3:PRINT#3,"  HOW MANY  ";:PEN#3,1:PRINT#3,sh$(a);:PEN#3,2:PRINT#3,"  TO  SELL":INPUT#3,"   ",x
1300 IF x>o(p,a)THEN CLS#3:DI:SOUND 1,500,20:PRINT#3,"INSUFFICIENT":PRINT#3,"STOCKHOLDING":PEN#3,3:SOUND 1,500,20:PRINT#3,"TRANSACTION":PRINT#3," CANCELLED":PEN#3,2:FOR i=1 TO 1000:NEXT:GOSUB 2210:GOTO 1250
1310 o(p,17)=(o(p,17)+((x*h(a))*0.98)):o(p,a)=o(p,a)-x:s(p,a)=s(p,a)-((x*h(a))*0.98):IF(x>500 AND h(a)>20)THEN h(a)=h(a)-(INT(RND*(x/500))):GOSUB 1070
1320 FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
1330 CLS#3:GOSUB 3100:EI:RETURN
1340 CLS#3:PRINT#3,"REVIEW SHARES":SOUND 1,500,15:FOR i=1 TO 2000:NEXT:MODE 1:BORDER 0:INK 0,0:INK 1,26:INK 2,24:INK 3,6:MODE 1:LOCATE 4,1:PEN 1:PRINT"SHAREPLAY  STOCKHOLDING  PORTFOLIO":LOCATE 3,3:INK 3,6:PEN 3
1343 PRINT"SHARES HELD   NUMBER   COST     VALUE":LOCATE 3,23:PEN 1:PRINT"BANK �":LOCATE 20,23:PRINT"TOTAL �":LOCATE 1,2:INK 2,24:PEN 2:PRINT STRING$(40,CHR$(154)):LOCATE 15,2:PRINT CHR$(158):LOCATE 24,2:PRINT CHR$(158):LOCATE 32,2:PRINT CHR$(158)
1347 LOCATE 1,4:INK 2,24:PEN 2:PRINT STRING$(40,CHR$(154)):LOCATE 15,3:PRINT CHR$(149):LOCATE 24,3:PRINT CHR$(149):LOCATE 32,3:PRINT CHR$(149):LOCATE 15,4:PRINT CHR$(159):LOCATE 24,4:PRINT CHR$(159):LOCATE 32,4:PRINT CHR$(159):LOCATE 15,5:PRINT CHR$(149)
1350 LOCATE 24,5:PRINT CHR$(149):LOCATE 32,5:PRINT CHR$(149):LOCATE 15,6:PRINT CHR$(149):LOCATE 24,6:PRINT CHR$(149):LOCATE 32,6:PRINT CHR$(149):LOCATE 15,7:PRINT CHR$(149):LOCATE 24,7:PRINT CHR$(149):LOCATE 32,7:PRINT CHR$(149):LOCATE 15,8
1353 PRINT CHR$(149):LOCATE 24,8:PRINT CHR$(149):LOCATE 32,8:PRINT CHR$(149):LOCATE 15,9:PRINT CHR$(149):LOCATE 24,9:PRINT CHR$(149):LOCATE 32,9:PRINT CHR$(149):LOCATE 15,10:PRINT CHR$(149):LOCATE 24,10:PRINT CHR$(149):LOCATE 32,10:PRINT CHR$(149)
1356 LOCATE 15,11:PRINT CHR$(149):LOCATE 24,11:PRINT CHR$(149):LOCATE 32,11:PRINT CHR$(149):LOCATE 15,12:PRINT CHR$(149):LOCATE 24,12:PRINT CHR$(149):LOCATE 32,12:PRINT CHR$(149):LOCATE 15,13:PRINT CHR$(149):LOCATE 24,13:PRINT CHR$(149):LOCATE 32,13
1358 PRINT CHR$(149):LOCATE 15,14:PRINT CHR$(149):LOCATE 24,14:PRINT CHR$(149):LOCATE 32,14:PRINT CHR$(149):LOCATE 15,15:PRINT CHR$(149):LOCATE 24,15:PRINT CHR$(149):LOCATE 32,15:PRINT CHR$(149):LOCATE 15,16:PRINT CHR$(149):LOCATE 24,16:PRINT CHR$(149)
1361 LOCATE 32,16:PRINT CHR$(149):LOCATE 15,17:PRINT CHR$(149):LOCATE 24,17:PRINT CHR$(149):LOCATE 32,17:PRINT CHR$(149):LOCATE 15,18:PRINT CHR$(149):LOCATE 24,18:PRINT CHR$(149):LOCATE 32,18:PRINT CHR$(149):LOCATE 15,19:PRINT CHR$(149):LOCATE 24,19
1364 PRINT CHR$(149):LOCATE 32,19:PRINT CHR$(149):LOCATE 15,20:PRINT CHR$(149):LOCATE 24,20:PRINT CHR$(149):LOCATE 32,20:PRINT CHR$(149):LOCATE 1,21:INK 2,24:PEN 2:PRINT STRING$(40,CHR$(154)):LOCATE 15,21:PRINT CHR$(155):LOCATE 24,21:PRINT CHR$(155)
1367 LOCATE 32,21:PRINT CHR$(155):LOCATE 9,25:PEN 1:PRINT"PRESS ANY KEY TO CONTINUE":PAPER 0:WINDOW 1,40,1,25:T0=0:FOR x=1 TO 16
2000 IF o(p,x)>0 THEN LOCATE 1,x+4:PRINT sh$(x):LOCATE 17,x+4:PRINT USING"######";o(p,x):LOCATE 25,x+4:PRINT USING"######";s(p,x):LOCATE 34,x+4:PRINT USING"######";(o(p,x)*h(x)):T0=T0+(o(p,x)*h(x))
2010 NEXT:LOCATE 9,23:PRINT FIX(o(p,17)):LOCATE 27,23:PRINT FIX((o(p,17)+(T0))):FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
2040 a$=INKEY$:IF a$=""THEN 2040 ELSE BORDER 10:INK 0,6:INK 1,26:INK 2,0:INK 3,24:MODE 1:LOAD"share2.scn",&C000:BORDER 10:PAPER 0
2050 PEN 1:GOSUB 3100:EI:RETURN
2060 CLS#3:PRINT#3,"REVIEW  MOVES":SOUND 1,500,15:FOR i=1 TO 750:NEXT:WINDOW 1,40,1,25:BORDER 0:MODE 1:LOAD"graph.scn",&C000:FOR i=43 TO Q-1:IF I(i)>200 THEN I(i)=I(i-1)ELSE IF I(i)<10 THEN I(i)=I(i-1):NEXT
2090 IF k>999 THEN k=0
2100 FOR i=43 TO Q-1:D(k)=I(i):k=k+1:NEXT:IF k>176 THEN c=k-176
2120 zy=74:FOR w=c TO k-1:Z=INT(D(w)*1.6)+30:MOVE zy,40:DRAW zy,Z:zy=zy+3:PU=Z:NEXT:FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
2180 a$=INKEY$:IF a$=""THEN 2180 ELSE MODE 1:LOAD"share2.scn",&C000:BORDER 10
2190 PEN 1:GOSUB 3100:RETURN
2210 CLS#3:FOR x=1 TO 16:IF o(p,x)>0 THEN CLS#3:PRINT#3:PRINT#3,sh$(x);:PRINT#3,o(p,x);"SHARES";:PRINT#3," VAL $";o(p,x)*h(x);:FOR AA=1 TO 2000:NEXT
2230 NEXT:FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
2250 CLS#3:PEN 1:RETURN
2260 CLS#3:PRINT#3:PRINT#3,"TOTAL COST":PRINT#3,"�";INT(((x*h(a))+((x*h(a))*0.02))):PRINT#3,"YOU HAVE":PRINT#3,"�";INT(o(p,17)):FOR AA=1 TO 2000:NEXT:FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
2280 CLS#3:PEN 1:RETURN
2290 FOR i=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
2300 CLS#3:PEN#3,3:PRINT#3,"  PRESS [X]";:PEN#3,3:PRINT#3," TO END GAME":SOUND 1,500,15:FOR i=1 TO 1500:IF INKEY(63)<>-1 THEN a$="X":GOTO 3160
2320 NEXT:CLS#3
2330 p=p+1:IF p>N THEN p=1
2340 B=0:FOR R=1 TO N:B=B+B(R):NEXT:IF B>=N THEN 3160
2350 IF B(p)=1 THEN 2330
2360 o(p,0)=0:FOR i=1 TO 16:o(p,0)=o(p,0)+(o(p,i)*(h(i))):NEXT:o(p,0)=o(p,0)+o(p,17):IF(B(p)<>1 AND o(p,0)<500)THEN 3450
2400 IF o(p,0)>999999 THEN a$="X":GOTO 3160
2410 FOR AA=1 TO 5:a$=INKEY$:IF a$<>""THEN a$="":NEXT
2420 t=9:CLS#3:GOSUB 3100:FOR R=1 TO 8:x=INT(RND*3):IF RND>0.5 THEN x=x*-1
2450 h(R)=INT(h(R)+x):IF h(R)<3 THEN h(R)=3 ELSE IF h(R)>500 THEN h(R)=500
2470 NEXT:FOR R=9 TO 16:x=INT(RND*5):IF RND>0.5 THEN x=x*-1
2490 h(R)=INT(h(R)+x):IF h(R)<3 THEN h(R)=3 ELSE IF h(R)>500 THEN h(R)=500
2510 NEXT:I(Q)=FNI:I(Q)=INT(I(Q)):IF I(Q)>0 AND I(Q)<1000 THEN Q=Q+1 ELSE Q=Q-1
2520 IF Q>299 THEN Q=43
2530 EI:RETURN
2540 EI:AA=(RND*5000):IF(N=1 AND AA>4995)THEN DI:GOSUB 2730:EI
2550 IF AA>4999 THEN DI:GOSUB 2730:EI
2560 IF V=0 THEN t=9:V=1
2570 a$=INKEY$:IF a$=""THEN 2540
2580 IF UPPER$(a$)="P"THEN 3500
2590 DI:ON VAL(a$)GOSUB 1160,1250,1340,2060,2290:FOR i=1 TO 16:IF h(i)<3 THEN h(i)=3 ELSE IF h(i)>500 THEN h(i)=500
2620 NEXT:GOSUB 2720:EI:GOTO 810
2630 WINDOW#2,26,37,18,18:WINDOW#3,26,38,17,21:WINDOW#4,2,39,24,24:FOR i=1 TO 16:h(i)=INT(h(i)):NEXT:d$="###":ORIGIN 0,0:MOVE 266,348:TAG:PRINT USING d$;h(1);:TAGOFF:MOVE 266,326:TAG:PRINT USING d$;h(2);:TAGOFF:MOVE 266,301:TAG:PRINT USING d$;h(3);:TAGOFF
2640 MOVE 266,275:TAG:PRINT USING d$;h(4);:TAGOFF:MOVE 266,252:TAG:PRINT USING d$;h(5);:TAGOFF:MOVE 266,230:TAG:PRINT USING d$;h(6);:TAGOFF:MOVE 266,205:TAG:PRINT USING d$;h(7);:TAGOFF:MOVE 266,180:TAG:PRINT USING d$;h(8);:TAGOFF:MOVE 573,348:TAG
2660 PRINT USING d$;h(9);:TAGOFF:MOVE 573,326:TAG:PRINT USING d$;h(10);:TAGOFF:MOVE 573,301:TAG:PRINT USING d$;h(11);:TAGOFF:MOVE 573,275:TAG:PRINT USING d$;h(12);:TAGOFF:MOVE 573,252:TAG:PRINT USING d$;h(13);:TAGOFF:MOVE 573,230:TAG:PRINT USING d$;h(14);
2670 TAGOFF:MOVE 573,205:TAG:PRINT USING d$;h(15);:TAGOFF:MOVE 573,180:TAG:PRINT USING d$;h(16);:TAGOFF:WINDOW#2,26,37,18,18:WINDOW#3,26,38,17,21:WINDOW#4,2,39,24,24:I(Q)=FNI:I(Q)=INT(I(Q)):Q=Q+1:IF Q>599 THEN GOSUB 3590
2710 RETURN
2720 WINDOW#2,26,37,18,18:WINDOW#3,26,38,17,21:WINDOW#4,2,39,24,24:PAPER#4,0:PEN#4,2:PAPER#3,0:RETURN
2730 IF t<0.1 THEN t=0.3
2740 a=INT(RND*14)+1:IF a=10 OR a=14 THEN A2=A2+2:GOTO 2770
2750 IF A2>=13 THEN FOR x=1 TO 4:A(x)=0:NEXT:FOR x=6 TO 14:A(x)=0:NEXT:A2=0:RANDOMIZE TIME
2760 IF A(a)=1 THEN 2730
2770 A(a)=1:A2=A2+1:m$=m$(a):PEN 2:ON a GOTO 3060,3080,3060,3080,3060,3080,3060,3060,3060,3060,3080,3080,3080,3080
2790 SOUND 1,500,20:FOR x=1 TO 210:LOCATE#4,1,1:PRINT#4,MID$(m$,x,38);:SOUND 1,3000,10,10,1,0,10:SOUND 2,800,10,12:NEXT:TAG:MOVE 312,145:PRINT CHR$(143);:TAGOFF:ON a GOSUB 2870,2970,3020,2960,2950,2980,3030,3040,3050,2900,3000,3000,3010,2920:FOR AA=1 TO 5
2820 a$=INKEY$:IF a$<>""THEN a$="":NEXT
2830 FOR R=1 TO 16:h(R)=INT(h(R)):IF h(R)<5 THEN h(R)=5 ELSE IF h(R)>500 THEN h(R)=500
2850 NEXT:RETURN
2870 h(11)=h(11)-(h(11)/(INT(RND*4)+5)):h(11)=INT(h(11)):h(3)=h(3)-(h(3)/(INT(RND*15)+1)):h(3)=INT(h(3)):GOSUB 1050:RETURN:GOSUB 2970:RETURN:GOSUB 3020:RETURN
2900 IF o(p,17)>0 THEN o(p,17)=(o(p,17)-(o(p,17)/(INT(RND*5)+2))):IF o(p,17)<50 THEN o(p,17)=0
2910 o(p,17)=FIX(o(p,17)):GOSUB 1110:RETURN
2920 IF o(p,17)>0 THEN o(p,17)=(o(p,17)+(o(p,17)/(INT(RND*5)+1))):IF o(p,17)<50 THEN o(p,17)=50+o(p,17)*INT(RND*50)+1
2930 o(p,17)=FIX(o(p,17)):GOSUB 1110:RETURN:a=h(9):GOSUB 3020:h(9)=a:IF h(9)<50 THEN h(9)=h(9)+50 ELSE h(9)=a+a*((INT(RND*50)+50)/100):h(9)=INT(h(9)):RETURN
2950 FOR i=1 TO 8:h(i)=h(i)-(h(i)*((INT(RND*30)+2)/100)):h(i)=INT(h(i)):NEXT:FOR i=10 TO 16:h(i)=h(i)-(h(i)*((INT(RND*60)+5)/100)):h(i)=INT(h(i)):NEXT:h(10)=h(10)*((INT(RND*50)+30)/100):h(10)=INT(h(10)):GOSUB 1050:RETURN
2960 FOR i=1 TO 8:h(i)=h(i)+(h(i)*((INT(RND*15)+15)/100)):h(i)=INT(h(i)):NEXT:FOR i=10 TO 16:h(i)=h(i)+(h(i)*((INT(RND*40)+10)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:RETURN
2970 h(1)=h(1)+(h(1)*((INT(RND*50)+5)/100)):h(1)=INT(h(1)):FOR i=1 TO 8:h(i)=h(i)+(h(i)*((INT(RND*25)+15)/100)):h(i)=INT(h(i)):NEXT:FOR i=9 TO 16:h(i)=h(i)+(h(i)*((INT(RND*60)+10)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:RETURN
2980 h(1)=h(1)+(h(1)*((INT(RND*10)+2)/100)):h(1)=INT(h(1)):FOR i=1 TO 8:h(i)=h(i)+(h(i)*((INT(RND*25)+15)/100)):h(i)=INT(h(i)):NEXT:FOR i=9 TO 13:h(i)=h(i)+(h(i)*((INT(RND*60)+10)/100)):h(i)=INT(h(i)):NEXT
2990 FOR i=15 TO 16:h(i)=h(i)+(h(i)*((INT(RND*60)+10)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:RETURN
3000 FOR i=1 TO 8:h(i)=h(i)+(h(i)*((INT(RND*30)+2)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:FOR i=9 TO 16:h(i)=h(i)-(h(i)*((INT(RND*60)+5)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:RETURN
3010 h(1)=h(1)-(h(1)*((INT(RND*10)+1)/100)):h(1)=INT(h(1)):FOR i=2 TO 8:h(i)=h(i)+(h(i)*((INT(RND*10)+1)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:RETURN
3020 FOR i=1 TO 8:h(i)=h(i)-(h(i)*((INT(RND*30)+2)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:FOR i=10 TO 16:h(i)=h(i)-(h(i)*((INT(RND*60)+5)/100)):h(i)=INT(h(i)):NEXT:h(10)=h(10)+(h(10)*((INT(RND*30)+2)/100)):h(10)=INT(h(10)):GOSUB 1050:RETURN
3030 FOR i=1 TO 8:h(i)=h(i)-(h(i)*((INT(RND*30)+2)/100)):h(i)=INT(h(i)):NEXT:GOSUB 1050:FOR i=10 TO 16:h(i)=h(i)-(h(i)*((INT(RND*60)+5)/100)):h(i)=INT(h(i)):NEXT:h(9)=h(9)+(h(9)*((INT(RND*30)+2)/100)):h(9)=INT(h(9)):GOSUB 1050:RETURN
3040 h(1)=h(1)/(INT(RND*4)+1):h(1)=INT(h(1)):h(6)=h(6)/(INT(RND*10)+2):h(6)=INT(h(6)):h(7)=h(7)/(INT(RND*6)+2):h(7)=INT(h(7)):h(8)=h(8)/(INT(RND*15)+2):h(8)=INT(h(8)):GOSUB 1050:RETURN
3050 h(1)=h(1)+h(1)/(INT(RND*15)+1):h(1)=INT(h(1)):h(9)=h(9)+h(9)/(INT(RND*20)+2):h(9)=INT(h(9)):h(10)=h(10)-h(10)/(INT(RND*15)+5):h(10)=INT(h(10)):h(15)=h(15)+h(15)/(INT(RND*3)+3):h(15)=INT(h(15)):GOSUB 1050:RETURN
3060 IF I(Q-1)<65 THEN FOR A1=1 TO 14:NEXT:A1=0:GOTO 2730
3070 TAG:MOVE 312,145:PRINT CHR$(225);:TAGOFF:GOTO 2790
3080 IF I(Q-1)>160 THEN FOR R=1 TO 14:A1=0:NEXT:GOTO 2730
3090 TAG:MOVE 312,145:PRINT CHR$(224);:TAGOFF:GOTO 2790
3100 WINDOW#2,26,37,18,18:WINDOW#3,26,38,17,21:WINDOW#4,2,39,24,24:PAPER#4,0:PEN#4,2:PAPER#3,0:PAPER#3,0:PEN#3,1:PRINT#3," MARKET INDEX";:PEN#3,2:PRINT#3,USING"    ###.##";FNI:PEN#3,1:PRINT#3:PRINT#3,"BANK � PLAYER";:PEN#3,2:LOCATE#3,1,5
3110 PRINT#3,USING"######";FIX(o(p,17)):LOCATE#3,8,5:PRINT#3,N$(p);:PAPER#3,0:PEN#3,2:LOCATE#3,5,2:PRINT#3,USING"###.##";FNI:I(Q)=FNI:I(Q)=INT(I(Q)):Q=Q+1:IF Q>599 THEN GOSUB 3590
3140 IF B>=N THEN a$="X":GOTO 3160
3150 RETURN
3160 IF UPPER$(a$)<>"X"THEN RETURN
3170 RESTORE:DI:MODE 1:INK 0,0:FOR i=1 TO N:o(i,0)=0:o(i,0)=o(i,1)*h(1)+o(i,2)*h(2)+o(i,3)*h(3)+o(i,4)*h(4)+o(i,5)*h(5)+o(i,6)*h(6)+o(i,7)*h(7)+o(i,8)*h(8)+o(i,9)*h(9)
3210 o(i,0)=o(i,0)+o(i,10)*h(10)++o(i,11)*h(11)+o(i,12)*h(12)+o(i,13)*h(13)+o(i,14)*h(14)+o(i,15)*h(15)+o(i,16)*h(16)+o(i,17):NEXT:FOR i=1 TO N-1:FOR j=i+1 TO N
3240 IF o(i,0)<o(j,0)THEN xx=o(i,0):o(i,0)=o(j,0):o(j,0)=xx:xx$=N$(i):N$(i)=N$(j):N$(j)=xx$
3250 NEXT j,i:GOSUB 3360:PRINT#7:PEN#7,3:PRINT#7,USING"  \\     \\  � ########";N$(1);INT(o(1,0)):PRINT#7:IF N=1 THEN 3300
3280 FOR i=2 TO N:PRINT#7,USING"  \\     \\   � #######";N$(i);INT(o(i,0)):NEXT
3300 FOR i=1 TO N:hs$(10+i)=N$(i):hs(10+i)=INT(o(i,0)):NEXT:FOR i=1 TO(N+9):FOR j=i+1 TO(N+10)
3320 IF hs(i)<hs(j)THEN xx=hs(i):hs(i)=hs(j):hs(j)=xx:xx$=hs$(i):hs$(i)=hs$(j):hs$(j)=xx$
3330 NEXT:NEXT:OPENOUT"HISCORES.shp":FOR i=1 TO 10:PRINT#9,hs$(i):PRINT#9,hs(i):NEXT:CLOSEOUT:F=1:GOTO 410
3360 MODE 1:BORDER 0:WINDOW#7,10,31,9,17:PEN#7,1:INK 1,1:INK 2,24:INK 3,1,26:WINDOW#7,10,31,9,17:CLS#7:DI:RETURN:WINDOW#0,1,40,1,25:LOCATE#0,9,25:PRINT#0,"[E] ND  OR [P] LAY AGAIN";
3390 READ S:IF S=-99 THEN RESTORE ELSE SOUND 1,S,20,15,,1:SOUND 2,S+2,20,15,,1
3400 a$=INKEY$:IF a$=""THEN 3390
3410 a$=UPPER$(a$):IF a$="P"THEN RUN"SHARE.BAS"
3430 IF a$="E"THEN CLS:NEW
3440 GOTO 3400
3450 DI:BORDER 0:MODE 1:INK 0,0:INK 1,6:LOCATE 10,10:PRINT N$(p);" YOUR BANKRUPT":FOR R=1 TO 20:FOR i=1 TO 20:INK 1,(INT(RND*26)+1):NEXT:NEXT:B=0:B(p)=1:FOR R=1 TO N:B=B+B(R):NEXT:IF B=N THEN 3160
3480 p=p+1:IF p>N THEN p=1
3490 GOTO 740
3500 DI:C0=1:BORDER 0:MODE 0:INK 0,0:INK 1,C0:INK 2,6:INK 3,0:FOR R=1 TO 5:a$=INKEY$:IF a$<>""THEN a$=""
3520 NEXT
3530 LOCATE 7,12:PEN 1:PRINT"PAUSE ON":LOCATE 1,25:PEN 2:PRINT"ANY KEY  TO CONTINUE";:a$=INKEY$:I0$<>""THEN 3580 ELSE FOR R=1 TO 200:NEXT
3550 C0=INT(RND*26)+1:INK 1,C0:GOTO 3530
3580 MODE 1:GOTO 740
3590 DI:FOR R=100 TO 300:I(R)=I(R+299):NEXT:Q=300:RETURN
3610 MODE 1:GOTO 740
3620 RUN