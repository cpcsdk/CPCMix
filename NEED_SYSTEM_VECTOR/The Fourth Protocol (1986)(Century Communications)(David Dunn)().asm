; Music of The Fourth Protocol (1986)(Century Communications)(David Dunn)()
; Ripped by Megachur the 24/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEFOURP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l9000
	db #08,#01,#02,#01,#0a,#01,#0a,#ff
	db #14,#08,#02,#02,#06,#02,#01,#0a
	db #ff,#02,#08,#03,#02,#09,#01,#05
	db #02,#ff,#02,#07,#01,#82,#01,#02
	db #05,#01,#fe,#05,#07,#02,#82,#00
	db #01,#07,#00,#ff,#07,#ff,#01,#02
	db #03,#fb,#00,#01,#02,#fe,#00,#00
	db #00,#00,#20,#01,#05,#98,#04,#02
	db #01,#1c,#01,#02,#00,#ef,#01,#02
	db #00,#b3,#01,#02,#00,#ef,#01,#01
	db #05,#98,#04,#02,#00,#8e,#01,#02
	db #00,#b3,#01,#02,#00,#ef,#01,#02
	db #00,#b3,#01,#01,#05,#98,#04,#02
	db #01,#1c,#01,#02,#00,#ef,#01,#02
	db #00,#b3,#01,#02,#00,#ef,#01,#01
	db #05,#98,#04,#02,#00,#8e,#01,#02
	db #00,#b3,#01,#02,#00,#ef,#01,#02
	db #00,#b3,#01,#01,#05,#98,#04,#02
	db #01,#1c,#01,#04,#00,#47,#06,#02
	db #00,#ef,#01,#02,#00,#b3,#01,#02
	db #00,#ef,#01,#01,#05,#98,#04,#02
	db #00,#8e,#01,#02,#00,#b3,#01,#02
	db #00,#ef,#01,#04,#00,#47,#02,#02
	db #01,#1c,#01,#01,#03,#bc,#04,#02
	db #01,#0c,#01,#04,#00,#47,#02,#02
	db #00,#ef,#01,#02,#00,#be,#01,#04
	db #00,#50,#06,#02,#00,#ef,#01,#01
	db #01,#de,#04,#02,#00,#9f,#01,#02
	db #00,#be,#01,#02,#00,#ef,#01,#02
	db #00,#be,#01,#01,#03,#bc,#04,#02
	db #01,#0c,#01,#04,#00,#47,#02,#02
	db #00,#ef,#01,#02,#00,#be,#01,#04
	db #00,#50,#02,#02,#00,#ef,#01,#01
	db #01,#de,#04,#02,#00,#9f,#01,#04
	db #00,#43,#02,#02,#00,#be,#01,#02
	db #00,#ef,#01,#04,#00,#47,#02,#02
	db #01,#0c,#01,#01,#05,#98,#04,#02
	db #01,#1c,#01,#04,#00,#59,#08,#02
	db #00,#ef,#01,#02,#00,#b3,#01,#02
	db #00,#ef,#01,#01,#05,#98,#04,#02
	db #00,#8e,#01,#02,#00,#b3,#01,#02
	db #00,#ef,#01,#02,#00,#b3,#01,#01
	db #03,#53,#04,#02,#01,#66,#01,#04
	db #00,#47,#06,#02,#01,#1c,#01,#02
	db #00,#d5,#01,#02,#01,#1c,#01,#01
	db #01,#aa,#04,#02,#00,#b3,#01,#02
	db #00,#d5,#01,#02,#01,#1c,#01,#04
	db #00,#47,#02,#02,#01,#66,#01,#01
	db #02,#7e,#04,#02,#01,#0c,#01,#04
	db #00,#43,#02,#02,#00,#d5,#01,#02
	db #00,#be,#01,#04,#00,#50,#02,#02
	db #00,#86,#01,#01,#02,#38,#04,#02
	db #00,#ef,#01,#04,#00,#3c,#02,#02
	db #00,#be,#01,#02,#00,#b3,#01,#04
	db #00,#47,#02,#02,#00,#77,#01,#01
	db #02,#18,#04,#02,#00,#d5,#01,#04
	db #00,#35,#08,#02,#00,#b3,#01,#02
	db #00,#86,#01,#02,#00,#b3,#01,#ff
	db #02,#02,#03,#01,#00,#8e,#02,#02
	db #00,#ef,#01,#02,#01,#66,#01,#01
	db #00,#86,#02,#02,#00,#d5,#01,#02
	db #01,#66,#01,#ff,#01,#02,#03,#01
	db #02,#18,#04,#02,#00,#be,#01,#04
	db #00,#35,#02,#02,#00,#9f,#01,#02
	db #00,#86,#01,#04,#00,#35,#02,#02
	db #00,#9f,#01,#01,#01,#0c,#04,#02
	db #00,#77,#01,#04,#00,#3c,#02,#02
	db #00,#9f,#01,#02,#00,#be,#01,#04
	db #00,#43,#02,#02,#00,#ef,#01,#01
	db #02,#38,#04,#02,#01,#1c,#01,#04
	db #00,#47,#02,#02,#00,#ef,#01,#02
	db #00,#be,#01,#04,#00,#50,#02,#02
	db #00,#8e,#01,#01,#02,#7e,#04,#02
	db #00,#fd,#01,#04,#00,#59,#02,#02
	db #00,#d5,#01,#02,#00,#b3,#01,#04
	db #00,#47,#02,#02,#00,#d5,#01,#01
	db #02,#7e,#04,#02,#01,#0c,#01,#04
	db #00,#6a,#06,#02,#00,#d5,#01,#02
	db #00,#b3,#01,#02,#00,#d5,#01,#01
	db #02,#7e,#02,#02,#00,#86,#01,#02
	db #00,#b3,#01,#01,#04,#fc,#02,#02
	db #00,#d5,#01,#04,#00,#43,#02,#02
	db #01,#0c,#01,#01,#07,#77,#02,#02
	db #01,#1c,#01,#04,#00,#47,#02,#02
	db #00,#ef,#01,#ff,#02,#02,#03,#01
	db #00,#ef,#01,#02,#00,#8e,#01,#04
	db #00,#5f,#01,#01,#00,#be,#01,#02
	db #00,#77,#01,#04,#00,#47,#01,#01
	db #00,#8e,#04,#02,#00,#5f,#04,#04
	db #00,#3c,#04,#07,#03,#82,#00,#01
	db #09,#00,#ff,#09,#07,#04,#82,#00
	db #01,#08,#00,#ff,#08,#fb,#00,#04
	db #03,#08,#04,#02,#03,#02,#01,#02
	db #01,#01,#08,#05,#02,#01,#0c,#01
	db #03,#ff,#19,#08,#06,#02,#01,#0a
	db #01,#09,#ff,#04,#ff,#06,#05,#04
	db #01,#02,#cc,#01,#02,#00,#8e,#06
	db #04,#00,#77,#18,#01,#01,#de,#01
	db #01,#01,#66,#01,#01,#01,#de,#01
	db #01,#01,#1c,#01,#01,#01,#66,#01
	db #01,#01,#de,#01,#02,#00,#8e,#02
	db #01,#02,#cc,#01,#01,#05,#98,#01
	db #02,#00,#8e,#02,#01,#03,#bc,#01
	db #01,#01,#0c,#01,#02,#00,#9f,#06
	db #01,#01,#3f,#01,#01,#00,#be,#01
	db #01,#00,#ef,#01,#01,#01,#0c,#01
	db #01,#01,#de,#01,#01,#02,#cc,#01
	db #02,#00,#8e,#02,#01,#01,#de,#01
	db #01,#01,#0c,#01,#02,#00,#9f,#02
	db #01,#01,#3f,#01,#01,#00,#be,#01
	db #02,#00,#86,#02,#01,#00,#ef,#01
	db #01,#01,#0c,#01,#02,#00,#8e,#02
	db #01,#01,#de,#01,#01,#05,#98,#01
	db #02,#00,#b3,#08,#04,#00,#8e,#08
	db #01,#01,#de,#01,#01,#01,#66,#01
	db #01,#01,#3f,#01,#01,#01,#1c,#01
	db #01,#00,#ef,#01,#01,#01,#3f,#01
	db #01,#01,#66,#01,#01,#03,#53,#01
	db #02,#00,#8e,#06,#04,#00,#d5,#0a
	db #01,#02,#38,#01,#01,#01,#aa,#01
	db #01,#01,#66,#01,#01,#01,#1c,#01
	db #01,#01,#66,#01,#01,#01,#aa,#01
	db #02,#00,#8e,#02,#01,#03,#53,#01
	db #01,#02,#7e,#01,#02,#00,#86,#02
	db #01,#01,#aa,#01,#01,#01,#7b,#01
	db #02,#00,#9f,#02,#04,#00,#be,#04
	db #01,#01,#0c,#01,#01,#02,#38,#01
	db #02,#00,#77,#02,#01,#01,#78,#01
	db #01,#01,#66,#01,#02,#00,#8e,#02
	db #04,#00,#b3,#06,#01,#00,#ef,#01
	db #01,#02,#18,#01,#02,#00,#6a,#08
	db #01,#01,#66,#01,#01,#01,#1c,#01
	db #01,#01,#0c,#01,#01,#00,#ef,#01
	db #04,#00,#8e,#02,#01,#01,#66,#01
	db #01,#00,#d5,#01,#04,#00,#86,#02
	db #01,#01,#66,#01,#01,#02,#18,#01
	db #02,#00,#6a,#02,#04,#00,#9f,#06
	db #01,#01,#78,#01,#01,#01,#3f,#01
	db #02,#00,#6a,#02,#01,#01,#0c,#01
	db #01,#00,#be,#01,#02,#00,#77,#02
	db #01,#00,#ef,#01,#01,#01,#78,#01
	db #02,#00,#86,#02,#04,#00,#6a,#02
	db #01,#02,#18,#01,#01,#02,#38,#01
	db #02,#00,#8e,#02,#04,#00,#77,#02
	db #01,#01,#78,#01,#01,#01,#1c,#01
	db #02,#00,#9f,#02,#04,#00,#86,#02
	db #01,#00,#ef,#01,#01,#02,#7e,#01
	db #02,#00,#b3,#02,#04,#00,#8e,#02
	db #01,#01,#aa,#01,#01,#02,#7e,#01
	db #02,#00,#8e,#02,#04,#00,#b3,#02
	db #01,#00,#fd,#01,#01,#02,#7e,#01
	db #02,#00,#d5,#06,#04,#00,#86,#06
	db #01,#01,#aa,#01,#01,#01,#3f,#01
	db #01,#01,#aa,#01,#01,#01,#0c,#01
	db #01,#01,#66,#01,#01,#01,#aa,#01
	db #02,#00,#86,#02,#04,#00,#d5,#02
	db #01,#02,#7e,#01,#01,#03,#bc,#01
	db #02,#00,#8e,#06,#04,#00,#be,#06
	db #01,#01,#de,#01,#01,#01,#78,#01
	db #01,#01,#1c,#01,#01,#00,#ef,#01
	db #01,#00,#be,#01,#08,#07,#02,#01
	db #0d,#08,#04,#ff,#08,#ff,#01,#02
	db #07,#01,#01,#fa,#02,#02,#00,#d5
	db #01,#04,#00,#8e,#02,#02,#00,#be
	db #02,#01,#02,#38,#04,#04,#00,#8e
	db #04,#02,#00,#ef,#01,#02,#00,#fd
	db #01,#02,#00,#ef,#02,#01,#01,#1c
	db #04,#04,#00,#77,#04,#02,#00,#ef
	db #01,#02,#00,#fd,#01,#02,#00,#ef
	db #02,#01,#02,#38,#04,#04,#00,#be
	db #04,#02,#00,#ef,#01,#02,#00,#fd
	db #01,#02,#00,#ef,#02,#01,#02,#5a
	db #04,#04,#00,#7f,#04,#02,#00,#d5
	db #01,#02,#00,#e1,#01,#02,#00,#d5
	db #02,#01,#01,#2d,#04,#04,#00,#6a
	db #04,#02,#00,#d5,#01,#02,#00,#e1
	db #01,#02,#00,#d5,#02,#01,#02,#5a
	db #04,#04,#00,#be,#04,#02,#00,#d5
	db #01,#02,#00,#e1,#01,#02,#00,#d5
	db #02,#01,#02,#7e,#04,#04,#00,#71
	db #06,#02,#01,#1c,#01,#02,#00,#e1
	db #01,#02,#00,#be,#01,#01,#01,#3f
	db #04,#02,#00,#8e,#01,#02,#01,#1c
	db #01,#02,#00,#d5,#01,#04,#00,#7f
	db #02,#02,#01,#1c,#01,#01,#02,#7e
	db #04,#02,#00,#e1,#01,#04,#00,#8e
	db #02,#02,#01,#1c,#01,#02,#00,#e1
	db #01,#04,#00,#be,#02,#02,#01,#1c
	db #01,#ff,#04,#04,#05,#01,#02,#7e
	db #04,#02,#00,#fd,#01,#04,#00,#b3
	db #02,#02,#01,#3f,#01,#08,#08,#02
	db #03,#02,#01,#03,#01,#01,#ff,#08
	db #08,#08,#02,#00,#fd,#01,#04,#00
	db #d5,#02,#02,#01,#3f,#01,#01,#02
	db #7e,#04,#02,#01,#1c,#01,#04,#00
	db #ef,#02,#02,#01,#3f,#01,#02,#00
	db #fd,#01,#04,#00,#d5,#02,#02,#01
	db #3f,#01,#01,#04,#fc,#04,#02,#00
	db #ef,#01,#04,#00,#be,#02,#02,#01
	db #3f,#01,#02,#00,#d5,#01,#04,#00
	db #b3,#02,#02,#01,#3f,#01,#ff,#08
	db #08,#07,#01,#07,#77,#04,#02,#00
	db #ef,#01,#04,#00,#be,#02,#02,#01
	db #3f,#01,#02,#00,#be,#01,#04,#00
	db #9f,#02,#02,#00,#ef,#01,#01,#07
	db #77,#04,#02,#00,#be,#01,#04,#00
	db #8e,#02,#02,#00,#ef,#01,#02,#00
	db #be,#01,#04,#00,#86,#02,#02,#00
	db #be,#01,#ff,#06,#06,#07,#01,#00
	db #ef,#01,#02,#00,#be,#04,#04,#00
	db #77,#05,#01,#00,#77,#01,#01,#00
	db #3c,#01,#01,#00,#77,#01,#ff,#06
	db #06,#06,#01,#00,#d5,#04,#02,#00
	db #b3,#04,#04,#00,#86,#01,#04,#00
	db #43,#01,#04,#00,#86,#02,#01,#01
	db #0c,#04,#02,#00,#d5,#04,#04,#00
	db #6a,#01,#04,#00,#35,#01,#04,#00
	db #6a,#02,#01,#00,#ef,#04,#02,#00
	db #be,#04,#04,#00,#77,#01,#04,#00
	db #3c,#01,#04,#00,#77,#01,#01,#02
	db #cc,#01,#02,#00,#b3,#06,#04,#00
	db #8e,#06,#01,#01,#de,#01,#01,#01
	db #66,#01,#01,#01,#1c,#01,#01,#00
	db #ef,#01,#01,#01,#1c,#01,#01,#01
	db #de,#01,#02,#00,#b3,#02,#04,#00
	db #8e,#02,#01,#02,#cc,#01,#01,#03
	db #bc,#01,#02,#00,#b3,#02,#04,#00
	db #8e,#02,#01,#01,#de,#01,#01,#01
	db #0c,#01,#02,#00,#be,#06,#04,#00
	db #9f,#06,#01,#01,#3f,#01,#01,#00
	db #ef,#01,#01,#01,#0c,#01,#01,#01
	db #3f,#01,#01,#01,#de,#01,#01,#03
	db #bc,#01,#02,#00,#b3,#02,#04,#00
	db #8e,#02,#01,#01,#de,#01,#01,#01
	db #0c,#01,#02,#00,#be,#02,#04,#00
	db #9f,#02,#01,#01,#3f,#01,#01,#00
	db #d5,#02,#02,#00,#b3,#02,#04,#00
	db #86,#02,#01,#00,#ef,#01,#02,#00
	db #be,#02,#04,#00,#8e,#02,#01,#03
	db #bc,#01,#01,#05,#98,#01,#02,#01
	db #1c,#08,#04,#00,#b3,#08,#01,#01
	db #de,#01,#01,#01,#66,#01,#01,#01
	db #3f,#01,#01,#01,#1c,#01,#01,#00
	db #ef,#01,#01,#01,#3f,#01,#01,#01
	db #66,#01,#01,#03,#53,#01,#02,#00
	db #b3,#06,#04,#00,#8e,#06,#01,#02
	db #38,#01,#01,#01,#aa,#01,#01,#01
	db #66,#01,#01,#01,#1c,#02,#01,#02
	db #38,#01,#02,#00,#b3,#02,#04,#00
	db #8e,#02,#01,#03,#53,#01,#01,#04
	db #fc,#01,#02,#00,#d5,#02,#04,#00
	db #86,#02,#01,#01,#aa,#01,#01,#01
	db #78,#01,#02,#00,#be,#02,#04,#00
	db #9f,#02,#01,#01,#0c,#01,#01,#04
	db #70,#01,#02,#00,#be,#02,#04,#00
	db #77,#02,#01,#01,#78,#01,#01,#01
	db #66,#01,#02,#00,#b3,#02,#04,#00
	db #8e,#02,#01,#00,#ef,#01,#01,#04
	db #31,#01,#02,#00,#b3,#04,#04,#00
	db #6a,#08,#01,#01,#66,#01,#01,#01
	db #1c,#01,#01,#01,#0c,#01,#01,#00
	db #ef,#02,#02,#00,#8e,#02,#01,#00
	db #d5,#02,#02,#00,#86,#02,#01,#04
	db #31,#01,#02,#00,#9f,#06,#04,#00
	db #6a,#02,#01,#01,#7b,#01,#01,#01
	db #3f,#01,#04,#00,#6a,#02,#01,#01
	db #0c,#01,#01,#00,#be,#01,#04,#00
	db #77,#02,#01,#00,#ef,#01,#01,#01
	db #3f,#01,#02,#00,#6a,#02,#04,#00
	db #86,#02,#01,#01,#78,#01,#01,#02
	db #38,#01,#02,#00,#77,#02,#04,#00
	db #8e,#02,#01,#01,#7b,#01,#01,#01
	db #3f,#01,#02,#00,#86,#02,#04,#00
	db #9f,#02,#01,#00,#ef,#01,#01,#02
	db #7e,#01,#02,#00,#8e,#02,#04,#00
	db #b3,#02,#01,#01,#aa,#01,#01,#01
	db #3f,#01,#02,#00,#b3,#02,#04,#00
	db #8e,#02,#01,#00,#fd,#01,#01,#02
	db #7e,#01,#02,#00,#86,#06,#04,#00
	db #d5,#06,#01,#01,#aa,#01,#01,#01
	db #3f,#01,#01,#01,#0c,#01,#01,#00
	db #d5,#01,#01,#01,#0c,#01,#01,#01
	db #3f,#01,#02,#00,#d5,#02,#04,#00
	db #86,#02,#01,#02,#7e,#01,#01,#03
	db #bc,#01,#02,#00,#be,#06,#04,#00
	db #8e,#06,#01,#01,#de,#01,#01,#01
	db #7b,#01,#01,#01,#1c,#01,#01,#00
	db #ef,#01,#01,#00,#be,#01,#ff,#01
	db #02,#07,#01,#01,#fa,#02,#02,#00
	db #d5,#01,#04,#00,#8e,#02,#02,#00
	db #be,#02,#01,#02,#38,#04,#04,#00
	db #8e,#04,#02,#00,#ef,#01,#02,#00
	db #fd,#01,#02,#00,#ef,#02,#01,#01
	db #1c,#04,#04,#00,#77,#04,#02,#00
	db #ef,#01,#02,#00,#fd,#01,#02,#00
	db #ef,#02,#01,#02,#38,#04,#04,#00
	db #be,#04,#02,#00,#ef,#01,#02,#00
	db #fd,#01,#02,#00,#ef,#02,#01,#02
	db #5a,#04,#04,#00,#7f,#04,#02,#00
	db #d5,#01,#02,#00,#e1,#01,#02,#00
	db #d5,#02,#01,#01,#2d,#04,#04,#00
	db #6a,#04,#02,#00,#d5,#01,#02,#00
	db #e1,#01,#02,#00,#d5,#02,#01,#02
	db #5a,#04,#04,#00,#be,#04,#02,#00
	db #d5,#01,#02,#00,#e1,#01,#02,#00
	db #d5,#02,#01,#02,#7e,#04,#04,#00
	db #71,#06,#02,#01,#1c,#01,#02,#00
	db #e1,#01,#02,#00,#be,#01,#01,#01
	db #3f,#04,#02,#00,#8e,#01,#02,#01
	db #1c,#01,#02,#00,#d5,#01,#04,#00
	db #7f,#02,#02,#01,#1c,#01,#01,#02
	db #7e,#04,#02,#00,#e1,#01,#04,#00
	db #8e,#02,#02,#01,#1c,#01,#02,#00
	db #e1,#01,#04,#00,#be,#02,#02,#01
	db #1c,#01,#ff,#04,#04,#05,#01,#02
	db #7e,#04,#02,#00,#fd,#01,#04,#00
	db #b3,#02,#02,#01,#3f,#01,#ff,#08
	db #08,#08,#02,#00,#fd,#01,#04,#00
	db #d5,#02,#02,#01,#3f,#01,#01,#02
	db #7e,#04,#02,#01,#1c,#01,#04,#00
	db #ef,#02,#02,#01,#3f,#01,#02,#00
	db #fd,#01,#04,#00,#d5,#02,#02,#01
	db #3f,#01,#01,#04,#fc,#04,#02,#00
	db #ef,#01,#04,#00,#be,#02,#02,#01
	db #3f,#01,#02,#00,#d5,#01,#04,#00
	db #b3,#02,#02,#01,#3f,#01,#ff,#08
	db #08,#07,#01,#07,#77,#04,#02,#00
	db #ef,#01,#04,#00,#be,#02,#02,#01
	db #3f,#01,#02,#00,#be,#01,#04,#00
	db #9f,#02,#02,#00,#ef,#01,#01,#07
	db #77,#04,#02,#00,#be,#01,#04,#00
	db #8e,#02,#02,#00,#ef,#01,#02,#00
	db #be,#01,#04,#00,#86,#02,#02,#00
	db #be,#01,#ff,#06,#06,#07,#01,#00
	db #ef,#01,#02,#00,#be,#04,#04,#00
	db #77,#05,#01,#00,#77,#01,#01,#00
	db #3c,#01,#01,#00,#77,#01,#ff,#06
	db #06,#06,#01,#00,#d5,#04,#02,#00
	db #b3,#04,#04,#00,#86,#01,#04,#00
	db #43,#01,#04,#00,#86,#02,#01,#01
	db #0c,#04,#02,#00,#d5,#04,#04,#00
	db #6a,#01,#04,#00,#35,#01,#04,#00
	db #6a,#02,#01,#00,#ef,#06,#02,#00
	db #be,#06,#04,#00,#77,#01,#04,#00
	db #3c,#01,#04,#00,#77,#03,#08,#09
	db #02,#01,#0a,#05,#0a,#ff,#14,#ff
	db #09,#09,#09,#01,#03,#bc,#10,#02
	db #02,#7e,#10,#04,#01,#7b,#10,#fa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	jp l9da6	; init music interrupt
	jp l9dce	; stop music interrupt
