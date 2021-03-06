; Music of Bordelik Meeting 3 Part 1 (1994)(Arkos)(Kangaroo)(ST-Module)
; Ripped by Megachur the 03/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "BORDM3P1.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &69ac

	read "music_header.asm"

	jp l69b7
	jp l6a3f
	jp l6a23
	ld h,(hl)
	inc b
;
.init_music
.l69b7
;
	ld b,#03
	ld ix,l6d86
	ld iy,l6cb2
	ld de,#001c
.l69c4
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
	djnz l69c4
	ld a,#06
	ld (l6a67),a
	ld a,d
	ld (l6a7b),a
	inc a
	ld (l6a62),a
	ld a,#38
	ld (l6a6c),a
	ld a,#ff
	ld (l6cae),a
	ld (l6caf),a
	ld (l6cb0),a
	ld (l6cb1),a
	ld a,#0c
	ld c,d
	call l6c90
	ld a,#0d
	ld c,d
	jp l6c90
;
.stop_music
.l6a23
;
	ld a,#07
	ld c,#3f
	call l6c90
	ld a,#08
	ld c,#00
	call l6c90
	ld a,#09
	ld c,#00
	call l6c90
	ld a,#0a
	ld c,#00
	jp l6c90
;
.play_music
.l6a3f
;
	ld hl,l6a62
	dec (hl)
	ld ix,l6d86
	ld bc,l6d94
	call l6af5
	ld ix,l6da2
	ld bc,l6db0
	call l6af5
	ld ix,l6dbe
	ld bc,l6dcc
	call l6af5
.l6a62 equ $ + 1
	ld a,#01
	or a
	jr nz,l6a6b
.l6a67 equ $ + 1
	ld a,#06
	ld (l6a62),a
.l6a6c equ $ + 1
.l6a6b
	ld a,#38
	ld hl,l6caf
	cp (hl)
	jr z,l6a7a
	ld (hl),a
	ld c,a
	ld a,#07
	call l6c90
.l6a7b equ $ + 1
.l6a7a
	ld a,#00
	ld hl,l6cae
	cp (hl)
	jr z,l6a89
	ld (hl),a
	ld c,a
	ld a,#06
	call l6c90
.l6a8a equ $ + 1
.l6a89
	ld a,#00
	ld hl,l6cb0
	cp (hl)
	jr z,l6a98
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6c90
.l6a99 equ $ + 1
.l6a98
	ld a,#00
	ld hl,l6cb1
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6c90
.l6aa6
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l6ba6
.l6ab5
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
	jp l6c90
