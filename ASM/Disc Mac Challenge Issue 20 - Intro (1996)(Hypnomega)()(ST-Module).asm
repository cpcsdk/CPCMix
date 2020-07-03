; Music of Disc Mac Challenge Issue 20 - Intro (1996)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 05/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIMCI20I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5e00

	read "music_header.asm"

	jp l5e0b
	jp l5e93
	jp l5e77
	db #66,#04
;
.init_music
.l5e0b
;
	ld b,#03
	ld ix,l61da
	ld iy,l6106
	ld de,#001c
.l5e18
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
	djnz l5e18
	ld a,#06
	ld (l5ebb),a
	ld a,d
	ld (l5ecf),a
	inc a
	ld (l5eb6),a
	ld a,#38
	ld (l5ec0),a
	ld a,#ff
	ld (l6102),a
	ld (l6103),a
	ld (l6104),a
	ld (l6105),a
	ld a,#0c
	ld c,d
	call l60e4
	ld a,#0d
	ld c,d
	jp l60e4
;
.stop_music
.l5e77
;
	ld a,#07
	ld c,#3f
	call l60e4
	ld a,#08
	ld c,#00
	call l60e4
	ld a,#09
	ld c,#00
	call l60e4
	ld a,#0a
	ld c,#00
	jp l60e4
;
.play_music
.l5e93
;
	ld hl,l5eb6
	dec (hl)
	ld ix,l61da
	ld bc,l61e8
	call l5f49
	ld ix,l61f6
	ld bc,l6204
	call l5f49
	ld ix,l6212
	ld bc,l6220
	call l5f49
.l5eb6 equ $ + 1
	ld a,#00
	or a
	jr nz,l5ebf
.l5ebb equ $ + 1
	ld a,#00
	ld (l5eb6),a
.l5ec0 equ $ + 1
.l5ebf
	ld a,#00
	ld hl,l6103
	cp (hl)
	jr z,l5ece
	ld (hl),a
	ld c,a
	ld a,#07
	call l60e4
.l5ecf equ $ + 1
.l5ece
	ld a,#00
	ld hl,l6102
	cp (hl)
	jr z,l5edd
	ld (hl),a
	ld c,a
	ld a,#06
	call l60e4
.l5ede equ $ + 1
.l5edd
	ld a,#00
	ld hl,l6104
	cp (hl)
	jr z,l5eec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l60e4
.l5eed equ $ + 1
.l5eec
	ld a,#00
	ld hl,l6105
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l60e4
.l5efa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5ffa
.l5f09
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
	jp l60e4