.l9c46	; play music interrupt
	push af
	push bc
	push de
	push hl
	push iy
	push ix
	ld a,#01
	call #bcad
	bit 0,a
	jr nz,l9cba
	ld bc,(l9de9)
.l9c5b
	ld a,(bc)
	cp #ff
	jp z,l9cff
	cp #fb
	jp z,l9d15
	cp #fe
	jp z,l9d2b
	cp #fa
	jp z,l9d9b
	cp #09
	jp z,l9dbe
	cp #08
	jp z,l9d4d
	cp #07
	jp z,l9d73
	ld (l9dd7),a
	cp #01
	jr z,l9cc3
	cp #02
	jr z,l9cd7
	cp #04
	jr z,l9ceb
.l9c8e
	call l9e17
	ld (l9ddb),a
	call l9e17
	ld (l9dda),a
	call l9e17
	push bc
	ld b,a
	ld a,(l9de6)
	ld e,a
	ld d,#00
	ld hl,#0000
.l9ca8
	add hl,de
	djnz l9ca8
	ld (l9dde),hl
	pop bc
	inc bc
	ld (l9de9),bc
	ld hl,l9dd7
	call #bcaa
.l9cba
	pop ix
	pop iy
	pop hl
	pop de
	pop bc
	pop af
	ret
