1 '------------------------------------
2 ':                                  :
3 ':            BARMELO 3D            :
4 ':                                  :
5 ':     programme pour tous CPC      :
6 ':                                  :
7 ':  copyright Infom{dia-G. Goument  :
8 ':                                  :
9 '------------------------------------
10 MODE 1:BORDER 1:FOR i=0 TO 3:INK i,1:NEXT:LOAD"scr.bin":INK 1,24:INK 2,20:INK 3,6:GOSUB 11:MEMORY 34999:LOAD"fichier1.bin":RUN"progjeu.bas"
11 DIM n1(73),n2(73),d(12):ENT -7,1,1,3,2,-1,3,1,1,3       
12 RESTORE 21:FOR k=1 TO 12:READ d(k):NEXT
13 RESTORE 22:FOR j=1 TO 73:READ n1(j),n2(j):NEXT:j=1:k=1:t=4
14 SOUND 49,n1(j)/4,d(k)*t,10,,7
15 SOUND 28,n2(j),d(k)*t,10,,7  
16 SOUND 42,n2(j)/2,d(k)*t,10,,7
17 j=j+1:IF j>73 THEN SOUND 49,638,150,10,,7:SOUND 28,80,150,10,,7:SOUND 42,40,150,10,,7:FOR d=1 TO 2000:NEXT:RETURN
18 k=k+1:IF k>12 THEN k=1
19 GOTO 14
20 DATA 1,1,1,10
21 DATA 12,10,8,12,10,12,8,6,4,8,6,4 
22 DATA 851,106,638,80,676,84,638,80,851,106,568,71,851,106,536,67,638,80,478,60,638,80,426,53,638,80,402,50,638,80,676,84,638,80,568,71,676,84,638,80,568,71,676,84,851,106,426,53,478,60
23 DATA 506,63,478,60,426,53,506,63,638,80,568,71,506,63,638,80,716,89,804,100,851,106,804,100,478,60,536,67,568,71,536,67,478,60
24 DATA 568,71,716,89,638,80,568,71,716,89,804,100,851,106,956,119,851,106,536,67,568,71,638,80,568,71,536,67,638,80,804,100,716,89,638,80,804,100,851,106,956,119,1073,134,956,119,804,100,851,106,638,80,676,84,638,80,568,71,676,84,676,84,638,80,676,84
25 DATA 638,80