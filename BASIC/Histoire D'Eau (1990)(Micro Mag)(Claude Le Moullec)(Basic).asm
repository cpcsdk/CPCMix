10 REM :::::::::::::::::::::::::::::
20 REM :                           :
30 REM : PRESENTATION/EXPLICATIONS :
40 REM :       (facultative)       :
50 REM :                           :
60 REM :::::::::::::::::::::::::::::  
70 ENV 1,=11,1900:ENV 4,10,-10,10 
80 EVERY 25,2 GOSUB 350  
90 MODE 1:INK 0,0:BORDER 0:INK 1,2:INK 2,11:INK 3,23  
100 OUT &BC00,6:OUT &BD00,24  
110 A$="HISTOIRE":Y=300:X=70:GOSUB 130 
120 A$="D'EAU":Y=220:X=300:GOSUB 130:GOTO 160  
130 LOCATE 1,25:PRINT A$
140 FOR A=14 TO 0 STEP -2:FOR B=0 TO LEN(A$)*16-2 STEP 2:IF TEST(B,A) THEN FOR C=0 TO 2:PLOT (C-D)*2+(A+B)*3+X,Y+A*4,2:DRAWR 0,20:DRAWR 6,6,3:NEXT:FOR C=-1 TO 1 STEP 2:PLOTR -2,-2,1:DRAWR 0,C*20:NEXT
150 NEXT B,A:LOCATE 1,25:PRINT SPACE$(20):RETURN   
160 OUT &BC00,6:OUT &BD00,25 
170 SYMBOL AFTER 96:SYMBOL 97,0,28,46,95,95,95,62,28
180 SYMBOL 98,0,0,60,94,191,191,94,60
190 SYMBOL 99,0,0,0,0,0,3,1,0
200 SYMBOL 100,0,0,0,0,255,127,143,126 
210 SYMBOL 101,0,0,0,0,128,192,128,0
220 SYMBOL 102,0,0,0,6,5,11,14,1
230 SYMBOL 103,0,0,0,0,1,206,254,255
240 SYMBOL 104,0,0,0,128,64,192,128,0  
250 SYMBOL 105,64,16,0,132,0,36,7,1
260 SYMBOL 106,0,0,0,0,0,0,128,255
270 SYMBOL 107,0,2,36,1,0,50,224,128
280 SYMBOL 108,0,0,0,0,0,0,0,83
290 SYMBOL 109,0,0,0,0,0,0,0,194
300 A$(0)="cde":A$(1)="fgh":A$(2)="ijk":A$(3)="ljm":A$(4)="   ":LOCATE 1,14:PAPER 3:PEN 2:PRINT STRING$(80,207);:FOR A=0 TO 2:PLOT 0,158+A*17-10*(A=1),2-(A=1):DRAWR 640,0:NEXT   
310 WINDOW 19,20,13,17:PRINT STRING$(8,207);:WINDOW SWAP 0,1:PLOT 286,158,2:DRAWR 0,-16:DRAWR 32,0:DRAWR 0,64:DRAWR -32,0:DRAWR 0,-16:PLOT 288,198,2:DRAWR 28,0,3:FOR X=-100 TO 100 STEP 2:Y=SQR(10000-X*X)/8:PLOT 320+X,20-Y:DRAWR 0,2*Y,3:NEXT:PLOT -10,-10,1
320 FOR Y=148 TO 34 STEP -2:TAG:MOVE 320,Y:PRINT "a";:NEXT:TAGOFF:PAPER 3:LOCATE 21,24:PRINT "b":GOSUB 340:FOR A=0 TO 4:LOCATE 20,24:PRINT A$(A);:GOSUB 340:NEXT:PAPER 0  
330 a$=INKEY$:IF a$="" THEN 320 ELSE 410
340 FOR B=1 TO 5:CALL &BD19:NEXT:RETURN     
350 DI:IF (SQ(1) AND 7)=0 THEN EI:RETURN ELSE READ e,f:IF e=-1 THEN RESTORE 380:GOTO 370  
360 SOUND 1,0.5*e,f,15,2,7:SOUND 2,e,f,15,1:SOUND 4,2*e,f,15,1,2:GOTO 350 
370 ENV 1,=11,9000:ENV 4,=11,5000:GOTO 350   
380 DATA 253,50,253,50,239,50,213,50,213,50,239,50,253,50,284,50,319,50,319,50,284,50,253,50,253,85,284,15,284,100,253,50,253,50,239,50,213,50,213,50,239,50,253,50,284,50   
390 DATA 319,50,319,50,284,50,253,50,284,85,319,15,319,100,284,50,284,50,253,50,319,50,284,50,253,25,239,25,253,50,319,50,284,50,253,25,239,25,253,50,284,50,319,50,284,50,426,75   
400 DATA 253,75,253,50,239,50,213,50,213,50,239,50,253,50,284,50,319,50,319,50,284,50,253,50,284,85,319,15,319,100,0,200,-1,1   
410 MODE 1:INK 0,0:INK 1,24:INK 2,15:INK 3,6:BORDER 0:SYMBOL AFTER 32:MATR=PEEK(&B296)+256*PEEK(&B297)
420 LOCATE 13,1:a$="HISTOIRE D'EAU":GOSUB 510
430 LOCATE 13,2:a$="==============":GOSUB 510
440 LOCATE 1,4:A$="    L'eau part de la source  et  remplieles canalisations.Dans la mesure ou vousavez pos{ les bons morceaux.":GOSUB 510
450 LOCATE 1,8:A$="    Vous l'avez compris,votre  tache estsimple.Vous devez cr{er un circuit  pouracheminer l'eau d'un point @ un autre.":GOSUB 510  
460 LOCATE 1,12:A$="    Enfin pas si simple que  cela  quandvous  saurez que dans certains  tableauxle but sera impos{. Dans  d'autres  vousdevrez utilisez les {lements choisis parl'ordinateur.":GOSUB 510       
470 LOCATE 1,18:A$="    Bref,je vous pr{dis quelques  crisesde nerfs. Dans la mesure  ou  cela  peutvous consoler sachez que ce  jeu se joueindiff{remment au JOYSTICK ou CLAVIER.":GOSUB 510
480 LOCATE 32,25:A$="<ENTER>":GOSUB 510    
490 LOCATE 1,1:PRINT CHR$(22)+CHR$(0):WHILE INKEY$="":WEND  
500 CALL &BCA7:RUN "!eau"
510 IF PEEK(6)<>128 THEN 550
520 PRINT CHR$(22);CHR$(1);:FOR A=1 TO LEN(A$):FOR B=0 TO 7:ADR=PEEK(MATR+(ASC(MID$(A$,A,1))-32)*8+B):A(B)=ADR:NEXT 
530 SYMBOL 253,A(0),A(1),A(2),0,0,0,0,0:SYMBOL 254,0,0,0,A(3),A(4),0,0,0:SYMBOL 255,0,0,0,0,0,A(5),A(6),A(7)
540 FOR Z=1 TO 3:PEN Z:PRINT CHR$(Z+252);CHR$(8);:NEXT:PRINT" ";:NEXT:RETURN
550 PEN 1:PRINT a$:RETURN