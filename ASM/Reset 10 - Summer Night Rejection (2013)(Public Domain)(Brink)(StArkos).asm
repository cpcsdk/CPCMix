; Music of Reset 10 - Summer Night Rejection (2013)(Public Domain)(Brink)(StArkos)
; Ripped by Megachur the 19/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RES10SNR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#f1,#00,#2a,#40,#33,#40
	db #3f,#40,#4e,#40,#5d,#40,#6e,#40
	db #79,#40,#8e,#40,#9d,#40,#a6,#40
	db #b6,#40,#c5,#40,#d5,#40,#e1,#40
	db #ed,#40,#00,#00,#00,#00,#00,#00
	db #0d,#2c,#40,#01,#00,#2c,#34,#34
	db #34,#2c,#24,#1c,#0d,#2c,#40,#01
	db #00,#3c,#7c,#04,#7c,#07,#7c,#0c
	db #7c,#10,#3c,#0d,#2c,#40,#01,#00
	db #3c,#7c,#07,#7c,#0c,#7c,#0f,#3c
	db #7c,#07,#0d,#2c,#40,#01,#00,#7e
	db #28,#11,#7c,#0c,#7c,#07,#70,#04
	db #68,#02,#20,#0d,#2c,#40,#01,#00
	db #3c,#3c,#3c,#3c,#3c,#3c,#0d,#2c
	db #40,#01,#00,#7e,#28,#11,#7c,#0c
	db #76,#28,#07,#6e,#28,#11,#6a,#28
	db #0c,#02,#20,#0d,#2c,#40,#01,#00
	db #3c,#7c,#04,#7c,#0c,#7c,#10,#7c
	db #13,#3c,#0d,#2c,#40,#01,#00,#3c
	db #3c,#3c,#3c,#0d,#2c,#40,#01,#00
	db #3c,#7c,#04,#7c,#0c,#7c,#10,#7c
	db #13,#7c,#18,#0d,#2c,#40,#01,#00
	db #3c,#7c,#07,#7c,#0c,#7c,#0f,#7c
	db #13,#3c,#0d,#2c,#40,#01,#00,#3c
	db #7c,#03,#7c,#07,#7c,#0c,#7c,#13
	db #7c,#18,#0d,#2c,#40,#01,#00,#30
	db #34,#38,#78,#03,#78,#07,#0d,#d9
	db #40,#01,#00,#30,#34,#38,#78,#04
	db #78,#07,#0d,#e5,#40,#01,#00,#3c
	db #7c,#03,#7c,#07,#7c,#0c,#7c,#13
	db #7c,#16,#0d,#2c,#40,#40,#00,#00
	db #00,#a0,#41,#00,#93,#4a,#40,#48
	db #a2,#41,#00,#c6,#47,#40,#48,#a2
	db #41,#00,#a8,#4a,#22,#4b,#c2,#48
	db #00,#2c,#49,#a6,#49,#29,#4a,#00
	db #89,#43,#81,#42,#a7,#41,#00,#0b
	db #44,#03,#43,#15,#42,#00,#79,#4c
	db #22,#4b,#a4,#4b,#00,#79,#4c,#22
	db #4b,#0d,#4c,#00,#a8,#4a,#22,#4b
	db #c2,#48,#00,#2c,#49,#a6,#49,#29
	db #4a,#00,#89,#43,#81,#42,#a7,#41
	db #00,#0b,#44,#03,#43,#15,#42,#00
	db #8d,#44,#eb,#44,#6d,#45,#00,#8d
	db #44,#eb,#44,#6d,#45,#00,#37,#4d
	db #d8,#45,#4c,#46,#00,#f3,#4c,#a5
	db #46,#1b,#47,#00,#89,#43,#81,#42
	db #a7,#41,#00,#0b,#44,#03,#43,#15
	db #42,#00,#89,#43,#81,#42,#a7,#41
	db #00,#0b,#44,#03,#43,#15,#42,#00
	db #72,#47,#d8,#45,#4c,#46,#00,#a2
	db #41,#a2,#41,#a2,#41,#01,#03,#41
	db #19,#00,#42,#9f,#00,#00,#00,#b6
	db #e3,#00,#00,#01,#02,#b6,#49,#b4
	db #43,#02,#b4,#49,#ac,#43,#02,#b6
	db #40,#02,#b6,#49,#b4,#43,#02,#b4
	db #49,#ac,#43,#02,#b6,#40,#02,#b6
	db #49,#b4,#43,#02,#b4,#49,#ac,#43
	db #02,#b0,#40,#02,#ba,#6b,#02,#02
	db #b0,#6f,#01,#02,#b0,#43,#02,#b4
	db #40,#02,#b4,#49,#ac,#43,#02,#ac
	db #49,#b6,#43,#02,#b4,#40,#02,#b4
	db #49,#ac,#43,#02,#ac,#49,#b6,#43
	db #02,#b0,#40,#02,#b0,#49,#b0,#43
	db #02,#b0,#49,#b6,#43,#02,#b4,#40
	db #02,#be,#6b,#03,#02,#b4,#6f,#01
	db #02,#be,#6b,#03,#00,#b6,#e3,#00
	db #00,#01,#02,#b6,#49,#b4,#43,#02
	db #b4,#49,#ac,#43,#02,#b6,#40,#02
	db #b6,#49,#b4,#43,#02,#b4,#49,#ac
	db #43,#02,#b6,#40,#02,#b6,#49,#b4
	db #43,#02,#b4,#49,#ac,#43,#02,#b0
	db #40,#02,#ba,#6b,#02,#02,#b0,#6f
	db #01,#02,#b0,#43,#02,#b4,#40,#02
	db #b4,#49,#b4,#43,#02,#b4,#49,#b4
	db #43,#02,#b6,#40,#02,#b6,#49,#b4
	db #43,#02,#b4,#49,#b6,#43,#02,#b4
	db #40,#02,#b4,#49,#b6,#43,#02,#b6
	db #49,#b4,#43,#02,#b0,#40,#02,#b0
	db #49,#02,#ba,#6b,#02,#02,#ba,#40
	db #00,#7c,#e5,#00,#00,#04,#6e,#60
	db #05,#47,#2f,#7c,#61,#06,#6e,#65
	db #05,#47,#2f,#7c,#60,#04,#6e,#60
	db #05,#47,#2f,#7c,#61,#06,#6e,#65
	db #05,#47,#2f,#7c,#60,#04,#6e,#60
	db #05,#47,#2f,#7c,#61,#06,#6e,#65
	db #05,#47,#2f,#7c,#60,#04,#72,#60
	db #05,#4b,#33,#7c,#61,#06,#72,#65
	db #05,#4b,#33,#7c,#60,#04,#64,#60
	db #05,#3d,#25,#7c,#61,#06,#64,#65
	db #05,#3d,#25,#7c,#60,#04,#64,#60
	db #05,#3d,#25,#7c,#61,#06,#64,#65
	db #05,#3d,#25,#7c,#60,#04,#72,#60
	db #05,#4b,#33,#7c,#61,#06,#72,#65
	db #05,#4b,#33,#7c,#60,#04,#76,#60
	db #05,#4f,#37,#7c,#61,#06,#76,#65
	db #05,#4f,#37,#7c,#e5,#00,#00,#04
	db #6e,#60,#05,#47,#2f,#7c,#61,#06
	db #6e,#65,#05,#47,#2f,#7c,#60,#04
	db #6e,#60,#05,#47,#2f,#7c,#61,#06
	db #6e,#65,#05,#47,#2f,#7c,#60,#04
	db #6e,#60,#05,#47,#2f,#7c,#61,#06
	db #6e,#65,#05,#47,#2f,#7c,#60,#04
	db #72,#60,#05,#4b,#33,#7c,#61,#06
	db #72,#65,#05,#4b,#33,#7c,#60,#04
	db #6c,#60,#05,#45,#2d,#7c,#61,#06
	db #6c,#65,#05,#45,#2d,#7c,#60,#04
	db #6e,#60,#05,#47,#2f,#7c,#61,#06
	db #6e,#65,#05,#47,#2f,#7c,#60,#04
	db #72,#60,#05,#4b,#33,#7c,#61,#06
	db #72,#65,#05,#4b,#33,#7c,#60,#04
	db #72,#60,#05,#4b,#33,#7c,#61,#06
	db #72,#65,#05,#7c,#61,#06,#72,#65
	db #05,#9e,#e9,#00,#00,#07,#a6,#60
	db #08,#77,#7f,#85,#7f,#9e,#60,#07
	db #a6,#60,#08,#9e,#60,#07,#a6,#60
	db #08,#77,#7f,#85,#7f,#9e,#60,#07
	db #a6,#60,#08,#9e,#60,#07,#a6,#60
	db #08,#77,#9e,#60,#07,#c4,#60,#08
	db #7f,#9e,#60,#07,#a6,#60,#08,#a2
	db #60,#02,#aa,#60,#08,#71,#7b,#83
	db #7b,#71,#6b,#94,#60,#09,#9c,#60
	db #08,#6d,#75,#7b,#75,#94,#60,#09
	db #9c,#60,#08,#94,#60,#09,#9c,#60
	db #08,#6d,#75,#7b,#75,#94,#60,#09
	db #9c,#60,#08,#a2,#60,#02,#aa,#60
	db #08,#71,#a2,#60,#02,#c2,#60,#08
	db #7b,#a2,#60,#02,#aa,#60,#08,#a6
	db #60,#03,#b4,#60,#08,#7f,#85,#67
	db #75,#7f,#85,#9e,#e9,#00,#00,#07
	db #a6,#60,#08,#77,#7f,#85,#7f,#9e
	db #60,#07,#a6,#60,#08,#9e,#60,#07
	db #a6,#60,#08,#77,#7f,#85,#7f,#9e
	db #60,#07,#a6,#60,#08,#9e,#60,#07
	db #a6,#60,#08,#77,#9e,#60,#07,#c4
	db #60,#08,#7f,#9e,#60,#07,#a6,#60
	db #08,#a2,#60,#02,#aa,#60,#08,#71
	db #7b,#83,#7b,#71,#6b,#9c,#60,#0a
	db #aa,#60,#08,#75,#7b,#83,#7b,#9c
	db #60,#0a,#aa,#60,#08,#9e,#60,#07
	db #a6,#60,#08,#77,#7f,#85,#7f,#9e
	db #60,#07,#a6,#60,#08,#a2,#60,#02
	db #aa,#60,#08,#71,#a2,#60,#02,#c2
	db #60,#08,#7b,#a2,#60,#02,#aa,#60
	db #08,#a2,#60,#02,#aa,#60,#08,#71
	db #7b,#83,#7b,#71,#6b,#98,#e9,#00
	db #00,#0b,#a6,#60,#08,#5f,#59,#71
	db #67,#5f,#59,#71,#67,#5f,#59,#71
	db #67,#5f,#59,#9e,#60,#07,#a6,#60
	db #08,#5f,#55,#77,#67,#5f,#55,#77
	db #67,#5f,#55,#9e,#60,#07,#a6,#60
	db #08,#5f,#55,#9c,#60,#0a,#aa,#60
	db #08,#5d,#4b,#75,#6b,#5d,#4b,#75
	db #6b,#5d,#4b,#a2,#60,#02,#aa,#60
	db #08,#5d,#4b,#94,#60,#09,#a2,#60
	db #08,#5d,#55,#6d,#63,#5d,#55,#6d
	db #63,#5d,#55,#94,#60,#09,#a2,#60
	db #08,#5d,#55,#7c,#e5,#00,#00,#04
	db #68,#60,#05,#41,#29,#7c,#61,#06
	db #68,#65,#05,#41,#29,#7c,#60,#04
	db #68,#60,#05,#41,#29,#7c,#61,#06
	db #68,#65,#05,#41,#29,#7c,#60,#04
	db #6e,#60,#05,#47,#2f,#7c,#61,#06
	db #6e,#65,#05,#47,#2f,#7c,#60,#04
	db #6e,#60,#05,#47,#2f,#7c,#61,#06
	db #6e,#65,#05,#47,#2f,#7c,#60,#04
	db #6c,#60,#05,#45,#2d,#7c,#61,#06
	db #6c,#65,#05,#45,#2d,#7c,#60,#04
	db #6c,#60,#05,#45,#2d,#7c,#61,#06
	db #6c,#65,#05,#45,#2d,#7c,#60,#04
	db #72,#60,#05,#4b,#33,#7c,#61,#06
	db #72,#65,#05,#4b,#33,#7c,#60,#04
	db #72,#60,#05,#4b,#33,#7c,#61,#06
	db #72,#65,#05,#4b,#33,#b6,#e3,#00
	db #00,#01,#02,#b6,#49,#b4,#43,#02
	db #b4,#49,#b0,#43,#02,#b4,#40,#02
	db #b4,#49,#02,#b4,#43,#02,#b6,#40
	db #02,#be,#40,#02,#be,#49,#b6,#43
	db #02,#b6,#49,#b4,#43,#02,#ba,#40
	db #02,#c4,#40,#c2,#47,#c4,#43,#c2
	db #47,#ba,#43,#c2,#47,#ba,#43,#02
	db #ba,#49,#ba,#4f,#02,#ba,#53,#b4
	db #43,#02,#c2,#40,#02,#c2,#49,#c2
	db #4f,#02,#c2,#53,#c2,#57,#02,#b0
	db #43,#02,#ac,#40,#b0,#40,#02,#b0
	db #49,#ac,#43,#02,#b0,#40,#02,#ac
	db #40,#02,#b0,#40,#02,#b4,#40,#00
	db #7c,#e5,#00,#00,#04,#b0,#69,#0c
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #42,#00,#42,#0d,#02,#42,#0f,#02
	db #42,#11,#02,#42,#13,#42,#15,#7c
	db #65,#04,#b6,#69,#0d,#42,#07,#02
	db #42,#09,#02,#42,#0b,#02,#42,#0d
	db #42,#00,#42,#0f,#02,#42,#11,#02
	db #42,#13,#42,#15,#7c,#65,#04,#b4
	db #69,#0c,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#42,#00,#42
	db #0f,#02,#42,#11,#02,#42,#13,#42
	db #15,#ac,#69,#0d,#02,#42,#07,#02
	db #42,#09,#02,#42,#0b,#02,#42,#0d
	db #02,#42,#0f,#02,#42,#11,#42,#00
	db #42,#13,#42,#15,#b6,#e3,#00,#00
	db #01,#02,#b6,#49,#b4,#43,#02,#b4
	db #49,#b0,#43,#02,#b4,#40,#02,#b4
	db #49,#02,#b4,#43,#02,#b6,#40,#02
	db #be,#40,#02,#be,#49,#b6,#43,#02
	db #b6,#49,#b4,#43,#02,#ba,#40,#02
	db #c4,#40,#c2,#47,#c4,#43,#c2,#47
	db #ba,#45,#c2,#47,#ba,#43,#02,#ba
	db #49,#02,#ba,#4f,#02,#b4,#43,#02
	db #c2,#40,#02,#c2,#49,#02,#c2,#4f
	db #02,#c2,#53,#02,#c2,#57,#14,#42
	db #00,#02,#42,#00,#00,#b0,#e9,#00
	db #00,#0c,#02,#42,#07,#02,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#02,#42
	db #0f,#02,#42,#11,#02,#42,#13,#42
	db #15,#b6,#69,#0d,#02,#42,#07,#02
	db #42,#09,#02,#42,#0b,#02,#42,#0d
	db #02,#42,#0f,#02,#42,#11,#02,#42
	db #13,#42,#15,#b4,#69,#0c,#02,#42
	db #07,#02,#42,#09,#02,#42,#0b,#02
	db #42,#0d,#02,#42,#0f,#02,#42,#11
	db #42,#00,#42,#13,#42,#15,#7c,#60
	db #06,#7c,#53,#7c,#51,#7c,#4f,#7c
	db #4d,#7c,#4b,#7c,#49,#7c,#47,#7c
	db #45,#7c,#43,#7c,#41,#7c,#40,#c4
	db #65,#09,#7c,#61,#06,#c4,#65,#09
	db #7c,#61,#06,#b6,#e3,#00,#00,#01
	db #02,#b6,#49,#b4,#43,#02,#b4,#49
	db #b0,#43,#02,#b4,#40,#02,#b4,#49
	db #02,#b4,#43,#02,#b6,#40,#02,#be
	db #40,#02,#be,#49,#b6,#43,#02,#b6
	db #49,#b4,#43,#02,#ba,#40,#02,#c4
	db #40,#c2,#47,#c4,#43,#c2,#47,#ba
	db #45,#c2,#47,#ba,#43,#02,#ba,#49
	db #02,#ba,#4f,#02,#b4,#43,#02,#c2
	db #40,#02,#c2,#49,#02,#c2,#4f,#02
	db #c2,#53,#1a,#7c,#6b,#04,#02,#7c
	db #40,#00,#98,#e9,#00,#00,#0b,#a6
	db #60,#08,#5f,#59,#71,#67,#5f,#59
	db #71,#67,#5f,#59,#71,#67,#5f,#59
	db #9e,#60,#07,#a6,#60,#08,#5f,#55
	db #77,#67,#5f,#55,#77,#67,#5f,#55
	db #9e,#60,#07,#a6,#60,#08,#5f,#55
	db #9c,#60,#0a,#aa,#60,#08,#5d,#4b
	db #75,#6b,#5d,#4b,#75,#6b,#5d,#4b
	db #a2,#60,#02,#aa,#60,#08,#5d,#4b
	db #94,#60,#09,#a2,#60,#08,#5d,#55
	db #6d,#63,#5d,#55,#55,#00,#98,#e9
	db #00,#00,#0e,#a6,#60,#08,#5f,#59
	db #71,#67,#98,#60,#0e,#98,#60,#08
	db #98,#60,#0e,#a6,#60,#08,#5f,#59
	db #71,#67,#98,#60,#0e,#98,#60,#08
	db #98,#60,#0e,#a6,#60,#08,#5f,#59
	db #71,#67,#98,#60,#0e,#98,#60,#08
	db #98,#60,#0e,#a6,#60,#08,#5f,#59
	db #71,#67,#5f,#59,#98,#60,#0e,#a6
	db #60,#08,#5f,#59,#71,#67,#98,#60
	db #0e,#98,#60,#08,#98,#60,#0e,#a6
	db #60,#08,#5f,#59,#71,#67,#98,#60
	db #0e,#98,#60,#08,#98,#60,#0e,#a6
	db #60,#08,#5f,#59,#71,#67,#98,#60
	db #0e,#98,#60,#08,#a2,#60,#02,#b0
	db #60,#08,#6b,#63,#7b,#71,#6b,#63
	db #7c,#e5,#00,#00,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#68,#60,#05
	db #41,#29,#7c,#61,#06,#68,#65,#05
	db #41,#29,#7c,#60,#04,#72,#60,#05
	db #4b,#33,#7c,#61,#06,#72,#65,#05
	db #4b,#33,#b0,#e3,#00,#00,#01,#02
	db #b0,#49,#ac,#43,#02,#ac,#49,#aa
	db #43,#02,#a6,#40,#02,#a6,#49,#9e
	db #43,#02,#9e,#49,#a6,#43,#02,#b0
	db #40,#02,#b0,#49,#ac,#43,#02,#ac
	db #49,#aa,#43,#02,#a6,#40,#02,#a6
	db #49,#9e,#43,#02,#9e,#49,#a6,#43
	db #02,#b0,#40,#02,#b0,#49,#ac,#43
	db #02,#ac,#49,#aa,#43,#02,#a6,#40
	db #02,#a6,#49,#9e,#43,#02,#9e,#49
	db #a6,#43,#02,#a6,#40,#02,#a6,#49
	db #9e,#43,#02,#9e,#49,#a6,#43,#02
	db #a2,#40,#02,#a2,#49,#02,#a2,#4f
	db #02,#a2,#53,#00,#98,#e9,#00,#00
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #98,#60,#0e,#98,#60,#08,#98,#60
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #98,#60,#0e,#98,#60,#08,#98,#60
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #98,#60,#0e,#98,#60,#08,#98,#60
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #5f,#59,#98,#60,#0e,#a6,#60,#08
	db #5f,#59,#71,#67,#98,#60,#0e,#98
	db #60,#08,#9e,#60,#07,#ac,#60,#08
	db #67,#5f,#77,#6d,#9e,#60,#07,#9e
	db #60,#08,#a2,#60,#02,#b0,#60,#08
	db #6b,#63,#7b,#71,#a2,#60,#02,#a2
	db #60,#08,#a6,#60,#03,#b4,#60,#08
	db #6d,#67,#7f,#75,#6d,#67,#7c,#e5
	db #00,#00,#04,#68,#60,#05,#41,#29
	db #7c,#61,#06,#68,#65,#05,#41,#29
	db #7c,#60,#04,#68,#60,#05,#41,#29
	db #7c,#61,#06,#68,#65,#05,#41,#29
	db #7c,#60,#04,#68,#60,#05,#41,#29
	db #7c,#61,#06,#68,#65,#05,#41,#29
	db #7c,#60,#04,#68,#60,#05,#41,#29
	db #7c,#61,#06,#68,#65,#05,#41,#29
	db #7c,#60,#04,#68,#60,#05,#41,#29
	db #7c,#61,#06,#68,#65,#05,#41,#29
	db #7c,#60,#04,#6e,#60,#05,#47,#2f
	db #7c,#61,#06,#6e,#65,#05,#47,#2f
	db #7c,#60,#04,#72,#60,#05,#4b,#33
	db #7c,#61,#06,#72,#65,#05,#4b,#33
	db #7c,#60,#04,#76,#60,#05,#1f,#37
	db #7c,#69,#06,#7c,#45,#7c,#41,#7c
	db #40,#b0,#e3,#00,#00,#01,#02,#b0
	db #49,#ac,#43,#02,#ac,#49,#aa,#43
	db #02,#a6,#40,#02,#a6,#49,#9e,#43
	db #02,#9e,#49,#a6,#43,#02,#b0,#40
	db #02,#b0,#49,#ac,#43,#02,#ac,#49
	db #aa,#43,#02,#a6,#40,#02,#a6,#49
	db #9e,#43,#02,#9e,#49,#a6,#43,#02
	db #b0,#40,#02,#b0,#49,#b0,#43,#02
	db #b0,#49,#b0,#43,#02,#b6,#40,#02
	db #b6,#49,#b0,#43,#02,#b0,#49,#b6
	db #43,#02,#ba,#40,#02,#ba,#49,#b6
	db #43,#02,#b6,#49,#ba,#43,#02,#be
	db #40,#02,#be,#49,#02,#be,#4f,#02
	db #be,#53,#00,#42,#89,#00,#00,#3e
	db #98,#60,#0e,#1a,#59,#02,#59,#0a
	db #59,#02,#a2,#60,#02,#06,#63,#00
	db #98,#e9,#00,#00,#0e,#a6,#60,#08
	db #5f,#59,#71,#67,#98,#60,#0e,#98
	db #60,#08,#98,#60,#0e,#a6,#60,#08
	db #5f,#59,#71,#67,#98,#60,#0e,#98
	db #60,#08,#98,#60,#0e,#a6,#60,#08
	db #5f,#59,#71,#67,#98,#60,#0e,#98
	db #60,#08,#9e,#60,#07,#a6,#60,#08
	db #6d,#77,#5f,#67,#6d,#77,#98,#60
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #98,#60,#0e,#98,#60,#08,#98,#60
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #98,#60,#0e,#98,#60,#08,#98,#60
	db #0e,#a6,#60,#08,#5f,#59,#71,#67
	db #98,#60,#0e,#98,#60,#08,#a2,#60
	db #02,#b0,#60,#08,#6b,#63,#7b,#71
	db #6b,#63,#7c,#e5,#00,#00,#04,#68
	db #60,#05,#41,#29,#7c,#61,#06,#68
	db #65,#05,#41,#29,#7c,#60,#04,#68
	db #60,#05,#41,#29,#7c,#61,#06,#68
	db #65,#05,#41,#29,#7c,#60,#04,#68
	db #60,#05,#41,#29,#7c,#61,#06,#68
	db #65,#05,#41,#29,#7c,#60,#04,#6e
	db #60,#05,#47,#2f,#7c,#61,#06,#6e
	db #65,#05,#47,#2f,#7c,#60,#04,#68
	db #60,#05,#41,#29,#7c,#61,#06,#68
	db #65,#05,#41,#29,#7c,#60,#04,#68
	db #60,#05,#41,#29,#7c,#61,#06,#68
	db #65,#05,#41,#29,#7c,#60,#04,#68
	db #60,#05,#41,#29,#7c,#61,#06,#68
	db #65,#05,#41,#29,#7c,#60,#04,#72
	db #60,#05,#4b,#33,#7c,#61,#06,#72
	db #65,#05,#4b,#33,#a6,#e3,#00,#00
	db #01,#02,#a6,#49,#a6,#43,#02,#a6
	db #49,#b0,#43,#02,#b0,#49,#02,#b0
	db #4f,#02,#a6,#43,#02,#b0,#40,#02
	db #b0,#40,#02,#b0,#49,#b4,#43,#02
	db #b4,#49,#b6,#43,#02,#ba,#40,#02
	db #b6,#40,#b4,#40,#02,#b4,#40,#b0
	db #40,#02,#a6,#40,#02,#a6,#49,#a6
	db #43,#02,#a6,#49,#ac,#43,#02,#ac
	db #49,#02,#ac,#4f,#02,#98,#43,#02
	db #a2,#40,#02,#9e,#40,#02,#9e,#49
	db #9e,#43,#02,#9e,#49,#a2,#43,#02
	db #a2,#49,#02,#a2,#4f,#02,#ba,#6b
	db #02,#02,#ba,#40,#00,#a6,#e3,#00
	db #00,#01,#02,#a6,#49,#a6,#43,#02
	db #a6,#49,#b0,#43,#02,#b0,#49,#02
	db #b0,#4f,#02,#a6,#43,#02,#b0,#40
	db #02,#b0,#40,#02,#b0,#49,#b4,#43
	db #02,#b4,#49,#b6,#43,#02,#ba,#40
	db #ba,#49,#b6,#43,#b6,#49,#b4,#43
	db #b4,#49,#ba,#43,#02,#be,#40,#02
	db #be,#49,#be,#43,#02,#be,#49,#ba
	db #43,#02,#ba,#49,#02,#ba,#4f,#02
	db #b6,#43,#02,#ba,#40,#02,#b6,#40
	db #02,#b6,#49,#b6,#43,#02,#b6,#49
	db #b4,#43,#02,#b4,#49,#02,#b4,#4f
	db #02,#ba,#6b,#02,#02,#b4,#77,#01
	db #00,#98,#e9,#00,#00,#0e,#a6,#60
	db #08,#5f,#59,#71,#67,#98,#60,#0e
	db #98,#60,#08,#98,#60,#0e,#a6,#60
	db #08,#5f,#59,#71,#67,#98,#60,#0e
	db #98,#60,#08,#98,#60,#0e,#a6,#60
	db #08,#5f,#59,#71,#67,#98,#60,#0e
	db #98,#60,#08,#9e,#60,#07,#ac,#60
	db #08,#63,#5f,#77,#6d,#63,#5f,#98
	db #60,#0e,#a6,#60,#08,#5f,#59,#71
	db #67,#98,#60,#0e,#98,#60,#08,#98
	db #60,#0e,#a6,#60,#08,#5f,#59,#71
	db #67,#98,#60,#0e,#98,#60,#08,#98
	db #60,#0e,#a6,#60,#08,#5f,#59,#71
	db #67,#98,#60,#0e,#98,#60,#08,#a2
	db #60,#02,#b0,#60,#08,#6b,#63,#7b
	db #71,#6b,#63,#b0,#e9,#00,#00,#08
	db #67,#5f,#59,#71,#67,#5f,#59,#71
	db #67,#5f,#59,#71,#67,#5f,#59,#77
	db #67,#5f,#55,#77,#67,#5f,#55,#77
	db #67,#5f,#55,#77,#67,#5f,#55,#75
	db #6b,#5d,#4b,#75,#6b,#5d,#4b,#75
	db #6b,#5d,#4b,#75,#6b,#5d,#4b,#6d
	db #63,#5d,#55,#6d,#63,#5d,#55,#6d
	db #63,#5d,#55,#6d,#63,#5d,#55,#98
	db #e9,#00,#00,#0b,#a6,#60,#08,#5f
	db #59,#71,#67,#5f,#59,#71,#67,#5f
	db #59,#71,#67,#5f,#59,#77,#67,#5f
	db #55,#77,#67,#5f,#55,#77,#67,#5f
	db #55,#77,#67,#5f,#55,#75,#6b,#5d
	db #4b,#75,#6b,#5d,#4b,#75,#6b,#5d
	db #4b,#75,#6b,#5d,#4b,#6d,#63,#5d
	db #55,#6d,#63,#5d,#55,#6d,#63,#5d
	db #55,#6d,#63,#5d,#55,#00,#00,#00