.l9cc3
	ld a,(l9de0)
	ld (l9dd8),a
	ld a,(l9de3)
	ld (l9dd9),a
	ld a,(l9deb)
	ld (l9ddc),a
	jr l9c8e
.l9cd7
	ld a,(l9de1)
	ld (l9dd8),a
	ld a,(l9de4)
	ld (l9dd9),a
	ld a,(l9dec)
	ld (l9ddc),a
	jr l9c8e
.l9ceb
	ld a,(l9de2)
	ld (l9dd8),a
	ld a,(l9de5)
	ld (l9dd9),a
	ld a,(l9ded)
	ld (l9ddc),a
	jr l9c8e
.l9cff
	call l9e17
	ld (l9de0),a
	call l9e17
	ld (l9de1),a
	call l9e17
	ld (l9de2),a
	inc bc
	jp l9c5b
.l9d15
	call l9e17
	ld (l9de3),a
	call l9e17
	ld (l9de4),a
	call l9e17
	ld (l9de5),a
	inc bc
	jp l9c5b
.l9d2b
	call l9e17
	ld (l9deb),a
	call l9e17
	ld (l9dec),a
	call l9e17
	ld (l9ded),a
	call l9e17
	ld (l9ddd),a
	call l9e17
	ld (l9de6),a
	inc bc
	jp l9c5b
