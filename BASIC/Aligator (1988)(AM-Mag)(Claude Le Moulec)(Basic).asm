10 REM :::::::::::::::::::::
20 REM :                   :
30 REM :   PRESENTATION    :
40 REM :                   :
50 REM :::::::::::::::::::::
60 ENT 1,3,-1,3,3,1,1:ENV 1,2,1,1,15,-1,1:ENV 2,3,0,2,8,-1,2:ENV 3,2,-8,6 
70 DEFINT a-z:EVERY 6,2 GOSUB 860 
80 MODE 1:INK 0,0:BORDER 0:INK 1,0:INK 2,2:INK 3,19 
90 a$="L.M.C":x=204:y=280:GOSUB 120 
100 LOCATE 1,1:PRINT"          ":INK 1,6:GOSUB 200
110 LOCATE 17,17:PEN 3:PRINT"PRESENTS":GOTO 320
120 a=LEN(a$):a8=a*8   
130 LOCATE 1,1:PEN 1:PRINT a$;:PEN 1
140 tx=x:y2=398   
150 FOR f=1 TO 8:x2=0:FOR g=1 TO a8  
160 IF TEST( x2,y2)=1 THEN PLOT x+4,y,2:PLOT x+4,y-2:PLOT x,y-2:PLOT x+2,y-2:PLOT x+4,y-4:PLOT x+2,y-4:PLOT x,y-4:PLOT x-2,y+2,3:PLOT x,y+2:PLOT x+2,y+2:PLOT x+2,y:PLOT x-2,y:PLOT x,y:'PLOT x,y,color:PLOT x+2,y: 
170  x=x+6:x2=x2+2 
180 NEXT g:y=y-6:tx=tx:y2=y2-2:x=tx:NEXT f  
190 RETURN   
200 SYMBOL AFTER 32:DIM A(15):LOCATE 13,14:PEN 1:a$="SOFTWARE"  
210 FOR H=1 TO LEN(a$):FOR j=0 TO 7
220 x=8*(ASC(MID$(a$,h))-32) 
230 x$=BIN$(PEEK(HIMEM+1+x+j),8) 
240 im$="":FOR k=1 TO 8:f$=MID$(x$,k,1)  
250 im$=im$+f$+f$:NEXT K
260 a(j*2)=VAL("&X"+LEFT$(im$,8)) 
270 a(j*2+1)=VAL("&X"+RIGHT$(im$,8)):NEXT J
280 SYMBOL 250,a(0),a(2),a(4),a(6),a(8),a(10),a(12),a(14) 
290 SYMBOL 251,a(1),a(3),a(5),a(7),a(9),a(11),a(13),a(15)
300 PRINT CHR$(250);:PRINT CHR$(251);:NEXT H
310 RETURN
320 SYMBOL AFTER 200  
330 SYMBOL 201,0,0,0,0,1,1,0,1 
340 SYMBOL 202,14,31,123,245,226,255,127,103 
350 SYMBOL 203,128,224,192,224,252,255,255,224 
360 SYMBOL 204,0,0,0,58,239,255,254,188   
370 SYMBOL 205,3,3,1,0,1,3,15,62   
380 SYMBOL 206,108,113,191,220,179,119,127,248
390 SYMBOL 207,15,252,128,0,192,224,253,195 
400 SYMBOL 208,240,0,0,0,0,0,0,128 
410 SYMBOL 209,124,249,0,0,0,0,0,0
420 SYMBOL 210,231,223,0,0,0,0,0,0 
430 SYMBOL 211,63,255,0,0,0,0,0,0  
440 SYMBOL 212,192,192,0,0,0,0,0,0    
450 ali1$=CHR$(201)+CHR$(202)+CHR$(203)+CHR$(204)  
460 ali2$=CHR$(205)+CHR$(206)+CHR$(207)+CHR$(208) 
470 ali3$=CHR$(209)+CHR$(210)+CHR$(211)+CHR$(212) 
480 FOR H=0 TO 640 STEP 160:X=H
490 Y=302:GOSUB 540
500 Y=14:GOSUB 540:NEXT  
510 FOR H=0 TO 640 STEP 480:X=H
520 Y=110:GOSUB 540:Y=206:GOSUB 540
530 NEXT:GOTO 600
540 PLOT X,Y,2:DRAW 160+X,Y:DRAW 160+X,96+Y:DRAW X,96+Y:DRAW X,Y
550 PLOT X+8,Y+8:DRAW X+152,Y+8:DRAW X+152,Y+88:DRAW X+8,Y+88:DRAW X+8,Y+8 
560 PLOT X,Y:DRAW X+8,Y+8:PLOT 160+X,Y:DRAW X+152,Y+8:PLOT 160+X,96+Y:DRAW 152+X,88+Y:PLOT X,96+Y:DRAW 8+X,88+Y  
570 PLOT -10,-10,3:TAG:MOVE 32+X,68+Y:PRINT ali1$;:MOVE 32+X,52+Y:PRINT ali2$; 
580 MOVE 32+X,36+Y:PRINT ali3$;:PLOT -10,-10,1:MOVE 16+X,28+Y:PRINT "ALIGATOR";:TAGOFF   
590 RETURN
600 PLOT 638,18,2:DRAW 638,398:PLOT -10,-10,0
610 WHILE INKEY$="":WEND
620 MODE 1:LOCATE 17,1:PEN 1:PRINT "ALIGATOR":LOCATE 17,2:PEN 3:PRINT "========"   
630 PEN 2:LOCATE 1,4:PRINT"   Ramasser des  clefs  pour passer  au tableau suivant : Classique !!!"
640 PEN 2:LOCATE 1,7:PRINT"   Un d{cor genre {chelles/passerelles : Archi Classique !!!"   
650 LOCATE 1,10:PRINT"   Ne vous y fiez pas...car ce jeu est  d{ment." 
660 LOCATE 1,12:PRINT"   Que puis-je vous en dire ?"    
670 LOCATE 1,14:PRINT"   Rien ! Rien de rien.Je ne dirai rien."   
680 LOCATE 1,16:PRINT"   Ah si! Une chose... "     
690 LOCATE 1,18:PRINT"   J'ai {prouv{ un plaisir sadique ,en  pensant @ vos nuits blanches,lors de la cr{ation des 12 tableaux."  
700 LOCATE 1,22:PRINT"   Et pourtant,je le jure.Ils ont tous  leur solution." 
710 LOCATE 32,25:PEN 1:PRINT "<ENTER>" 
720 WHILE INKEY$="":WEND  
730 CLS:LOCATE 15,1:PRINT"DEPLACEMENTS":PEN 2:LOCATE 15,2:PRINT"************"
740 LOCATE 1,4:PRINT"Joystick":PEN 1:LOCATE 1,5:PRINT"--------"  
750 LOCATE 4,7:PRINT CHR$(240):LOCATE 10,7:PRINT"=  creve carton avec tete"
760 LOCATE 4,9:PRINT CHR$(241):LOCATE 10,9:PRINT"=  ecrase carton avec pieds"
770 LOCATE 2,11:PRINT"<FIRE>  =  creer un carton pour monter"  
780 PEN 2:LOCATE 1,14:PRINT"Clavier":PEN 1:LOCATE 1,15:PRINT"-------"
790 LOCATE 4,16:PRINT CHR$(240):LOCATE 10,16:PRINT"=  creve carton avec tete"
800 LOCATE 4,18:PRINT CHR$(241):LOCATE 10,18:PRINT"=  ecrase carton avec pieds"
810 LOCATE 2,20:PRINT"<COPY>  =  creer un carton pour monter"  
820 PEN 3:LOCATE 6,22:PRINT STRING$(30,"=")  
830 PEN 2:LOCATE 30,25:PRINT"<ENTER>"   
840 WHILE INKEY$="":WEND 
850 RUN"!ali1"
860 READ a:IF a=9 THEN RESTORE:GOTO 860   
870 IF a>2 THEN b=a:READ a
880 IF a=0 THEN SOUND 28,0,12,0:SOUND 42,b,12,13,2,1:SOUND 49,b,12,7,3:RETURN
890 IF a=1 THEN SOUND 28,0,12,13,1,,31 ELSE SOUND 28,0,12,13,1,,1 
900 SOUND 42,b,12,13,2,1:SOUND 49,b,12,7,3:RETURN  
910 DATA 451,1,0,2,0,1,1,2,1,301,1,0,2,2,1,0,2,0,338,1,0,1,0,1,1,1,1,506,2,0,2,2,2,0,1,0,451,2,0,2,0,2,0,2,0,451,2,0,2,2,2,0,1
920 DATA 0,338,2,0,2,2,2,0,2,0,338,2,0,2,2,2,0,2,0,506,1,0,2,0,1,0,2,0,506,1,0,2,0,1,0,2,0,451,1,1,1,1,1,1,1,1,451,1,1,1,1,1,1,1,1,9,9