;
; #7000- player reallocated by Megachur
;
	jp l768c
	jp l700a
	jp l76e1
.l7009
	db #00
;
.play_music
.l700a
;
	call l76fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l7009),a
.l701a equ $ + 1
	ld a,#01
	dec a
	jp nz,l71e6
.l7020 equ $ + 1
	ld a,#01
	dec a
	jr nz,l708c
.l7025 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l7033
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l7033
	rra
	jr nc,l703b
	ld de,l70dc
	ldi
.l703b
	rra
	jr nc,l7043
	ld de,l7141
	ldi
.l7043
	rra
	jr nc,l704b
	ld de,l71a6
	ldi
.l704b
	ld de,l70bb
	ldi
	ldi
	ld de,l7120
	ldi
	ldi
	ld de,l7185
	ldi
	ldi
	rra
	jr nc,l7068
	ld de,l708b
	ldi
.l7068
	rra
	jr nc,l7073
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7077),de
.l7073
	ld (l7025),hl
.l7077 equ $ + 1
	ld hl,#0000
	ld (l7095),hl
	ld a,#01
	ld (l7090),a
	ld (l70b6),a
	ld (l711b),a
	ld (l7180),a
.l708b equ $ + 1
	ld a,#01
.l708c
	ld (l7020),a
.l7090 equ $ + 1
	ld a,#01
	dec a
	jr nz,l70b2