.l6acf
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6ae4
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6ae4
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l6b08
.l6af5
	ld a,(l6a62)
	or a
	jp nz,l6ba6
	dec (ix+#06)
	jp nz,l6ba6
	ld l,(ix+#00)
	ld h,(ix+#01)
.l6b08
	ld a,(hl)
	or a
	jr z,l6aa6
	cp #fe
	jr z,l6ab5
	cp #ff
	jr z,l6acf
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6cb8
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6b44
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6b44
	and #7f
	ld (ix+#06),a
	jr l6b97
.l6b44
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l6b58
	ld (ix+#05),a
	ld (ix+#0a),d
.l6b58
	add a
	add a
	add a
	ld e,a
	ld hl,l6dee
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
	jr z,l6b97
	cp #f0
	jp z,l6c4c
	cp #d0
	jp z,l6c68
	cp #b0
	jp z,l6c70
	cp #80
	jp nc,l6c78
	cp #10
	jr nz,l6b97
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l6b97
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l6ba6
	ld a,(ix+#17)
	or a
	jr nz,l6bba
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6bba
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6be5
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6cb8
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6be5
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
	call l6c90
	ld c,h
	ld a,(ix+#03)
	call l6c90
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6c23
	and #0f
	sub (ix+#0a)
	jr nc,l6c19
	xor a
.l6c19
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6c90
.l6c23
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
	jr z,l6c40
	ld b,a
	ld a,c
	ld (l6a7b),a
	ld a,b
	sub #40
.l6c40
	ld (l6c47),a
	ld a,(l6a6c)
.l6c47 equ $ + 1
	res 5,a
	ld (l6a6c),a
	ret
.l6c4c
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6e6e
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l6b97
.l6c68
	inc hl
	ld a,(hl)
	ld (l6a67),a
	jp l6b97
.l6c70
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l6b97
.l6c78
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6a99),a
	inc hl
	ld a,(hl)
	ld (l6a8a),a
	jp l6b97
.l6c90
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
.l6cb2 equ $ + 4
.l6cb1 equ $ + 3
.l6cb0 equ $ + 2
.l6caf equ $ + 1
.l6cae
	db #ff,#ff,#ff,#ff,#ae,#70,#d2,#70
	db #f6,#70
.l6cb8
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
.l6d86 equ $ + 4
	db #00,#00,#00,#00,#1a,#71,#00,#01
	db #08,#10,#01,#2c,#00,#00,#01,#df
.l6d94 equ $ + 2
	db #b1,#70,#8e,#6e,#ce,#6e,#ee,#6e
	db #00,#00,#01,#1f,#2d,#01,#00,#00
.l6da2
	db #6b,#73,#02,#03,#09,#10,#01,#4f
.l6db0 equ $ + 6
	db #00,#00,#00,#e7,#d5,#70,#8e,#6e
	db #ce,#6e,#ee,#6e,#00,#00,#01,#1f
.l6dbe equ $ + 4
	db #28,#00,#00,#00,#31,#76,#04,#05
	db #0a,#10,#01,#63,#00,#00,#00,#ef
.l6dcc equ $ + 2
	db #f9,#70,#0e,#6f,#6e,#6f,#8e,#6f
	db #00,#00,#01,#1f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6dee equ $ + 4
	db #75,#6c,#65,#2e,#8e,#6e,#ce,#6e
	db #ee,#6e,#00,#00,#0e,#6f,#4e,#6f
	db #ee,#6e,#1a,#05,#88,#68,#88,#68
	db #88,#68,#00,#00,#88,#68,#88,#68
	db #88,#68,#00,#00,#0e,#6f,#6e,#6f
	db #8e,#6f,#00,#00,#ae,#6f,#ee,#6f
	db #0e,#70,#00,#00,#88,#68,#88,#68
	db #88,#68,#00,#00,#88,#68,#88,#68
	db #88,#68,#00,#00,#88,#68,#88,#68
	db #88,#68,#00,#00,#2e,#70,#6e,#70
	db #8e,#70,#00,#00,#f6,#bb,#88,#68
	db #f6,#bb,#6e,#53,#f6,#bb,#88,#68
	db #dc,#c4,#74,#5c,#1c,#c5,#f6,#bb
	db #3c,#c5,#d4,#5c,#7c,#c5,#f6,#bb
	db #9c,#c5,#34,#5d,#f6,#bb,#f6,#bb
	db #f6,#bb,#6e,#53,#f6,#bb,#f6,#bb
.l6e6e equ $ + 4
	db #88,#68,#00,#00,#88,#68,#88,#68
	db #88,#68,#88,#68,#88,#68,#88,#68
	db #88,#68,#88,#68,#88,#68,#88,#68
	db #88,#68,#88,#68,#88,#68,#88,#68
	db #88,#68,#88,#68,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#32,#00
	db #64,#00,#91,#00,#be,#00,#eb,#00
	db #22,#01,#4a,#01,#7c,#01,#a9,#01
	db #d6,#01,#08,#02,#3a,#02,#6c,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0d,#0c,#0a,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#1a,#71,#00
	db #5e,#71,#00,#5e,#71,#00,#5e,#71
	db #00,#e0,#71,#00,#65,#72,#00,#65
	db #72,#00,#65,#72,#00,#e7,#72,#00
	db #65,#72,#00,#65,#72,#80,#b1,#70
	db #00,#6b,#73,#00,#ab,#73,#00,#ab
	db #73,#00,#2c,#74,#00,#ad,#74,#00
	db #2f,#75,#00,#2f,#75,#00,#ab,#73
	db #00,#ad,#74,#00,#b0,#75,#00,#b0
	db #75,#80,#d5,#70,#00,#31,#76,#00
	db #31,#76,#00,#31,#76,#00,#5f,#76
	db #00,#e4,#76,#00,#ed,#77,#00,#ed
	db #77,#00,#69,#77,#00,#69,#77,#00
	db #6e,#78,#00,#6e,#78,#80,#f9,#70
	db #2e,#02,#b0,#01,#2e,#02,#00,#2e
	db #82,#2e,#82,#2e,#82,#2e,#82,#2e
	db #82,#2e,#82,#2a,#82,#2a,#82,#2a
	db #82,#2a,#82,#2a,#82,#2a,#82,#2a
	db #82,#2a,#82,#2c,#82,#2c,#82,#2c
	db #82,#2c,#82,#2c,#82,#2c,#82,#2c
	db #82,#2c,#82,#29,#82,#29,#82,#29
	db #82,#29,#82,#29,#82,#29,#82,#29
	db #82,#29,#82,#ff,#ae,#b0,#01,#ba
	db #00,#ae,#00,#ba,#00,#ae,#00,#ba
	db #00,#ae,#00,#ba,#00,#ae,#00,#ba
	db #00,#ae,#00,#ba,#00,#ae,#00,#ba
	db #00,#ae,#00,#ba,#00,#aa,#00,#b6
	db #00,#aa,#00,#b6,#00,#aa,#00,#b6
	db #00,#aa,#00,#b6,#00,#aa,#00,#b6
	db #00,#aa,#00,#b6,#00,#aa,#00,#b6
	db #00,#aa,#00,#b6,#00,#ac,#00,#b8
	db #00,#ac,#00,#b8,#00,#ac,#00,#b8
	db #00,#ac,#00,#b8,#00,#ac,#00,#b8
	db #00,#ac,#00,#b8,#00,#ac,#00,#b8
	db #00,#ac,#00,#b8,#00,#a9,#00,#b5
	db #00,#a9,#00,#b5,#00,#a9,#00,#b5
	db #00,#a9,#00,#b5,#00,#a9,#00,#b5
	db #00,#a9,#00,#b5,#00,#a9,#00,#b5
	db #00,#a9,#00,#b5,#00,#ff,#ae,#01
	db #b1,#01,#b5,#01,#b1,#01,#ba,#01
	db #b5,#01,#b1,#01,#b5,#01,#ae,#01
	db #b1,#01,#b5,#01,#b1,#01,#ba,#01
	db #b5,#01,#b1,#01,#b5,#01,#b6,#01
	db #ba,#01,#b6,#01,#b1,#01,#b1,#b1
	db #01,#ba,#01,#b6,#01,#b1,#01,#b1
	db #b1,#02,#ba,#01,#b6,#01,#b1,#01
	db #b1,#b1,#03,#ba,#01,#b6,#01,#ba
	db #01,#b8,#b1,#00,#b3,#01,#b1,#01
	db #b3,#01,#b0,#01,#b1,#01,#b3,#01
	db #b6,#01,#b8,#01,#b3,#01,#b1,#01
	db #b3,#01,#b0,#01,#b1,#01,#b3,#01
	db #b6,#01,#b5,#01,#b9,#01,#bc,#01
	db #b9,#01,#b5,#01,#bc,#01,#bd,#01
	db #bc,#01,#ba,#01,#b9,#01,#ba,#01
	db #b5,#01,#b1,#01,#b5,#01,#ae,#01
	db #b0,#01,#ff,#ae,#b0,#01,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#ff,#ae,#01,#ae
	db #01,#b1,#01,#ae,#01,#b3,#01,#b5
	db #01,#b3,#01,#b1,#01,#ae,#01,#ae
	db #01,#b1,#01,#ae,#01,#b5,#01,#b3
	db #01,#b1,#01,#b3,#01,#ae,#01,#ae
	db #01,#b1,#01,#ae,#01,#b3,#01,#b5
	db #01,#b3,#01,#b1,#01,#b3,#b1,#01
	db #b5,#01,#b3,#01,#b1,#01,#b3,#b1
	db #02,#b5,#01,#b3,#01,#b1,#01,#b0
	db #b1,#00,#b0,#01,#b0,#01,#b1,#01
	db #b3,#01,#b5,#01,#b6,#01,#b5,#01
	db #b3,#01,#b3,#01,#b3,#01,#b5,#01
	db #b6,#01,#b5,#01,#b3,#01,#b6,#01
	db #b5,#01,#b5,#01,#b5,#01,#b5,#01
	db #b9,#01,#b5,#01,#b9,#01,#bc,#01
	db #bc,#01,#bd,#01,#bc,#01,#ba,#01
	db #b9,#01,#b7,#01,#b9,#01,#ba,#01
	db #ff,#6d,#04,#04,#6d,#84,#6d,#84
	db #6d,#84,#6d,#84,#6d,#84,#6d,#84
	db #6d,#84,#6d,#82,#6d,#82,#6d,#82
	db #6d,#82,#6d,#82,#6d,#82,#6d,#82
	db #6d,#82,#6d,#82,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ff,#ae,#09,#ed,#04,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ba
	db #05,#ae,#09,#ed,#04,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ae,#09,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ed
	db #04,#ae,#09,#ed,#04,#ed,#04,#ae
	db #09,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ba,#05,#ed,#04,#ae,#09,#ed
	db #04,#ae,#09,#ed,#04,#ae,#09,#ae
	db #09,#ba,#05,#ae,#09,#ae,#09,#ed
	db #04,#ae,#09,#ed,#04,#ae,#09,#ed
	db #04,#ba,#05,#ed,#04,#ba,#05,#ba
	db #05,#ff,#ae,#09,#ed,#04,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ba,#05,#ae,#09,#ed,#04,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ae,#09
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ed,#04,#ae,#09,#ed,#04,#ed,#04
	db #ae,#09,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ed,#04,#ae,#09,#ed,#04
	db #ed,#04,#ba,#05,#ed,#04,#ae,#09
	db #ed,#04,#ae,#09,#ed,#04,#ae,#09
	db #ae,#09,#ba,#05,#ae,#09,#ae,#09
	db #ed,#04,#ae,#09,#ed,#04,#ae,#09
	db #ed,#04,#ba,#05,#ed,#04,#ba,#05
	db #ba,#05,#ff,#ae,#b0,#01,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#ae,#00,#ba,#00
	db #ae,#00,#ba,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#aa,#00,#b6,#00
	db #aa,#00,#b6,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#ac,#00,#b8,#00
	db #ac,#00,#b8,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#a9,#00,#b5,#00
	db #a9,#00,#b5,#00,#ff,#de,#00,#dc
	db #00,#d9,#00,#dc,#00,#de,#00,#d9
	db #00,#dc,#00,#de,#00,#de,#00,#dc
	db #00,#d9,#00,#dc,#00,#de,#00,#d9
	db #00,#dc,#00,#de,#00,#dc,#00,#d9
	db #00,#dc,#00,#d9,#00,#dc,#00,#d9
	db #00,#d7,#00,#d9,#00,#d5,#00,#d7
	db #00,#d9,#00,#d7,#00,#d5,#00,#d5
	db #00,#d7,#00,#d9,#00,#dc,#00,#dc
	db #00,#d9,#00,#de,#00,#d9,#00,#dc
	db #00,#de,#00,#dc,#00,#d9,#00,#de
	db #00,#dc,#00,#d9,#00,#dc,#00,#de
	db #00,#dc,#00,#de,#00,#d9,#00,#d9
	db #00,#db,#00,#dc,#00,#db,#00,#d9
	db #00,#d7,#00,#d9,#00,#d5,#00,#d5
	db #00,#d7,#00,#d9,#00,#d7,#00,#d5
	db #00,#d2,#00,#d2,#00,#ff,#de,#00
	db #dc,#00,#d9,#00,#dc,#00,#de,#00
	db #d9,#00,#dc,#00,#de,#00,#de,#00
	db #dc,#00,#d9,#00,#dc,#00,#de,#00
	db #d9,#00,#dc,#00,#de,#00,#dc,#00
	db #d9,#00,#dc,#00,#d9,#00,#dc,#00
	db #d9,#00,#d7,#00,#d9,#00,#d5,#00
	db #d7,#00,#d9,#00,#d7,#00,#d5,#00
	db #d5,#00,#d7,#00,#d9,#00,#dc,#00
	db #dc,#00,#d9,#00,#de,#00,#d9,#00
	db #dc,#00,#de,#00,#dc,#00,#d9,#00
	db #de,#00,#dc,#00,#d9,#00,#dc,#00
	db #de,#00,#dc,#00,#de,#00,#d9,#00
	db #d9,#00,#db,#00,#dc,#00,#db,#00
	db #d9,#00,#d7,#00,#d9,#00,#d5,#00
	db #d5,#00,#d7,#00,#d9,#00,#d7,#00
	db #d5,#00,#d2,#00,#d2,#00,#ff,#3a
	db #02,#01,#3a,#82,#3d,#82,#3f,#8a
	db #3a,#82,#3a,#82,#3d,#82,#3f,#82
	db #41,#82,#3f,#82,#3d,#82,#3c,#82
	db #3a,#82,#3a,#82,#3d,#82,#3f,#84
	db #3a,#84,#3a,#82,#38,#83,#38,#83
	db #38,#82,#3a,#88,#ff,#ba,#01,#bd
	db #01,#c1,#01,#bd,#01,#c6,#01,#c1
	db #01,#bd,#01,#c1,#01,#ba,#01,#bd
	db #01,#c1,#01,#bd,#01,#c6,#01,#c1
	db #01,#bd,#01,#c1,#01,#c2,#01,#c6
	db #01,#c2,#01,#bd,#01,#bd,#b1,#01
	db #c6,#01,#c2,#01,#bd,#01,#bd,#b1
	db #02,#c6,#01,#c2,#01,#bd,#01,#bd
	db #b1,#03,#c6,#01,#c2,#01,#c6,#01
	db #c4,#b1,#00,#bf,#01,#bd,#01,#bf
	db #01,#bc,#01,#bd,#01,#bf,#01,#c2
	db #01,#c4,#01,#bf,#01,#bd,#01,#bf
	db #01,#bc,#01,#bd,#01,#bf,#01,#c2
	db #01,#c1,#01,#c5,#01,#c8,#01,#c5
	db #01,#c1,#01,#c8,#01,#c9,#01,#c8
	db #01,#c6,#01,#c5,#01,#c6,#01,#c1
	db #01,#bd,#01,#c1,#01,#ba,#01,#bc
	db #01,#ff,#ba,#01,#bd,#01,#c1,#01
	db #bd,#01,#c6,#01,#c1,#01,#bd,#01
	db #c1,#01,#ba,#01,#bd,#01,#c1,#01
	db #bd,#01,#c6,#01,#c1,#01,#bd,#01
	db #c1,#01,#c2,#01,#c6,#01,#c2,#01
	db #bd,#01,#bd,#b1,#01,#c6,#01,#c2
	db #01,#bd,#01,#bd,#b1,#02,#c6,#01
	db #c2,#01,#bd,#01,#bd,#b1,#03,#c6
	db #01,#c2,#01,#c6,#01,#c4,#b1,#00
	db #bf,#01,#bd,#01,#bf,#01,#bc,#01
	db #bd,#01,#bf,#01,#c2,#01,#c4,#01
	db #bf,#01,#bd,#01,#bf,#01,#bc,#01
	db #bd,#01,#bf,#01,#c2,#01,#c1,#01
	db #c5,#01,#c8,#01,#c5,#01,#c1,#01
	db #c8,#01,#c9,#01,#c8,#01,#c6,#01
	db #c5,#01,#c6,#01,#c1,#01,#bd,#01
	db #c1,#01,#ba,#01,#bc,#01,#ff,#ba
	db #01,#ba,#01,#bd,#01,#ba,#01,#bf
	db #01,#c1,#01,#bf,#01,#bd,#01,#ba
	db #01,#ba,#01,#bd,#01,#ba,#01,#c1
	db #01,#bf,#01,#bd,#01,#bf,#01,#ba
	db #01,#ba,#01,#bd,#01,#ba,#01,#bf
	db #01,#c1,#01,#bf,#01,#bd,#01,#bf
	db #b1,#01,#c1,#01,#bf,#01,#bd,#01
	db #bf,#b1,#02,#c1,#01,#bf,#01,#bd
	db #01,#bc,#b1,#00,#bc,#01,#bc,#01
	db #bd,#01,#bf,#01,#c1,#01,#c2,#01
	db #c1,#01,#bf,#01,#bf,#01,#bf,#01
	db #c1,#01,#c2,#01,#c1,#01,#bf,#01
	db #c2,#01,#c1,#01,#c1,#01,#c1,#01
	db #c1,#01,#c5,#01,#c1,#01,#c5,#01
	db #c8,#01,#c8,#01,#c9,#01,#c8,#01
	db #c6,#01,#c5,#01,#c3,#01,#c5,#01
	db #c6,#01,#ff,#ae,#09,#ed,#04,#ed
	db #04,#ed,#04,#ba,#05,#ed,#04,#ae
	db #09,#ed,#04,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ba,#05,#ed,#04,#ba
	db #05,#ba,#05,#ae,#09,#ed,#04,#ed
	db #04,#ed,#04,#ba,#05,#ed,#04,#ae
	db #09,#ed,#04,#ed,#04,#ae,#09,#ae
	db #09,#ed,#04,#ba,#05,#ed,#04,#ba
	db #05,#ed,#04,#ae,#09,#ed,#04,#ed
	db #04,#ae,#09,#ba,#05,#ed,#04,#ae
	db #09,#ed,#04,#ed,#04,#ae,#09,#ed
	db #04,#ed,#04,#ba,#05,#ed,#04,#ae
	db #09,#ed,#04,#ae,#09,#ed,#04,#ae
	db #09,#ae,#09,#ba,#05,#ae,#09,#ae
	db #09,#ed,#04,#ae,#09,#ed,#04,#ae
	db #09,#ed,#04,#ba,#05,#ed,#04,#ba
	db #05,#ba,#05,#ff,#3a,#02,#01,#3a
	db #82,#3d,#82,#3f,#8a,#3a,#82,#3a
	db #82,#3d,#82,#3f,#82,#41,#82,#3f
	db #82,#3d,#82,#3c,#82,#3a,#82,#3a
	db #82,#3d,#82,#3f,#84,#3a,#84,#3a
	db #82,#38,#83,#38,#83,#38,#82,#3a
	db #88,#ff,#00,#3a,#82,#38,#83,#38
	db #83,#38,#82,#3a,#88,#ff,#ba,#01
	db #bd,#01,#c1,#01,#bd,#01,#c6,#01
	db #c1,#01,#bd,#01,#c1,#01,#fd,#0f
	db #5f,#76,#0a,#01,#c2,#01,#c6,#01
	db #c2,#01,#bd,#01,#bd,#b1,#fd,#08
	db #80,#76,#01,#b1,#02,#fd,#08,#8a
	db #76,#19,#03,#c6,#01,#c2,#01,#c6
	db #01,#c4,#b1,#00,#bf,#01,#bd,#01
	db #bf,#01,#bc,#01,#bd,#01,#bf,#01
	db #c2,#01,#c4,#01,#fd,#0e,#a5,#76
	db #12,#c1,#01,#c5,#01,#c8,#01,#c5
	db #01,#c1,#01,#c8,#01,#c9,#01,#c8
	db #01,#c6,#01,#c5,#fd,#0b,#66,#76
	db #01,#bc,#01,#fd,#84,#5e,#76,#11
	db #01,#ff,#ba,#01,#ba,#01,#bd,#01
	db #ba,#01,#bf,#01,#c1,#01,#bf,#01
	db #bd,#01,#fd,#08,#69,#77,#00,#c1
	db #fd,#07,#39,#77,#fd,#09,#69,#77
	db #fd,#08,#80,#77,#00,#b1,#fd,#08
	db #92,#77,#01,#b1,#02,#fd,#06,#9c
	db #77,#03,#bc,#b1,#00,#bc,#fd,#07
	db #3f,#77,#08,#c1,#01,#c2,#01,#c1
	db #01,#bf,#01,#bf,#fd,#08,#b3,#77
	db #fd,#07,#43,#77,#06,#c1,#01,#c1
	db #01,#c1,#01,#c5,#fd,#06,#47,#77
	db #fd,#0b,#51,#77,#05,#c3,#01,#c5
	db #01,#c6,#01,#fd,#81,#2b,#74,#fd
	db #2f,#30,#76,#00,#00,#ff
;
.music_info
	db "Bordelik Meeting 3 Part 1 (1994)(Arkos)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
