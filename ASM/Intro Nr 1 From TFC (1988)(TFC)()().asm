; Music of Intro Nr 1 From TFC (1988)(TFC)()()
; Ripped by Megachur the 20/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INTRN1FT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	ld hl,l4036
	ld de,#c000
.l4006
	inc hl
	ld b,(hl)
	bit 7,b
	jr nz,l4016
	inc hl
.l400d
	ld a,(hl)
	ld (de),a
	call l4022
	djnz l400d
	jr l4006
.l4017 equ $ + 1
.l4016
	res 7,b
.l4018
	inc hl
.l4019
	ld a,(hl)
.l401a
	ld (de),a
.l401d equ $ + 2
.l401b
	call l4022
.l401f equ $ + 1
	djnz l4018
.l4021 equ $ + 1
	jr l4006
.l4023 equ $ + 1
.l4022
	ld a,#08
	add d
.l4025
	ld d,a
.l4027 equ $ + 1
	cp #08
.l4029 equ $ + 1
	jr c,l402b
.l402a
	ret
.l402b
	add #c0
.l402d
	ld d,a
	inc de
	ld a,d
	cp #c8
	jr z,l4035
	di
.l4036 equ $ + 1
.l4035
	call l4094
	ld hl,l41b4
	ld de,l4063
	ld c,#ff
	ld b,#81
	call #bcd7	; KL NEW FRAME FLYInitialize and put a block ontothe frame flyback list.
	ld a,#01
	ld (l4016),a
	ei
	ret

	ld a,(l4016)
	or a
	ret z
	ld hl,l41b4
	call #bcdd
	ld c,#3f
	ld a,#07
	call lbd34	; KL DEL FRAME FLYRemove   a   block   from   theframe flyback list.
	xor a
	ld (l4016),a
	ret
;
.play_music
.l4063
;
	ld a,(l401a)
	or a
	call z,l40b4
	ld a,(l401a)
	dec a
	ld (l401a),a
	ld a,(l4022)
	or a
	call z,l40dc
	ld a,(l4022)
	dec a
	ld (l4022),a
	ld a,(l402a)
	or a
	call z,l40ff
	ld a,(l402a)
	dec a
	ld (l402a),a
	call l4137
	call l416a
	ret
;
.init_music
.l4094
;
	ld hl,l429a
	ld (l4017),hl
	ld hl,l434e
	ld (l401f),hl
	ld hl,l43f8
	ld (l4027),hl
	xor a
	ld (l401a),a
	ld (l4022),a
	ld (l402a),a
	ret
.l40b1		; reset music
	call l4094
.l40b4
	ld hl,(l4017)
	ld a,(hl)
	cp #ff
	jp z,l40b1
	and #3f
	push hl
	call l4159
	pop hl
	ld (l401b),de
	ld a,(hl)
	inc hl
	ld (l4017),hl
	and #c0
	call l4122
	ld (l401a),a
	ld hl,l423d
	ld (l401d),hl
	ret
.l40dc
	ld hl,(l401f)
	ld a,(hl)
	and #3f
	push hl
	call l4159
	pop hl
	ld (l4023),de
	ld a,(hl)
	inc hl
	ld (l401f),hl
	and #c0
	call l4122
	ld (l4022),a
	ld hl,l424f
	ld (l4025),hl
	ret
.l40ff
	ld hl,(l4027)
	ld a,(hl)
	and #3f
	push hl
	call l4159
	pop hl
	ld (l402b),de
	ld a,(hl)
	inc hl
	ld (l4027),hl
	and #c0
	call l4122
	ld (l402a),a
	ld hl,l4261
	ld (l402d),hl
	ret
.l4122
	ld hl,l4239
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	ret
.l4137
	ld hl,(l401d)
	ld a,(hl)
	ld (l4019),a
	inc hl
	ld (l401d),hl
	ld hl,(l4025)
	ld a,(hl)
	ld (l4021),a
	inc hl
	ld (l4025),hl
	ld hl,(l402d)
	ld a,(hl)
	ld (l4029),a
	inc hl
	ld (l402d),hl
	ret