.l7095 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l70af
	srl a
	jr nz,l70a3
	ld a,(hl)
	inc hl
.l70a3
	jr nc,l70aa
	ld (l7009),a
	jr l70ad
.l70aa
	ld (l71e5),a
.l70ad
	ld a,#01
.l70af
	ld (l7095),hl
.l70b2
	ld (l7090),a
.l70b6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7117
.l70bb equ $ + 1
	ld hl,#0000
	call l7538
	ld (l70bb),hl
	jr c,l7117
	ld a,d
	rra
	jr nc,l70ce
	and #0f
	ld (l7268),a
.l70ce
	rl d
	jr nc,l70d6
	ld (l7256),ix
.l70d6
	rl d
	jr nc,l7115
	ld a,e
.l70dc equ $ + 1
	add #00
	ld (l7267),a
	ld hl,#0000
	ld (l7253),hl
	rl d
	jr c,l70f5
.l70eb equ $ + 1
	ld hl,#0000
	ld a,(l7278)
	ld (l7270),a
	jr l7112
.l70f5
	ld l,b
	add hl,hl
.l70f8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7278),a
	ld (l7270),a
	ld a,(hl)
	or a
	jr z,l710e
	ld (l7363),a
.l710e
	inc hl
	ld (l70eb),hl
.l7112
	ld (l726a),hl
