; Music of Blip Music! - 36 - New Orleans - Rising Sun Mix (1996)(Systeme D)(Palm Coding)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU36.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7800

	read "music_header.asm"

	jp l780b
	jp l7893
	jp l7877
	db #66,#04
;
.init_music
.l780b
;
	ld b,#03
	ld ix,l7bda
	ld iy,l7b06
	ld de,#001c
.l7818
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
	djnz l7818
	ld a,#04
	ld (l78bb),a
	ld a,d
	ld (l78cf),a
	inc a
	ld (l78b6),a
	ld a,#38
	ld (l78c0),a
	ld a,#ff
	ld (l7b02),a
	ld (l7b03),a
	ld (l7b04),a
	ld (l7b05),a
	ld a,#0c
	ld c,d
	call l7ae4
	ld a,#0d
	ld c,d
	jp l7ae4
;
.stop_music
.l7877
;
	ld a,#07
	ld c,#3f
	call l7ae4
	ld a,#08
	ld c,#00
	call l7ae4
	ld a,#09
	ld c,#00
	call l7ae4
	ld a,#0a
	ld c,#00
	jp l7ae4
;
.play_music
.l7893
;
	ld hl,l78b6
	dec (hl)
	ld ix,l7bda
	ld bc,l7be8
	call l7949
	ld ix,l7bf6
	ld bc,l7c04
	call l7949
	ld ix,l7c12
	ld bc,l7c20
	call l7949
.l78b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l78bf
.l78bb equ $ + 1
	ld a,#00
	ld (l78b6),a
.l78c0 equ $ + 1
.l78bf
	ld a,#00
	ld hl,l7b03
	cp (hl)
	jr z,l78ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l7ae4
.l78cf equ $ + 1
.l78ce
	ld a,#00
	ld hl,l7b02
	cp (hl)
	jr z,l78dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l7ae4
.l78de equ $ + 1
.l78dd
	ld a,#00
	ld hl,l7b04
	cp (hl)
	jr z,l78ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7ae4
.l78ed equ $ + 1
.l78ec
	ld a,#00
	ld hl,l7b05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7ae4
.l78fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l79fa
.l7909
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
	jp l7ae4
