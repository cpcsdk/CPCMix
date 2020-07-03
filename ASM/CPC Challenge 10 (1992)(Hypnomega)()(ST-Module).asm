; Music of CPC Challenge 10 (1992)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCCH10.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"

	jr l6004
	jr l6013
.l6004
	call l602f
	ld hl,l6452
	ld de,l601c
	ld bc,#81ff
	jp #bcd7
.l6013
	ld hl,l6452
	call #bcdd
	jp l609b
.l601c
	push ix
	call l60b7
	pop ix
	ret
	jp l602f
	jp l60b7
	jp l609b
	db #66,#04
;
.init_music
.l602f
;
	ld b,#03
	ld ix,l63fe
	ld iy,l632a
	ld de,#001c
.l603c
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
	djnz l603c
	ld a,#06
	ld (l60df),a
	ld a,d
	ld (l60f3),a
	inc a
	ld (l60da),a
	ld a,#38
	ld (l60e4),a
	ld a,#ff
	ld (l6326),a
	ld (l6327),a
	ld (l6328),a
	ld (l6329),a
	ld a,#0c
	ld c,d
	call l6308
	ld a,#0d
	ld c,d
	jp l6308
;
.stop_music
.l609b
;
	ld a,#07
	ld c,#3f
	call l6308
	ld a,#08
	ld c,#00
	call l6308
	ld a,#09
	ld c,#00
	call l6308
	ld a,#0a
	ld c,#00
	jp l6308
;
.play_music
.l60b7
;
	ld hl,l60da
	dec (hl)
	ld ix,l63fe
	ld bc,l640c
	call l616d
	ld ix,l641a
	ld bc,l6428
	call l616d
	ld ix,l6436
	ld bc,l6444
	call l616d
.l60da equ $ + 1
	ld a,#00
	or a
	jr nz,l60e3
.l60df equ $ + 1
	ld a,#00
	ld (l60da),a
.l60e4 equ $ + 1
.l60e3
	ld a,#00
	ld hl,l6327
	cp (hl)
	jr z,l60f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l6308
.l60f3 equ $ + 1
.l60f2
	ld a,#00
	ld hl,l6326
	cp (hl)
	jr z,l6101
	ld (hl),a
	ld c,a
	ld a,#06
	call l6308
.l6102 equ $ + 1
.l6101
	ld a,#00
	ld hl,l6328
	cp (hl)
	jr z,l6110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6308
.l6111 equ $ + 1
.l6110
	ld a,#00
	ld hl,l6329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6308
.l611e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l621e
.l612d
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
	jp l6308
