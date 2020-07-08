; Music of Autostop - Intro (19xx)(Crack'n'Rom)()(ST-Module)
; Ripped by Megachur the 08/01/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUTOSTOI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #4000

	read "music_header.asm"

	jr l4004
	jr l4013
.l4004
	call l402f
	ld hl,l4452
	ld de,l401c
	ld bc,#81ff
	jp #bcd7
.l4013
	ld hl,l4452
	call #bcdd
	jp l409b
.l401c
	push ix
	call l40b7
	pop ix
	ret
	jp l402f
	jp l40b7
	jp l409b
	db #66,#04
;
.init_music
.l402f
;
	ld b,#03
	ld ix,l43fe
	ld iy,l432a
	ld de,#001c
.l403c
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
	djnz l403c
	ld a,#06
	ld (l40df),a
	ld a,d
	ld (l40f3),a
	inc a
	ld (l40da),a
	ld a,#38
	ld (l40e4),a
	ld a,#ff
	ld (l4326),a
	ld (l4327),a
	ld (l4328),a
	ld (l4329),a
	ld a,#0c
	ld c,d
	call l4308
	ld a,#0d
	ld c,d
	jp l4308
;
.stop_music
.l409b
;
	ld a,#07
	ld c,#3f
	call l4308
	ld a,#08
	ld c,#00
	call l4308
	ld a,#09
	ld c,#00
	call l4308
	ld a,#0a
	ld c,#00
	jp l4308
;
.play_music
.l40b7
;
	ld hl,l40da
	dec (hl)
	ld ix,l43fe
	ld bc,l440c
	call l416d
	ld ix,l441a
	ld bc,l4428
	call l416d
	ld ix,l4436
	ld bc,l4444
	call l416d
.l40da equ $ + 1
	ld a,#00
	or a
	jr nz,l40e3
.l40df equ $ + 1
	ld a,#00
	ld (l40da),a
.l40e4 equ $ + 1
.l40e3
	ld a,#00
	ld hl,l4327
	cp (hl)
	jr z,l40f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l4308
.l40f3 equ $ + 1
.l40f2
	ld a,#00
	ld hl,l4326
	cp (hl)
	jr z,l4101
	ld (hl),a
	ld c,a
	ld a,#06
	call l4308
.l4102 equ $ + 1
.l4101
	ld a,#00
	ld hl,l4328
	cp (hl)
	jr z,l4110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4308
.l4111 equ $ + 1
.l4110
	ld a,#00
	ld hl,l4329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4308
.l411e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l421e
.l412d
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
	jp l4308