.l7115
	ld a,#01
.l7117
	ld (l70b6),a
.l711b equ $ + 1
	ld a,#01
	dec a
	jr nz,l717c
.l7120 equ $ + 1
	ld hl,#0000
	call l7538
	ld (l7120),hl
	jr c,l717c
	ld a,d
	rra
	jr nc,l7133
	and #0f
	ld (l7234),a
.l7133
	rl d
	jr nc,l713b
	ld (l7222),ix
.l713b
	rl d
	jr nc,l717a
	ld a,e
.l7141 equ $ + 1
	add #00
	ld (l7233),a
	ld hl,#0000
	ld (l721f),hl
	rl d
	jr c,l715a
.l7150 equ $ + 1
	ld hl,#0000
	ld a,(l7244)
	ld (l723c),a
	jr l7177
.l715a
	ld l,b
	add hl,hl
.l715d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7244),a
	ld (l723c),a
	ld a,(hl)
	or a
	jr z,l7173
	ld (l7363),a
.l7173
	inc hl
	ld (l7150),hl
.l7177
	ld (l7236),hl
.l717a
	ld a,#01
.l717c
	ld (l711b),a
.l7180 equ $ + 1
	ld a,#01
	dec a
	jr nz,l71e1
.l7185 equ $ + 1
	ld hl,#0000
	call l7538
	ld (l7185),hl
	jr c,l71e1
	ld a,d
	rra
	jr nc,l7198
	and #0f
	ld (l7203),a