.l9d4d
	call l9e17
	ld d,a
	call l9e17
	ld (l9df7),a
	ld h,a
	ld l,#00
	ld ix,l9df7
.l9d5e
	call l9e1a
	inc l
	ld a,h
	cp l
	jr nz,l9d5e
	push bc
	ld a,d
	ld hl,l9df7
	call #bcbc
	pop bc
	inc bc
	jp l9c5b
.l9d73
	call l9e17
	ld d,a
	call l9e17
	ld (l9e07),a
	and #7f
	ld h,a
	ld l,#00
	ld ix,l9e07
.l9d86
	call l9e1a
	inc l
	ld a,h
	cp l
	jr nz,l9d86
	push bc
	ld a,d
	ld hl,l9e07
	call #bcbf
	pop bc
	inc bc
	jp l9c5b
.l9d9b
	ld bc,(l9de7)
	ld (l9de9),bc
	jp l9c5b
.l9da6
	ld bc,l9000
	ld (l9de7),bc
	ld (l9de9),bc
	ld hl,l9dee
	ld de,l9c46
	ld bc,#8100
	call #bcd7
	ret
.l9dbe
	ld a,#01
	call #bcad
	bit 7,a
	jp nz,l9cba
	call l9dce
	jp l9cba
.l9dce
	ld hl,l9dee
	call #bcdd
	jp #bca7
