; Music of Audio Illusions - 09 - Danger (1996)(Systeme D)(Frequency)(ST-Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUDIOI09.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
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
	dw l4a86,l4ad7,l4b28
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
	db #06,#45,#46,#45,#66,#45,#00,#00
	db #86,#45,#c6,#45,#e6,#45,#00,#00
	db #86,#45,#06,#46,#26,#46,#00,#00
	db #86,#45,#46,#46,#66,#46,#01,#00
	db #86,#46,#c6,#46,#e6,#46,#00,#00
	db #86,#45,#06,#47,#26,#47,#00,#00
	db #0c,#47,#00,#3f,#18,#7b,#7e,#ff
	db #46,#47,#86,#47,#a6,#47,#00,#00
	db #86,#45,#c6,#47,#26,#47,#00,#00
	db #86,#45,#e6,#47,#26,#47,#00,#00
	db #86,#45,#06,#48,#26,#47,#00,#00
	db #26,#48,#66,#48,#86,#48,#00,#00
	db #a6,#48,#e6,#48,#26,#47,#19,#07
	db #86,#45,#06,#49,#26,#47,#00,#00
	db #26,#49,#66,#49,#86,#49,#00,#00
	db #26,#49,#a6,#49,#c6,#49,#00,#00
.l44e6
	db #e6,#49,#06,#4a,#26,#4a,#26,#87
	db #46,#87,#46,#c7,#66,#c7,#46,#4a
	db #66,#4a,#c6,#c7,#e6,#c7,#06,#c8
	db #26,#c8,#00,#bd,#00,#bd,#00,#bd
	db #00,#00,#50,#00,#90,#00,#d0,#00
	db #10,#01,#50,#01,#90,#01,#d0,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0d,#0b,#09,#07,#05,#04,#06
	db #08,#06,#04,#02,#80,#80,#80,#80
	db #80,#03,#80,#04,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #07,#0b,#0f,#13,#17,#1b,#1f,#13
	db #08,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#09,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#10,#00,#20,#00,#30,#00
	db #40,#00,#50,#00,#60,#00,#70,#00
	db #80,#00,#90,#00,#a0,#00,#b0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0c,#09,#08,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #10,#0a,#0c,#0a,#0c,#0a,#0c,#0a
	db #0c,#0a,#0c,#0a,#0c,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0e,#0f,#0e,#0d,#0c,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#60,#00,#90,#00,#d0,#00
	db #00,#01,#20,#01,#30,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0e,#0e,#0d,#0b,#09,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#04,#05,#06,#09,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0a,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#06,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f0,#00,#00,#00,#f0,#20,#fc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#80,#80,#80,#80
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #0f,#0f,#0e,#0e,#0d,#0d,#0e,#0f
	db #0f,#0e,#0e,#0d,#0d,#0e,#0f,#0f
	db #0e,#0e,#0d,#0d,#0e,#0f,#0f,#0e
	db #0e,#0d,#0d,#0e,#0f,#0f,#0e,#0e
	db #0e,#0f,#0e,#0d,#0c,#0a,#08,#06
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#10,#00,#20,#00,#30,#00
	db #40,#00,#50,#00,#60,#00,#70,#00
	db #80,#00,#90,#00,#a0,#00,#b0,#00
	db #c0,#00,#d0,#00,#e0,#00,#f0,#00
	db #00,#01,#10,#01,#20,#01,#30,#01
	db #40,#01,#50,#01,#60,#01,#70,#01
	db #80,#01,#90,#01,#a0,#01,#b0,#01
	db #c0,#01,#d0,#01,#e0,#01,#f0,#01
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#02,#00
	db #1f,#01,#1d,#02,#1b,#04,#19,#06
	db #17,#08,#15,#0a,#13,#0c,#11,#0e
	db #0f,#10,#0d,#12,#0b,#14,#09,#16
	db #07,#18,#05,#1a,#03,#1b,#01,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#06,#80
	db #80,#80,#80,#80,#04,#04,#04,#03
	db #03,#02,#02,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #1f,#08,#1d,#07,#1b,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #24,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a86
	db #00,#79,#4b,#00,#c9,#4b,#00,#41
	db #4c,#00,#66,#4c,#00,#d1,#4c,#00
	db #21,#4d,#00,#66,#4c,#00,#d1,#4c
	db #00,#21,#4d,#00,#84,#4d,#00,#0d
	db #4e,#00,#42,#4e,#00,#d1,#4c,#00
	db #21,#4d,#00,#cc,#4e,#00,#39,#4f
	db #00,#aa,#4f,#00,#66,#4c,#00,#d1
	db #4c,#00,#21,#4d,#00,#84,#4d,#00
	db #0d,#4e,#00,#42,#4e,#00,#cc,#4e
	db #00,#39,#4f,#00,#aa,#4f,#80,#86
.l4ad7 equ $ + 1
	db #4a,#00,#3a,#50,#00,#c4,#50,#00
	db #fa,#50,#00,#26,#51,#00,#a8,#51
	db #00,#2a,#52,#00,#26,#51,#00,#a8
	db #51,#00,#2a,#52,#00,#af,#52,#00
	db #68,#53,#00,#af,#52,#00,#a8,#51
	db #00,#2a,#52,#00,#21,#54,#00,#64
	db #54,#00,#a6,#54,#00,#26,#51,#00
	db #a8,#51,#00,#2a,#52,#00,#af,#52
	db #00,#68,#53,#00,#af,#52,#00,#21
	db #54,#00,#64,#54,#00,#a6,#54,#80
.l4b28 equ $ + 2
	db #d7,#4a,#00,#e8,#54,#00,#3c,#55
	db #00,#57,#55,#00,#5d,#55,#00,#c8
	db #55,#00,#12,#56,#00,#5d,#55,#00
	db #c8,#55,#00,#12,#56,#00,#6f,#56
	db #00,#f0,#56,#00,#72,#57,#00,#c8
	db #55,#00,#12,#56,#00,#f3,#57,#00
	db #f3,#57,#00,#7d,#58,#00,#5d,#55
	db #00,#c8,#55,#00,#12,#56,#00,#6f
	db #56,#00,#f0,#56,#00,#72,#57,#00
	db #f3,#57,#00,#f3,#57,#00,#7d,#58
	db #80,#28,#4b,#6e,#0e,#19,#6e,#02
	db #b1,#0d,#6e,#02,#b1,#0c,#6e,#02
	db #b1,#0b,#6e,#02,#b1,#0a,#6e,#02
	db #b1,#09,#6e,#03,#b1,#08,#6e,#02
	db #b1,#07,#6e,#02,#01,#6e,#82,#6e
	db #83,#ca,#0a,#ca,#0a,#4a,#82,#ca
	db #0a,#bf,#0a,#3a,#04,#08,#6e,#02
	db #b1,#07,#6e,#02,#01,#32,#02,#aa
	db #0f,#ee,#19,#6e,#02,#d9,#1d,#ee
	db #d9,#1c,#6e,#04,#d9,#1b,#26,#04
	db #b0,#05,#ff,#00,#01,#ca,#ba,#05
	db #ca,#0a,#4a,#82,#ca,#0a,#b3,#0a
	db #c9,#0a,#b3,#0a,#49,#83,#ca,#0a
	db #ca,#0a,#4a,#82,#ca,#0a,#b3,#0a
	db #c9,#0a,#b3,#0a,#c9,#0a,#b2,#b0
	db #04,#32,#0a,#b0,#03,#8e,#a2,#00
	db #8f,#0a,#90,#d2,#0e,#90,#0a,#91
	db #d2,#0d,#91,#0a,#92,#d2,#0c,#92
	db #0a,#93,#d2,#0b,#93,#0a,#94,#d2
	db #0a,#94,#0a,#95,#d2,#09,#95,#0a
	db #96,#d2,#08,#96,#0a,#e3,#d2,#0f
	db #3e,#03,#1e,#be,#d9,#20,#95,#b1
	db #05,#95,#01,#95,#b1,#04,#95,#01
	db #95,#b1,#03,#95,#01,#95,#b1,#02
	db #95,#01,#8e,#b1,#01,#8e,#01,#8e
	db #b1,#00,#ff,#00,#01,#8e,#d7,#0f
	db #0e,#02,#d1,#30,#8e,#db,#1e,#8e
	db #0b,#8e,#0b,#8e,#0b,#8e,#0b,#8e
	db #bb,#01,#8e,#bb,#02,#8e,#bb,#03
	db #8e,#bb,#04,#0e,#33,#bb,#05,#ff
	db #56,#10,#a4,#00,#6e,#03,#84,#00
	db #fe,#0d,#ee,#a0,#00,#ee,#a0,#01
	db #ee,#a0,#02,#ee,#a0,#03,#e2,#a0
	db #04,#e2,#a0,#05,#e2,#a0,#06,#e2
	db #a0,#07,#d6,#a0,#08,#d6,#a0,#09
	db #d6,#a0,#0a,#d6,#a0,#0b,#ca,#a0
	db #0c,#ca,#a0,#0d,#ca,#a0,#0e,#ca
	db #a0,#0f,#be,#a0,#11,#be,#a0,#12
	db #be,#a0,#13,#be,#a0,#14,#b2,#a0
	db #15,#b2,#a0,#16,#b2,#a0,#17,#b2
	db #a0,#18,#a6,#a0,#19,#a6,#a0,#1a
	db #a6,#a0,#1b,#a6,#a0,#1c,#9a,#a0
	db #1d,#9a,#a0,#1e,#9a,#a0,#1f,#9a
	db #a0,#20,#ff,#3e,#02,#15,#3e,#02
	db #05,#c0,#05,#c0,#05,#40,#82,#41
	db #82,#41,#82,#45,#82,#c3,#05,#45
	db #83,#c5,#0d,#c3,#0d,#41,#86,#c5
	db #bd,#02,#c3,#0d,#c1,#0d,#c5,#bd
	db #03,#c3,#bd,#02,#c5,#bd,#01,#46
	db #02,#bd,#00,#46,#02,#05,#c1,#05
	db #c1,#05,#41,#82,#46,#82,#c5,#05
	db #46,#82,#4a,#82,#46,#82,#46,#83
	db #48,#83,#3e,#82,#3e,#83,#40,#82
	db #3c,#82,#ff,#3e,#02,#b5,#00,#3e
	db #02,#05,#c0,#05,#c0,#05,#40,#82
	db #41,#82,#41,#82,#45,#82,#c3,#05
	db #45,#83,#c5,#0d,#c3,#0d,#41,#86
	db #c5,#bd,#02,#c3,#0d,#c1,#0d,#c5
	db #bd,#03,#c3,#bd,#02,#c5,#bd,#01
	db #46,#02,#bd,#00,#46,#02,#05,#c1
	db #05,#c1,#05,#41,#82,#46,#82,#c5
	db #05,#46,#82,#4a,#83,#ba,#08,#be
	db #08,#c1,#08,#c6,#08,#bc,#08,#c0
	db #08,#c3,#08,#c8,#08,#be,#08,#c1
	db #08,#c6,#08,#ca,#08,#c0,#08,#c3
	db #08,#c8,#08,#cc,#08,#ff,#a6,#18
	db #ad,#0c,#b2,#08,#ad,#0c,#b5,#08
	db #ad,#0c,#b2,#08,#b5,#0c,#a6,#08
	db #ad,#0c,#b2,#08,#ad,#0c,#b5,#08
	db #b2,#0c,#b5,#08,#b7,#0c,#ab,#08
	db #b0,#0c,#b4,#08,#b0,#0c,#b7,#08
	db #b0,#0c,#b4,#08,#b7,#0c,#ab,#08
	db #b0,#0c,#b4,#08,#b0,#0c,#b7,#08
	db #b0,#0c,#b5,#08,#b4,#0c,#a6,#08
	db #ad,#0c,#b2,#08,#ad,#0c,#b5,#08
	db #ad,#0c,#b2,#08,#b5,#0c,#a6,#08
	db #ad,#0c,#b2,#08,#ad,#0c,#b5,#08
	db #b2,#0c,#b5,#08,#b7,#0c,#ab,#08
	db #b0,#0c,#b4,#08,#b0,#0c,#b7,#08
	db #b0,#0c,#b4,#08,#b7,#0c,#ab,#b8
	db #01,#b0,#bc,#02,#b4,#b8,#03,#b0
	db #bc,#04,#b7,#b8,#05,#b0,#bc,#06
	db #b5,#b8,#07,#b4,#bc,#08,#ff,#48
	db #08,#bc,#01,#4a,#06,#0c,#c8,#1c
	db #ca,#0c,#4c,#82,#48,#82,#45,#86
	db #c8,#0c,#ca,#0c,#4c,#82,#4f,#82
	db #4d,#88,#4b,#05,#fc,#02,#cc,#1c
	db #4d,#02,#0c,#4f,#82,#4c,#82,#48
	db #82,#45,#82,#48,#82,#45,#82,#48
	db #82,#4c,#82,#ff,#a6,#b8,#08,#ad
	db #bc,#07,#b2,#b8,#06,#ad,#bc,#05
	db #b5,#b8,#04,#ad,#bc,#03,#b2,#b8
	db #02,#b5,#bc,#01,#a6,#b8,#00,#ad
	db #0c,#b2,#08,#ad,#0c,#b5,#08,#b2
	db #0c,#b5,#08,#b7,#0c,#ab,#08,#b0
	db #0c,#b4,#08,#b0,#0c,#b7,#08,#b0
	db #0c,#b4,#08,#b7,#0c,#ab,#08,#b0
	db #0c,#b4,#08,#b0,#0c,#b7,#08,#b0
	db #0c,#b5,#08,#b4,#0c,#a6,#08,#ad
	db #0c,#b2,#08,#ad,#0c,#b5,#08,#ad
	db #0c,#b2,#08,#b5,#0c,#a6,#08,#ad
	db #0c,#b2,#08,#ad,#0c,#b5,#08,#b2
	db #0c,#b5,#08,#b7,#0c,#ab,#08,#b0
	db #0c,#b4,#08,#b0,#0c,#b7,#08,#b0
	db #0c,#b4,#08,#b7,#0c,#ab,#08,#b0
	db #0c,#b4,#08,#b0,#0c,#b7,#08,#b0
	db #0c,#b5,#08,#b4,#0c,#ff,#32,#02
	db #00,#ee,#02,#ee,#02,#3e,#02,#07
	db #ee,#02,#ee,#02,#32,#02,#00,#ee
	db #04,#ee,#04,#3e,#02,#07,#6e,#02
	db #04,#32,#02,#00,#ee,#02,#ee,#02
	db #3e,#02,#07,#6e,#02,#02,#32,#02
	db #00,#ee,#04,#ee,#04,#be,#07,#ee
	db #04,#ee,#04,#ee,#03,#32,#02,#00
	db #ee,#02,#ee,#02,#3e,#02,#07,#ee
	db #02,#ee,#02,#32,#02,#00,#6e,#02
	db #04,#3e,#02,#07,#6e,#02,#04,#32
	db #02,#00,#ee,#02,#ee,#02,#3e,#02
	db #07,#ee,#04,#ee,#04,#32,#02,#00
	db #6e,#02,#03,#be,#07,#be,#07,#32
	db #02,#00,#ff,#32,#02,#00,#3e,#02
	db #bc,#00,#3e,#02,#07,#3e,#02,#bc
	db #01,#32,#02,#00,#3e,#02,#bc,#02
	db #3e,#02,#07,#3e,#02,#bc,#03,#32
	db #02,#00,#3d,#02,#bc,#00,#3e,#02
	db #07,#3d,#02,#bc,#01,#32,#02,#00
	db #3d,#02,#bc,#02,#3e,#02,#07,#3d
	db #02,#bc,#03,#32,#02,#00,#3a,#02
	db #bc,#00,#3e,#02,#07,#3a,#02,#bc
	db #01,#32,#02,#00,#3a,#02,#bc,#02
	db #3e,#02,#07,#3a,#02,#bc,#03,#32
	db #02,#00,#3c,#02,#bc,#00,#3e,#02
	db #07,#3c,#02,#bc,#01,#32,#02,#00
	db #3e,#02,#bc,#02,#3e,#02,#07,#3d
	db #02,#bc,#03,#ff,#b2,#00,#ce,#b8
	db #03,#cf,#08,#d1,#08,#be,#07,#d1
	db #b8,#03,#cf,#08,#ce,#08,#b2,#00
	db #ce,#b8,#02,#cf,#08,#d1,#08,#be
	db #07,#d1,#b8,#02,#cf,#08,#ce,#08
	db #b2,#00,#cc,#b8,#01,#ce,#08,#cf
	db #08,#be,#07,#cf,#b8,#01,#ce,#08
	db #cc,#08,#b2,#00,#cc,#b8,#00,#ce
	db #08,#cf,#08,#be,#07,#cf,#08,#ce
	db #08,#cc,#08,#b2,#00,#ca,#b8,#01
	db #cc,#08,#cd,#08,#be,#07,#cd,#b8
	db #01,#cc,#08,#ca,#08,#b2,#00,#ca
	db #b8,#02,#cc,#08,#cd,#08,#be,#07
	db #cd,#b8,#02,#cc,#08,#ca,#08,#b2
	db #00,#c8,#b8,#03,#ca,#08,#cc,#08
	db #be,#07,#cc,#b8,#03,#ca,#08,#c8
	db #08,#b2,#00,#cd,#b8,#02,#cf,#08
	db #d4,#08,#be,#07,#d6,#bc,#03,#d8
	db #0c,#db,#0c,#ff,#ee,#d9,#3a,#ee
	db #d9,#10,#ee,#b1,#09,#ee,#11,#ee
	db #01,#ee,#01,#ee,#b1,#08,#ee,#01
	db #ee,#01,#ee,#01,#ee,#b1,#07,#ee
	db #01,#ee,#01,#ee,#01,#ee,#b1,#06
	db #ee,#01,#ee,#b1,#05,#ee,#01,#ee
	db #b1,#04,#ee,#01,#ee,#b1,#03,#ee
	db #01,#ee,#b1,#02,#ee,#01,#ee,#b1
	db #01,#6e,#02,#d1,#20,#ee,#d1,#1c
	db #ee,#01,#ee,#01,#ee,#01,#ee,#01
	db #ee,#b1,#00,#ee,#d1,#16,#6e,#02
	db #d1,#0e,#be,#0a,#be,#0a,#3e,#82
	db #be,#0a,#bf,#d8,#10,#c6,#d8,#20
	db #32,#02,#aa,#0f,#fe,#01,#ee,#11
	db #ee,#01,#ee,#0b,#ee,#db,#1e,#ee
	db #bb,#01,#ee,#bb,#02,#ee,#bb,#03
	db #ee,#bb,#04,#ee,#bb,#05,#ee,#bb
	db #06,#6e,#08,#bb,#07,#ff,#ee,#d9
	db #0e,#be,#ba,#05,#be,#0a,#3e,#82
	db #be,#0a,#bf,#b8,#05,#d5,#ba,#05
	db #bf,#da,#0a,#55,#03,#da,#0e,#be
	db #da,#0a,#be,#da,#09,#3e,#02,#da
	db #0a,#be,#da,#0e,#bf,#0a,#d5,#0a
	db #bf,#da,#0a,#55,#1d,#da,#0e,#32
	db #0f,#be,#02,#ff,#00,#04,#8e,#bb
	db #09,#8e,#bb,#08,#8e,#bb,#07,#8e
	db #bb,#06,#8e,#bb,#05,#8e,#bb,#04
	db #8e,#bb,#03,#8e,#bb,#02,#8e,#bb
	db #01,#8e,#bb,#00,#6e,#10,#d9,#02
	db #32,#21,#bf,#05,#ee,#d9,#06,#ff
	db #a6,#f8,#07,#a6,#08,#a6,#08,#a6
	db #08,#b2,#04,#a6,#08,#a6,#08,#a6
	db #08,#a6,#08,#a6,#08,#a6,#08,#a6
	db #08,#b2,#04,#a6,#08,#a6,#08,#a6
	db #08,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#b0,#04,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#b0,#04,#a4,#08,#a4,#08,#a3
	db #08,#a2,#08,#a2,#08,#a2,#08,#a2
	db #08,#ae,#04,#a2,#08,#a2,#08,#a2
	db #08,#a2,#08,#a2,#08,#a2,#08,#a2
	db #08,#ae,#04,#a2,#08,#a2,#08,#a3
	db #08,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#b0,#04,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#b0,#04,#b0,#05,#a4,#05,#b0
	db #05,#ff,#a6,#f8,#07,#a6,#08,#a6
	db #08,#a6,#08,#be,#04,#a6,#08,#a6
	db #08,#a6,#08,#a6,#08,#a6,#08,#a6
	db #08,#a6,#08,#be,#04,#a6,#08,#a6
	db #08,#a6,#08,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#bc,#04,#a4,#08,#a4
	db #08,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#bc,#04,#a4,#08,#a4
	db #08,#a3,#08,#a2,#08,#a2,#08,#a2
	db #08,#a2,#08,#ba,#04,#a2,#08,#a2
	db #08,#a2,#08,#a2,#08,#a2,#08,#a2
	db #08,#a2,#08,#ba,#04,#a2,#08,#a2
	db #08,#a3,#08,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#bc,#04,#a4,#08,#a4
	db #08,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#bc,#04,#b0,#05,#a4
	db #05,#b0,#05,#ff,#a6,#f8,#07,#a6
	db #08,#a6,#08,#a6,#08,#be,#04,#a6
	db #08,#a6,#08,#a6,#08,#a6,#08,#a6
	db #08,#a6,#08,#a6,#08,#be,#04,#a6
	db #08,#a6,#08,#a6,#08,#a4,#08,#a4
	db #08,#a4,#08,#a4,#08,#bc,#04,#a4
	db #08,#a4,#08,#a4,#08,#a4,#10,#a4
	db #f8,#07,#a4,#10,#a4,#f8,#07,#bc
	db #04,#a4,#08,#a4,#08,#a3,#08,#a2
	db #08,#a2,#08,#a2,#08,#a2,#08,#ba
	db #04,#a2,#08,#a2,#08,#a2,#08,#a2
	db #08,#a2,#08,#a2,#08,#a2,#08,#ba
	db #04,#a2,#08,#a2,#08,#a3,#08,#a4
	db #08,#a4,#08,#a4,#08,#a4,#08,#bc
	db #04,#a4,#08,#a4,#08,#a4,#08,#a4
	db #08,#a4,#08,#a4,#08,#a4,#08,#bc
	db #17,#a4,#f8,#07,#bc,#17,#b0,#08
	db #ff,#b2,#10,#ee,#8a,#0c,#ee,#8a
	db #0a,#ee,#8a,#08,#ee,#8a,#06,#ee
	db #8a,#08,#ee,#8a,#0a,#ee,#8a,#0c
	db #b2,#10,#ee,#8a,#0c,#ee,#8a,#0a
	db #ee,#8a,#08,#ee,#8a,#06,#ee,#8a
	db #08,#ee,#8a,#0a,#ee,#8a,#0c,#b2
	db #10,#ee,#8a,#0f,#ee,#8a,#0c,#ee
	db #8a,#0a,#ee,#8a,#08,#ee,#8a,#0a
	db #ee,#8a,#0c,#ee,#8a,#0f,#b2,#10
	db #ee,#8a,#0f,#ee,#8a,#0c,#ee,#8a
	db #0a,#ee,#8a,#08,#ee,#8a,#0a,#ee
	db #8a,#0c,#ee,#8a,#0f,#b2,#10,#ee
	db #8a,#0c,#ee,#8a,#0a,#ee,#8a,#08
	db #ee,#8a,#06,#ee,#8a,#08,#ee,#8a
	db #0a,#ee,#8a,#0c,#b2,#10,#ee,#8a
	db #0c,#ee,#8a,#0a,#ee,#8a,#08,#ee
	db #8a,#06,#ee,#8a,#08,#ee,#8a,#0a
	db #ee,#8a,#0c,#b2,#10,#ee,#8a,#0f
	db #ee,#8a,#0c,#ee,#8a,#0a,#ee,#8a
	db #08,#ee,#8a,#0a,#ee,#8a,#0c,#ee
	db #8a,#0f,#b2,#10,#ee,#8a,#0f,#ee
	db #8a,#0c,#ee,#8a,#0a,#ee,#8a,#08
	db #ee,#8a,#0a,#ee,#8a,#0c,#ee,#8a
	db #0f,#ff,#b2,#10,#ee,#8a,#0c,#ee
	db #8a,#0a,#ee,#8a,#08,#ee,#8a,#06
	db #ee,#8a,#08,#ee,#8a,#0a,#ee,#8a
	db #0c,#b2,#10,#ee,#8a,#0c,#ee,#8a
	db #0a,#ee,#8a,#08,#ee,#8a,#06,#ee
	db #8a,#08,#ee,#8a,#0a,#ee,#8a,#0c
	db #b2,#10,#ee,#8a,#0f,#ee,#8a,#0c
	db #ee,#8a,#0a,#ee,#8a,#08,#ee,#8a
	db #0a,#ee,#8a,#0c,#ee,#8a,#0f,#b2
	db #10,#ee,#8a,#0f,#ee,#8a,#0c,#ee
	db #8a,#0a,#ee,#8a,#08,#ee,#8a,#0a
	db #ee,#8a,#0c,#ee,#8a,#0f,#b2,#10
	db #ee,#8a,#0c,#ee,#8a,#0a,#ee,#8a
	db #08,#ee,#8a,#06,#ee,#8a,#08,#ee
	db #8a,#0a,#ee,#8a,#0c,#b2,#10,#ee
	db #8a,#0c,#ee,#8a,#0a,#ee,#8a,#08
	db #ee,#8a,#06,#ee,#8a,#08,#ee,#8a
	db #0a,#ee,#8a,#0c,#b2,#10,#ee,#8a
	db #0f,#ee,#8a,#0c,#ee,#8a,#0a,#ee
	db #8a,#08,#ee,#8a,#0a,#ee,#8a,#0c
	db #ee,#8a,#0f,#b2,#10,#ee,#8a,#0f
	db #ee,#8a,#0c,#ee,#8a,#0a,#ee,#8a
	db #08,#ee,#8a,#0a,#ee,#8a,#0c,#ee
	db #8a,#0f,#ff,#42,#02,#1c,#39,#02
	db #0c,#42,#82,#39,#82,#42,#82,#39
	db #82,#42,#82,#39,#82,#40,#82,#39
	db #82,#40,#82,#39,#82,#40,#82,#39
	db #82,#40,#82,#39,#82,#41,#82,#35
	db #82,#41,#82,#35,#82,#41,#82,#35
	db #82,#41,#82,#35,#82,#43,#82,#37
	db #82,#43,#82,#37,#82,#41,#82,#35
	db #82,#40,#82,#34,#82,#ff,#42,#02
	db #0c,#39,#82,#42,#82,#39,#82,#42
	db #82,#39,#82,#42,#82,#39,#82,#40
	db #82,#39,#82,#40,#82,#39,#82,#40
	db #82,#39,#82,#40,#82,#39,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#41
	db #82,#35,#82,#41,#82,#35,#82,#43
	db #82,#37,#82,#43,#82,#37,#82,#41
	db #82,#35,#82,#40,#82,#34,#82,#ff
	db #42,#02,#0c,#39,#82,#42,#82,#39
	db #82,#42,#82,#39,#82,#42,#82,#39
	db #82,#40,#82,#39,#82,#40,#82,#39
	db #82,#40,#82,#39,#82,#40,#82,#39
	db #82,#41,#82,#35,#82,#41,#82,#35
	db #82,#41,#82,#35,#82,#41,#82,#35
	db #82,#43,#82,#37,#82,#43,#82,#37
	db #82,#41,#82,#35,#82,#40,#82,#34
	db #82,#ff,#6e,#0f,#19,#6e,#02,#b1
	db #0d,#6e,#02,#b1,#0c,#6e,#02,#b1
	db #0b,#6e,#02,#b1,#0a,#6e,#02,#b1
	db #09,#6e,#03,#b1,#08,#6e,#02,#b1
	db #07,#6e,#02,#01,#6e,#82,#6e,#8d
	db #6e,#82,#ee,#bb,#07,#ee,#bb,#06
	db #ee,#bb,#05,#ee,#bb,#04,#ee,#bb
	db #03,#ee,#bb,#02,#ee,#bb,#01,#ee
	db #bb,#00,#ee,#0b,#ee,#0b,#ee,#db
	db #1c,#ee,#db,#1d,#ee,#db,#09,#ee
	db #db,#0b,#ee,#db,#1e,#ff,#00,#17
	db #ee,#db,#0d,#ee,#db,#0b,#ee,#db
	db #0a,#6e,#02,#db,#0d,#8e,#b1,#01
	db #6e,#14,#d1,#15,#26,#0f,#be,#04
	db #ff,#00,#1e,#32,#22,#0f,#ff,#56
	db #10,#a4,#00,#6e,#03,#84,#00,#fe
	db #0d,#ee,#a0,#00,#ee,#a0,#01,#ee
	db #a0,#02,#ee,#a0,#03,#ee,#a0,#04
	db #ee,#a0,#05,#ee,#a0,#06,#ee,#a0
	db #07,#ee,#a0,#08,#ee,#a0,#09,#e2
	db #a0,#0a,#e2,#a0,#0b,#e2,#a0,#0c
	db #e2,#a0,#0d,#d6,#a0,#0e,#d6,#a0
	db #0f,#d6,#a0,#11,#d6,#a0,#12,#ca
	db #a0,#13,#ca,#a0,#14,#ca,#a0,#15
	db #ca,#a0,#16,#be,#a0,#17,#be,#a0
	db #18,#be,#a0,#19,#be,#a0,#1a,#b2
	db #a0,#1b,#b2,#a0,#1c,#b2,#a0,#1d
	db #b2,#a0,#1e,#a6,#a0,#1f,#a6,#a0
	db #20,#ff,#3e,#02,#15,#3e,#02,#05
	db #c0,#05,#c0,#05,#40,#82,#41,#82
	db #41,#82,#45,#82,#c3,#05,#45,#87
	db #c5,#bd,#01,#c3,#0d,#41,#85,#c5
	db #bd,#03,#c3,#bd,#02,#c5,#bd,#01
	db #46,#02,#bd,#00,#46,#02,#05,#c1
	db #05,#c1,#05,#41,#82,#46,#82,#c5
	db #05,#46,#82,#46,#83,#46,#83,#48
	db #82,#48,#83,#3e,#83,#40,#82,#40
	db #82,#bc,#05,#ff,#32,#02,#b5,#00
	db #32,#02,#05,#b4,#05,#b4,#05,#34
	db #82,#35,#82,#35,#82,#39,#82,#b7
	db #05,#39,#87,#c5,#bd,#01,#c3,#0d
	db #41,#85,#c5,#bd,#03,#c3,#bd,#02
	db #c5,#bd,#01,#3a,#02,#bd,#00,#3a
	db #02,#05,#b5,#05,#b5,#05,#35,#82
	db #3a,#82,#b9,#05,#3a,#82,#3a,#83
	db #ae,#08,#b2,#08,#b5,#08,#ba,#08
	db #b0,#08,#b4,#08,#b7,#08,#bc,#08
	db #b2,#08,#b5,#08,#ba,#08,#be,#08
	db #b4,#08,#b7,#08,#bc,#08,#c0,#08
	db #ff,#a6,#1c,#ad,#08,#b2,#0c,#ad
	db #08,#b5,#0c,#ad,#08,#b2,#0c,#b5
	db #08,#a6,#0c,#ad,#08,#b2,#0c,#ad
	db #08,#b5,#0c,#b2,#08,#b5,#0c,#b7
	db #08,#ab,#0c,#b0,#08,#b4,#0c,#b0
	db #08,#b7,#0c,#b0,#08,#b4,#0c,#b7
	db #08,#ab,#0c,#b0,#08,#b4,#0c,#b0
	db #08,#b7,#0c,#b0,#08,#b5,#0c,#b4
	db #08,#a6,#0c,#ad,#08,#b2,#0c,#ad
	db #08,#b5,#0c,#ad,#08,#b2,#0c,#b5
	db #08,#a6,#0c,#ad,#08,#b2,#0c,#ad
	db #08,#b5,#0c,#b2,#08,#b5,#0c,#b7
	db #08,#ab,#0c,#b0,#08,#b4,#0c,#b0
	db #08,#b7,#0c,#b0,#08,#b4,#0c,#b7
	db #08,#ab,#0c,#b0,#08,#b4,#0c,#b0
	db #08,#b7,#0c,#b0,#08,#b5,#0c,#b4
	db #08,#ff,#a6,#f8,#00,#ad,#08,#b2
	db #08,#ad,#08,#b5,#08,#ad,#08,#b2
	db #08,#b5,#08,#a6,#08,#ad,#08,#b2
	db #08,#ad,#08,#b5,#08,#b2,#08,#b5
	db #08,#b7,#08,#ab,#08,#b0,#08,#b4
	db #08,#b0,#08,#b7,#08,#b0,#08,#b4
	db #08,#b7,#08,#ab,#08,#b0,#08,#b4
	db #08,#b0,#08,#b7,#08,#b0,#08,#b5
	db #08,#b4,#08,#a6,#08,#ad,#08,#b2
	db #08,#ad,#08,#b5,#08,#ad,#08,#b2
	db #08,#b5,#08,#a6,#08,#ad,#08,#b2
	db #08,#ad,#08,#b5,#08,#b2,#08,#b5
	db #08,#b7,#08,#ab,#08,#b0,#08,#b4
	db #08,#b0,#08,#b7,#08,#b0,#08,#b4
	db #08,#b7,#08,#ab,#08,#b0,#08,#b4
	db #08,#b0,#08,#b7,#08,#b0,#08,#b5
	db #08,#b4,#08,#ff,#a6,#1c,#ad,#08
	db #b2,#0c,#ad,#08,#b5,#0c,#ad,#08
	db #b2,#0c,#b5,#08,#a6,#0c,#ad,#08
	db #b2,#0c,#ad,#08,#b5,#0c,#b2,#08
	db #b5,#0c,#b7,#08,#ab,#0c,#b0,#08
	db #b4,#0c,#b0,#08,#b7,#0c,#b0,#08
	db #b4,#0c,#b7,#08,#ab,#0c,#b0,#08
	db #b4,#0c,#b0,#08,#b7,#0c,#b0,#08
	db #b5,#0c,#b4,#08,#a6,#0c,#ad,#08
	db #b2,#0c,#ad,#08,#b5,#0c,#ad,#08
	db #b2,#0c,#b5,#08,#a6,#0c,#ad,#08
	db #b2,#0c,#ad,#08,#b5,#0c,#b2,#08
	db #b5,#0c,#b7,#08,#ab,#0c,#b0,#08
	db #b4,#0c,#b0,#08,#b7,#0c,#b0,#08
	db #b4,#0c,#b7,#08,#ab,#0c,#b0,#08
	db #b4,#0c,#b0,#08,#b7,#0c,#b0,#08
	db #b5,#0c,#b4,#08,#ff,#a6,#f8,#01
	db #a6,#08,#b2,#08,#a6,#08,#be,#17
	db #b2,#f8,#01,#a6,#08,#b2,#08,#a6
	db #08,#a6,#08,#b2,#08,#a6,#08,#be
	db #17,#b2,#f8,#01,#a6,#08,#b2,#08
	db #a1,#08,#a1,#08,#ad,#08,#a1,#08
	db #be,#17,#ad,#f8,#01,#a1,#08,#ad
	db #08,#a1,#08,#a1,#08,#ad,#08,#a1
	db #08,#be,#17,#ad,#f8,#01,#a1,#08
	db #ad,#08,#a2,#08,#a2,#08,#ae,#08
	db #a2,#08,#be,#17,#ae,#f8,#01,#a2
	db #08,#ae,#08,#a2,#08,#a2,#08,#ae
	db #08,#a2,#08,#be,#17,#ae,#f8,#01
	db #a2,#08,#ae,#08,#a6,#08,#a6,#08
	db #b2,#08,#a6,#08,#be,#17,#b2,#f8
	db #01,#a6,#08,#b2,#08,#a4,#08,#a4
	db #08,#b0,#08,#a4,#08,#be,#17,#a5
	db #f8,#01,#b1,#08,#a5,#08,#ff,#a6
	db #f8,#08,#a6,#08,#b2,#08,#a6,#08
	db #be,#17,#b2,#f8,#08,#a6,#08,#b2
	db #08,#a6,#08,#a6,#08,#b2,#08,#a6
	db #08,#be,#17,#b2,#f8,#08,#a6,#08
	db #b2,#08,#a1,#08,#a1,#08,#ad,#08
	db #a1,#08,#be,#17,#ad,#f8,#08,#a1
	db #08,#ad,#08,#a1,#08,#a1,#08,#ad
	db #08,#a1,#08,#be,#17,#ad,#f8,#08
	db #a1,#08,#ad,#08,#a2,#08,#a2,#08
	db #ae,#08,#a2,#08,#be,#17,#ae,#f8
	db #08,#a2,#08,#ae,#08,#a2,#08,#a2
	db #08,#ae,#08,#a2,#08,#be,#17,#ae
	db #f8,#08,#a2,#08,#ae,#08,#a6,#08
	db #a6,#08,#b2,#08,#a6,#08,#be,#17
	db #b2,#f8,#08,#a6,#08,#b2,#08,#a4
	db #08,#a4,#08,#b0,#08,#a4,#08,#be
	db #17,#a5,#f8,#08,#b1,#08,#a5,#08
	db #ff
;
.music_info
	db "Audio Illusions - 09 - Danger (1996)(Systeme D)(Frequency)",0
	db "ST-Module",0

	read "music_end.asm"