.l7198
	rl d
	jr nc,l71a0
	ld (l71f1),ix
.l71a0
	rl d
	jr nc,l71df
	ld a,e
.l71a6 equ $ + 1
	add #00
	ld (l7202),a
	ld hl,#0000
	ld (l71ee),hl
	rl d
	jr c,l71bf
.l71b5 equ $ + 1
	ld hl,#0000
	ld a,(l7213)
	ld (l720b),a
	jr l71dc
.l71bf
	ld l,b
	add hl,hl
.l71c2 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7213),a
	ld (l720b),a
	ld a,(hl)
	or a
	jr z,l71d8
	ld (l7363),a
.l71d8
	inc hl
	ld (l71b5),hl
.l71dc
	ld (l7205),hl
.l71df
	ld a,#01
.l71e1
	ld (l7180),a
.l71e5 equ $ + 1
	ld a,#01
.l71e6
	ld (l701a),a
	ld iy,l737a
.l71ee equ $ + 1
	ld hl,#0000
.l71f1 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l71ee),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7203 equ $ + 2
.l7202 equ $ + 1
	ld de,#0000
.l7205 equ $ + 1
	ld hl,#0000
	call l7385
.l720b equ $ + 1
	ld a,#01
	dec a
	jr nz,l7214
	ld (l7205),hl