.l9dde equ $ + 7
.l9ddd equ $ + 6
.l9ddc equ $ + 5
.l9ddb equ $ + 4
.l9dda equ $ + 3
.l9dd9 equ $ + 2
.l9dd8 equ $ + 1
.l9dd7
	db #04,#09,#03,#7b,#01,#00,#00,#00
.l9de6 equ $ + 7
.l9de5 equ $ + 6
.l9de4 equ $ + 5
.l9de3 equ $ + 4
.l9de2 equ $ + 3
.l9de1 equ $ + 2
.l9de0 equ $ + 1
	db #02,#09,#09,#09,#00,#04,#03,#20
.l9de7
	db #00
.l9dee equ $ + 6
.l9ded equ $ + 5
.l9dec equ $ + 4
.l9deb equ $ + 3
.l9de9 equ $ + 1
	db #90,#df,#9a,#00,#00,#00,#2c,#00
.l9df7 equ $ + 7
	db #55,#00,#00,#81,#46,#9c,#00,#02
	db #01,#0a,#05,#0a,#ff,#14,#0a,#ff
.l9e07 equ $ + 7
	db #10,#01,#00,#01,#00,#00,#00,#82
	db #00,#01,#08,#00,#ff,#08,#01,#ff
.l9e17 equ $ + 7
	db #01,#01,#02,#01,#00,#00,#00,#03