.l4159
	ld hl,l41bd
	or a
	jp z,l4166
	sla a
	ld e,a
	ld d,#00
	add hl,de
.l4166
	ld e,(hl)
	inc hl
	ld d,(hl)
	ret
.l416a
	ld d,#00
	ld hl,(l401b)
	ld c,l
	call l41ac
	ld c,h
	call l41ac
	ld hl,(l4023)
	ld c,l
	call l41ac
	ld c,h
	call l41ac
	ld hl,(l402b)
	ld c,l
	call l41ac
	ld c,h
	call l41ac
	inc d
	inc d
	ld bc,(l4019)
	call l41ac
	ld bc,(l4021)
	call l41ac
	ld bc,(l4029)
	call l41ac
	ld c,#38
	ld d,#07
	call l41ac
	ret
.l41ac
	ld a,d
	push de
	call lbd34
	pop de
	inc d
	ret
.l41b4
	db #f9,#00,#fb,#00,#00,#81,#63,#40
	db #ff
.l41bd
	dw #0000,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e
.l423d equ $ + 4
.l4239
	db #18,#0c,#06,#03,#0f,#0f,#0c,#0a
	db #08,#08,#08,#08,#08,#08,#08,#08
.l424f equ $ + 6
	db #08,#07,#06,#05,#04,#03,#08,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
.l4261
	db #0f,#05,#0d,#05,#0b,#05,#0a,#05
	db #09,#05,#08,#05,#07,#05,#06,#05
	db #05,#05,#2f,#01,#23,#06,#2f,#01
	db #23,#06,#00,#2f,#22,#06,#00,#2e
	db #22,#06,#00,#2e,#22,#06,#2e,#06
	db #22,#06,#25,#06,#22,#06,#25,#06
	db #22,#06,#00,#25,#23,#06,#00,#20
.l429a equ $ + 1
	db #23,#ac,#a8,#a5,#ad,#a8,#a5,#ac
	db #a8,#a5,#ad,#a8,#a5,#ac,#a8,#a5
	db #ad,#a8,#a5,#ac,#a8,#a5,#ad,#a8
	db #a5,#b1,#ad,#aa,#b2,#ad,#aa,#b1
	db #ad,#aa,#b2,#ad,#aa,#b1,#ad,#aa
	db #b2,#ad,#aa,#b1,#ad,#aa,#b2,#ad
	db #aa,#b4,#b1,#ad,#b6,#b2,#ad,#b4
	db #b1,#ad,#b6,#b2,#ad,#b1,#b2,#af
	db #b1,#ad,#af,#a5,#a6,#a3,#a5,#a1
	db #a3,#97,#9a,#9e,#9c,#99,#95,#a3
	db #a6,#aa,#a8,#a5,#a1,#9c,#9f,#a3
	db #a1,#9e,#9a,#a8,#ab,#af,#ad,#aa
	db #a6,#a5,#a5,#a5,#a6,#a3,#a4,#a5
	db #a5,#a5,#a6,#a3,#a4,#a5,#a6,#a3
	db #a5,#a1,#a3,#a5,#a6,#a3,#a5,#a1
	db #a3,#52,#52,#52,#52,#52,#52,#4e
	db #4e,#4e,#4e,#4e,#4e,#4b,#4b,#4b
	db #4b,#4b,#4b,#4d,#4d,#4d,#4d,#4d
	db #4d,#52,#52,#52,#52,#52,#52,#4e
	db #4e,#4e,#4e,#4e,#4e,#4b,#4b,#4b
	db #4b,#4b,#4b,#4d,#4d,#4d,#4d,#4d
	db #4d,#ff,#00,#00,#25,#06,#25,#06
