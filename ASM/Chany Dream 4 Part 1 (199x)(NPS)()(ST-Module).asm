; Music of Chany Dream 4 Part 1 (199x)(NPS)()(ST-Module)
; Ripped by Megachur the 30/09/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHAND4P1.BIN"
	ENDIF

music_date_rip_day		equ 30
music_date_rip_month	equ 09
music_date_rip_year		equ 2014
music_adr				equ &70e0

	read "music_header.asm"

	jp l70eb
	jp l7173
	jp l7157
	ld h,(hl)
	inc b
;
.init_music
.l70eb
;
	ld b,#03
	ld ix,l74ba
	ld iy,l73e6
	ld de,#001c
.l70f8
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l70f8
	ld a,#06
	ld (l719b),a
	ld a,d
	ld (l71af),a
	inc a
	ld (l7196),a
	ld a,#38
	ld (l71a0),a
	ld a,#ff
	ld (l73e2),a
	ld (l73e3),a
	ld (l73e4),a
	ld (l73e5),a
	ld a,#0c
	ld c,d
	call l73c4
	ld a,#0d
	ld c,d
	jp l73c4
;
.stop_music
.l7157
;
	ld a,#07
	ld c,#3f
	call l73c4
	ld a,#08
	ld c,#00
	call l73c4
	ld a,#09
	ld c,#00
	call l73c4
	ld a,#0a
	ld c,#00
	jp l73c4
;
.play_music
.l7173
;
	ld hl,l7196
	dec (hl)
	ld ix,l74ba
	ld bc,l74c8
	call l7229
	ld ix,l74d6
	ld bc,l74e4
	call l7229
	ld ix,l74f2
	ld bc,l7500
	call l7229
.l7196 equ $ + 1
	ld a,#03
	or a
	jr nz,l719f
.l719b equ $ + 1
	ld a,#06
	ld (l7196),a
.l71a0 equ $ + 1
.l719f
	ld a,#38
	ld hl,l73e3
	cp (hl)
	jr z,l71ae
	ld (hl),a
	ld c,a
	ld a,#07
	call l73c4
.l71af equ $ + 1
.l71ae
	ld a,#01
	ld hl,l73e2
	cp (hl)
	jr z,l71bd
	ld (hl),a
	ld c,a
	ld a,#06
	call l73c4
.l71be equ $ + 1
.l71bd
	ld a,#14
	ld hl,l73e4
	cp (hl)
	jr z,l71cc
	ld (hl),a
	ld c,a
	ld a,#0b
	call l73c4
