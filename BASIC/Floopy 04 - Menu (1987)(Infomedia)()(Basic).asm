10 GOSUB 2500:MODE 1:GOSUB 1810'init vars et inks off
20 BORDER ENK(0):PLOT 400,640,1:|RECT,0, 0,639,399,3
30 GOSUB 1700:GOSUB 2150:GOSUB 1030:'musique et affichage menu
35 GOSUB 1800 'couleurs on
40 WHILE opt=0:IF NOT INKEY(9) THEN GOSUB 3300
60 a$=INKEY$:IF a$="&"OR a$="-"OR a$="+" OR a$="9"THEN 60 ELSE IF VAL(a$)>0 OR a$="0"THEN opt=VAL(a$)+1
90 WEND
95 RESTORE 3100:FOR i=1 TO opt:READ a$:NEXT:GOSUB 1040:GOSUB 120:PLOT 400,640,3:|RECT,9,360,620,30,2
96 GOSUB 125:PAPER 0:PEN 1:LOCATE(41-LEN(a$))/2,2:PRINT a$:FOR i=1 TO 24:CALL 40745:FOR j=1 TO 60:NEXT:NEXT
97 WINDOW 2,39,5,23:B1=0:B2=0:B3=0
110 ON opt GOTO 150,190,230,300,350,540,580,620,680
120 WINDOW SWAP 0,1:PAPER 0:FOR I=25 TO 4 STEP-1:WINDOW 1,40,I-1,I:CALL &BD19:PRINT "\n\n\n";:NEXT:WINDOW SWAP 0,1:RETURN
124 PLOT 400,640,3:|RECT,200,122,252,26,3:RETURN
125 PLOT 640,400,1:|RECT,0,16,639,334,3:RETURN
126 |WIND.ON,H,V,OFH,OFV,240:RETURN
127 PLOT 400,640,0:|RECT,(H-1)*16+4,V*16+2,OFH*16-8,OFV*16-6,2:RETURN
128 |WIND.OFF:RETURN
129 WINDOW H,H+OFH,V,V+OFV:RETURN
150 merg$="concours":GOSUB 2170:GOTO 740
190 MERG$="EDITO":GOSUB 2230:GOTO 740
230 MERG$="COUR":GOSUB 2200:GOTO 740
300 MERG$="COIN":GOSUB 2160:GOTO 740
350 MERG$="LOGI":GOSUB 2220:GOTO 740
540 MERG$="MARCHE":GOSUB 2230:GOTO 740
580 GOSUB 2190:MERG$="BANC":GOTO 740
620 MERG$="PROG":GOSUB 2240:flagprog1=-1:GOTO 740
670 GOSUB 980:GOSUB 1500:IF i=1 THEN merg$="CUBEMEL":OPT=11 ELSE IF i=2 THEN merg$="LAB":OPT=12 ELSE IF I=3 THEN merg$="DEVIL":OPT=14
675 CLS:GOSUB 1400:RUN MERG$
680 MERG$="boite":GOSUB 2210:flagprog=-1:GOTO 740
730 GOSUB 980:MERG$="LOTO":OPT=13:CLS:GOSUB 1400:RUN MERG$ 
740 ' * lecture et affichage
750 ON BREAK GOSUB 1010
765 IF PEEK(&AC00)=OPT THEN 780 ELSE GOSUB 1400:POKE &AC00,OPT:LOAD merg$,&4200:CLS
780 WHILE INKEY$<>"":WEND:IF DESSIN=1 THEN DESSIN=0:GOSUB 1200:GOSUB 1300
790 rub=PEEK(&4200):bd=&4201:GOSUB 960:GOSUB 900
810 GOSUB 1030:RB=0
820 FOR r=1 TO rub:IF R>RB THEN RB=R
830 BD(R)=BD:bd1=bd:LOCATE#4,36+(LEN(STR$(R))=3)+(LEN(STR$(RUB))=3),2:PRINT#4,STR$(R)"/"RIGHT$(STR$(RUB),1+(-1*(LEN(STR$(RUB))=3))):FOR l=1 TO 19:LOCATE 1,l:CALL 37376,@bd:NEXT:LOCATE 1,1:tempo=(bd-bd1)*3
850 B=0:GOSUB 1002:IF B=1 AND R=1 THEN 850
852 WINDOW SWAP 0,1:PAPER 0:FOR I=23 TO 5 STEP-1:WINDOW 2,39,I,I:PRINT"\n\n\n";:NEXT:WINDOW SWAP 0,1
853 IF B=1 AND R>1 THEN R=R-1:BD=BD(R):GOTO 830
854 IF B=2 AND R<RB THEN R=R+1:BD=BD(R):GOTO 830
855 IF dessin=r THEN GOSUB 1200:GOSUB 1300:dessin=0
856 IF dessin=0 AND nbd=2 THEN addes=addes1:dessin=dessin1:nbd=1:mo=0
857 IF dessin=0 AND nbd=1 THEN addes=addes2:dessin=dessin2:nbd=0:mo=1
860 NEXT:IF dessin>0 THEN GOSUB 1200:WHILE INKEY$<>"":WEND:FOR i=1 TO 2000:a$=INKEY$:IF a$=""THEN NEXT
870 IF NOT flagprog AND NOT flagprog1 THEN 1010 ELSE IF NOT flagprog THEN 670 ELSE 730
880 FOR i=1 TO tempo*6:IF INKEY(47)THEN NEXT:RETURN ELSE RETURN
900 LOCATE#4,3,25:PRINT#4,t$;:RETURN
960 T$="(ESC)MENU - (COPY)ENCRE - (/\n)SELEC":RETURN
980 BORDER 3:CLS:PRINT"\n\n\n\n   Ce programme utilisant des zones      memoires communes  aux  routines      de FLOOPY, il vous  sera  n[c[s-      saire de relancer le CANARD."
990 PRINT"\n\n\n   -Confirmez avec la touche ENTER       -Quittez   avec la touche ESC"
1000 WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND:GOSUB 1040:CALL &BB4E:IF PEEK(6)=128 THEN POKE &AE7B,&7B:POKE &AE7C,&A6:POKE &AE7D,&7C:POKE &AE7E,&A6:POKE &B08F,&7B:POKE &B090,&A6:RETURN ELSE MEMORY &A67B:RETURN
1002 IF NOT INKEY(0)THEN B=1:RETURN ELSE IF NOT INKEY(2)THEN B=2:RETURN
1003 IF NOT INKEY(9)THEN GOSUB 3300
1004 GOTO 1002
1010 GOSUB 1040:RUN
1030 AD1=ADmus+6:AD2=ADmus+PEEK(ADmus+2)+PEEK(ADmus+3)*256:AD3=ADmus+PEEK(ADmus+4)+PEEK(ADmus+5)*256:I1=AD1:J1=AD2:K1=AD3:GOTO 1050
1040 X=REMAIN(0):CALL &BCA7:RETURN
1050 EVERY 8,0 GOSUB 2040:RETURN
1100 WINDOW#1,i,i+1,1,25:i=i+1:WINDOW#2, 1,40,j,j+1:j=j+1:WINDOW#3, k-1,k,1,25:k=k-1:WINDOW#4, 1,40,l-1,l:l=l-1:CALL &BD19:CLS#1:CLS#2:CLS#3:CLS#4:IF l>12 THEN 1100 ELSE RETURN
1200 CALL 40512,addes:IF opt=2 THEN BORDER 1:INK 6,6,0:INK 7,0,6
1210 RETURN
1300 FOR k=1 TO 5000:IF INKEY(47)THEN NEXT
1310 RESTORE 3100:FOR i=1 TO opt:READ a$:NEXT:GOSUB 1810:MODE 1:PLOT 400,640,3:|RECT,9,360,620,30,2
1312 GOSUB 125:|RECT,0,352,638,46,3:PAPER 0:PEN 1:LOCATE(41-LEN(a$))/2,2:PRINT a$:WINDOW 2,39,5,23:GOSUB 1800
1320 RETURN
1400 IF PEEK(6)<>128 OR PEEK(&BC78)<>146 THEN RETURN ELSE ON opt GOSUB 1410,1411,1412,1413,1414,1415,1416,1417,1418,1418,1419,1420,1421,1422
1405 PRINT "POSITIONNEZ LA CASSETTE SUR "CPT"":PRINT"AU COMPTEUR, PUIS TAPEZ UNE TOUCHE.":PRINT "LES MESSAGES CASS SERONT AFFICHES":PRINT"POUR PLUS DE CLARTE":PRINT"FICHIER RECHERCHE : ";MERG$;"";
1406 CALL &BB18:RETURN
1410 cpt=20:RETURN 
1411 cpt=25:RETURN
1412 cpt=35:RETURN 
1413 cpt=40:RETURN 
1414 cpt=45:RETURN
1415 cpt=65:RETURN
1416 cpt=75:RETURN
1417 cpt=95:RETURN
1418 cpt=100:RETURN 
1419 cpt=115:RETURN
1420 cpt=170:RETURN
1421 cpt=190:RETURN
1422 cpt=250:RETURN
1500 CLS:WHILE INKEY$<>"":WEND:PRINT"\n\n\n\n   Veuillez selectionner une option :":PRINT"   1.CUBEMELEON":PRINT"   2.LABYRINTHE":PRINT"   3.DEVIL"
1520 a$=INKEY$:IF a$=""THEN 1520 ELSE i=INSTR("123",a$):IF i>0 THEN RETURN ELSE 1520
1700 WINDOW SWAP 0,2:H= 8:OFH=33-H:V=8:OFV=18-V:GOSUB 129:PAPER 3:PEN 0:CLS:PRINT:RESTORE 3100
1710 FOR I=0 TO 8:READ A$:PRINT I;".";A$:NEXT
1720 WINDOW SWAP 0,2:OFH=OFH+1:v=v-1:OFV=OFV+1:GOSUB 127:RETURN
1800 FOR i=0 TO 3:INK i,PEEK(37410+i):NEXT:BORDER enk(0):RETURN
1810 FOR i=0 TO 3:INK i,0:NEXT:RETURN
2000 '********* musique
2040 ON SQ(1) GOSUB 2080
2050 ON SQ(2) GOSUB 2100 
2060 ON SQ(4) GOSUB 2120
2070 IF PEEK(I1)>0 OR PEEK(J1)>0 OR PEEK(K1)>0 THEN RETURN
2075 IF SQ(1)<>4 OR SQ(2)<>4 OR SQ(4)<>4 THEN RETURN ELSE I1=AD1:J1=AD2:K1=AD3:GOTO 2040
2080  IF PEEK(I1)>0 THEN IF PEEK(I1)<255 THEN SOUND 1,PER(PEEK(I1)),PEEK(I1+1),0,ev1:I1=I1+2 ELSE SOUND 1,100,PEEK(I1+1),0:I1=I1+2
2090 RETURN
2100  IF PEEK(J1)>0 THEN IF PEEK(J1)<255 THEN SOUND 2,PER(PEEK(J1)),PEEK(J1+1),0,ev2:J1=J1+2 ELSE SOUND 2,100,PEEK(J1+1),0:J1=J1+2
2110 RETURN
2120 IF PEEK(K1)>0 THEN IF PEEK(K1)<255 THEN SOUND 4,PER(PEEK(K1)),PEEK(K1+1),0,ev3:K1=K1+2 ELSE SOUND 4,100,PEEK(K1+1),0:K1=K1+2
2130 RETURN
2149 '********** enveloppes
2150 ADMUS=38700:ev1=1:ev2=1:ev3=7:RETURN
2160 admus=38020:EV2=1:EV1=1:EV3=14:RETURN
2170 ADMUS=37645:ev1=1:ev2=1:ev3=1:RETURN 
2180 ADMUS=36240:EV1=1:EV2=7:EV3=2:RETURN
2190 ADMUS=39492:ev1=12:ev2=11:ev3=13:RETURN
2200 ADMUS=38700:ev1=2:ev2=1:ev3=5:RETURN
2210 GOTO 2160
2220 ADMUS=37645:ev1=13:ev2=3:ev3=3:RETURN
2230 ADMUS=36240:EV1=1:EV2=7:EV3=2:RETURN
2240 ADMUS=39492:ev1=1:ev2=1:ev3=7:RETURN
2500 DEFINT b,p,D,e:DIM per(96),enk(3),BD(20):FOR I=1 TO 96:READ PER(I):NEXT
2510 FOR I=0 TO 9:READ X:duree(I)=X*95:NEXT:IF PEEK(&AC00)=0 THEN FOR i=0 TO 3:READ x:POKE 37410+i,x:NEXT
2515 RETURN
2520 DATA 3822,3608,3405,3214,3034,2863,2703,2551,2408,2273,2145,2025,1911,1804,1703,1607,1517,1432,1351,1276,1204,1136,1073,1012
2530 DATA 956,902,851,804,758,716,676,638,602,568,536,506,478,451,426,402,379,358,338,319,301,284,268,253,239,225,213,201,190,179,169,159,150,142,134,127,119,113,106
2540 DATA 100,95,89,84,80,75,71,67,63,60,56,53,50,47,45,42,40,38,36,34,32,30,28,27,25,24,22,21,20,19,18,17,16 
2550 DATA .125,.25,.5,.75,1,1.25,1.5,2,3,4 ,0,26,15,17
3000 DATA "  REGLAGE DES ENCRES ","  行行行行行行行行行 ","               ","  SELECTION ..  \t","              \n","\n"," EXIT ....... COPY"
3100 DATA LE CONCOURS,L'EDITORIAL,VOTRE COURRIER,LES COINS-COINS,LOGICIELS-LUDICIELS,LE MARCHE AUX PUCES,BANC D'ESSAI,VOS PROGRAMMES,LA BOITE A OUTILS
3300 'reglage des encres
3305 PAPER 0:PEN 1:H=9:V=7:OFH=24:OFV=12:WINDOW SWAP 0,5:FOR i=0 TO 3:enk(i)=PEEK(37410+i):NEXT
3310 GOSUB 126:GOSUB 127:RESTORE 3000:FOR I=1 TO 7:READ A$:LOCATE (41-LEN(A$))/2,I+7:PRINT A$:NEXT:GOSUB 124
3320 vC=0:hC=enk(vC)
3330 WHILE INKEY$<>"":WEND
3340 LOCATE 14,17:PRINT" Encre ";vC;"- "CHR$(15)CHR$(VC+1*-(vc=0));:IF enk(vc)>9 THEN LOCATE 25,17 ELSE LOCATE 26,17
3345 PRINT enk(vC);:PEN 1
3350 a$="":WHILE a$="":a$=INKEY$:WEND:as=ASC(a$):IF as=224 THEN GOSUB 128:FOR I=1 TO 100:NEXT:WINDOW SWAP 0,5:FOR i=0 TO 3:POKE 37410+i,enk(I):NEXT:RETURN
3360 IF NOT INKEY(0) AND vC>0 THEN vC=vC-1:hC=enk(vC)
3370 IF NOT INKEY(2) AND vC<3  THEN vC=vC+1:hC=enk(vC)
3380 IF NOT INKEY(8) AND hC>0 THEN hC=hC-1 
3390 IF NOT INKEY(1) AND hC<26 THEN hC=hC+1
3400 enk(vC)=hC:INK vC,enk(vc):BORDER enk(0):GOTO 3340