.l434e equ $ + 5
	db #22,#06,#00,#00,#28,#a0,#9c,#a0
	db #9c,#a0,#9c,#a0,#9c,#a0,#9c,#a0
	db #9c,#a0,#9c,#a0,#9c,#a0,#9c,#a0
	db #9c,#a0,#9c,#a0,#9c,#a5,#a1,#a5
	db #a1,#a5,#a1,#a5,#a1,#a5,#a1,#a5
	db #a1,#a5,#a1,#a5,#a1,#a5,#a1,#a5
	db #a1,#a5,#a1,#a5,#a1,#a8,#aa,#a8
	db #aa,#a8,#aa,#a8,#aa,#a8,#aa,#a8
	db #aa,#8d,#8e,#90,#8e,#90,#92,#90
	db #92,#94,#92,#94,#95,#8b,#8b,#8b
	db #8b,#8b,#8b,#8d,#8d,#8d,#8d,#8d
	db #8d,#8e,#8e,#8e,#8e,#8e,#8e,#90
	db #90,#90,#90,#90,#90,#99,#99,#99
	db #97,#97,#97,#95,#95,#95,#94,#94
	db #94,#92,#92,#92,#90,#90,#90,#8e
	db #8e,#8e,#8d,#8d,#8d,#5e,#61,#65
	db #6a,#6d,#71,#5a,#5e,#61,#66,#6a
	db #6d,#57,#5a,#5e,#63,#66,#6a,#59
	db #5c,#60,#65,#68,#6c,#5e,#61,#65
	db #6a,#6d,#71,#5a,#5e,#61,#66,#6a
	db #6d,#57,#5a,#5e,#63,#66,#6a,#59