.l7213 equ $ + 1
	ld a,#06
.l7214
	ld (l720b),a
	ld a,lx
	ex af,af'
	ld iy,l7378
.l721f equ $ + 1
	ld hl,#0000
.l7222 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l721f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7234 equ $ + 2
.l7233 equ $ + 1
	ld de,#0000
.l7236 equ $ + 1
	ld hl,#0000
	call l7385
.l723c equ $ + 1
	ld a,#01
	dec a
	jr nz,l7245
	ld (l7236),hl
.l7244 equ $ + 1
	ld a,#06
.l7245
	ld (l723c),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l7376
.l7253 equ $ + 1
	ld hl,#0000
.l7256 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7253),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7268 equ $ + 2
.l7267 equ $ + 1
	ld de,#0000
.l726a equ $ + 1
	ld hl,#0000
	call l7385
.l7270 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7279
	ld (l726a),hl
.l7278 equ $ + 1
	ld a,#06
.l7279
	ld (l7270),a
	ex af,af'
	or lx
.l727f
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l7376
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	call l7361
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l735f
	nop
	ret
.l7361
	ld a,(hl)
.l7363 equ $ + 1
	cp #ff
	ret z
	ld (l7363),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l7376
	nop
	nop
.l7378
	nop
	nop
.l737a
	nop
	nop