.l6147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l615c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l615c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l6180
.l616d
	ld a,(l60da)
	or a
	jp nz,l621e
	dec (ix+#06)
	jp nz,l621e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l6180
	ld a,(hl)
	or a
	jr z,l611e
	cp #fe
	jr z,l612d
	cp #ff
	jr z,l6147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l61bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l61bc
	and #7f
	ld (ix+#06),a
	jr l620f
.l61bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l61d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l61d0
	add a
	add a
	add a
	ld e,a
	ld hl,l6466
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
	jr z,l620f
	cp #f0
	jp z,l62c4
	cp #d0
	jp z,l62e0
	cp #b0
	jp z,l62e8
	cp #80
	jp nc,l62f0
	cp #10
	jr nz,l620f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l620f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l621e
	ld a,(ix+#17)
	or a
	jr nz,l6232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l625d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l625d
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
	call l6308
	ld c,h
	ld a,(ix+#03)
	call l6308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l629b
	and #0f
	sub (ix+#0a)
	jr nc,l6291
	xor a
.l6291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6308
.l629b
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
	jr z,l62b8
	ld b,a
	ld a,c
	ld (l60f3),a
	ld a,b
	sub #40
.l62b8
	ld (l62bf),a
	ld a,(l60e4)
.l62bf equ $ + 1
	bit 0,a
	ld (l60e4),a
	ret
.l62c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l64e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l620f
.l62e0
	inc hl
	ld a,(hl)
	ld (l60df),a
	jp l620f
.l62e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l620f
.l62f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6111),a
	inc hl
	ld a,(hl)
	ld (l6102),a
	jp l620f
.l6308
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
.l6329 equ $ + 3
.l6328 equ $ + 2
.l6327 equ $ + 1
.l6326
	db #ff,#ff,#ff,#ff
.l632a
	dw l67c6,l67e7,l6808
.l6330
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
.l63fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l640c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l641a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#65,#46,#65
	db #66,#65,#00,#00,#86,#65,#c6,#65
	db #e6,#65,#1c,#04,#06,#65,#06,#66
	db #26,#66,#00,#00,#46,#66,#86,#66
	db #a6,#66,#00,#00,#c6,#66,#06,#67
	db #26,#67,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
	db #00,#5f,#00,#00,#00,#5f,#00,#5f
.l64e6 equ $ + 4
	db #00,#5f,#00,#00,#46,#67,#66,#67
	db #86,#67,#a6,#67,#00,#5f,#00,#5f
	db #00,#5f,#00,#5f,#00,#5f,#00,#5f
	db #00,#5f,#00,#5f,#00,#5f,#00,#5f
	db #00,#5f,#00,#5f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#07,#06,#06,#05,#04
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#05,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0c,#0b
	db #0b,#0a,#0e,#0d,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#01,#01
	db #01,#01,#01,#01,#02,#01,#00,#00
	db #00,#00,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fd,#ff,#fd,#ff
	db #fd,#ff,#fd,#ff,#fd,#ff,#fd,#ff
	db #fd,#ff,#fd,#ff,#fd,#ff,#fd,#ff
	db #fd,#ff,#fd,#ff,#fd,#ff,#fd,#ff
	db #fd,#ff,#fd,#ff,#fd,#ff,#fd,#ff
	db #fd,#ff,#fd,#ff,#fd,#ff,#fd,#ff
	db #fd,#ff,#fd,#ff,#fd,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#08
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#02,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#19,#17,#15,#13
	db #11,#0e,#0b,#08,#05,#02,#00,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#80,#00,#a0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#07,#06,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#06,#08
	db #0b,#10,#02,#00,#06,#08,#0b,#10
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#18,#0c,#00,#18
	db #18,#0c,#00,#18,#18,#0c,#00,#18
	db #18,#0c,#00,#18,#18,#0c,#00,#18
	db #18,#0c,#00,#18,#18,#0c,#00,#18
	db #18,#0c,#00,#18,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#00,#06,#0c,#00
	db #06,#0c,#00,#06,#0c,#00,#06,#0c
	db #00,#06,#0c,#00,#06,#0c,#00,#06
	db #0c,#00,#06,#0c,#00,#06,#0c,#00
	db #06,#0c,#00,#06,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
.l67c6 equ $ + 4
	db #0c,#00,#00,#0c,#00,#29,#68,#00
	db #a2,#68,#00,#29,#68,#00,#1b,#69
	db #00,#a2,#68,#00,#a2,#68,#00,#1b
	db #69,#00,#94,#69,#00,#fd,#69,#00
.l67e7 equ $ + 5
	db #66,#6a,#80,#c6,#67,#00,#cf,#6a
	db #00,#03,#6b,#00,#2d,#6b,#00,#5c
	db #6b,#00,#9d,#6b,#00,#9d,#6b,#00
	db #5c,#6b,#00,#ee,#6b,#00,#2a,#6c
.l6808 equ $ + 6
	db #00,#2a,#6c,#80,#e7,#67,#00,#64
	db #6c,#00,#bc,#6c,#00,#64,#6c,#00
	db #14,#6d,#00,#64,#6c,#00,#64,#6c
	db #00,#14,#6d,#00,#64,#6c,#00,#6c
	db #6d,#00,#b8,#6d,#80,#08,#68,#1f
	db #02,#80,#24,#ab,#80,#12,#9f,#80
	db #24,#3a,#02,#14,#1d,#02,#80,#28
	db #1f,#04,#80,#24,#3a,#02,#14,#a9
	db #80,#14,#ab,#80,#12,#1f,#02,#80
	db #24,#ab,#80,#12,#9f,#80,#24,#3a
	db #02,#14,#1d,#02,#80,#28,#1f,#04
	db #80,#24,#6a,#02,#13,#a9,#80,#14
	db #ab,#80,#12,#20,#02,#80,#22,#ac
	db #80,#11,#a0,#80,#22,#3a,#02,#14
	db #1e,#02,#80,#26,#20,#04,#80,#22
	db #3a,#02,#14,#aa,#80,#13,#ac,#80
	db #11,#1a,#02,#80,#30,#a6,#80,#18
	db #9a,#80,#30,#3a,#02,#14,#18,#02
	db #80,#35,#1a,#04,#80,#30,#6a,#02
	db #13,#a4,#80,#1b,#a6,#80,#18,#ff
	db #1f,#02,#80,#24,#ab,#80,#12,#9f
	db #80,#24,#3a,#02,#14,#1d,#02,#80
	db #28,#1f,#04,#80,#24,#3a,#02,#14
	db #a9,#80,#14,#ab,#80,#12,#1f,#02
	db #80,#24,#ab,#80,#12,#9f,#80,#24
	db #3a,#02,#14,#1d,#02,#80,#28,#1f
	db #04,#80,#24,#6a,#02,#13,#a9,#80
	db #14,#ab,#80,#12,#20,#02,#80,#22
	db #ac,#80,#11,#a0,#80,#22,#3a,#02
	db #14,#1e,#02,#80,#26,#20,#04,#80
	db #22,#3a,#02,#14,#aa,#80,#13,#ac
	db #80,#11,#1a,#02,#80,#30,#a6,#80
	db #18,#9a,#80,#30,#3a,#02,#14,#18
	db #02,#80,#35,#1a,#04,#80,#30,#6a
	db #02,#13,#a4,#80,#1b,#a6,#80,#18
	db #ff,#1f,#02,#80,#24,#ab,#80,#12
	db #9f,#80,#24,#3a,#02,#14,#1d,#02
	db #80,#28,#1f,#04,#80,#24,#3a,#02
	db #14,#a9,#80,#14,#ab,#80,#12,#24
	db #02,#80,#1b,#ab,#80,#12,#a4,#80
	db #1b,#3a,#02,#14,#22,#02,#80,#1e
	db #24,#04,#80,#1b,#6a,#02,#13,#a9
	db #80,#14,#ab,#80,#12,#20,#02,#80
	db #22,#ac,#80,#11,#a0,#80,#22,#3a
	db #02,#14,#20,#02,#80,#22,#1a,#04
	db #80,#2f,#3a,#02,#14,#a9,#80,#14
	db #ab,#80,#12,#1f,#02,#80,#24,#ab
	db #80,#12,#9f,#80,#24,#3a,#02,#14
	db #1d,#02,#80,#28,#1f,#04,#c0,#24
	db #6a,#02,#13,#a4,#80,#1b,#a6,#80
	db #18,#ff,#2b,#02,#80,#12,#2b,#82
	db #3a,#02,#14,#2b,#02,#80,#12,#29
	db #02,#80,#14,#29,#82,#68,#02,#13
	db #29,#02,#80,#14,#22,#02,#80,#1e
	db #22,#82,#3a,#02,#14,#22,#02,#80
	db #1e,#24,#02,#80,#1b,#24,#82,#68
	db #02,#13,#24,#02,#80,#1b,#2b,#02
	db #80,#12,#2b,#82,#3a,#02,#14,#2b
	db #02,#80,#12,#29,#02,#80,#14,#29
	db #82,#68,#02,#13,#29,#02,#80,#14
	db #22,#02,#80,#1e,#22,#82,#3a,#02
	db #14,#22,#02,#80,#1e,#24,#02,#80
	db #1b,#24,#82,#68,#02,#13,#24,#02
	db #80,#1b,#ff,#2b,#02,#80,#12,#2b
	db #82,#3a,#02,#14,#2b,#02,#80,#12
	db #29,#02,#80,#14,#29,#82,#68,#02
	db #13,#29,#02,#80,#14,#22,#02,#80
	db #1e,#22,#82,#3a,#02,#14,#22,#02
	db #80,#1e,#24,#02,#80,#1b,#24,#82
	db #68,#02,#13,#24,#02,#80,#1b,#2b
	db #02,#80,#12,#2b,#82,#3a,#02,#14
	db #2b,#02,#80,#12,#29,#02,#80,#14
	db #29,#82,#68,#02,#13,#29,#02,#80
	db #14,#22,#02,#80,#1e,#22,#82,#3a
	db #02,#14,#22,#02,#80,#1e,#24,#02
	db #80,#1b,#24,#82,#68,#02,#13,#24
	db #02,#80,#1b,#ff,#2b,#02,#80,#12
	db #2b,#82,#3a,#02,#14,#2b,#02,#80
	db #12,#29,#02,#80,#14,#29,#82,#68
	db #02,#13,#29,#02,#80,#14,#22,#02
	db #80,#1e,#22,#82,#3a,#02,#14,#22
	db #02,#80,#1e,#24,#02,#80,#1b,#24
	db #82,#68,#02,#13,#24,#02,#80,#1b
	db #2b,#02,#80,#12,#2b,#82,#3a,#02
	db #14,#2b,#02,#80,#12,#29,#02,#80
	db #14,#29,#82,#68,#02,#13,#29,#02
	db #80,#14,#22,#02,#80,#1e,#22,#82
	db #3a,#02,#14,#22,#02,#80,#1e,#24
	db #02,#80,#1b,#24,#82,#68,#02,#13
	db #24,#02,#80,#1b,#ff,#00,#04,#43
	db #02,#01,#43,#82,#44,#83,#43,#83
	db #41,#83,#c3,#01,#43,#82,#43,#82
	db #41,#82,#c3,#01,#c1,#01,#43,#8a
	db #43,#82,#43,#82,#44,#83,#43,#83
	db #41,#83,#c3,#01,#43,#82,#43,#82
	db #41,#82,#c3,#01,#c1,#01,#43,#86
	db #ff,#00,#04,#43,#02,#01,#43,#82
	db #44,#83,#43,#83,#41,#83,#ca,#01
	db #4a,#82,#4a,#82,#48,#82,#4a,#88
	db #4b,#84,#4a,#84,#4b,#84,#4a,#85
	db #c5,#01,#45,#82,#45,#82,#45,#82
	db #45,#88,#ff,#c3,#01,#c3,#01,#43
	db #82,#43,#82,#43,#82,#43,#83,#43
	db #83,#43,#82,#cd,#01,#cd,#01,#4d
	db #82,#4d,#82,#4b,#82,#4d,#88,#4e
	db #84,#4d,#84,#4e,#84,#4d,#85,#c8
	db #01,#48,#82,#48,#82,#48,#82,#48
	db #88,#ff,#c3,#01,#c3,#01,#43,#82
	db #43,#82,#43,#82,#43,#83,#45,#83
	db #46,#82,#c8,#01,#c8,#01,#48,#82
	db #48,#82,#48,#82,#48,#86,#c8,#01
	db #ca,#01,#cb,#01,#cb,#01,#4a,#82
	db #48,#82,#46,#82,#45,#82,#43,#82
	db #42,#83,#43,#82,#c3,#01,#43,#82
	db #43,#82,#45,#82,#43,#86,#c1,#01
	db #c3,#01,#ff,#c6,#01,#45,#82,#c4
	db #01,#43,#82,#c6,#01,#45,#82,#c4
	db #01,#43,#82,#46,#82,#48,#82,#c6
	db #01,#45,#82,#c4,#01,#43,#82,#c6
	db #01,#45,#82,#c4,#01,#43,#82,#46
	db #82,#48,#82,#cb,#01,#4a,#82,#c9
	db #01,#48,#82,#cb,#01,#4a,#82,#c9
	db #01,#48,#82,#4b,#82,#4d,#82,#c5
	db #01,#44,#82,#c3,#01,#42,#82,#c5
	db #01,#44,#82,#c3,#01,#42,#82,#45
	db #82,#46,#82,#ff,#3e,#02,#f1,#03
	db #43,#04,#01,#3e,#82,#c1,#01,#43
	db #82,#3c,#82,#ba,#01,#3c,#82,#3e
	db #83,#41,#83,#3e,#82,#40,#84,#c3
	db #01,#c5,#01,#46,#82,#37,#83,#3a
	db #83,#3e,#82,#3c,#86,#ba,#01,#bc
	db #01,#3e,#83,#41,#83,#3e,#82,#40
	db #83,#43,#82,#c5,#01,#46,#82,#ff
	db #3e,#02,#01,#43,#84,#3e,#82,#c1
	db #01,#43,#82,#3c,#82,#ba,#01,#3c
	db #82,#3e,#83,#41,#83,#3e,#82,#40
	db #84,#c3,#01,#c5,#01,#46,#82,#37
	db #83,#3a,#83,#3e,#82,#3c,#86,#ba
	db #01,#bc,#01,#3e,#83,#41,#83,#3e
	db #82,#40,#83,#43,#82,#c5,#01,#46
	db #82,#ff,#56,#02,#f2,#01,#4f,#02
	db #02,#43,#02,#f1,#01,#43,#02,#01
	db #44,#03,#f1,#02,#43,#03,#f1,#01
	db #41,#02,#01,#c1,#f2,#00,#c3,#02
	db #c3,#02,#c3,#02,#43,#02,#f1,#01
	db #41,#02,#01,#c3,#01,#c1,#01,#43
	db #84,#4f,#02,#f2,#00,#56,#02,#02
	db #4f,#82,#43,#02,#f1,#01,#43,#02
	db #01,#44,#83,#43,#83,#41,#83,#c3
	db #01,#43,#82,#43,#82,#41,#82,#c3
	db #01,#c1,#01,#43,#84,#4f,#02,#f2
	db #01,#ff,#56,#02,#f2,#01,#4f,#02
	db #02,#43,#02,#f1,#01,#43,#02,#01
	db #44,#03,#f1,#02,#43,#03,#f1,#01
	db #41,#02,#01,#c1,#f2,#00,#c3,#02
	db #c3,#02,#c3,#02,#43,#02,#f1,#01
	db #41,#02,#01,#c3,#01,#c1,#01,#43
	db #84,#4f,#02,#f2,#00,#56,#02,#02
	db #4f,#82,#43,#02,#f1,#01,#43,#02
	db #01,#44,#83,#43,#83,#41,#83,#be
	db #01,#3e,#82,#3e,#82,#3c,#82,#be
	db #01,#bc,#01,#3e,#84,#4f,#02,#f2
	db #01,#ff,#56,#02,#f2,#01,#4f,#02
	db #02,#43,#02,#f1,#01,#43,#02,#01
	db #44,#03,#f1,#02,#43,#03,#f1,#01
	db #41,#02,#01,#bc,#f2,#00,#bc,#02
	db #bc,#02,#bc,#02,#48,#02,#f2,#01
	db #46,#02,#02,#c8,#02,#c6,#02,#48
	db #84,#4f,#02,#f2,#00,#56,#02,#02
	db #4f,#82,#48,#02,#f2,#01,#46,#02
	db #02,#45,#83,#43,#83,#42,#83,#c3
	db #01,#43,#82,#43,#82,#41,#82,#c3
	db #01,#c1,#01,#43,#84,#4f,#02,#f2
	db #01,#ff,#37,#02,#f1,#00,#37,#02
	db #01,#37,#82,#b7,#01,#39,#82,#39
	db #82,#b9,#01,#39,#82,#39,#82,#3a
	db #82,#3a,#82,#3a,#82,#ba,#01,#39
	db #82,#39,#82,#b9,#01,#39,#82,#39
	db #82,#37,#82,#37,#82,#37,#82,#b7
	db #01,#39,#82,#39,#82,#b9,#01,#39
	db #82,#39,#82,#3a,#82,#3a,#82,#3a
	db #82,#ba,#01,#3c,#82,#3c,#82,#bc
	db #01,#3c,#82,#3c,#82,#ff,#c6,#f1
	db #01,#45,#02,#01,#c4,#f1,#02,#43
	db #02,#f1,#01,#c6,#01,#45,#82,#c4
	db #f1,#02,#43,#02,#f1,#01,#46,#02
	db #01,#48,#82,#c6,#01,#45,#82,#c4
	db #f1,#02,#43,#02,#f1,#01,#c6,#01
	db #45,#82,#c4,#f1,#02,#43,#02,#f1
	db #01,#46,#02,#01,#48,#82,#4b,#04
	db #f1,#01,#4a,#04,#01,#4b,#84,#4a
	db #85,#c5,#01,#45,#82,#45,#82,#45
	db #82,#45,#88,#ff
;
.music_info
	db "CPC Challenge 10 (1992)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
