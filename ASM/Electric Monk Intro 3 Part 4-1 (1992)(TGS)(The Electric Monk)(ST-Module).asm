; Music of Electric Monk Intro 3 Part 4-1 (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEMI341.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
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
	ld h,(hl)
	inc b
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
	dw l46a6,l46af,l46b8
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
	db #75,#6c,#65,#2e,#06,#45,#46,#45
	db #66,#45,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#86,#45,#c6,#45
	db #66,#45,#1b,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#e6,#45,#26,#46
	db #46,#46,#0c,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
.l44e6 equ $ + 4
	db #00,#3f,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#66,#46,#00,#3f
	db #86,#46,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
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
	db #00,#00,#00,#00,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
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
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
.l46a6 equ $ + 4
	db #00,#f4,#00,#0c,#00,#c1,#46,#00
.l46af equ $ + 5
	db #23,#47,#80,#a6,#46,#00,#82,#47
.l46b8 equ $ + 6
	db #00,#c2,#47,#80,#af,#46,#00,#05
	db #48,#00,#54,#48,#80,#b8,#46,#ae
	db #f0,#08,#ae,#00,#b1,#00,#b1,#00
	db #b3,#00,#b3,#00,#b1,#00,#b1,#00
	db #ae,#00,#ae,#00,#b1,#00,#b1,#00
	db #b3,#00,#b3,#00,#b1,#00,#b1,#00
	db #ae,#00,#ae,#00,#b1,#00,#b1,#00
	db #b3,#00,#b3,#00,#b1,#00,#b1,#00
	db #ae,#00,#ae,#00,#b1,#00,#b1,#00
	db #b3,#00,#b3,#00,#b1,#00,#b1,#00
	db #b3,#00,#b3,#00,#b6,#00,#b6,#00
	db #b8,#00,#b8,#00,#b6,#00,#b6,#00
	db #b3,#00,#b3,#00,#b6,#00,#b6,#00
	db #b8,#00,#b8,#00,#b6,#00,#b6,#00
	db #ff,#ae,#00,#ae,#00,#b1,#00,#b1
	db #00,#b3,#00,#b3,#00,#b1,#00,#b1
	db #00,#ae,#00,#ae,#00,#b1,#00,#b1
	db #00,#b3,#00,#b3,#00,#b1,#00,#b1
	db #00,#b5,#00,#b5,#00,#b8,#00,#b8
	db #00,#ba,#00,#ba,#00,#b8,#00,#b8
	db #00,#b3,#00,#b3,#00,#b6,#00,#b6
	db #00,#b8,#00,#b8,#00,#b6,#00,#b6
	db #00,#ae,#00,#ae,#00,#b1,#00,#b1
	db #00,#b3,#00,#b3,#00,#b1,#00,#2e
	db #82,#a9,#00,#a9,#00,#a9,#00,#a9
	db #00,#a9,#00,#a9,#00,#a9,#00,#ff
	db #d2,#f9,#0a,#c6,#09,#c9,#09,#4b
	db #82,#cb,#09,#49,#83,#c6,#09,#c9
	db #09,#4b,#82,#cb,#09,#49,#83,#c6
	db #09,#c9,#09,#4b,#82,#cb,#09,#49
	db #83,#c6,#09,#c9,#09,#4b,#82,#cb
	db #09,#49,#83,#cb,#09,#ce,#09,#50
	db #82,#d0,#09,#4e,#83,#cb,#09,#ce
	db #09,#50,#82,#d0,#09,#4e,#82,#ff
	db #00,#01,#c6,#09,#c9,#09,#4b,#82
	db #cb,#09,#49,#83,#c6,#09,#c9,#09
	db #4b,#82,#cb,#09,#49,#83,#cd,#09
	db #d0,#09,#52,#82,#d2,#09,#50,#83
	db #cb,#09,#ce,#09,#50,#82,#d0,#09
	db #4e,#83,#c6,#09,#c9,#09,#4b,#82
	db #cb,#09,#49,#82,#c6,#09,#cd,#09
	db #cd,#09,#4d,#82,#cd,#09,#d0,#09
	db #d1,#09,#ff,#2e,#05,#bc,#00,#ae
	db #bc,#03,#ae,#bc,#02,#ae,#bc,#01
	db #2e,#05,#bc,#00,#ae,#bc,#03,#ae
	db #bc,#02,#ae,#bc,#01,#2e,#05,#bc
	db #00,#ae,#bc,#03,#ae,#bc,#02,#ae
	db #bc,#01,#2e,#05,#bc,#00,#ae,#bc
	db #03,#ae,#bc,#02,#ae,#bc,#01,#2e
	db #05,#bc,#00,#ae,#bc,#03,#ae,#bc
	db #02,#ae,#bc,#01,#2e,#05,#bc,#00
	db #ae,#bc,#03,#ae,#bc,#02,#ae,#bc
	db #01,#ff,#2e,#05,#bc,#00,#ae,#bc
	db #03,#ae,#bc,#02,#ae,#bc,#01,#2e
	db #05,#bc,#00,#ae,#bc,#03,#ae,#bc
	db #02,#ae,#bc,#01,#2e,#05,#bc,#00
	db #ae,#bc,#03,#ae,#bc,#02,#ae,#bc
	db #01,#2e,#05,#bc,#00,#ae,#bc,#03
	db #ae,#bc,#02,#ae,#bc,#01,#2e,#03
	db #bc,#00,#2e,#83,#2e,#83,#ae,#bc
	db #03,#ae,#bc,#02,#ae,#bc,#01,#ae
	db #bc,#00,#ae,#bc,#03,#ae,#bc,#02
	db #ae,#bc,#01,#ff,#ff,#37,#04,#04
	db #26,#84,#2b,#84,#26,#84,#2b,#84
	db #26,#84,#32,#84,#2d,#84,#32,#84
	db #2d,#84,#32,#84,#2d,#84,#37,#83
	db #b8,#04,#39,#84,#37,#84,#c3,#01
	db #fe,#03,#ff,#00,#0a,#4a,#02,#00
	db #4c,#82,#4a,#82,#cf,#00,#fe,#09
	db #4a,#02,#01,#4c,#82,#4a,#82,#c3
	db #01,#fe,#09,#cf,#01,#fe,#01,#ce
	db #01,#fe,#01,#cf,#01,#fe,#01,#4e
	db #88,#c0,#01,#fe,#01,#4c,#02,#00
	db #48,#82,#c7,#00,#fe,#01,#ff,#c5
	db #01,#fe,#09,#47,#82,#48,#82,#47
	db #82,#cc,#01,#fe,#09,#c7,#01,#c7
	db #01,#48,#82,#47,#82,#c5,#01,#fe
	db #11,#cc,#01,#cc,#01,#cc,#01,#fe
	db #01,#cc,#01,#fe,#01,#ca,#01,#fe
	db #03,#4a,#84,#ff,#00,#02,#cf,#b1
	db #04,#cf,#01,#fe,#02,#ca,#01,#fe
	db #03,#4f,#82,#cf,#01,#fe,#05,#cf
	db #01,#cf,#01,#fe,#02,#ca,#01,#fe
	db #01,#d1,#01,#fe,#03,#ca,#01,#fe
	db #05,#d1,#01,#fe,#03,#ca,#01,#fe
	db #03,#d1,#01,#fe,#03,#ca,#01,#fe
	db #03,#47,#02,#b1,#00,#ca,#01,#fe
	db #01,#cf,#01,#fe,#01,#53,#82,#fe
	db #01,#cf,#01,#ca,#01,#fe,#03,#ff
	db #00,#02,#cf,#b1,#04,#cf,#01,#fe
	db #02,#ca,#01,#fe,#03,#4f,#82,#cf
	db #01,#fe,#05,#cf,#01,#cf,#01,#fe
	db #02,#ca,#01,#fe,#01,#d1,#01,#fe
	db #03,#ca,#01,#fe,#05,#d1,#01,#fe
	db #03,#ca,#01,#fe,#03,#d1,#01,#fe
	db #03,#ca,#01,#fe,#01,#cf,#b1,#00
	db #fe,#02,#d0,#01,#d1,#01,#fe,#03
	db #cf,#01,#fe,#07,#ff,#c8,#b1,#04
	db #fe,#03,#cc,#01,#fe,#03,#cf,#01
	db #fe,#03,#cc,#01,#fe,#03,#c7,#01
	db #fe,#03,#ca,#01,#fe,#03,#cf,#01
	db #fe,#03,#ca,#01,#fe,#03,#c5,#b1
	db #03,#fe,#03,#c9,#01,#fe,#03,#cc
	db #01,#fe,#03,#c9,#01,#fe,#05,#ca
	db #b1,#00,#fe,#03,#ca,#01,#fe,#03
	db #4a,#04,#f4,#0b,#fe,#02,#ff,#00
	db #02,#cf,#11,#cf,#b1,#04,#fe,#02
	db #ca,#01,#fe,#03,#4f,#82,#cf,#01
	db #fe,#05,#cf,#01,#cf,#01,#fe,#02
	db #ca,#01,#fe,#01,#d1,#01,#fe,#03
	db #ca,#01,#fe,#05,#d1,#01,#fe,#03
	db #ca,#01,#fe,#03,#d1,#01,#fe,#03
	db #ca,#01,#fe,#01,#4f,#08,#b1,#00
	db #cf,#01,#fe,#03,#cf,#01,#fe,#03
	db #ff
	db #c5,#06,#fe,#01,#c6,#06,#c6,#06
	db #ff,#fe,#01,#c8,#06,#c8,#06,#fe
	db #01,#ca,#06,#fe,#01,#3e,#02,#00
	db #46,#82,#46,#82,#c5,#00,#c6,#00
	db #45,#82,#43,#82,#43,#84,#3e,#82
	db #3e,#82,#3e,#82,#3e,#82,#3e,#82
	db #42,#86,#42,#82,#42,#83,#c2,#00
	db #42,#82,#42,#82,#42,#83,#c2,#00
	db #42,#82,#42,#82,#42,#82,#42,#82
	db #c2,#00,#c0,#00,#42,#82,#43,#86
	db #3e,#82,#ff,#c6,#00,#c6,#00,#c6
	db #00,#c6,#00,#45,#84,#43,#82,#43
	db #84,#3e,#82,#3e,#82,#3e,#82,#3e
	db #82,#3e,#82,#42,#86,#42,#82,#42
	db #82,#42,#82,#42,#83,#c2,#00,#42
	db #82,#42,#82,#42,#82,#42,#82,#42
	db #82,#42,#82,#c2,#00,#c0,#00,#42
	db #82,#43,#84,#41,#84,#4a,#82,#46
	db #82,#c6,#00,#ba,#06,#fe,#01,#ba
	db #06,#ff,#fe,#01,#c6,#00,#c6,#00
	db #c6,#00,#45,#82,#46,#82,#47,#82
	db #43,#82,#43,#84,#cf,#09,#fe,#02
	db #4f,#82,#ca,#00,#ca,#00,#c9,#00
	db #4a,#82,#c3,#00,#43,#83,#cf,#09
	db #fe,#01,#4a,#02,#00,#c5,#00,#45
	db #83,#d1,#09,#fe,#01,#43,#02,#00
	db #41,#82,#43,#82,#51,#02,#09,#cd
	db #09,#fe,#01,#4a,#02,#00,#4a,#82
	db #4a,#82,#4a,#82,#c6,#00,#46,#82
	db #d2,#09,#fe,#02,#52,#82,#46,#02
	db #00,#45,#82,#46,#82,#ff,#47,#02
	db #00,#43,#82,#43,#84,#cf,#09,#fe
	db #02,#4f,#83,#4a,#02,#00,#4a,#82
	db #43,#82,#43,#82,#cf,#09,#fe,#01
	db #4a,#02,#00,#45,#82,#c5,#00,#4a
	db #83,#c6,#00,#fe,#01,#c1,#00,#c1
	db #00,#42,#82,#41,#82,#fe,#02,#45
	db #82,#c6,#00,#fe,#01,#ba,#07,#fe
	db #01,#ba,#07,#fe,#01,#46,#02,#00
	db #48,#82,#4b,#82,#cb,#00,#fe,#03
	db #cb,#00,#fe,#02,#cb,#00,#cb,#00
	db #fe,#01,#59,#82,#5b,#82,#5e,#82
	db #ff,#de,#00,#fe,#01,#3a,#02,#f0
	db #08,#3c,#02,#00,#3f,#82,#fe,#02
	db #43,#84,#42,#82,#43,#82,#c1,#00
	db #3f,#83,#3f,#82,#41,#82,#3f,#82
	db #41,#82,#3f,#82,#41,#82,#bf,#00
	db #3c,#83,#3a,#82,#3f,#83,#ba,#00
	db #3f,#82,#43,#82,#48,#82,#46,#82
	db #44,#82,#43,#82,#41,#89,#fe,#01
	db #46,#82,#48,#82,#c6,#00,#fe,#01
	db #ff,#00,#08,#33,#02,#06,#37,#82
	db #3a,#82,#37,#82,#33,#82,#37,#82
	db #3a,#82,#37,#82,#38,#82,#3c,#82
	db #3f,#82,#3c,#82,#38,#82,#3c,#82
	db #3f,#82,#3c,#82,#33,#82,#37,#82
	db #3a,#82,#37,#82,#30,#82,#34,#82
	db #37,#82,#34,#82,#b5,#06,#fe,#01
	db #b5,#06,#35,#82,#b7,#06,#b5,#06
	db #fe,#01,#ae,#06,#fe,#01,#c6,#05
	db #fe,#01,#46,#82,#ae,#06,#fe,#01
	db #ff,#33,#02,#06,#37,#82,#3a,#82
	db #37,#82,#33,#82,#37,#82,#3a,#82
	db #37,#82,#38,#82,#3c,#82,#3f,#82
	db #3c,#82,#38,#82,#3c,#82,#3f,#82
	db #3c,#82,#33,#82,#37,#82,#30,#82
	db #2e,#82,#35,#82,#33,#82,#2e,#82
	db #35,#82,#b3,#06,#fe,#01,#ae,#06
	db #2e,#82,#b0,#06,#ae,#06,#fe,#01
	db #b3,#06,#fe,#03,#2e,#84,#2e,#82
	db #32,#82,#35,#82,#32,#82,#ff,#2e
	db #02,#06,#32,#82,#35,#82,#32,#82
	db #33,#82,#37,#82,#3a,#82,#37,#82
	db #33,#82,#37,#82,#3a,#82,#37,#82
	db #2e,#82,#32,#82,#35,#82,#32,#82
	db #2e,#82,#32,#82,#35,#82,#32,#82
	db #33,#82,#37,#82,#3a,#82,#37,#82
	db #b3,#06,#fe,#03,#2e,#84,#38,#82
	db #3c,#82,#3f,#82,#3c,#82,#38,#82
	db #3c,#82,#3f,#82,#3c,#82,#ff,#33
	db #02,#06,#37,#82,#3a,#82,#37,#82
	db #35,#82,#33,#82,#30,#82,#35,#82
	db #30,#84,#29,#84,#30,#84,#29,#84
	db #35,#84,#30,#84,#35,#83,#2e,#85
	db #33,#84,#2e,#84,#30,#84,#2b,#84
	db #b0,#06,#fe,#07,#ff,#35,#02,#06
	db #38,#82,#3c,#82,#38,#82,#2e,#82
	db #32,#82,#35,#82,#32,#82,#33,#82
	db #37,#82,#3a,#82,#37,#82,#35,#82
	db #32,#82,#30,#82,#2e,#82,#33,#84
	db #38,#84,#33,#84,#b3,#06,#fe,#13
	db #ab,#06,#ab,#06,#fe,#01,#ad,#06
	db #ad,#06,#fe,#01,#ae,#06,#ae,#06
	db #ff,#fe,#01,#b0,#06,#b0,#06,#fe
	db #01,#b2,#06,#fe,#03,#37,#82,#3a
	db #82,#3e,#82,#3a,#82,#37,#82,#3a
	db #82,#3e,#82,#3a,#82,#37,#82,#3a
	db #82,#3e,#82,#3a,#82,#36,#82,#39
	db #82,#3e,#82,#39,#82,#36,#82,#39
	db #82,#3e,#82,#39,#82,#36,#82,#39
	db #82,#3e,#82,#39,#82,#32,#82,#36
	db #82,#34,#82,#36,#82,#37,#82,#3a
	db #82,#3e,#82,#3a,#82,#ff,#37,#02
	db #06,#3a,#82,#3e,#82,#3a,#82,#37
	db #82,#3a,#82,#3e,#82,#3a,#82,#37
	db #82,#3a,#82,#3e,#82,#3a,#82,#36
	db #82,#39,#82,#3e,#82,#39,#82,#36
	db #82,#39,#82,#3e,#82,#39,#82,#36
	db #82,#39,#82,#3e,#82,#39,#82,#32
	db #82,#32,#82,#34,#82,#36,#82,#b7
	db #06,#fe,#03,#39,#04,#00,#2e,#02
	db #06,#32,#82,#b5,#06,#d2,#06,#fe
	db #01,#d2,#06,#ff,#2e,#02,#06,#32
	db #82,#35,#82,#32,#82,#37,#82,#3b
	db #82,#3e,#82,#3b,#82,#37,#82,#3b
	db #82,#3e,#82,#3b,#82,#30,#82,#34
	db #82,#37,#82,#34,#82,#35,#82,#39
	db #82,#3c,#82,#39,#82,#3a,#83,#ba
	db #06,#3b,#83,#bb,#06,#3c,#84,#35
	db #84,#2e,#82,#32,#82,#35,#82,#32
	db #82,#2e,#82,#32,#82,#35,#82,#32
	db #82,#ff,#37,#02,#06,#3b,#82,#3e
	db #82,#3b,#82,#37,#82,#3b,#82,#3e
	db #82,#3b,#82,#30,#82,#34,#82,#37
	db #82,#34,#82,#35,#82,#39,#82,#3c
	db #82,#39,#82,#ba,#06,#fe,#01,#b5
	db #06,#b5,#06,#36,#82,#35,#82,#fe
	db #02,#39,#82,#ba,#06,#fe,#01,#d2
	db #07,#fe,#01,#d2,#07,#fe,#07,#b3
	db #06,#fe,#03,#b3,#06,#fe,#03,#b3
	db #06,#fe,#01,#4d,#82,#4f,#82,#52
	db #82,#ff,#d2,#06,#fe,#07,#33,#82
	db #37,#82,#3a,#82,#37,#82,#33,#82
	db #37,#82,#3a,#82,#37,#82,#38,#82
	db #3c,#82,#3f,#82,#3c,#82,#38,#82
	db #3c,#82,#3f,#82,#3c,#82,#33,#82
	db #37,#82,#3a,#82,#37,#82,#30,#82
	db #34,#82,#37,#82,#34,#82,#b5,#06
	db #fe,#01,#b5,#06,#35,#82,#b7,#06
	db #b5,#06,#fe,#01,#ae,#06,#fe,#01
	db #c6,#05,#fe,#01,#46,#82,#ae,#06
	db #fe,#01,#ff,#00,#08,#2e,#02,#0c
	db #ae,#07,#ae,#07,#2e,#02,#0c,#2e
	db #02,#07,#2e,#02,#0c,#ae,#07,#ae
	db #07,#2e,#02,#0c,#2e,#02,#07,#2e
	db #02,#0c,#ae,#07,#ae,#07,#2e,#02
	db #0c,#2e,#02,#07,#2e,#02,#0c,#ae
	db #07,#ae,#07,#2e,#02,#0c,#2e,#02
	db #07,#2e,#02,#0c,#ae,#07,#ae,#07
	db #2e,#02,#0c,#2e,#02,#07,#2e,#02
	db #0c,#ae,#07,#ae,#07,#2e,#02,#0c
	db #2e,#02,#07,#2e,#02,#0c,#2e,#02
	db #07,#2e,#02,#0c,#ae,#07,#ae,#07
	db #2e,#02,#0c,#3a,#02,#00,#3c,#82
	db #ba,#00,#fe,#01,#ff,#2e,#02,#0c
	db #ae,#07,#ae,#07,#2e,#02,#0c,#2e
	db #02,#07,#33,#02,#0c,#ae,#07,#ae
	db #07,#2e,#02,#0c,#2e,#02,#07,#38
	db #02,#0c,#ae,#07,#ae,#07,#33,#02
	db #0c,#2e,#02,#07,#38,#02,#0c,#ae
	db #07,#ae,#07,#33,#02,#0c,#2e,#02
	db #07,#33,#02,#0c,#ae,#07,#ae,#07
	db #30,#02,#0c,#2e,#02,#07,#35,#02
	db #0c,#ae,#07,#ae,#07,#2e,#02,#0c
	db #2e,#02,#07,#33,#02,#0c,#ae,#07
	db #ae,#07,#38,#02,#0c,#2e,#02,#07
	db #b3,#0c,#fe,#07,#2e,#02,#07,#2e
	db #02,#0d,#ae,#07,#ae,#07,#35,#02
	db #0d,#ff,#2e,#02,#07,#2e,#02,#0d
	db #ae,#07,#ae,#07,#35,#02,#0d,#2e
	db #02,#07,#33,#02,#0d,#ae,#07,#ae
	db #07,#2e,#02,#0d,#2e,#02,#07,#33
	db #02,#0d,#ae,#07,#ae,#07,#2e,#02
	db #0d,#2e,#02,#07,#2e,#02,#0d,#ae
	db #07,#ae,#07,#35,#02,#0d,#2e,#02
	db #07,#2e,#02,#0d,#ae,#07,#ae,#07
	db #35,#02,#0d,#2e,#02,#07,#33,#02
	db #0d,#ae,#07,#ae,#07,#2e,#02,#0d
	db #ae,#07,#fe,#07,#2e,#02,#03,#ae
	db #03,#ae,#03,#2e,#82,#ae,#03,#ae
	db #03,#2e,#82,#ae,#03,#ae,#03,#2e
	db #82,#ae,#03,#ae,#03,#ff,#2e,#02
	db #03,#ae,#03,#ae,#03,#2e,#82,#ae
	db #03,#ae,#03,#2e,#82
;
.music_info
	db "Electric Monk Intro 3 Part 4-1 (1992)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