.l737c
	nop
.l737d
	nop
	nop
	nop
	nop
	nop
.l7382
	nop
	nop
.l7384
	nop
.l7385
	ld b,(hl)
	inc hl
	rr b
	jp c,l73e3
	rr b
	jr c,l73b3
	ld a,b
	and #0f
	jr nz,l739c
	ld (iy+#07),a
	ld lx,#09
	ret
.l739c
	ld lx,#08
	sub d
	jr nc,l73a3
	xor a
.l73a3
	ld (iy+#07),a
	rr b
	call l750c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l73b3
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l73c3
	ld (l737c),a
	ld lx,#00
.l73c3
	ld a,b
	and #0f
	sub d
	jr nc,l73ca
	xor a
.l73ca
	ld (iy+#07),a
	bit 5,c
	jr nz,l73d4
	inc lx
	ret
.l73d4
	rr b
	bit 6,c
	call l74fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l73e3
	rr b
	jr nc,l73f6
	ld a,(l7270)
	ld c,a
	ld a,(l7278)
	cp c
	jr nz,l73f6
	ld a,#fe
	ld (l7363),a
.l73f6
	bit 1,b
	jp nz,l74af
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l7384),a
	bit 0,b
	jr z,l7465
	bit 2,b
	call l74fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7425),a
	ld a,b
	exx
.l7425 equ $ + 1
	jr l7426
.l7426
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l7445
	inc hl
.l7445
	bit 5,a
	jr z,l7455
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l7455
	ld (l7382),hl
	exx
.l7459
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l737c),a
	ld lx,#00
	ret