.l4147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l415c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l415c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4180
.l416d
	ld a,(l40da)
	or a
	jp nz,l421e
	dec (ix+#06)
	jp nz,l421e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4180
	ld a,(hl)
	or a
	jr z,l411e
	cp #fe
	jr z,l412d
	cp #ff
	jr z,l4147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l41bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l41bc
	and #7f
	ld (ix+#06),a
	jr l420f
.l41bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l41d0
	add a
	add a
	add a
	ld e,a
	ld hl,l4466
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
	jr z,l420f
	cp #f0
	jp z,l42c4
	cp #d0
	jp z,l42e0
	cp #b0
	jp z,l42e8
	cp #80
	jp nc,l42f0
	cp #10
	jr nz,l420f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l420f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l421e
	ld a,(ix+#17)
	or a
	jr nz,l4232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l425d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l425d
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
	call l4308
	ld c,h
	ld a,(ix+#03)
	call l4308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l429b
	and #0f
	sub (ix+#0a)
	jr nc,l4291
	xor a
.l4291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4308
.l429b
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
	jr z,l42b8
	ld b,a
	ld a,c
	ld (l40f3),a
	ld a,b
	sub #40
.l42b8
	ld (l42bf),a
	ld a,(l40e4)
.l42bf equ $ + 1
	bit 0,a
	ld (l40e4),a
	ret
.l42c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l420f
.l42e0
	inc hl
	ld a,(hl)
	ld (l40df),a
	jp l420f
.l42e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l420f
.l42f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4111),a
	inc hl
	ld a,(hl)
	ld (l4102),a
	jp l420f
.l4308
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
.l4329 equ $ + 3
.l4328 equ $ + 2
.l4327 equ $ + 1
.l4326
	db #ff,#ff,#ff,#ff
.l432a
	dw l4786,l47c5,l4804
.l4330
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
.l43fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l440c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l441a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4466 equ $ + 4
	db #75,#6c,#65,#2e,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#06,#45,#46,#45
	db #66,#45,#ff,#ff,#86,#45,#c6,#45
	db #e6,#45,#0c,#00,#ff,#3e,#21,#d1
	db #70,#9d,#23,#56,#23,#40,#10,#3f
	db #09,#bd,#23,#4e,#fe,#3e,#ca,#3f
	db #98,#3d,#50,#30,#06,#46,#46,#46
	db #66,#46,#0b,#15,#06,#46,#86,#46
	db #66,#46,#00,#00,#06,#3f,#af,#57
	db #75,#3d,#f0,#30,#a6,#46,#e6,#46
	db #66,#46,#08,#18,#e6,#c0,#26,#c1
	db #46,#c1,#00,#00,#00,#37,#00,#37
	db #00,#37,#00,#00,#00,#37,#00,#37
	db #00,#37,#00,#00,#00,#37,#00,#37
	db #00,#37,#00,#00,#00,#37,#00,#37
	db #00,#37,#00,#00,#00,#37,#00,#37
.l44e6 equ $ + 4
	db #00,#37,#00,#00,#06,#47,#26,#47
	db #46,#47,#c6,#ff,#66,#47,#66,#85
	db #86,#85,#00,#37,#00,#37,#00,#37
	db #00,#37,#00,#37,#00,#37,#00,#37
	db #00,#37,#00,#37,#ff,#ff,#c7,#ff
	db #8f,#ff,#27,#ff,#1f,#ff,#07,#ff
	db #cf,#fe,#07,#fe,#3f,#fe,#07,#fe
	db #0f,#fe,#67,#fc,#9f,#fc,#87,#fc
	db #0f,#fc,#07,#fc,#ff,#fc,#4f,#fc
	db #1f,#fc,#0f,#fc,#07,#fc,#3f,#fc
	db #27,#fc,#0f,#fc,#7f,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#f0,#70,#71,#f1
	db #f0,#70,#f2,#73,#f3,#f8,#78,#78
	db #f8,#79,#f9,#f9,#f9,#fc,#7c,#fe
	db #7e,#7e,#7e,#7e,#7e,#7e,#7e,#7e
	db #7e,#7e,#7e,#7e,#78,#ff,#ff,#fe
	db #7e,#7e,#7e,#7e,#7e,#7e,#7e,#7e
	db #7e,#7e,#7e,#7e,#7e,#7e,#7e,#7e
	db #7e,#7e,#7e,#7e,#7e,#7f,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#c4,#ff
	db #89,#ff,#26,#7f,#00,#ff,#00,#7f
	db #cc,#fe,#10,#fe,#01,#fe,#02,#7e
	db #00,#fe,#73,#fc,#c0,#fc,#81,#fc
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#f0,#70,#70,#70
	db #70,#70,#f0,#f0,#71,#f0,#f8,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#f1,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#03
	db #03,#03,#03,#03,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
.l4786 equ $ + 4
	db #07,#0c,#00,#07,#00,#43,#48,#00
	db #55,#48,#00,#43,#48,#00,#6f,#48
	db #00,#75,#48,#00,#ae,#48,#00,#75
	db #48,#00,#75,#48,#00,#75,#48,#00
	db #75,#48,#00,#75,#48,#00,#75,#48
	db #00,#e7,#48,#00,#45,#49,#00,#e7
	db #48,#00,#b6,#49,#00,#75,#48,#00
	db #ae,#48,#00,#75,#48,#00,#75,#48
.l47c5 equ $ + 3
	db #80,#92,#47,#00,#fe,#49,#00,#5c
	db #4a,#00,#fe,#49,#00,#cd,#4a,#00
	db #11,#4b,#00,#6f,#4b,#00,#11,#4b
	db #00,#e0,#4b,#00,#28,#4c,#00,#96
	db #4c,#00,#28,#4c,#00,#ec,#4c,#00
	db #4c,#4d,#00,#c1,#4d,#00,#4c,#4d
	db #00,#16,#4e,#00,#11,#4b,#00,#6f
	db #4b,#00,#11,#4b,#00,#e0,#4b,#80
.l4804 equ $ + 2
	db #d1,#47,#00,#6b,#4e,#00,#7c,#4e
	db #00,#6b,#4e,#00,#6b,#4e,#00,#6b
	db #4e,#00,#6b,#4e,#00,#6b,#4e,#00
	db #6b,#4e,#00,#6b,#4e,#00,#6b,#4e
	db #00,#6b,#4e,#00,#6b,#4e,#00,#6b
	db #4e,#00,#6b,#4e,#00,#6b,#4e,#00
	db #6b,#4e,#00,#6b,#4e,#00,#6b,#4e
	db #00,#6b,#4e,#00,#6b,#4e,#80,#10
	db #48,#4b,#04,#07,#4a,#84,#48,#84
	db #46,#84,#48,#82,#4a,#86,#48,#94
	db #4a,#84,#ff,#4b,#04,#07,#4d,#84
	db #4f,#84,#4d,#84,#4a,#84,#4b,#82
	db #4a,#82,#48,#86,#4a,#82,#4b,#84
	db #4a,#88,#4a,#84,#ff,#48,#2c,#07
	db #4a,#84,#ff,#2e,#02,#02,#24,#02
	db #07,#24,#82,#24,#82,#24,#82,#24
	db #82,#3a,#02,#01,#22,#02,#07,#22
	db #82,#22,#82,#22,#82,#22,#82,#2e
	db #02,#02,#20,#02,#07,#20,#82,#20
	db #82,#20,#82,#20,#82,#3a,#02,#01
	db #22,#02,#07,#22,#82,#22,#82,#22
	db #82,#22,#82,#ff,#2e,#02,#02,#24
	db #02,#07,#24,#82,#24,#82,#24,#82
	db #24,#82,#3a,#02,#01,#22,#02,#07
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #2e,#02,#02,#20,#02,#07,#20,#82
	db #20,#82,#20,#82,#20,#82,#3a,#02
	db #01,#22,#02,#07,#22,#82,#22,#82
	db #22,#82,#22,#82,#ff,#4b,#02,#b9
	db #00,#ca,#b9,#05,#cb,#b9,#03,#4a
	db #02,#b9,#00,#cb,#b9,#05,#ca,#b9
	db #03,#48,#02,#b9,#00,#ca,#b9,#05
	db #c8,#b9,#03,#46,#02,#b9,#00,#c8
	db #b9,#05,#c6,#b9,#03,#48,#02,#b9
	db #00,#ca,#b9,#00,#48,#02,#b9,#03
	db #ca,#b9,#03,#48,#02,#b9,#05,#48
	db #03,#b9,#00,#48,#03,#b9,#03,#48
	db #03,#b9,#05,#48,#03,#b9,#06,#48
	db #03,#b9,#07,#48,#03,#b9,#08,#48
	db #02,#b9,#09,#4a,#03,#b9,#00,#ca
	db #b9,#03,#ff,#4b,#02,#b9,#00,#ca
	db #b9,#05,#cb,#b9,#03,#4d,#02,#b9
	db #00,#cb,#b9,#05,#cd,#b9,#03,#4f
	db #02,#b9,#00,#cd,#b9,#05,#cf,#b9
	db #03,#4d,#02,#b9,#00,#cf,#b9,#05
	db #cd,#b9,#03,#4a,#02,#b9,#00,#cd
	db #b9,#05,#ca,#b9,#03,#4b,#02,#b9
	db #00,#ca,#b9,#00,#cb,#b9,#03,#c8
	db #b9,#00,#ca,#b9,#03,#cb,#b9,#05
	db #c8,#b9,#03,#4a,#02,#b9,#05,#4a
	db #02,#b9,#00,#cb,#b9,#00,#4a,#02
	db #b9,#03,#cb,#b9,#03,#4a,#02,#b9
	db #00,#cb,#b9,#05,#4a,#03,#b9,#03
	db #4a,#02,#b9,#05,#4a,#03,#b9,#00
	db #ca,#b9,#03,#ff,#48,#02,#b9,#00
	db #ca,#b9,#02,#48,#02,#b9,#01,#ca
	db #b9,#03,#48,#02,#b9,#02,#ca,#b9
	db #04,#48,#02,#b9,#03,#ca,#b9,#04
	db #48,#82,#ca,#b9,#05,#48,#82,#ca
	db #b9,#06,#48,#82,#ca,#b9,#07,#48
	db #82,#ca,#b9,#08,#48,#82,#ca,#b9
	db #09,#48,#82,#ca,#b9,#0a,#48,#83
	db #48,#0b,#b9,#0b,#4a,#03,#b9,#00
	db #ca,#b9,#01,#ff,#4b,#02,#b9,#00
	db #ca,#b9,#05,#cb,#b9,#03,#4a,#02
	db #b9,#00,#cb,#b9,#05,#ca,#b9,#03
	db #48,#02,#b9,#00,#ca,#b9,#05,#c8
	db #b9,#03,#46,#02,#b9,#00,#c8,#b9
	db #05,#c6,#b9,#03,#48,#02,#b9,#00
	db #ca,#b9,#00,#48,#02,#b9,#03,#ca
	db #b9,#03,#48,#02,#b9,#05,#48,#03
	db #b9,#00,#48,#03,#b9,#03,#48,#03
	db #b9,#05,#48,#03,#b9,#06,#48,#03
	db #b9,#07,#48,#03,#b9,#08,#48,#02
	db #b9,#09,#4a,#03,#b9,#00,#ca,#b9
	db #03,#ff,#4b,#02,#b9,#00,#ca,#b9
	db #05,#cb,#b9,#03,#4d,#02,#b9,#00
	db #cb,#b9,#05,#cd,#b9,#03,#4f,#02
	db #b9,#00,#cd,#b9,#05,#cf,#b9,#03
	db #4d,#02,#b9,#00,#cf,#b9,#05,#cd
	db #b9,#03,#4a,#02,#b9,#00,#cd,#b9
	db #05,#ca,#b9,#03,#4b,#02,#b9,#00
	db #ca,#b9,#00,#cb,#b9,#03,#c8,#b9
	db #00,#ca,#b9,#03,#cb,#b9,#05,#c8
	db #b9,#03,#4a,#02,#b9,#05,#4a,#02
	db #b9,#00,#cb,#b9,#00,#4a,#02,#b9
	db #03,#cb,#b9,#03,#4a,#02,#b9,#00
	db #cb,#b9,#05,#4a,#03,#b9,#03,#4a
	db #02,#b9,#05,#4a,#03,#b9,#00,#ca
	db #b9,#03,#ff,#48,#03,#b9,#00,#ca
	db #b9,#02,#48,#03,#b9,#01,#ca,#b9
	db #03,#48,#03,#b9,#02,#ca,#b9,#04
	db #48,#03,#b9,#03,#ca,#b9,#04,#48
	db #83,#ca,#b9,#05,#48,#83,#ca,#b9
	db #06,#48,#83,#ca,#b9,#07,#48,#83
	db #ca,#b9,#08,#48,#83,#ca,#b9,#09
	db #48,#83,#ca,#b9,#0a,#48,#84,#4a
	db #03,#b9,#00,#ca,#b9,#03,#ff,#4b
	db #02,#b9,#00,#ca,#b9,#05,#cb,#b9
	db #03,#4a,#02,#b9,#00,#cb,#b9,#05
	db #ca,#b9,#03,#48,#02,#b9,#00,#ca
	db #b9,#05,#c8,#b9,#03,#46,#02,#b9
	db #00,#c8,#b9,#05,#c6,#b9,#03,#48
	db #02,#b9,#00,#ca,#b9,#00,#48,#02
	db #b9,#03,#ca,#b9,#03,#48,#02,#b9
	db #05,#48,#03,#b9,#00,#48,#03,#b9
	db #03,#48,#03,#b9,#05,#48,#03,#b9
	db #06,#48,#03,#b9,#07,#48,#03,#b9
	db #08,#48,#02,#b9,#09,#4a,#03,#b9
	db #00,#ca,#b9,#03,#ff,#4b,#02,#b9
	db #00,#ca,#b9,#05,#cb,#b9,#03,#4d
	db #02,#b9,#00,#cb,#b9,#05,#cd,#b9
	db #03,#4f,#02,#b9,#00,#cd,#b9,#05
	db #cf,#b9,#03,#4d,#02,#b9,#00,#cf
	db #b9,#05,#cd,#b9,#03,#4a,#02,#b9
	db #00,#cd,#b9,#05,#ca,#b9,#03,#4b
	db #02,#b9,#00,#ca,#b9,#00,#cb,#b9
	db #03,#c8,#b9,#00,#ca,#b9,#03,#cb
	db #b9,#05,#c8,#b9,#03,#4a,#02,#b9
	db #05,#4a,#02,#b9,#00,#cb,#b9,#00
	db #4a,#02,#b9,#03,#cb,#b9,#03,#4a
	db #02,#b9,#00,#cb,#b9,#05,#4a,#03
	db #b9,#03,#4a,#02,#b9,#05,#4a,#03
	db #b9,#00,#ca,#b9,#03,#ff,#48,#02
	db #b9,#00,#ca,#b9,#02,#48,#02,#b9
	db #01,#ca,#b9,#03,#48,#02,#b9,#02
	db #ca,#b9,#04,#48,#02,#b9,#03,#ca
	db #b9,#04,#48,#82,#ca,#b9,#05,#48
	db #82,#ca,#b9,#06,#48,#82,#ca,#b9
	db #07,#48,#82,#ca,#b9,#08,#48,#82
	db #ca,#b9,#09,#48,#82,#ca,#b9,#0a
	db #48,#83,#48,#0b,#b9,#0b,#4a,#03
	db #b9,#00,#ca,#b9,#01,#ff,#48,#02
	db #b9,#00,#cb,#b9,#05,#c8,#b9,#03
	db #4b,#02,#b9,#00,#c8,#b9,#05,#cb
	db #b9,#03,#4f,#02,#b9,#00,#cb,#b9
	db #05,#cf,#b9,#03,#54,#02,#b9,#00
	db #cf,#b9,#05,#d4,#b9,#03,#52,#02
	db #b9,#00,#4d,#83,#4d,#03,#b9,#03
	db #4d,#03,#b9,#05,#cd,#b9,#06,#4f
	db #02,#b9,#00,#d0,#b9,#00,#cf,#b9
	db #03,#cf,#b9,#00,#d0,#b9,#03,#cf
	db #b9,#05,#cf,#b9,#03,#4b,#02,#b9
	db #00,#cf,#b9,#05,#cb,#b9,#03,#4a
	db #02,#b9,#00,#cb,#b9,#05,#ca,#b9
	db #03,#4b,#02,#b9,#00,#ca,#b9,#05
	db #cb,#b9,#03,#ff,#48,#03,#b9,#00
	db #c8,#b9,#03,#4b,#02,#b9,#00,#c8
	db #b9,#05,#cb,#b9,#03,#4f,#02,#b9
	db #00,#cb,#b9,#05,#cf,#b9,#03,#54
	db #02,#b9,#00,#cf,#b9,#05,#d4,#b9
	db #03,#52,#02,#b9,#00,#d4,#b9,#05
	db #d2,#b9,#03,#4d,#02,#b9,#00,#d2
	db #b9,#05,#cd,#b9,#03,#4f,#03,#b9
	db #00,#4f,#03,#b9,#03,#4f,#03,#b9
	db #05,#4f,#03,#b9,#06,#4f,#03,#b9
	db #07,#4f,#03,#b9,#08,#4f,#06,#b9
	db #09,#ff,#48,#03,#b9,#00,#c8,#b9
	db #03,#4b,#02,#b9,#00,#c8,#b9,#05
	db #cb,#b9,#03,#4f,#02,#b9,#00,#cb
	db #b9,#05,#cf,#b9,#03,#54,#02,#b9
	db #00,#cf,#b9,#05,#d4,#b9,#03,#52
	db #02,#b9,#00,#d4,#b9,#05,#d2,#b9
	db #03,#4d,#02,#b9,#00,#d2,#b9,#05
	db #cd,#b9,#03,#4f,#03,#b9,#00,#4f
	db #03,#b9,#03,#4f,#03,#b9,#05,#4f
	db #03,#b9,#06,#4f,#03,#b9,#07,#4f
	db #03,#b9,#08,#4f,#02,#b9,#09,#54
	db #02,#b9,#00,#d6,#b9,#00,#d4,#b9
	db #03,#ff,#57,#02,#b9,#00,#d7,#b9
	db #05,#57,#03,#b9,#03,#57,#02,#b9
	db #05,#5b,#03,#b9,#00,#db,#b9,#03
	db #60,#02,#b9,#00,#db,#b9,#05,#e0
	db #b9,#03,#5e,#02,#b9,#00,#e0,#b9
	db #05,#de,#b9,#03,#59,#02,#b9,#00
	db #de,#b9,#05,#d9,#b9,#03,#5b,#02
	db #b9,#00,#d9,#b9,#05,#db,#b9,#03
	db #56,#02,#b9,#00,#d7,#b9,#00,#d6
	db #b9,#03,#d9,#b9,#00,#d7,#b9,#03
	db #d6,#b9,#05,#d9,#b9,#03,#5b,#02
	db #b9,#00,#d7,#b9,#00,#db,#b9,#03
	db #d6,#b9,#00,#d7,#b9,#03,#db,#b9
	db #05,#d6,#b9,#03,#57,#02,#b9,#00
	db #d6,#b9,#05,#d7,#b9,#03,#ff,#57
	db #02,#b9,#00,#d7,#b9,#05,#57,#03
	db #b9,#03,#57,#02,#b9,#05,#5b,#03
	db #b9,#00,#db,#b9,#03,#60,#02,#b9
	db #00,#db,#b9,#05,#e0,#b9,#03,#5e
	db #02,#b9,#00,#e0,#b9,#05,#de,#b9
	db #03,#59,#02,#b9,#00,#de,#b9,#05
	db #d9,#b9,#03,#5b,#03,#b9,#00,#5b
	db #03,#b9,#01,#5b,#03,#b9,#03,#5b
	db #03,#b9,#04,#5b,#03,#b9,#05,#5b
	db #03,#b9,#06,#5b,#03,#b9,#07,#5b
	db #03,#b9,#08,#ff,#57,#02,#b9,#00
	db #d7,#b9,#05,#57,#03,#b9,#03,#57
	db #02,#b9,#05,#5b,#03,#b9,#00,#db
	db #b9,#03,#60,#02,#b9,#00,#db,#b9
	db #05,#e0,#b9,#03,#5e,#02,#b9,#00
	db #e0,#b9,#05,#de,#b9,#03,#59,#02
	db #b9,#00,#de,#b9,#05,#d9,#b9,#03
	db #5b,#03,#b9,#00,#5b,#03,#b9,#01
	db #5b,#03,#b9,#03,#5b,#03,#b9,#04
	db #5b,#03,#b9,#05,#5b,#03,#b9,#06
	db #5b,#03,#b9,#07,#5b,#03,#b9,#08
	db #ff,#48,#0c,#f6,#00,#46,#0c,#f6
	db #01,#44,#0c,#f6,#02,#43,#0c,#f6
	db #04,#ff,#48,#0c,#f6,#00,#46,#0c
	db #f6,#01,#44,#0c,#f6,#02,#43,#0c
	db #f6,#04,#ff
;
.music_info
	db "Autostop - Intro (19xx)(Crack'n'Rom)()",0
	db "ST-Module",0

	read "music_end.asm"
