; Music of C64 (19xx)(Public Domain)()(ST-Module)
; Ripped by Megachur the 23/10/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "C64DEMO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2019
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
	dw l4606,l4612,l461e
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
	db #00,#00,#00,#00
.l43fe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l440c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l441a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l4428 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4436
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l4444 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4452 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4466
	db #06,#45,#46,#45,#66,#45,#08,#00
	db #86,#45,#c6,#45,#e6,#45,#00,#00
	db #49,#92,#45,#f3,#20,#41,#00,#ff
	db #ff,#3e,#21,#d1,#70,#9d,#23,#56
	db #23,#40,#10,#3f,#09,#bd,#23,#4e
	db #fe,#3e,#ca,#3f,#98,#3d,#50,#30
	db #08,#7b,#4f,#45,#00,#2c,#b0,#18
	db #ec,#3d,#a0,#6f,#08,#15,#4d,#4f
	db #06,#3f,#af,#57,#75,#3d,#f0,#30
	db #09,#15,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
.l44e6
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#3f,#00,#3f,#00,#3f,#00,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #0f,#0a,#0a,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
.l4606
	db #00,#2a,#46,#00,#60,#46,#00,#aa
.l4612 equ $ + 4
	db #46,#80,#06,#46,#00,#bd,#46,#00
	db #c0,#46,#00,#bd,#46,#80,#12,#46