.l7465
	bit 2,b
	call l74fe
	ld (l7382),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7479),a
	ld a,b
	exx
.l7479 equ $ + 1
	jr l747a
.l747a
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l74a6
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l74a6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l7459
.l74af
	bit 0,b
	jr z,l74ba
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l7385
.l74ba
	ld (iy+#07),#10
	bit 5,b
	jr nz,l74c7
	ld lx,#09
	jr l74da
.l74c7
	ld lx,#08
	ld hx,e
	bit 2,b
	call l74fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l74da
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l7384),a
	rr b
	rr b
	bit 2,b
	call l74fe
	ld (l7382),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l737c),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l74fe
	jr z,l750c
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l750c
	bit 4,b
	jr z,l751c
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l751c
	ld a,e
	bit 3,b
	jr z,l7529
	add (hl)
	inc hl
	cp #90
	jr c,l7529
	ld a,#8f
.l7529
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l756c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l7538
	ld a,(hl)
	inc hl
	srl a
	jr c,l755f
	sub #20
	jr c,l7569
	jr z,l755b
	dec a
	ld e,a
.l7546
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l7554
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l7554
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l755b
	ld e,(hl)
	inc hl
	jr l7546
.l755f
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l7569
	add #20
	ret
.l756c
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l768c
;
	ld hl,#0009
	add hl,de
	ld de,l71e5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l70f8),hl
	ld (l715d),hl
	ld (l71c2),hl
	add hl,bc
	ld de,l708b
	ldi
	ld de,l70dc
	ldi
	ld de,l7141
	ldi
	ld de,l71a6
	ldi
	ld de,l7077
	ldi
	ldi
	ld (l7025),hl
	ld a,#01
	ld (l701a),a
	ld (l7020),a
	ld a,#ff
	ld (l7384),a
	ld hl,(l70f8)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l726a),hl
	ld (l7236),hl
	ld (l7205),hl
	ret
;
.stop_music
.l76e1
;
	call l76fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l737d
	ld bc,#0300
.l76f2
	ld (hl),c
	inc hl
	djnz l76f2
	ld a,#3f
	jp l727f
.l76fb
	ld a,i
	di
	ld a,#f3
	jp po,l7705
	ld a,#fb
.l7705
	ld (l735f),a
	ret
;
; #3007
; ld de,#4000
; call #7000
;
.init_music		; added by Megachur
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "Reset 10 - Summer Night Rejection (2013)(Public Domain)(Brink)",0
	db "StArkos",0

	read "music_end.asm"