.l7923
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l795c
.l7949
	ld a,(l78b6)
	or a
	jp nz,l79fa
	dec (ix+#06)
	jp nz,l79fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l795c
	ld a,(hl)
	or a
	jr z,l78fa
	cp #fe
	jr z,l7909
	cp #ff
	jr z,l7923
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l7b0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7998
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7998
	and #7f
	ld (ix+#06),a
	jr l79eb
.l7998
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l79ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l79ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7c42
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
	jr z,l79eb
	cp #f0
	jp z,l7aa0
	cp #d0
	jp z,l7abc
	cp #b0
	jp z,l7ac4
	cp #80
	jp nc,l7acc
	cp #10
	jr nz,l79eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l79eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l79fa
	ld a,(ix+#17)
	or a
	jr nz,l7a0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7a0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7a39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l7b0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7a39
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
	call l7ae4
	ld c,h
	ld a,(ix+#03)
	call l7ae4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7a77
	and #0f
	sub (ix+#0a)
	jr nc,l7a6d
	xor a
.l7a6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7ae4
.l7a77
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
	jr z,l7a94
	ld b,a
	ld a,c
	ld (l78cf),a
	ld a,b
	sub #40
.l7a94
	ld (l7a9b),a
	ld a,(l78c0)
.l7a9b equ $ + 1
	bit 0,a
	ld (l78c0),a
	ret
.l7aa0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l7cc2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l79eb
.l7abc
	inc hl
	ld a,(hl)
	ld (l78bb),a
	jp l79eb
.l7ac4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l79eb
.l7acc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l78ed),a
	inc hl
	ld a,(hl)
	ld (l78de),a
	jp l79eb
.l7ae4
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
.l7b05 equ $ + 3
.l7b04 equ $ + 2
.l7b03 equ $ + 1
.l7b02
	db #ff,#ff,#ff,#ff
.l7b06
	dw l8142,l81ba,l8232
.l7b0c
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
	db #00,#00,#00,#00
.l7bda
	db #00,#00,#00,#01,#08,#00,#00,#00
.l7be8 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7bf6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l7c04 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c12
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l7c20 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l7c42
	db #e2,#7c,#22,#7d,#42,#7d,#00,#00
	db #62,#7d,#a2,#7d,#c2,#7d,#00,#00
	db #e2,#7d,#22,#7e,#42,#7e,#10,#10
	db #62,#7e,#a2,#7e,#42,#7e,#10,#00
	db #e2,#7d,#c2,#7e,#42,#7e,#08,#18
	db #62,#7e,#e2,#7e,#42,#7e,#00,#00
	db #e2,#7d,#02,#7f,#42,#7e,#08,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7e,#22,#7f,#42,#7e,#00,#00
	db #42,#7f,#82,#7f,#42,#7e,#08,#18
	db #62,#7d,#a2,#7f,#c2,#7f,#00,#00
	db #62,#7e,#e2,#7f,#02,#80,#00,#00
	db #62,#7e,#22,#80,#42,#80,#00,#00
.l7cc2
	db #dc,#76,#dc,#76,#62,#80,#82,#80
	db #a2,#80,#c2,#80,#e2,#80,#02,#81
	db #dc,#76,#22,#81,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #08,#0a,#10,#17,#1d,#1b,#19,#17
	db #14,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#8b
	db #89,#88,#88,#87,#87,#86,#85,#84
	db #83,#82,#81,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
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
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0a,#09,#07,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0d,#8b,#8b,#8b,#8b,#8c,#8c
	db #8c,#8b,#8b,#8b,#8c,#8c,#8c,#8b
	db #8b,#8b,#8c,#8c,#8c,#8b,#8b,#8b
	db #8c,#8c,#8c,#8b,#8b,#8b,#8c,#8c
	db #0f,#0d,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #07,#06,#06,#06,#05,#04,#02,#00
	db #0e,#0d,#0c,#0c,#0b,#0b,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#01,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #0f,#00,#00,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#04
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #00,#05,#09,#05,#00,#05,#09,#05
	db #00,#05,#09,#05,#00,#05,#09,#05
	db #00,#05,#09,#05,#00,#05,#09,#05
	db #00,#05,#09,#05,#00,#05,#09,#05
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #07,#00,#05,#07,#00,#05,#07,#00
	db #05,#07,#00,#05,#07,#00,#05,#07
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	l8142
	db #00,#ad,#82,#00,#aa,#82,#00,#b0
	db #82,#00,#c7,#82,#00,#38,#83,#00
	db #3b,#83,#00,#dd,#82,#00,#f8,#82
	db #00,#12,#83,#00,#2c,#83,#00,#3e
	db #83,#00,#69,#83,#00,#96,#83,#00
	db #c4,#83,#00,#e7,#83,#00,#07,#84
	db #00,#27,#84,#00,#47,#84,#00,#3b
	db #83,#00,#3b,#83,#00,#3b,#83,#00
	db #3b,#83,#00,#67,#84,#00,#7d,#84
	db #00,#98,#84,#00,#ac,#84,#00,#67
	db #84,#00,#7d,#84,#00,#98,#84,#00
	db #ac,#84,#00,#dc,#84,#00,#e0,#84
	db #00,#dc,#84,#00,#e0,#84,#00,#c5
	db #84,#00,#e4,#84,#00,#dc,#84,#00
	db #e0,#84,#00,#f7,#84,#80,#51,#81
	l81ba
	db #00,#36,#85,#00,#3f,#85,#00,#36
	db #85,#00,#4c,#85,#00,#fd,#85,#00
	db #02,#86,#00,#59,#85,#00,#88,#85
	db #00,#b9,#85,#00,#e8,#85,#00,#59
	db #85,#00,#07,#86,#00,#38,#86,#00
	db #67,#86,#00,#7c,#86,#00,#07,#86
	db #00,#ab,#86,#00,#e8,#85,#00,#fb
	db #86,#00,#fb,#86,#00,#da,#86,#00
	db #da,#86,#00,#1c,#87,#00,#35,#87
	db #00,#1c,#87,#00,#4e,#87,#00,#1c
	db #87,#00,#35,#87,#00,#1c,#87,#00
	db #4e,#87,#00,#1c,#87,#00,#80,#87
	db #00,#1c,#87,#00,#80,#87,#00,#67
	db #87,#00,#99,#87,#00,#1c,#87,#00
	db #80,#87,#00,#02,#86,#80,#c9,#81
	l8232
	db #00,#b5,#87,#00,#dc,#87,#00,#dc
	db #87,#00,#dc,#87,#00,#60,#88,#00
	db #86,#88,#00,#02,#88,#00,#31,#88
	db #00,#02,#88,#00,#02,#88,#00,#31
	db #88,#00,#31,#88,#00,#31,#88,#00
	db #31,#88,#00,#31,#88,#00,#31,#88
	db #00,#31,#88,#00,#31,#88,#00,#d3
	db #88,#00,#d3,#88,#00,#bb,#88,#00
	db #bb,#88,#00,#dc,#87,#00,#dc,#87
	db #00,#dc,#87,#00,#dc,#87,#00,#dc
	db #87,#00,#dc,#87,#00,#dc,#87,#00
	db #dc,#87,#00,#f1,#88,#00,#0c,#89
	db #00,#f1,#88,#00,#0c,#89,#00,#d6
	db #88,#00,#28,#89,#00,#f1,#88,#00
	db #0c,#89,#00,#43,#89,#80,#41,#82
	db #00,#20,#ff,#fe,#20,#ff,#37,#04
	db #1b,#37,#02,#0b,#37,#82,#37,#84
	db #37,#84,#35,#84,#35,#82,#35,#82
	db #35,#84,#35,#84,#ff,#34,#04,#0b
	db #34,#82,#34,#82,#34,#84,#34,#84
	db #36,#84,#36,#82,#36,#82,#32,#84
	db #32,#84,#ff,#2b,#0a,#12,#26,#02
	db #02,#29,#82,#2b,#82,#2e,#82,#26
	db #82,#29,#82,#2b,#82,#2b,#82,#26
	db #82,#29,#82,#2b,#82,#ff,#27,#0a
	db #02,#22,#82,#27,#82,#29,#82,#2a
	db #82,#22,#82,#27,#82,#29,#82,#2e
	db #82,#29,#82,#2d,#82,#29,#82,#ff
	db #29,#0a,#02,#21,#82,#26,#82,#29
	db #82,#29,#82,#21,#82,#26,#82,#29
	db #82,#29,#82,#21,#82,#26,#82,#21
	db #82,#ff,#24,#0a,#02,#21,#82,#24
	db #82,#21,#82,#24,#90,#ff,#fe,#20
	db #ff,#00,#20,#ff,#2b,#08,#02,#43
	db #02,#b6,#01,#26,#02,#02,#29,#82
	db #43,#02,#b6,#01,#2e,#02,#02,#43
	db #02,#b6,#01,#29,#02,#02,#43,#02
	db #b6,#01,#43,#82,#26,#02,#02,#43
	db #02,#b6,#01,#2b,#02,#02,#ff,#27
	db #08,#02,#3f,#02,#f6,#02,#22,#02
	db #12,#27,#02,#02,#3f,#02,#f6,#02
	db #2a,#02,#12,#3f,#02,#f6,#02,#27
	db #02,#12,#3f,#02,#f6,#02,#3f,#02
	db #06,#29,#02,#12,#3f,#02,#f6,#02
	db #29,#02,#12,#ff,#29,#08,#02,#3e
	db #02,#f6,#03,#21,#02,#12,#26,#02
	db #02,#3e,#02,#f6,#03,#29,#02,#12
	db #3e,#02,#f6,#03,#26,#02,#12,#3e
	db #02,#f6,#03,#3e,#02,#f6,#04,#21
	db #02,#12,#3e,#02,#f6,#03,#21,#02
	db #12,#ff,#24,#08,#02,#3c,#02,#f6
	db #05,#21,#02,#12,#24,#02,#02,#3c
	db #02,#f6,#05,#24,#02,#12,#3c,#04
	db #f6,#05,#3c,#82,#3c,#04,#f6,#06
	db #3c,#04,#f6,#05,#ff,#cf,#b4,#05
	db #cf,#f4,#02,#cf,#b4,#04,#cf,#b4
	db #02,#4f,#04,#b4,#00,#43,#06,#f6
	db #02,#43,#04,#06,#43,#84,#43,#82
	db #43,#84,#43,#84,#ff,#cb,#b4,#05
	db #cb,#f4,#02,#cb,#b4,#04,#cb,#b4
	db #02,#4b,#04,#b4,#00,#3f,#06,#f6
	db #07,#3f,#04,#06,#3f,#84,#3f,#82
	db #3f,#84,#3f,#84,#ff,#ca,#b4,#05
	db #ca,#f4,#02,#ca,#b4,#04,#ca,#b4
	db #02,#4a,#04,#b4,#00,#3e,#06,#f6
	db #07,#3e,#04,#06,#3e,#84,#3e,#82
	db #3e,#84,#3e,#84,#ff,#cd,#b4,#05
	db #cd,#f4,#02,#cd,#b4,#04,#cd,#b4
	db #02,#4d,#04,#b4,#00,#41,#06,#f6
	db #07,#41,#04,#06,#41,#84,#41,#82
	db #41,#84,#41,#84,#ff,#43,#04,#1c
	db #45,#04,#0c,#46,#84,#48,#84,#4a
	db #02,#0b,#4d,#84,#4a,#82,#4d,#84
	db #4a,#84,#ff,#4b,#08,#1c,#48,#02
	db #0c,#4a,#82,#4b,#84,#4a,#02,#0b
	db #4d,#84,#4d,#02,#0c,#4d,#04,#fb
	db #09,#4d,#04,#fb,#02,#ff,#4f,#08
	db #1b,#56,#04,#0b,#52,#84,#52,#84
	db #4d,#02,#0c,#4f,#82,#52,#84,#4d
	db #84,#ff,#4b,#02,#12,#4b,#02,#02
	db #4a,#82,#4a,#82,#48,#06,#0b,#46
	db #82,#4a,#8a,#45,#02,#02,#45,#82
	db #43,#82,#ff,#43,#08,#1c,#45,#04
	db #0c,#46,#02,#0b,#46,#82,#46,#08
	db #0c,#41,#82,#46,#82,#48,#82,#46
	db #82,#ff,#4f,#20,#01,#ff,#37,#20
	db #03,#ff,#48,#0a,#1c,#46,#02,#0c
	db #45,#82,#46,#82,#45,#84,#42,#84
	db #45,#84,#42,#84,#ff,#c3,#bc,#0f
	db #c3,#fc,#03,#c3,#bc,#05,#c3,#bc
	db #03,#c3,#bc,#02,#c3,#bc,#01,#43
	db #06,#bc,#00,#c3,#bc,#01,#c3,#bc
	db #0f,#c3,#bc,#01,#c3,#bc,#01,#c3
	db #bc,#0f,#c3,#bc,#03,#c3,#bc,#03
	db #c3,#bc,#0f,#c3,#bc,#04,#c3,#bc
	db #05,#fe,#02,#c3,#bc,#02,#fe,#07
	db #ff,#00,#20,#ff,#2b,#10,#84,#12
	db #29,#10,#82,#14,#ff,#28,#10,#82
	db #15,#2a,#08,#82,#13,#26,#08,#82
	db #18,#ff,#28,#10,#82,#15,#2a,#08
	db #82,#13,#26,#08,#82,#18,#ff,#37
	db #0a,#a4,#12,#32,#02,#a4,#18,#35
	db #02,#a4,#14,#37,#02,#a4,#12,#3a
	db #02,#a4,#05,#32,#02,#a4,#18,#35
	db #02,#a4,#14,#37,#02,#a4,#12,#37
	db #82,#32,#02,#a4,#18,#35,#02,#a4
	db #14,#37,#02,#a4,#12,#ff,#33,#0a
	db #a4,#16,#2e,#02,#a4,#1e,#33,#02
	db #a4,#16,#35,#02,#a4,#14,#36,#02
	db #a4,#13,#2e,#02,#a4,#1e,#33,#02
	db #a4,#16,#35,#02,#a4,#14,#3a,#02
	db #a4,#05,#35,#02,#a4,#14,#39,#02
	db #a4,#10,#35,#02,#a4,#14,#ff,#35
	db #0a,#a4,#14,#2d,#02,#a4,#20,#32
	db #02,#a4,#18,#35,#02,#a4,#14,#35
	db #02,#04,#2d,#02,#a4,#20,#32,#02
	db #a4,#18,#35,#02,#a4,#14,#35,#02
	db #04,#2d,#02,#a4,#20,#32,#02,#a4
	db #18,#2d,#02,#a4,#20,#ff,#30,#0a
	db #a4,#1b,#2d,#02,#a4,#20,#30,#02
	db #a4,#1b,#2d,#02,#a4,#20,#30,#10
	db #a4,#1b,#ff,#37,#20,#a4,#12,#ff
	db #37,#20,#a4,#12,#ff,#33,#0a,#a4
	db #16,#2e,#02,#a4,#1e,#33,#02,#a4
	db #16,#35,#02,#a4,#14,#36,#02,#a4
	db #13,#2e,#02,#a4,#1e,#33,#02,#a4
	db #16,#35,#02,#a4,#14,#3a,#02,#a4
	db #05,#35,#02,#a4,#14,#39,#02,#a4
	db #10,#35,#02,#a4,#14,#ff,#35,#0a
	db #a4,#14,#2d,#02,#a4,#20,#32,#02
	db #a4,#18,#35,#02,#a4,#14,#35,#02
	db #04,#2d,#02,#a4,#20,#32,#02,#a4
	db #18,#35,#02,#a4,#14,#35,#02,#04
	db #2d,#02,#a4,#20,#32,#02,#a4,#18
	db #2d,#02,#a4,#20,#ff,#30,#0a,#a4
	db #1b,#2d,#02,#a4,#20,#30,#02,#a4
	db #1b,#2d,#02,#a4,#20,#30,#10,#a4
	db #1b,#ff,#37,#0a,#a4,#12,#32,#02
	db #a4,#18,#35,#02,#a4,#14,#37,#02
	db #a4,#12,#3a,#02,#a4,#05,#32,#02
	db #a4,#18,#35,#02,#a4,#14,#37,#02
	db #a4,#12,#37,#82,#32,#02,#a4,#18
	db #35,#02,#a4,#14,#37,#02,#a4,#12
	db #ff,#35,#0a,#a4,#14,#2d,#02,#a4
	db #20,#32,#02,#a4,#18,#35,#02,#a4
	db #14,#35,#02,#04,#2d,#02,#a4,#20
	db #32,#02,#a4,#18,#35,#02,#a4,#14
	db #35,#02,#04,#2d,#02,#a4,#20,#32
	db #02,#a4,#18,#2d,#02,#a4,#20,#ff
	db #37,#08,#a4,#12,#fe,#0a,#32,#02
	db #a4,#18,#35,#02,#a4,#14,#37,#02
	db #a4,#12,#37,#82,#32,#02,#a4,#18
	db #35,#02,#a4,#14,#37,#02,#a4,#12
	db #ff,#37,#08,#a4,#12,#fe,#0a,#32
	db #02,#a4,#18,#35,#02,#a4,#14,#37
	db #02,#a4,#12,#37,#82,#32,#02,#a4
	db #18,#35,#02,#a4,#14,#37,#02,#a4
	db #12,#ff,#37,#08,#84,#12,#2b,#04
	db #84,#24,#2b,#04,#84,#48,#2e,#08
	db #84,#1e,#22,#04,#84,#3c,#22,#04
	db #84,#78,#ff,#30,#08,#85,#1b,#24
	db #04,#85,#35,#24,#04,#85,#6a,#32
	db #08,#85,#30,#26,#04,#85,#60,#26
	db #04,#85,#78,#ff,#30,#08,#85,#1b
	db #24,#04,#85,#35,#24,#04,#85,#6a
	db #32,#08,#85,#30,#26,#04,#85,#60
	db #26,#04,#85,#78,#ff,#37,#08,#84
	db #12,#2b,#04,#84,#24,#2b,#04,#84
	db #48,#2e,#08,#84,#1e,#22,#04,#84
	db #3c,#22,#04,#84,#78,#ff,#37,#08
	db #84,#12,#2b,#04,#84,#24,#2b,#04
	db #84,#48,#30,#08,#84,#1b,#24,#04
	db #84,#35,#24,#04,#84,#6a,#ff,#35
	db #08,#84,#14,#29,#04,#84,#28,#29
	db #04,#84,#50,#32,#08,#84,#18,#26
	db #04,#84,#30,#26,#04,#84,#60,#ff
	db #00,#20,#ff,#43,#02,#1e,#43,#02
	db #0e,#43,#82,#43,#82,#43,#02,#00
	db #43,#02,#0e,#43,#82,#43,#82,#43
	db #82,#43,#82,#43,#82,#43,#82,#43
	db #02,#00,#43,#02,#0e,#43,#82,#43
	db #82,#ff,#43,#02,#0e,#43,#82,#43
	db #82,#43,#82,#43,#02,#00,#43,#02
	db #0e,#43,#82,#43,#82,#43,#82,#43
	db #82,#43,#82,#43,#82,#43,#02,#00
	db #43,#02,#0e,#43,#82,#43,#82,#ff
	db #43,#02,#0f,#43,#02,#0e,#43,#02
	db #0f,#43,#82,#2b,#02,#0d,#43,#02
	db #0e,#43,#02,#0f,#43,#82,#43,#02
	db #0e,#43,#02,#0f,#43,#02,#0e,#43
	db #02,#0f,#2b,#02,#0d,#43,#02,#0e
	db #2b,#02,#0d,#43,#02,#0e,#ff,#43
	db #02,#0f,#43,#02,#0e,#43,#02,#0f
	db #43,#82,#2b,#02,#0d,#43,#02,#0e
	db #43,#02,#0f,#43,#82,#43,#02,#0e
	db #43,#02,#0f,#43,#02,#0e,#43,#02
	db #0f,#2b,#02,#0d,#43,#02,#0e,#2b
	db #02,#0d,#43,#02,#0e,#ff,#43,#02
	db #0e,#43,#82,#43,#82,#43,#82,#43
	db #02,#00,#43,#02,#0e,#43,#82,#43
	db #82,#43,#82,#43,#82,#43,#82,#43
	db #82,#43,#02,#00,#43,#02,#0e,#43
	db #82,#43,#82,#ff,#43,#02,#be,#00
	db #43,#02,#0e,#43,#02,#be,#01,#43
	db #02,#0e,#43,#02,#00,#43,#02,#be
	db #02,#43,#02,#0e,#43,#82,#43,#02
	db #be,#03,#43,#02,#0e,#43,#82,#43
	db #02,#be,#04,#43,#02,#b0,#04,#43
	db #02,#be,#04,#43,#02,#0e,#43,#82
	db #ff,#43,#08,#00,#2b,#0a,#0d,#43
	db #04,#0e,#43,#82,#2b,#02,#0d,#43
	db #02,#0e,#2b,#02,#0d,#43,#02,#0e
	db #ff,#00,#20,#ff,#c3,#bc,#0f,#c3
	db #fc,#03,#c3,#bc,#05,#43,#0d,#bc
	db #00,#3a,#0c,#fc,#07,#ba,#bc,#02
	db #ba,#0c,#ba,#0c,#ba,#0c,#ff,#c3
	db #00,#c3,#bc,#0f,#c3,#fc,#03,#c3
	db #bc,#05,#43,#0d,#bc,#00,#3a,#0c
	db #fc,#07,#ba,#bc,#02,#ba,#0c,#ba
	db #0c,#ff,#c3,#bc,#0f,#c3,#fc,#03
	db #c3,#bc,#05,#43,#0d,#bc,#00,#40
	db #0c,#fc,#04,#c0,#bc,#02,#c0,#0c
	db #c0,#0c,#c0,#bc,#05,#ff,#bc,#bc
	db #0f,#bc,#fc,#05,#bc,#bc,#05,#3c
	db #0d,#bc,#01,#3e,#0c,#fc,#07,#be
	db #bc,#03,#be,#0c,#be,#0c,#be,#0c
	db #ff,#43,#02,#be,#00,#43,#02,#0e
	db #43,#02,#be,#01,#43,#02,#0e,#43
	db #02,#00,#43,#02,#be,#02,#43,#02
	db #0e,#43,#82,#43,#02,#be,#03,#43
	db #02,#0e,#43,#82,#43,#02,#be,#04
	db #43,#02,#b0,#04,#43,#02,#be,#04
	db #43,#02,#0e,#43,#82,#ff
;
.music_info
	db "Blip Music! - 36 - New Orleans - Rising Sun Mix (1996)(Systeme D)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