.l461e
	db #00,#c3,#46,#00,#c6,#46,#00,#c3
	db #46,#80,#1e,#46,#5e,#02,#00,#60
	db #82,#62,#82,#59,#82,#5b,#82,#5d
	db #82,#5e,#84,#5e,#82,#5d,#82,#5b
	db #82,#59,#82,#57,#84,#57,#84,#59
	db #82,#5b,#82,#5d,#82,#5b,#82,#59
	db #82,#5b,#82,#5d,#84,#59,#82,#5b
	db #82,#5d,#82,#59,#82,#5e,#84,#56
	db #84,#ff,#5e,#02,#00,#60,#82,#62
	db #82,#59,#82,#5b,#82,#5d,#82,#5e
	db #84,#5e,#82,#5d,#82,#5b,#82,#59
	db #82,#57,#84,#57,#84,#57,#82,#59
	db #82,#5b,#82,#59,#82,#57,#82,#5b
	db #82,#5d,#84,#62,#82,#60,#82,#5e
	db #82,#60,#82,#de,#c0,#05,#d9,#c0
	db #06,#cf,#c0,#08,#be,#c0,#00,#b0
	db #c0,#00,#a4,#c0,#00,#9f,#c0,#00
	db #93,#c0,#00,#ff,#00,#18,#c3,#11
	db #c8,#01,#bf,#01,#ca,#01,#c6,#01
	db #c3,#01,#c5,#01,#42,#a1,#ff,#00
	db #40,#ff,#00,#40,#ff,#00,#40,#ff
	db #00,#40,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#10,#80,#30,#c0
	db #60,#60,#70,#e0,#60,#60,#60,#60
	db #60,#60,#00,#00,#70,#c0,#60,#60
	db #60,#60,#70,#c0,#60,#60,#60,#60
	db #70,#c0,#00,#00,#30,#c0,#60,#60
	db #60,#00,#60,#00,#60,#00,#60,#60
	db #30,#c0,#00,#00,#70,#80,#60,#c0
	db #60,#60,#60,#60,#60,#60,#60,#c0
	db #70,#80,#00,#00,#70,#e0,#60,#00
	db #60,#00,#70,#80,#60,#00,#60,#00
	db #70,#e0,#00,#00,#70,#e0,#60,#00
	db #60,#00,#70,#80,#60,#00,#60,#00
	db #60,#00,#00,#00,#30,#c0,#60,#60
	db #60,#00,#60,#e0,#60,#60,#60,#60
	db #30,#c0,#00,#00,#60,#60,#60,#60
	db #60,#60,#70,#e0,#60,#60,#60,#60
	db #60,#60,#00,#00,#30,#c0,#10,#80
	db #10,#80,#10,#80,#10,#80,#10,#80
	db #30,#c0,#00,#00,#10,#e0,#00,#c0
	db #00,#c0,#00,#c0,#00,#c0,#60,#c0
	db #30,#80,#00,#00,#60,#60,#60,#c0
	db #70,#80,#70,#00,#70,#80,#60,#c0
	db #60,#60,#00,#00,#60,#00,#60,#00
	db #60,#00,#60,#00,#60,#00,#60,#00
	db #70,#e0,#00,#00,#60,#30,#70,#70
	db #70,#f0,#60,#b0,#60,#30,#60,#30
	db #60,#30,#00,#00,#60,#60,#70,#60
	db #70,#e0,#70,#e0,#60,#e0,#60,#60
	db #60,#60,#00,#00,#30,#c0,#60,#60
	db #60,#60,#60,#60,#60,#60,#60,#60
	db #30,#c0,#00,#00,#70,#c0,#60,#60
	db #60,#60,#70,#c0,#60,#00,#60,#00
	db #60,#00,#00,#00,#30,#c0,#60,#60
	db #60,#60,#60,#60,#60,#60,#60,#60
	db #30,#c0,#00,#e0,#70,#c0,#60,#60
	db #60,#60,#70,#c0,#70,#80,#60,#c0
	db #60,#60,#00,#00,#30,#c0,#60,#60
	db #60,#00,#30,#c0,#00,#60,#60,#60
	db #30,#c0,#00,#00,#70,#e0,#10,#80
	db #10,#80,#10,#80,#10,#80,#10,#80
	db #10,#80,#00,#00,#60,#60,#60,#60
	db #60,#60,#60,#60,#60,#60,#60,#60
	db #30,#c0,#00,#00,#60,#60,#60,#60
	db #60,#60,#60,#60,#60,#60,#30,#c0
	db #10,#80,#00,#00,#60,#30,#60,#30
	db #60,#30,#60,#b0,#70,#f0,#70,#70
	db #60,#30,#00,#00,#60,#60,#60,#60
	db #30,#c0,#10,#80,#30,#c0,#60,#60
	db #60,#60,#00,#00,#60,#60,#60,#60
	db #60,#60,#30,#c0,#10,#80,#10,#80
	db #10,#80,#00,#00,#70,#e0,#00,#60
	db #00,#c0,#10,#80,#30,#00,#60,#00
	db #70,#e0,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#10,#80
	db #10,#80,#00,#00,#30,#c0,#60,#60
	db #60,#e0,#70,#60,#60,#60,#60,#60
	db #30,#c0,#00,#00,#10,#80,#10,#80
	db #30,#80,#10,#80,#10,#80,#10,#80
	db #70,#e0,#00,#00,#30,#c0,#60,#60
	db #00,#60,#00,#c0,#30,#00,#60,#00
	db #70,#e0,#00,#00,#30,#c0,#60,#60
	db #00,#60,#10,#c0,#00,#60,#60,#60
	db #30,#c0,#00,#00,#00,#60,#00,#e0
	db #10,#e0,#60,#60,#70,#f0,#00,#60
	db #00,#60,#00,#00,#70,#e0,#60,#00
	db #70,#c0,#00,#60,#00,#60,#60,#60
	db #30,#c0,#00,#00,#30,#c0,#60,#60
	db #60,#00,#70,#c0,#60,#60,#60,#60
	db #30,#c0,#00,#00,#70,#e0,#60,#60
	db #00,#c0,#10,#80,#10,#80,#10,#80
	db #10,#80,#00,#00,#30,#c0,#60,#60
	db #60,#60,#30,#c0,#60,#60,#60,#60
	db #30,#c0,#00,#00,#30,#c0,#60,#60
	db #60,#60,#30,#e0,#00,#60,#60,#60
	db #30,#c0,#00,#00,#30,#c0,#60,#60
	db #00,#60,#00,#c0,#10,#80,#00,#00
	db #10,#80,#00,#00,#00,#00,#60,#60
	db #30,#c0,#f0,#f0,#30,#c0,#60,#60
	db #00,#00,#00,#00,#60,#60,#60,#60
	db #60,#60,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#10,#80
	db #10,#80,#30,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#00,#00,#00,#00
	db #00,#01,#00,#04,#00,#00,#00,#00
	db #00,#02,#00,#08,#00,#00,#00,#00
	db #08,#02,#00,#08,#00,#00,#00,#00
	db #04,#0d,#09,#00,#00,#00,#01,#08
	db #03,#00,#06,#01,#00,#00,#00,#06
	db #0c,#00,#01,#0a,#00,#00,#00,#01
	db #00,#00,#00,#04,#00,#00,#00,#0d
	db #00,#00,#00,#04,#0c,#0f,#0c,#02
	db #00,#00,#00,#03,#00,#00,#03,#0a
	db #00,#00,#00,#02,#01,#00,#00,#04
	db #00,#00,#00,#01,#0e,#00,#00,#04
	db #00,#00,#00,#01,#00,#00,#00,#04
	db #00,#00,#00,#00,#08,#00,#01,#08
	db #00,#00,#00,#01,#06,#00,#0e,#04
	db #00,#00,#00,#01,#00,#00,#00,#02
	db #00,#00,#00,#02,#00,#00,#00,#02
	db #00,#00,#00,#03,#08,#00,#00,#05
	db #00,#00,#00,#04,#04,#00,#00,#09
	db #00,#00,#00,#04,#00,#00,#00,#08
	db #08,#00,#01,#08,#00,#00,#00,#01
	db #07,#00,#06,#04,#00,#00,#00,#00
	db #04,#0e,#0a,#02,#00,#00,#00,#00
	db #09,#01,#01,#02,#00,#00,#00,#00
	db #09,#01,#00,#00,#00,#00,#00,#00
	db #01,#00,#08,#00,#00,#00,#00,#00
	db #01,#00,#08,#00,#00,#00,#00,#00
	db #02,#08,#08,#00,#00,#00,#00,#00
	db #02,#04,#00,#00,#00,#00,#00,#00
	db #02,#04,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#26,#11
	db #6c,#cd,#3e,#bc,#3e,#01,#cd,#0e
	db #bc,#01,#0b,#0b,#cd,#38,#bc,#3e
	db #00,#21,#32,#4c,#46,#48,#e5,#f5
	db #cd,#32,#bc,#f1,#e1,#23,#3c,#fe
	db #04,#20,#f1,#01,#02,#0b,#3e,#03
	db #cd,#32,#bc,#21,#50,#c0,#01,#36
	db #4c,#cd,#79,#4b,#21,#f0,#c0,#01
	db #5a,#4c,#cd,#79,#4b,#21,#90,#c1
	db #01,#82,#4c,#cd,#79,#4b,#21,#e0
	db #c1,#1e,#ff,#cd,#be,#4b,#cd,#00
	db #40,#21,#e0,#c1,#01,#98,#4c,#0a
	db #fe,#ff,#ca,#fb,#4a,#e5,#c5,#cd
	db #d4,#4b,#c1,#e1,#03,#c5,#e5,#0a
	db #5f,#16,#00,#21,#10,#00,#cd,#00
	db #b9,#cd,#5b,#dd,#01,#ca,#46,#09
	db #d1,#d5,#cd,#9c,#4b,#e1,#e5,#23
	db #23,#1e,#ff,#cd,#be,#4b,#e1,#c1
	db #03,#23,#23,#18,#ca,#3e,#7d,#cd
	db #d4,#4b,#1e,#00,#21,#f6,#c1,#cd
	db #be,#4b,#3e,#96,#cd,#d4,#4b,#21
	db #30,#c2,#01,#89,#4c,#cd,#79,#4b
	db #21,#80,#c2,#01,#82,#4c,#cd,#79
	db #4b,#21,#d0,#c2,#1e,#ff,#cd,#be
	db #4b,#3e,#c8,#cd,#d4,#4b,#01,#af
	db #4c,#0a,#67,#fe,#ff,#ca,#df,#4b
	db #03,#0a,#03,#6f,#c5,#cd,#1a,#bc
	db #cd,#49,#4b,#3e,#05,#cd,#d4,#4b
	db #c1,#18,#e6,#11,#6b,#49,#eb,#3e
	db #20,#f5,#e5,#d5,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#ed,#a0,#ed,#a0
	db #ed,#a0,#ed,#a0,#e1,#01,#00,#08
	db #09,#dc,#b9,#4b,#e5,#d1,#e1,#01
	db #08,#00,#09,#f1,#3d,#fe,#00,#20
	db #d8,#c9,#c9,#0a,#fe,#ff,#c8,#c5
	db #e5,#e5,#5f,#16,#00,#21,#10,#00
	db #cd,#00,#b9,#cd,#5b,#dd,#01,#ca
	db #46,#09,#d1,#cd,#9c,#4b,#e1,#c1
	db #03,#23,#23,#18,#de,#c9,#3e,#08
	db #f5,#e5,#d5,#ed,#a0,#ed,#a0,#e1
	db #01,#00,#08,#09,#dc,#b9,#4b,#e5
	db #d1,#e1,#23,#23,#f1,#3d,#fe,#00
	db #20,#e6,#c9,#01,#50,#c0,#09,#c9
	db #3e,#08,#f5,#e5,#73,#23,#73,#e1
	db #01,#00,#08,#09,#dc,#b9,#4b,#f1
	db #3d,#fe,#00,#20,#ed,#c9,#f5,#cd
	db #19,#bd,#f1,#3d,#fe,#00,#20,#f6
	db #c9,#3e,#64,#cd,#d4,#4b,#cd,#02
	db #40,#06,#c8,#0e,#01,#3e,#00,#b8
	db #28,#33,#c5,#68,#26,#00,#11,#00
	db #00,#cd,#1d,#bc,#3e,#50,#36,#0f
	db #23,#3d,#fe,#00,#20,#f8,#c1,#c5
	db #69,#26,#00,#11,#00,#00,#cd,#1d
	db #bc,#3e,#50,#36,#0f,#23,#3d,#fe
	db #00,#20,#f8,#cd,#19,#bd,#c1,#0c
	db #0c,#05,#05,#18,#c8,#01,#00,#00
	db #cd,#38,#bc,#3e,#00,#01,#00,#00
	db #cd,#32,#bc,#c9,#02,#0b,#00,#0b
	db #00,#00,#00,#00,#27,#27,#27,#27
	db #00,#03,#0f,#0d,#0d,#0f,#04,#0f
	db #12,#05,#00,#22,#20,#00,#02,#01
	db #13,#09,#03,#00,#16,#1e,#00,#27
	db #27,#27,#27,#ff,#00,#22,#20,#0b
	db #00,#12,#01,#0d,#00,#13,#19,#13
	db #14,#05,#0d,#00,#00,#1f,#24,#25
	db #1d,#1d,#00,#02,#01,#13,#09,#03
	db #00,#02,#19,#14,#05,#13,#00,#06
	db #12,#05,#05,#ff,#12,#05,#01,#04
	db #19,#1b,#ff,#26,#13,#19,#0e,#14
	db #01,#18,#00,#00,#05,#12,#12,#0f
	db #12,#ff,#1e,#0c,#50,#0f,#0f,#01
	db #25,#04,#23,#28,#25,#27,#1e,#28
	db #2d,#29,#1a,#24,#32,#29,#31,#1d
	db #ff,#0a,#0a,#0d,#0f,#1e,#05,#00
	db #00,#23,#14,#02,#15,#14,#02,#05
	db #0e,#19,#0b,#1e,#14,#ff
;
.music_info
	db "C64 (19xx)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"