.l71cd equ $ + 1
.l71cc
	ld a,#0a
	ld hl,l73e5
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l73c4
.l71da
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l72da
.l71e9
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l73c4
.l7203
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7218
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7218
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l723c
.l7229
	ld a,(l7196)
	or a
	jp nz,l72da
	dec (ix+#06)
	jp nz,l72da
	ld l,(ix+#00)
	ld h,(ix+#01)
.l723c
	ld a,(hl)
	or a
	jr z,l71da
	cp #fe
	jr z,l71e9
	cp #ff
	jr z,l7203
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l73ec
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7278
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7278
	and #7f
	ld (ix+#06),a
	jr l72cb
.l7278
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l728c
	ld (ix+#05),a
	ld (ix+#0a),d
.l728c
	add a
	add a
	add a
	ld e,a
	ld hl,l7522
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l72cb
	cp #f0
	jp z,l7380
	cp #d0
	jp z,l739c
	cp #b0
	jp z,l73a4
	cp #80
	jp nc,l73ac
	cp #10
	jr nz,l72cb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l72cb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l72da
	ld a,(ix+#17)
	or a
	jr nz,l72ee
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l72ee
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7319
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l73ec
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7319
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l73c4
	ld c,h
	ld a,(ix+#03)
	call l73c4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7357
	and #0f
	sub (ix+#0a)
	jr nc,l734d
	xor a
.l734d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l73c4
.l7357
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l7374
	ld b,a
	ld a,c
	ld (l71af),a
	ld a,b
	sub #40
.l7374
	ld (l737b),a
	ld a,(l71a0)
.l737b equ $ + 1
	set 5,a
	ld (l71a0),a
	ret
.l7380
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l75a2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l72cb
.l739c
	inc hl
	ld a,(hl)
	ld (l719b),a
	jp l72cb
.l73a4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l72cb
.l73ac
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l71cd),a
	inc hl
	ld a,(hl)
	ld (l71be),a
	jp l72cb
.l73c4
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
	ret
.l73e5 equ $ + 3
.l73e4 equ $ + 2
.l73e3 equ $ + 1
.l73e2
	db #01,#38,#14,#0a
.l73e6
	dw l77a2,l77c6,l77ea
.l73ec
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l74ba equ $ + 4
	db #00,#00,#00,#00,#4d,#79,#00,#01
	db #08,#00,#01,#21,#00,#00,#00,#df
.l74c8 equ $ + 2
	db #ab,#77,#c2,#75,#02,#76,#22,#76
	db #00,#00,#04,#1c,#38,#02,#00,#00
.l74d6
	db #c0,#7a,#02,#03,#09,#01,#01,#34
.l74e4 equ $ + 6
	db #00,#00,#03,#e7,#cf,#77,#c2,#75
	db #42,#76,#22,#76,#00,#00,#0a,#16
.l74f2 equ $ + 4
	db #be,#00,#82,#00,#d8,#7c,#04,#05
	db #0a,#05,#0e,#40,#00,#00,#00,#ef
.l7500 equ $ + 2
	db #f3,#77,#c2,#75,#e2,#76,#22,#76
	db #0b,#15,#10,#10,#5f,#00,#42,#77
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l7522 equ $ + 4
	db #75,#6c,#65,#2e,#c2,#75,#02,#76
	db #22,#76,#00,#00,#c2,#75,#42,#76
	db #22,#76,#00,#00,#62,#76,#a2,#76
	db #c2,#76,#00,#00,#bb,#6f,#dd,#01
	db #2c,#ce,#23,#56,#df,#70,#cc,#6f
	db #c5,#ed,#23,#4e,#c2,#75,#e2,#76
	db #22,#76,#0b,#15,#c4,#ab,#0b,#76
	db #bc,#5c,#b0,#18,#c2,#75,#02,#77
	db #22,#77,#00,#00,#c2,#6f,#6b,#88
	db #31,#6e,#f0,#30,#c5,#45,#bc,#6f
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
.l75a2 equ $ + 4
	db #bc,#6f,#00,#00,#bc,#6f,#bc,#6f
	db #bc,#6f,#42,#77,#62,#77,#82,#77
	db #bc,#6f,#bc,#6f,#bc,#6f,#bc,#6f
	db #bc,#6f,#bc,#6f,#bc,#6f,#bc,#6f
	db #bc,#6f,#bc,#6f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#0d,#0a,#07,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
.l77a2 equ $ + 4
	db #05,#09,#00,#05,#00,#0e,#78,#00
	db #ab,#78,#00,#48,#79,#00,#48,#79
	db #00,#aa,#79,#00,#aa,#79,#00,#0f
	db #7a,#00,#aa,#79,#00,#aa,#79,#00
	db #aa,#79,#00,#aa,#79,#80,#a8,#77
.l77c6
	db #00,#74,#7a,#00,#77,#7a,#00,#ba
	db #7a,#00,#56,#7b,#00,#f3,#7b,#00
	db #f3,#7b,#00,#2f,#7c,#00,#2f,#7c
	db #00,#2f,#7c,#00,#8d,#7c,#00,#8d
.l77ea equ $ + 4
	db #7c,#80,#cc,#77,#00,#a2,#7c,#00
	db #bb,#7c,#00,#d4,#7c,#00,#e9,#7c
	db #00,#fe,#7c,#00,#fe,#7c,#00,#e9
	db #7c,#00,#1b,#7d,#00,#96,#7d,#00
	db #13,#7e,#00,#13,#7e,#80,#f0,#77
	db #c6,#b7,#00,#3e,#02,#b7,#03,#c6
	db #b7,#03,#3e,#02,#b7,#05,#c6,#b7
	db #00,#c5,#b7,#00,#c6,#b7,#00,#c6
	db #b7,#03,#c3,#b7,#00,#c6,#b7,#03
	db #c6,#b7,#05,#c3,#b7,#03,#43,#02
	db #b7,#00,#c6,#b7,#00,#43,#02,#b7
	db #03,#c8,#b7,#00,#43,#02,#b7,#05
	db #4a,#02,#b7,#00,#c6,#b7,#00,#4a
	db #02,#b7,#03,#c5,#b7,#00,#4a,#02
	db #b7,#05,#43,#02,#b7,#00,#c6,#b7
	db #00,#43,#02,#b7,#03,#c6,#b7,#03
	db #43,#02,#b7,#05,#c6,#b7,#00,#c5
	db #b7,#00,#c6,#b7,#00,#c6,#b7,#03
	db #c3,#b7,#00,#c6,#b7,#03,#c6,#b7
	db #05,#c3,#b7,#03,#43,#02,#b7,#00
	db #bf,#b7,#00,#43,#02,#b7,#03,#c3
	db #b7,#00,#43,#02,#b7,#05,#46,#02
	db #b7,#00,#c5,#b7,#00,#46,#02,#b7
	db #03,#c1,#b7,#00,#46,#02,#b7,#05
	db #3e,#02,#b7,#00,#ff,#c6,#b7,#00
	db #3e,#02,#b7,#03,#c6,#b7,#03,#3e
	db #02,#b7,#05,#c6,#b7,#00,#c5,#b7
	db #00,#c6,#b7,#00,#c6,#b7,#03,#c3
	db #b7,#00,#c6,#b7,#03,#c6,#b7,#05
	db #c3,#b7,#03,#43,#02,#b7,#00,#c6
	db #b7,#00,#43,#02,#b7,#03,#c8,#b7
	db #00,#43,#02,#b7,#05,#4a,#02,#b7
	db #00,#c6,#b7,#00,#4a,#02,#b7,#03
	db #c5,#b7,#00,#4a,#02,#b7,#05,#43
	db #02,#b7,#00,#c6,#b7,#00,#43,#02
	db #b7,#03,#c6,#b7,#03,#43,#02,#b7
	db #05,#c6,#b7,#00,#c5,#b7,#00,#c6
	db #b7,#00,#c6,#b7,#03,#c3,#b7,#00
	db #c6,#b7,#03,#c6,#b7,#05,#c3,#b7
	db #03,#43,#02,#b7,#00,#bf,#b7,#00
	db #43,#02,#b7,#03,#c3,#b7,#00,#43
	db #02,#b7,#05,#46,#02,#b7,#00,#c5
	db #b7,#00,#46,#02,#b7,#03,#c1,#b7
	db #00,#46,#02,#b7,#05,#3e,#02,#b7
	db #00,#ff,#2b,#02,#00,#ab,#00,#ab
	db #00,#ba,#02,#2b,#02,#00,#ab,#00
	db #2b,#82,#2b,#82,#ba,#02,#2b,#02
	db #00,#ab,#00,#27,#82,#a7,#00,#a7
	db #00,#ba,#02,#27,#02,#00,#a7,#00
	db #29,#82,#29,#82,#ba,#02,#29,#02
	db #00,#a9,#00,#2b,#82,#ab,#00,#ab
	db #00,#ba,#02,#2b,#02,#00,#ab,#00
	db #2b,#82,#2b,#82,#ba,#02,#2b,#02
	db #00,#ab,#00,#27,#82,#a7,#00,#a7
	db #00,#ba,#02,#27,#02,#00,#a7,#00
	db #29,#82,#29,#82,#ba,#02,#29,#02
	db #00,#a9,#00,#ff,#2b,#02,#00,#ab
	db #00,#ab,#00,#ba,#02,#2b,#02,#00
	db #ab,#00,#2b,#82,#2b,#82,#ba,#02
	db #2b,#02,#00,#ab,#00,#27,#82,#a7
	db #00,#a7,#00,#ba,#02,#27,#02,#00
	db #a7,#00,#29,#82,#29,#82,#ba,#02
	db #29,#02,#00,#a9,#00,#2b,#82,#ab
	db #00,#ab,#00,#ba,#02,#2b,#02,#00
	db #ab,#00,#2b,#82,#2b,#82,#ba,#02
	db #2b,#02,#00,#ab,#00,#27,#82,#a7
	db #00,#a7,#00,#ba,#02,#27,#02,#00
	db #a7,#00,#a9,#00,#ba,#02,#29,#02
	db #00,#ba,#02,#29,#02,#00,#a9,#00
	db #ff,#2b,#02,#00,#ab,#00,#ab,#00
	db #ba,#02,#2b,#02,#00,#ab,#00,#2b
	db #82,#2b,#82,#ba,#02,#2b,#02,#00
	db #ab,#00,#27,#82,#a7,#00,#a7,#00
	db #ba,#02,#27,#02,#00,#a7,#00,#29
	db #82,#29,#82,#ba,#02,#29,#02,#00
	db #a9,#00,#2b,#82,#ab,#00,#ab,#00
	db #ba,#02,#2b,#02,#00,#ab,#00,#2b
	db #82,#2b,#82,#ba,#02,#2b,#02,#00
	db #ab,#00,#27,#82,#a7,#00,#a7,#00
	db #ba,#02,#27,#02,#00,#a7,#00,#a9
	db #00,#ba,#02,#29,#02,#00,#ba,#02
	db #29,#02,#00,#a9,#00,#ff,#fe,#40
	db #ff,#46,#06,#b1,#07,#c6,#b1,#07
	db #c5,#b1,#07,#46,#82,#43,#84,#43
	db #02,#b1,#06,#46,#83,#48,#83,#4a
	db #82,#46,#03,#b1,#05,#45,#83,#43
	db #82,#46,#06,#b1,#04,#c6,#b1,#04
	db #c5,#b1,#04,#46,#82,#43,#84,#43
	db #02,#b1,#03,#3f,#83,#43,#83,#46
	db #82,#45,#03,#b1,#02,#41,#03,#b1
	db #01,#3e,#82,#ff,#c6,#11,#3e,#02
	db #b1,#03,#c6,#b1,#03,#3e,#02,#b1
	db #05,#c6,#b1,#00,#c5,#b1,#00,#c6
	db #b1,#00,#c6,#b1,#03,#c3,#b1,#00
	db #c6,#b1,#03,#c6,#b1,#05,#c3,#b1
	db #03,#43,#02,#b1,#00,#c6,#b1,#00
	db #43,#02,#b1,#03,#c8,#b1,#00,#43
	db #02,#b1,#05,#4a,#02,#b1,#00,#c6
	db #b1,#00,#4a,#02,#b1,#03,#c5,#b1
	db #00,#4a,#02,#b1,#05,#43,#02,#b1
	db #00,#c6,#b1,#00,#43,#02,#b1,#03
	db #c6,#b1,#03,#43,#02,#b1,#05,#c6
	db #b1,#00,#c5,#b1,#00,#c6,#b1,#00
	db #c6,#b1,#03,#c3,#b1,#00,#c6,#b1
	db #03,#c6,#b1,#05,#c3,#b1,#03,#43
	db #02,#b1,#00,#bf,#b1,#00,#43,#02
	db #b1,#03,#c3,#b1,#00,#43,#02,#b1
	db #05,#46,#02,#b1,#00,#c5,#b1,#00
	db #46,#02,#b1,#03,#c1,#b1,#00,#46
	db #02,#b1,#05,#3e,#02,#b1,#00,#ff
	db #c6,#b1,#00,#43,#02,#b1,#03,#c6
	db #b1,#03,#43,#02,#b1,#05,#c6,#b1
	db #00,#c5,#b1,#00,#c6,#b1,#00,#c6
	db #b1,#03,#c3,#b1,#00,#c6,#b1,#03
	db #c6,#b1,#05,#c3,#b1,#03,#43,#02
	db #b1,#00,#c6,#b1,#00,#43,#02,#b1
	db #03,#c8,#b1,#00,#43,#02,#b1,#03
	db #4a,#02,#b1,#00,#c6,#b1,#00,#4a
	db #02,#b1,#03,#c5,#b1,#00,#4a,#02
	db #b1,#05,#43,#02,#b1,#00,#c6,#b1
	db #00,#43,#02,#b1,#03,#c6,#b1,#03
	db #43,#02,#b1,#05,#c6,#b1,#00,#c5
	db #b1,#00,#c6,#b1,#00,#c6,#b1,#03
	db #c3,#b1,#00,#c6,#b1,#03,#c6,#b1
	db #05,#c3,#b1,#03,#43,#02,#b1,#00
	db #bf,#b1,#00,#43,#02,#b1,#03,#be
	db #b1,#00,#43,#02,#b1,#05,#3c,#02
	db #b1,#00,#ba,#b1,#00,#3c,#02,#b1
	db #03,#b9,#b1,#00,#3c,#02,#b1,#05
	db #35,#02,#b1,#00,#ff,#3a,#02,#01
	db #39,#82,#37,#82,#b5,#01,#37,#82
	db #b7,#01,#39,#82,#3a,#82,#3c,#82
	db #3e,#83,#3a,#83,#35,#83,#35,#83
	db #3c,#82,#3a,#82,#3c,#82,#3a,#82
	db #39,#82,#ba,#01,#37,#83,#32,#82
	db #35,#82,#37,#82,#3a,#83,#39,#83
	db #37,#82,#39,#83,#35,#83,#39,#82
	db #ff,#4f,#02,#17,#cd,#07,#4f,#82
	db #cf,#07,#cd,#07,#cd,#07,#cf,#07
	db #cf,#07,#cd,#07,#cf,#07,#4f,#82
	db #52,#82,#4f,#82,#cd,#07,#4f,#83
	db #4d,#82,#d2,#07,#d2,#07,#4f,#82
	db #4d,#82,#4f,#82,#cf,#07,#cf,#07
	db #cd,#07,#cf,#07,#cf,#07,#d2,#07
	db #4f,#82,#4d,#82,#4f,#82,#52,#82
	db #4f,#82,#cf,#07,#cf,#07,#cd,#07
	db #d2,#07,#cf,#07,#cd,#07,#d2,#07
	db #cf,#07,#cd,#07,#d2,#07,#cf,#07
	db #cd,#07,#4f,#82,#52,#82,#ff,#4a
	db #10,#f5,#03,#46,#08,#f5,#05,#48
	db #88,#4a,#10,#f5,#03,#46,#08,#f5
	db #05,#48,#88,#ff,#1f,#10,#a0,#12
	db #1b,#08,#a0,#16,#1d,#08,#a0,#14
	db #1f,#10,#a0,#12,#1b,#08,#a0,#16
	db #1d,#08,#a0,#14,#ff,#1f,#10,#a0
	db #12,#1b,#08,#a0,#16,#1d,#08,#a0
	db #14,#1f,#10,#a0,#12,#1b,#08,#a0
	db #16,#1d,#08,#a0,#14,#ff,#4a,#10
	db #f5,#03,#46,#08,#f5,#05,#48,#88
	db #4a,#10,#f5,#03,#46,#08,#f5,#05
	db #48,#88,#ff,#4a,#10,#f5,#03,#46
	db #08,#f5,#05,#48,#88,#4a,#10,#f5
	db #03,#46,#08,#f5,#05,#48,#88,#ff
	db #4a,#10,#f5,#03,#46,#08,#f5,#05
	db #48,#88,#4a,#10,#f5,#03,#46,#08
	db #f5,#05,#c8,#f5,#05,#4d,#03,#f1
	db #04,#4d,#04,#01,#ff,#43,#06,#c1
	db #12,#c3,#c1,#12,#c5,#c1,#10,#c6
	db #c1,#0f,#c5,#c1,#10,#c3,#c1,#12
	db #41,#02,#c1,#14,#48,#03,#c1,#0d
	db #46,#02,#c1,#0f,#45,#02,#c1,#10
	db #46,#02,#c1,#0f,#c3,#c1,#12,#45
	db #02,#c1,#10,#c5,#c1,#10,#46,#02
	db #c1,#0f,#45,#02,#c1,#10,#41,#02
	db #c1,#14,#43,#06,#c1,#12,#c3,#c1
	db #12,#c5,#c1,#10,#c6,#c1,#0f,#c5
	db #c1,#10,#c3,#c1,#12,#c1,#c1,#14
	db #43,#02,#c1,#12,#48,#02,#c1,#0d
	db #46,#02,#c1,#0f,#c5,#c1,#10,#46
	db #02,#c1,#0f,#43,#02,#c1,#12,#45
	db #02,#c1,#10,#4a,#02,#c1,#0c,#fe
	db #01,#4a,#82,#48,#02,#c1,#0d,#ff
	db #43,#06,#c1,#12,#c3,#c1,#12,#c5
	db #c1,#10,#c6,#c1,#0f,#c5,#c1,#10
	db #c3,#c1,#12,#41,#02,#c1,#14,#48
	db #03,#c1,#0d,#46,#02,#c1,#0f,#45
	db #02,#c1,#10,#46,#02,#c1,#0f,#c3
	db #c1,#12,#45,#02,#c1,#10,#c5,#c1
	db #10,#46,#02,#c1,#0f,#45,#02,#c1
	db #10,#41,#02,#c1,#14,#43,#06,#c1
	db #12,#c3,#c1,#12,#c5,#c1,#10,#c6
	db #c1,#0f,#c5,#c1,#10,#c3,#c1,#12
	db #c1,#c1,#14,#43,#02,#c1,#12,#48
	db #02,#c1,#0d,#46,#02,#c1,#0f,#c5
	db #c1,#10,#46,#02,#c1,#0f,#43,#02
	db #c1,#12,#45,#02,#c1,#10,#4a,#02
	db #c1,#0c,#fe,#01,#41,#02,#c1,#05
	db #43,#02,#c1,#09,#ff,#cf,#11,#cd
	db #b1,#00,#ca,#b1,#00,#cf,#b1,#03
	db #cf,#b1,#00,#ca,#b1,#03,#cd,#b1
	db #00,#cf,#b1,#00,#ca,#b1,#05,#ca
	db #b1,#00,#4d,#82,#cf,#b1,#00,#4d
	db #02,#b1,#03,#cf,#b1,#03,#cf,#b1
	db #00,#cd,#b1,#00,#ca,#b1,#00,#d2
	db #b1,#00,#cd,#b1,#03,#ca,#b1,#03
	db #cf,#b1,#00,#cd,#b1,#05,#ca,#b1
	db #05,#51,#03,#b1,#00,#52,#82,#d1
	db #b1,#00,#d2,#b1,#03,#cf,#b1,#00
	db #cd,#b1,#00,#ca,#b1,#00,#cf,#b1
	db #03,#cf,#b1,#00,#ca,#b1,#03,#cf
	db #b1,#00,#d1,#b1,#00,#ca,#b1,#05
	db #d2,#b1,#00,#51,#02,#b1,#03,#d4
	db #b1,#00,#d1,#b1,#05,#d6,#b1,#00
	db #54,#02,#b1,#03,#d6,#b1,#03,#56
	db #02,#b1,#00,#d2,#b1,#00,#d6,#b1
	db #03,#cf,#b1,#00,#d1,#b1,#00,#d6
	db #b1,#05,#d1,#b1,#00,#52,#82,#d1
	db #b1,#00,#d2,#b1,#03,#cd,#b1,#00
	db #d1,#b1,#00,#ff
;
.music_info
	db "Chany Dream 4 Part 1 (199x)(NPS)()",0
	db "ST-Module",0

	read "music_end.asm"