.l9e1a equ $ + 2
	db #0a,#c9,#dd,#23,#cd,#17,#9e,#dd
	db #77,#00,#dd,#23,#cd,#17,#9e,#dd
	db #77,#00,#dd,#23,#cd,#17,#9e,#dd
	db #77,#00,#c9,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #dc,#00,#00,#20,#80,#33,#ec,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#11,#88,#00,#40,#00
	db #00,#00,#10,#f0,#dc,#80,#00,#00
	db #00,#11,#fc,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#20,#33
	db #80,#00,#40,#00,#00,#00,#10,#f0
	db #e0,#80,#00,#10,#40,#11,#ee,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#60,#76,#00,#00,#40,#00
	db #00,#00,#10,#f0,#e0,#80,#00,#00
	db #20,#00,#ee,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#76
	db #00,#00,#40,#00,#00,#00,#00,#f3
	db #e0,#80,#00,#80,#20,#00,#ff,#40
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#76,#00,#00,#40,#00
	db #00,#00,#00,#30,#ec,#80,#00,#00
	db #a0,#00,#ff,#40,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#e0
	db #00,#00,#40,#60,#00,#00,#00,#00
	db #cc,#80,#00,#00,#10,#00,#77,#20
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#e0,#00,#00,#20,#80
	db #00,#00,#00,#00,#66,#00,#00,#00
	db #10,#00,#77,#20,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#e0
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #33,#00,#00,#00,#10,#00,#77,#20
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#e0,#00,#00,#10,#00
	db #00,#10,#00,#00,#11,#00,#00,#00
	db #10,#00,#77,#98,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#e0
	db #00,#00,#10,#00,#00,#10,#40,#00
	db #10,#00,#00,#00,#90,#00,#77,#98
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#e0,#00,#00,#10,#00
	db #00,#10,#80,#00,#10,#00,#00,#00
	db #10,#00,#77,#98,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#20,#e0
	db #00,#00,#10,#00,#00,#40,#40,#00
	db #10,#00,#00,#00,#10,#00,#ff,#98
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#60,#00,#00,#10,#80
	db #00,#80,#20,#00,#10,#00,#00,#00
	db #00,#00,#ff,#98,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#20,#60
	db #00,#00,#30,#40,#10,#80,#30,#80
	db #70,#80,#00,#00,#00,#00,#ff,#98
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#70,#00,#00,#20,#00
	db #00,#80,#20,#70,#f0,#80,#00,#00
	db #22,#00,#ff,#98,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#10,#70
	db #00,#00,#00,#00,#00,#00,#10,#00
;
; 1360 LOAD "!4thprot2.bin",&9000
; 1370 CALL &9C40
;
.music_info
	db "The Fourth Protocol (1986)(Century Communications)(David Dunn)",0
	db "",0

	read "music_end.asm"