.l43f8 equ $ + 7
	db #5c,#60,#65,#68,#6c,#00,#00,#8d
	db #8d,#8d,#8d,#8d,#8d,#8d,#8d,#8d
	db #8d,#8d,#8d,#8d,#8d,#8d,#8d,#8d
	db #8d,#8d,#8d,#8d,#8d,#8d,#8d,#92
	db #92,#92,#92,#92,#92,#92,#92,#92
	db #92,#92,#92,#92,#92,#92,#92,#92
	db #92,#92,#92,#92,#92,#92,#92,#95
	db #95,#95,#95,#95,#95,#95,#95,#95
	db #95,#95,#95,#94,#94,#94,#94,#94
	db #94,#94,#94,#94,#94,#94,#94,#97
	db #9a,#9e,#9c,#99,#95,#a3,#a6,#aa
	db #a8,#a5,#a1,#9c,#9f,#a3,#a1,#9e
	db #9a,#a8,#ab,#af,#ad,#aa,#a6,#99
	db #99,#99,#9a,#97,#98,#99,#99,#99
	db #9a,#97,#98,#99,#9a,#97,#99,#95
	db #97,#a5,#a6,#a3,#a5,#a1,#a3,#aa
	db #ac,#ad,#aa,#ac,#ad,#aa,#ac,#ad
	db #aa,#ac,#ad,#a6,#a8,#aa,#a6,#a8
	db #aa,#a6,#a8,#aa,#a6,#a8,#aa,#a3
	db #a5,#a6,#a3,#a5,#a6,#a3,#a5,#a6
	db #a3,#a5,#a6,#a5,#a7,#a8,#a5,#a7
	db #a8,#a5,#a7,#a8,#a5,#a7,#a8,#aa
	db #ac,#ad,#aa,#ac,#ad,#aa,#ac,#ad
	db #aa,#ac,#ad,#a6,#a8,#aa,#a6,#a8
	db #aa,#a6,#a8,#aa,#a6,#a8,#aa,#a3
	db #a5,#a6,#a3,#a5,#a6,#a3,#a5,#a6
	db #a3,#a5,#a6,#a5,#a7,#a8,#a5,#a7
	db #a8,#a5,#a7,#a8,#a5,#a7,#a8,#00
	db #00,#00,#00,#80,#28,#e1,#ac,#42
	db #8a,#c0,#b8,#43,#4c,#c1,#da,#62
	db #a6,#a3,#2c,#00,#d8,#60,#b4,#c1
	db #8a,#43,#46,#e2,#dc,#61,#26,#a0
	db #ca,#02,#44,#20,#4c,#83,#84,#e1
	db #5a,#40,#22,#68,#1a,#6d,#1c,#a2
	db #24,#43,#a2,#c1,#54,#20,#d2,#c2
	db #24,#e2,#32,#60,#24,#c3,#32,#49
	db #08,#c0,#d4,#21,#22,#aa,#12,#a5
	db #14,#ae,#16,#ae,#18,#ae,#1a,#65
	db #10,#6a,#12,#6e,#14,#6e,#16,#24
	db #32,#c4,#33,#08,#0c,#64,#14,#cc
	db #02,#eb,#02,#09,#0d,#64,#b8,#ad
	db #0a,#ec,#04,#0b,#04,#64,#56,#e2
	db #c8,#64,#56,#a8,#02,#02,#ac,#4d
	db #06,#a8,#02,#c4,#1c,#05,#1a,#0a
	db #0c,#05,#0e,#84,#1c,#e9,#06,#22
	db #a8,#a0,#b8,#29,#02,#63,#86,#e1
	db #28,#27,#07,#47,#07,#27,#07,#a2
	db #a8,#20,#26,#a9,#0e,#20,#a6,#83
	db #5a,#c1,#84,#22,#48,#a0,#c4,#20
	db #46,#a1,#94,#22,#b6,#a3,#54,#20
	db #d6,#82,#24,#e3,#ca,#21,#58,#a3
	db #84,#e0,#b6,#62,#4c,#e1,#96,#63
	db #28,#e0,#d4,#62,#4a,#e2,#a2,#49
	db #08,#a0,#4c,#23,#2c,#a1,#2c,#02
	db #82,#81,#9c,#03,#32,#80,#32,#07
	db #0c,#69,#06,#c2,#b4,#40,#28,#a1
	db #a6,#03,#b8,#81,#16,#02,#b2,#85
	db #00,#8a,#12,#8e,#14,#04,#12,#84
	db #b6,#e4,#32,#4d,#06,#ac,#12,#a4
	db #1c,#cb,#12,#08,#12,#2d,#12,#44
	db #3c,#6e,#12,#ed,#02,#04,#16,#68
	db #0c,#a4,#12,#0e,#02,#2d,#08,#88
	db #0b,#c4,#03,#2d,#0d,#64,#a8,#ed
	db #03,#28,#0d,#44,#a8,#84,#a6,#ac
	db #0a,#cb,#0a,#24,#a8,#4c,#04,#6b
	db #04,#a4,#d6,#22,#88,#80,#a6,#01
	db #48,#69,#04,#c3,#86,#29,#05,#49
	db #08,#c2,#a6,#29,#02,#60,#48,#c9
	db #04,#09,#08,#49,#0c,#a2,#86,#20
	db #d8,#81,#b4,#00,#bc,#81,#42,#e3
	db #4c,#40,#42,#c2,#cc,#23,#22,#80
	db #aa,#e2,#48,#49,#08,#a9,#05,#e0
	db #06,#e0,#0a,#20,#08,#20,#04,#80
	db #02,#80,#06,#e0,#04,#80,#04,#03
	db #c3,#81,#c0,#03,#cc,#81,#c0,#03
	db #c3,#81,#c0,#03,#cc,#81,#c0,#03
	db #c3,#08,#80,#7f,#00,#7f,#00,#5a
	db #00,#08,#40,#81,#c0,#03,#03,#81
	db #c0,#03,#f0,#81,#c0,#03,#03,#81
	db #c0,#03,#f0,#81,#c0,#03,#03,#81
	db #c0,#03,#f0,#81,#c0,#03,#42,#81
	db #c0,#03,#e0,#48,#00,#81,#c0,#03
	db #81,#81,#c0,#03,#d0,#81,#c0,#03
	db #03,#81,#c0,#03,#f0,#81,#c0,#03
	db #03,#81,#c0,#03,#f0,#81,#c0,#03
	db #03,#81,#c0,#03,#f0,#08,#80,#68
	db #00,#81,#c0,#03,#81,#81,#c0,#03
	db #d0,#81,#c0,#03,#03,#81,#c0,#03
	db #f0,#81,#c0,#03,#03,#81,#c0,#03
	db #f0,#81,#c0,#03,#03,#81,#c0,#03
	db #f0,#08,#80,#7f,#00,#7f,#00,#5a
	db #00,#08,#40,#81,#c0,#03,#3c,#81
	db #c0,#03,#0f,#81,#c0,#03,#3c,#81
	db #c0,#03,#0f,#81,#c0,#03,#3c,#81
	db #c0,#03,#0f,#81,#c0,#03,#68,#81
	db #c0,#03,#4a,#48,#00,#81,#c0,#03
	db #94,#81,#c0,#03,#85,#81,#c0,#03
	db #3c,#81,#c0,#03,#0f,#81,#c0,#03
	db #3c,#81,#c0,#03,#0f,#81,#c0,#03
	db #3c,#81,#c0,#03,#0f,#08,#80,#68
	db #00,#81,#c0,#03,#94,#81,#c0,#03
	db #85,#81,#c0,#03,#3c,#81,#c0,#03
	db #0f,#81,#c0,#03,#3c,#81,#c0,#03
	db #0f,#81,#c0,#03,#3c,#81,#c0,#03
	db #0f,#81,#80,#02,#c0,#82,#3c,#c0
	db #03,#0f,#81,#00,#02,#c0,#82,#3c
	db #c0,#03,#0f,#81,#00,#02,#c0,#82
	db #3c,#c0,#03,#0f,#81,#00,#02,#c0
	db #82,#3c,#c0,#03,#0f,#81,#00,#02
	db #c0,#82,#3c,#c0,#03,#0f,#81,#00
	db #02,#c0,#82,#3c,#c0,#03,#0f,#81
	db #00,#02,#c0,#82,#3c,#c0,#03,#0f
	db #81,#00,#02,#c0,#82,#3c,#c0,#03
	db #0f,#81,#00,#02,#c0,#82,#3c,#c0
	db #03,#0f,#81,#00,#07,#80,#7f,#00
	db #7f,#00,#12,#00,#08,#40,#81,#c0
	db #03,#0c,#81,#c0,#03,#30,#81,#c0
	db #03,#0c,#81,#c0,#03,#30,#81,#c0
	db #03,#0c,#81,#c0,#03,#30,#81,#c0
	db #03,#48,#81,#c0,#03,#60,#48,#00
	db #81,#c0,#03,#84,#81,#c0,#03,#90
	db #81,#c0,#03,#0c,#81,#c0,#03,#30
	db #81,#c0,#03,#0c,#81,#c0,#03,#30
	db #81,#c0,#03,#0c,#81,#c0,#03,#30
	db #08,#80,#68,#00,#81,#c0,#03,#84
	db #81,#c0,#03,#90,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#81,#c0,#03,#0c
	db #81,#c0,#03,#30,#08,#80,#7f,#00
	db #7f,#00,#12,#00,#03,#40,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#4d,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#80,#6d,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#c0,#05,#00,#03,#c0,#05,#00
	db #03,#80,#7f,#00,#7f,#00,#7f,#00
	db #7f,#00,#7f,#00,#7f,#00,#7f,#00
	db #7f,#00,#18,#00,#83,#cc,#88,#cc
	db #02,#88,#03,#00,#03,#88,#05,#00
	db #83,#cc,#88,#cc,#02,#88,#04,#00
	db #04,#88,#03,#00,#85,#cc,#88,#cc
	db #00,#cc,#03,#00,#82,#88,#00,#03
	db #88,#03,#00,#85,#cc,#88,#cc,#88
	db #cc,#03,#00,#81,#88,#03,#00,#81
	db #88,#03,#00,#81,#88,#02,#cc,#02
	db #88,#03,#00,#05,#88,#03,#00,#81
	db #cc,#04,#44,#03,#00,#81,#88,#07
	db #00,#85,#cc,#88,#cc,#00,#cc,#03
	db #00,#82,#88,#00,#03,#88,#7f,#00
	db #7f,#00,#7f,#00,#7f,#00,#7f,#00
	db #7f,#00,#7f,#00,#7f,#00,#7f,#00
	db #7f,#00,#7f,#00,#7f,#00,#7f,#00
	db #08,#00,#03,#c0,#02,#00,#03,#c0
	db #05,#00,#03,#c0,#08,#00,#03,#c0
	db #05,#00,#08,#c0,#18,#00,#08,#c0
	db #08,#00,#08,#c0,#05,#00,#03,#c0
	db #05,#00,#06,#c0,#05,#00,#05,#c0
	db #0b,#00,#03,#c0,#02,#00,#03,#c0
	db #03,#00,#05,#c0,#08,#00,#05,#c0
	db #03,#00,#03,#c0,#05,#00,#03,#c0
	db #02,#00,#03,#c0,#10,#00,#03,#c0
	db #02,#00,#03,#c0,#08,#00,#08,#c0
	db #05,#00,#03,#c0,#08,#00,#03,#c0
	db #08,#00,#02,#c0,#13,#00,#08,#c0
	db #05,#00,#03,#c0,#05,#00,#06,#c0
	db #05,#00,#05,#c0,#06,#00,#02,#c0
	db #4b,#00,#03,#c0,#02,#00,#03,#c0
	db #05,#00,#03,#c0,#08,#00,#03,#c0
	db #05,#00,#08,#c0,#7f,#00,#65,#00
	db #81,#c0,#09,#00,#06,#c0,#82,#00
	db #c0,#06,#00,#81,#c0,#18,#00,#81
	db #c0,#06,#00,#81,#c0,#08,#00,#08
	db #c0,#14,#00,#08,#c0,#14,#00,#81
	db #c0,#06,#00,#81,#c0,#07,#00,#09
	db #c0,#17,#00,#81,#c0,#18,#00,#08
	db #c0,#81,#00,#03,#c0,#05,#00,#06
	db #c0,#02,#00,#03,#c0,#03,#00,#02
	db #c0,#10,#00,#06,#c0,#82,#00,#c0
	db #06,#00,#81,#c0,#18,#00,#81,#c0
	db #06,#00,#08,#c0,#58,#00,#81,#c0
	db #09,#00,#06,#c0,#82,#00,#c0,#06
	db #00,#81,#c0,#7f,#00,#61,#00,#02
	db #c0,#08,#00,#03,#c0,#05,#00,#03
	db #c0,#03,#00,#02,#c0,#1e,#00,#02
	db #c0,#08,#00,#03,#c0,#03,#00,#02
	db #c0,#16,#00,#02,#c0,#08,#00,#03
	db #c0,#0d,#00,#03,#c0,#03,#00,#02
	db #c0,#06,#00,#02,#c0,#06,#00,#02
	db #c0,#08,#00,#03,#c0,#05,#00,#03
	db #c0,#03,#00,#02,#c0,#18,#00,#03
	db #c0,#03,#00,#02,#c0,#16,#00,#05
	db #c0,#05,#00,#03,#c0,#0d,#00,#03
	db #c0,#03,#00,#02,#c0,#08,#00,#03
	db #c0,#05,#00,#03,#c0,#05,#00,#03
	db #c0,#03,#00,#02,#c0,#5e,#00,#02
	db #c0,#08,#00,#03,#c0,#05,#00,#03
	db #c0,#03,#00,#02,#c0,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#32,#00,#81,#40,#04
	db #00,#85,#40,#00,#c0,#00,#80,#02
	db #00,#81,#c0,#03,#00,#81,#c0,#04
	db #80,#84,#40,#00,#40,#80,#03,#00
	db #82,#40,#80,#02,#00,#02,#40,#05
	db #00,#81,#c0,#04,#00,#84,#80,#40
	db #00,#c0,#02,#80,#89,#c0,#80,#40
	db #80,#00,#c0,#00,#c0,#80,#07,#00
	db #02,#40,#03,#00,#81,#40,#02,#80
	db #02,#00,#85,#80,#40,#00,#c0,#00
	db #02,#40,#86,#80,#00,#c0,#00,#80
	db #c0,#03,#00,#82,#40,#80,#24,#00
	db #83,#40,#00,#40,#04,#00,#04,#80
	db #81,#40,#03,#00,#04,#80,#81,#40
	db #03,#00,#81,#80,#02,#40,#81,#80
	db #0b,#00,#83,#40,#00,#c0,#03,#40
	db #06,#00,#81,#80,#0d,#00,#83,#40
	db #00,#40,#04,#00,#8d,#c0,#00,#c0
	db #00,#c0,#00,#80,#40,#80,#00,#80
	db #40,#80,#09,#00,#81,#40,#07,#00
	db #81,#40,#02,#80,#81,#c0,#03,#80
	db #03,#00,#81,#c0,#03,#00,#82,#40
	db #80,#03,#00,#83,#80,#40,#80,#06
	db #00,#02,#40,#04,#00,#85,#40,#80
	db #40,#80,#c0,#03,#00,#85,#80,#c0
	db #00,#40,#80,#06,#00,#81,#80,#05
	db #00,#83,#40,#00,#40,#04,#00,#8d
	db #c0,#00,#c0,#00,#c0,#00,#80,#40
	db #80,#00,#80,#40,#80,#2a,#00,#81
	db #40,#03,#00,#81,#40,#02,#00,#04
	db #80,#83,#40,#00,#c0,#02,#00,#81
	db #40,#02,#00,#82,#c0,#80,#02,#00
	db #04,#80,#08,#00,#02,#40,#04,#00
	db #82,#40,#80,#02,#00,#81,#c0,#03
	db #00,#81,#80,#03,#40,#81,#80,#05
	db #00,#81,#80,#06,#00,#81,#40,#06
	db #00,#04,#80,#81,#40,#03,#00,#85
	db #40,#c0,#40,#c0,#40,#06,#00,#81
	db #80,#26,#00,#02,#40,#04,#00,#82
	db #40,#80,#02,#00,#81,#c0,#04,#00
	db #84,#c0,#40,#c0,#40,#03,#00,#81
	db #80,#02,#00,#81,#80,#7f,#00,#23
	db #00,#81,#40,#07,#00,#81,#40,#02
	db #80,#81,#c0,#03,#80,#03,#00,#81
	db #c0,#03,#00,#82,#40,#80,#03,#00
	db #83,#80,#40,#80,#06,#00,#02,#40
	db #04,#00,#82,#40,#80,#02,#00,#81
	db #c0,#04,#00,#84,#c0,#40,#c0,#40
	db #03,#00,#81,#80,#02,#00,#81,#80
	db #04,#00,#81,#40,#02,#00,#81,#40
	db #04,#00,#81,#40,#02,#80,#81,#c0
	db #02,#80,#03,#00,#83,#80,#40,#80
	db #0c,#00,#81,#40,#02,#00,#81,#40
	db #04,#00,#81,#40,#02,#80,#81,#c0
	db #02,#80,#03,#00,#83,#80,#40,#80
	db #0c,#00,#81,#40,#07,#00,#81,#40
	db #04,#80,#03,#00,#81,#80,#02,#40
	db #02,#80,#81,#40,#2a,#00,#81,#40
	db #07,#00,#81,#40,#02,#80,#82,#c0
	db #80,#03,#00,#81,#80,#04,#40,#06
	db #00,#81,#80,#06,#00,#02,#40,#04
	db #00,#85,#40,#80,#40,#80,#c0,#03
	db #00,#85,#80,#c0,#00,#40,#80,#06
	db #00,#81,#80,#05,#00,#83,#40,#00
	db #40,#04,#00,#04,#80,#81,#40,#03
	db #00,#04,#80,#81,#40,#03,#00,#81
	db #80,#02,#40,#81,#80,#23,#00,#81
	db #40,#03,#00,#81,#40,#02,#00,#04
	db #80,#83,#40,#00,#c0,#02,#00,#81
	db #40,#02,#00,#82,#c0,#80,#02,#00
	db #04,#80,#08,#00,#02,#40,#04,#00
	db #85,#40,#80,#40,#80,#c0,#03,#00
	db #85,#80,#c0,#00,#40,#80,#06,#00
	db #81,#80,#06,#00,#02,#40,#04,#00
	db #82,#40,#80,#02,#00,#81,#c0,#04
	db #00,#84,#c0,#40,#c0,#40,#03,#00
	db #81,#80,#02,#00,#81,#80,#04,#00
	db #81,#40,#07,#00,#81,#40,#03,#80
	db #81,#40,#03,#00,#82,#80,#40,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#78,#00,#00,#00
;
; #bd34 -> ROM #0863 - added by Megachur
;
lbd34
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
	ret
;
.music_info
	db "Intro Nr 1 From TFC (1988)(TFC)()",0
	db "",0

	read "music_end.asm"