.l5f23
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5f38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5f38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5f5c
.l5f49
	ld a,(l5eb6)
	or a
	jp nz,l5ffa
	dec (ix+#06)
	jp nz,l5ffa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5f5c
	ld a,(hl)
	or a
	jr z,l5efa
	cp #fe
	jr z,l5f09
	cp #ff
	jr z,l5f23
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l610c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5f98
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5f98
	and #7f
	ld (ix+#06),a
	jr l5feb
.l5f98
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5fac
	ld (ix+#05),a
	ld (ix+#0a),d
.l5fac
	add a
	add a
	add a
	ld e,a
	ld hl,l6242
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
	jr z,l5feb
	cp #f0
	jp z,l60a0
	cp #d0
	jp z,l60bc
	cp #b0
	jp z,l60c4
	cp #80
	jp nc,l60cc
	cp #10
	jr nz,l5feb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5feb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5ffa
	ld a,(ix+#17)
	or a
	jr nz,l600e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l600e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6039
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l610c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6039
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
	call l60e4
	ld c,h
	ld a,(ix+#03)
	call l60e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6077
	and #0f
	sub (ix+#0a)
	jr nc,l606d
	xor a
.l606d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l60e4
.l6077
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
	jr z,l6094
	ld b,a
	ld a,c
	ld (l5ecf),a
	ld a,b
	sub #40
.l6094
	ld (l609b),a
	ld a,(l5ec0)
.l609b equ $ + 1
	bit 0,a
	ld (l5ec0),a
	ret
.l60a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l62c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5feb
.l60bc
	inc hl
	ld a,(hl)
	ld (l5ebb),a
	jp l5feb
.l60c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5feb
.l60cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5eed),a
	inc hl
	ld a,(hl)
	ld (l5ede),a
	jp l5feb
.l60e4
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
.l6105 equ $ + 3
.l6104 equ $ + 2
.l6103 equ $ + 1
.l6102
	db #ff,#ff,#ff,#ff
.l6106
	dw l65c2,l65d7,l65ec
.l610c
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
.l61da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l61e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6204 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6212 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6220 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6242 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#62,#22,#63
	db #42,#63,#00,#00,#62,#63,#a2,#63
	db #c2,#63,#00,#00,#e2,#63,#22,#64
	db #42,#64,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#62,#64,#a2,#64
	db #c2,#64,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#e2,#64,#22,#65
	db #42,#65,#08,#18,#62,#65,#a2,#65
	db #42,#65,#18,#07,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
.l62c2 equ $ + 4
	db #dc,#5c,#00,#00,#dc,#5c,#dc,#5c
	db #dc,#5c,#dc,#5c,#dc,#5c,#dc,#5c
	db #dc,#5c,#dc,#5c,#dc,#5c,#dc,#5c
	db #dc,#5c,#dc,#5c,#dc,#5c,#dc,#5c
	db #dc,#5c,#dc,#5c,#00,#00,#08,#00
	db #10,#00,#18,#00,#20,#00,#28,#00
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0c
	db #0a,#07,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#04,#04,#04
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#06,#00
	db #08,#00,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0c,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#03,#02,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0e,#0d,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
.l65c2 equ $ + 4
	db #09,#09,#09,#09,#00,#01,#66,#00
	db #04,#66,#00,#c5,#66,#00,#86,#67
	db #00,#47,#68,#00,#86,#67,#80,#c8
.l65d7 equ $ + 1
	db #65,#00,#c8,#68,#00,#01,#69,#00
	db #3a,#69,#00,#73,#69,#00,#ac,#69
.l65ec equ $ + 6
	db #00,#73,#69,#80,#dd,#65,#00,#e5
	db #69,#00,#e8,#69,#00,#eb,#69,#00
	db #6c,#6a,#00,#6c,#6a,#00,#aa,#6a
	db #80,#f2,#65,#00,#40,#ff,#ae,#b1
	db #06,#d2,#b5,#06,#d2,#b0,#06,#d2
	db #b5,#06,#ba,#b2,#06,#d2,#b5,#06
	db #d2,#b0,#06,#ae,#b1,#06,#ae,#b1
	db #06,#d2,#b5,#06,#ae,#b1,#06,#ae
	db #b1,#06,#ba,#b2,#06,#ae,#b1,#06
	db #ae,#b1,#06,#d2,#b5,#0f,#ae,#b1
	db #05,#d2,#b5,#05,#d2,#b0,#05,#d2
	db #b5,#05,#ba,#b2,#05,#d2,#b5,#05
	db #d2,#b0,#05,#ae,#b1,#05,#ae,#b1
	db #04,#d2,#b5,#04,#ae,#b1,#04,#ae
	db #b1,#04,#ba,#b2,#04,#ae,#b1,#04
	db #ae,#b1,#04,#ae,#b1,#04,#ae,#b1
	db #03,#d2,#b5,#03,#d2,#b0,#03,#d2
	db #b5,#03,#ba,#b2,#03,#d2,#b5,#03
	db #d2,#b0,#03,#ae,#b1,#03,#ae,#b1
	db #02,#d2,#b5,#02,#ae,#b1,#02,#ae
	db #b1,#02,#ba,#b2,#02,#ae,#b1,#02
	db #ae,#b1,#02,#d2,#b5,#02,#ae,#b1
	db #01,#d2,#b5,#01,#d2,#b0,#01,#d2
	db #b5,#01,#ba,#b2,#01,#d2,#b5,#01
	db #d2,#b0,#01,#ae,#b1,#01,#d2,#b5
	db #01,#ae,#b1,#00,#ae,#b1,#00,#d2
	db #b5,#00,#ba,#b2,#00,#d2,#b5,#00
	db #ae,#b1,#00,#ae,#b1,#00,#ff,#ae
	db #b1,#00,#d2,#b5,#00,#d2,#b0,#00
	db #d2,#b5,#00,#ba,#b2,#00,#d2,#b5
	db #00,#d2,#b0,#00,#ae,#b1,#00,#ae
	db #b1,#00,#d2,#b5,#00,#ae,#b1,#00
	db #ae,#b1,#00,#ba,#b2,#00,#ae,#b1
	db #00,#ae,#b1,#00,#d2,#b5,#00,#ae
	db #b1,#00,#d2,#b5,#00,#d2,#b0,#00
	db #d2,#b5,#00,#ba,#b2,#00,#d2,#b5
	db #00,#d2,#b0,#00,#ae,#b1,#00,#ae
	db #b1,#00,#d2,#b5,#00,#ae,#b1,#00
	db #ae,#b1,#00,#ba,#b2,#00,#ae,#b1
	db #00,#ae,#b1,#00,#ae,#b1,#00,#ae
	db #b1,#00,#d2,#b5,#00,#d2,#b0,#00
	db #d2,#b5,#00,#ba,#b2,#00,#d2,#b5
	db #00,#d2,#b0,#00,#ae,#b1,#00,#ae
	db #b1,#00,#d2,#b5,#00,#ae,#b1,#00
	db #ae,#b1,#00,#ba,#b2,#00,#ae,#b1
	db #00,#ae,#b1,#00,#d2,#b5,#00,#ae
	db #b1,#00,#d2,#b5,#00,#d2,#b0,#00
	db #d2,#b5,#00,#ba,#b2,#00,#d2,#b5
	db #00,#d2,#b0,#00,#ae,#b1,#00,#d2
	db #b5,#00,#ae,#b1,#00,#ae,#b1,#00
	db #d2,#b5,#00,#ba,#b2,#00,#d2,#b5
	db #00,#ae,#b1,#00,#ae,#b1,#00,#ff
	db #ae,#b1,#00,#d2,#b5,#00,#d2,#b0
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#d2,#b0,#00,#ae,#b1,#00
	db #ae,#b1,#00,#d2,#b5,#00,#ae,#b1
	db #00,#ae,#b1,#00,#ba,#b2,#00,#ae
	db #b1,#00,#ae,#b1,#00,#d2,#b5,#00
	db #ae,#b1,#00,#d2,#b5,#00,#d2,#b0
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#d2,#b0,#00,#ae,#b1,#00
	db #ae,#b1,#00,#d2,#b5,#00,#ae,#b1
	db #00,#ae,#b1,#00,#ba,#b2,#00,#ae
	db #b1,#00,#ae,#b1,#00,#ae,#b1,#00
	db #ae,#b1,#00,#d2,#b5,#00,#d2,#b0
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#d2,#b0,#00,#ae,#b1,#00
	db #ae,#b1,#00,#d2,#b5,#00,#ae,#b1
	db #00,#ae,#b1,#00,#ba,#b2,#00,#ae
	db #b1,#00,#ae,#b1,#00,#d2,#b5,#00
	db #ae,#b1,#00,#d2,#b5,#00,#d2,#b0
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#d2,#b0,#00,#ae,#b1,#00
	db #d2,#b5,#00,#ae,#b1,#00,#ae,#b1
	db #00,#d2,#b5,#00,#ba,#b2,#00,#d2
	db #b5,#00,#ae,#b1,#00,#ae,#b1,#00
	db #ff,#c6,#07,#c9,#07,#cb,#07,#cd
	db #07,#d0,#07,#cd,#07,#d0,#07,#d2
	db #07,#d0,#07,#cd,#07,#cb,#07,#cd
	db #07,#c9,#07,#cb,#07,#cd,#07,#d0
	db #07,#cd,#07,#cb,#07,#cd,#07,#c9
	db #07,#cb,#07,#cd,#07,#cb,#07,#c9
	db #07,#cb,#07,#cd,#07,#d0,#07,#cd
	db #07,#d0,#07,#cd,#07,#d2,#07,#cd
	db #07,#cd,#07,#d0,#07,#d0,#07,#cd
	db #07,#d2,#07,#cd,#07,#d0,#07,#d2
	db #07,#d5,#07,#d4,#07,#d2,#07,#d0
	db #07,#d2,#07,#cd,#07,#d0,#07,#cd
	db #07,#cb,#07,#cd,#07,#c9,#07,#cb
	db #07,#cd,#07,#d0,#07,#cd,#07,#cb
	db #07,#c9,#07,#cd,#07,#cb,#07,#c9
	db #07,#c6,#07,#c8,#07,#c9,#07,#c8
	db #07,#ff,#3a,#02,#c8,#1e,#22,#8c
	db #22,#82,#25,#04,#c8,#19,#22,#02
	db #c8,#1e,#27,#04,#c8,#16,#22,#02
	db #c8,#1e,#29,#04,#c8,#14,#3a,#02
	db #c8,#1e,#22,#8c,#22,#82,#25,#04
	db #c8,#19,#22,#02,#c8,#1e,#27,#04
	db #c8,#16,#22,#02,#c8,#1e,#29,#04
	db #c8,#14,#ff,#3a,#02,#c8,#1e,#22
	db #8c,#22,#82,#25,#04,#c8,#19,#22
	db #02,#c8,#1e,#27,#04,#c8,#16,#22
	db #02,#c8,#1e,#29,#04,#c8,#14,#3a
	db #02,#c8,#1e,#22,#8c,#22,#82,#25
	db #04,#c8,#19,#22,#02,#c8,#1e,#27
	db #04,#c8,#16,#22,#02,#c8,#1e,#29
	db #04,#c8,#14,#ff,#3a,#02,#c8,#1e
	db #22,#8c,#22,#82,#25,#04,#c8,#19
	db #22,#02,#c8,#1e,#27,#04,#c8,#16
	db #22,#02,#c8,#1e,#29,#04,#c8,#14
	db #3a,#02,#c8,#1e,#22,#8c,#22,#82
	db #25,#04,#c8,#19,#22,#02,#c8,#1e
	db #27,#04,#c8,#16,#22,#02,#c8,#1e
	db #29,#04,#c8,#14,#ff,#3a,#02,#c8
	db #1e,#22,#8c,#22,#82,#25,#04,#c8
	db #19,#22,#02,#c8,#1e,#27,#04,#c8
	db #16,#22,#02,#c8,#1e,#29,#04,#c8
	db #14,#3a,#02,#c8,#1e,#22,#8c,#22
	db #82,#25,#04,#c8,#19,#22,#02,#c8
	db #1e,#27,#04,#c8,#16,#22,#02,#c8
	db #1e,#29,#04,#c8,#14,#ff,#3a,#02
	db #c8,#1e,#22,#8c,#22,#82,#25,#04
	db #c8,#19,#22,#02,#c8,#1e,#27,#04
	db #c8,#16,#22,#02,#c8,#1e,#29,#04
	db #c8,#14,#3a,#02,#c8,#1e,#22,#8c
	db #22,#82,#25,#04,#c8,#19,#22,#02
	db #c8,#1e,#27,#04,#c8,#16,#22,#02
	db #c8,#1e,#29,#04,#c8,#14,#ff,#00
	db #40,#ff,#00,#40,#ff,#c6,#07,#c9
	db #07,#cb,#07,#cd,#07,#d0,#07,#cd
	db #07,#d0,#07,#d2,#07,#d0,#07,#cd
	db #07,#cb,#07,#cd,#07,#c9,#07,#cb
	db #07,#cd,#07,#d0,#07,#cd,#07,#cb
	db #07,#cd,#07,#c9,#07,#cb,#07,#cd
	db #07,#cb,#07,#c9,#07,#cb,#07,#cd
	db #07,#d0,#07,#cd,#07,#d0,#07,#cd
	db #07,#d2,#07,#cd,#07,#cd,#07,#d0
	db #07,#d0,#07,#cd,#07,#d2,#07,#cd
	db #07,#d0,#07,#d2,#07,#d5,#07,#d4
	db #07,#d2,#07,#d0,#07,#d2,#07,#cd
	db #07,#d0,#07,#cd,#07,#cb,#07,#cd
	db #07,#c9,#07,#cb,#07,#cd,#07,#d0
	db #07,#cd,#07,#cb,#07,#c9,#07,#cd
	db #07,#cb,#07,#c9,#07,#c6,#07,#c8
	db #07,#c9,#07,#c8,#07,#ff,#46,#03
	db #08,#c6,#08,#c9,#08,#c6,#08,#cb
	db #08,#4d,#83,#4d,#82,#4b,#82,#49
	db #82,#4b,#83,#4d,#83,#49,#82,#48
	db #83,#4b,#83,#49,#82,#46,#83,#c6
	db #08,#c9,#08,#c6,#08,#cb,#08,#4d
	db #83,#4d,#82,#4b,#82,#49,#82,#50
	db #83,#4d,#83,#4b,#82,#4d,#83,#50
	db #83,#52,#82,#ff,#00,#40,#ff
;
.music_info
	db "Disc Mac Challenge Issue 20 - Intro (1996)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"