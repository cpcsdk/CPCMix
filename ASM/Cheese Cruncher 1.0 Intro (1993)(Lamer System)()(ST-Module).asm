; Music of Cheese Cruncher 1.0 Intro (1993)(Lamer System)()(ST-Module).asm
; Ripped by Megachur the 20/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHEEC10I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4024

	read "music_header.asm"

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
	dw l4786,l47b6,l47e6
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4466
	db #06,#45,#46,#45,#66,#45,#00,#00
	db #86,#45,#c6,#45,#66,#45,#10,#10
	db #e6,#45,#26,#46,#46,#46,#00,#00
	db #66,#46,#a6,#46,#66,#45,#00,#00
	db #c6,#46,#06,#47,#66,#45,#00,#00
	db #fe,#3e,#ca,#3f,#98,#3d,#50,#30
	db #08,#7b,#4f,#45,#00,#2c,#b0,#18
	db #ec,#3d,#a0,#6f,#08,#15,#4d,#4f
	db #06,#3f,#af,#57,#75,#3d,#f0,#30
	db #06,#45,#26,#47,#66,#45,#00,#00
	db #00,#37,#00,#37,#00,#37,#00,#00
	db #e6,#81,#26,#82,#46,#82,#00,#00
	db #86,#03,#66,#04,#66,#02,#00,#00
	db #06,#81,#e6,#82,#66,#81,#00,#00
	db #06,#83,#46,#83,#66,#81,#08,#18
	db #06,#01,#46,#01,#66,#01,#00,#00
.l44e6
	db #46,#47,#66,#47,#86,#c5,#a6,#c5
	db #c6,#c5,#e6,#c5,#06,#c6,#06,#86
	db #00,#37,#00,#37,#00,#37,#00,#37
	db #00,#37,#00,#37,#00,#37,#00,#37
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fd,#ff,#ee,#ff,#fd,#ff
	db #00,#00,#03,#00,#12,#00,#03,#00
	db #00,#00,#fd,#ff,#ee,#ff,#fd,#ff
	db #00,#00,#03,#00,#12,#00,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0c,#0d,#0b,#0c,#0a,#0b,#09
	db #0a,#08,#08,#05,#06,#05,#06,#05
	db #06,#04,#05,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#05,#04,#06
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#03,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #18,#00,#00,#00,#00,#00,#00,#00
	db #fe,#00,#00,#00,#00,#00,#00,#00
	db #05,#00,#00,#00,#00,#00,#00,#00
	db #fe,#00,#00,#00,#00,#00,#00,#00
	db #07,#f8,#05,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4786
	db #00,#16,#48,#00,#63,#49,#00,#f5
	db #49,#00,#50,#4a,#00,#f5,#49,#00
	db #ef,#4a,#00,#60,#49,#00,#4c,#4b
	db #00,#d6,#4b,#00,#4c,#4b,#07,#ef
	db #4a,#00,#d6,#4b,#00,#60,#49,#07
	db #4c,#4b,#00,#16,#48,#80,#8c,#47
.l47b6
	db #00,#15,#4c,#00,#fc,#4d,#00,#5d
	db #4e,#00,#fe,#4e,#00,#5d,#4e,#00
	db #9f,#4f,#00,#40,#50,#00,#40,#50
	db #00,#ca,#50,#00,#40,#50,#07,#9f
	db #4f,#00,#ca,#50,#00,#40,#50,#07
	db #40,#50,#00,#15,#4c,#80,#bc,#47
.l47e6
	db #00,#54,#51,#00,#6c,#52,#00,#ab
	db #52,#00,#66,#52,#00,#bc,#52,#00
	db #3b,#53,#00,#66,#52,#00,#ba,#53
	db #00,#44,#54,#00,#ba,#53,#07,#3b
	db #53,#00,#44,#54,#00,#66,#52,#07
	db #ba,#53,#00,#54,#51,#80,#ec,#47
	db #00,#22,#b9,#03,#b0,#03,#ae,#00
	db #b9,#03,#ba,#03,#b3,#03,#b9,#03
	db #b9,#03,#b2,#03,#b9,#03,#b3,#03
	db #ba,#03,#b2,#03,#b9,#03,#b7,#03
	db #b2,#03,#bc,#03,#b3,#03,#ba,#03
	db #b9,#03,#b3,#03,#ba,#03,#b2,#03
	db #b7,#03,#b9,#03,#b3,#03,#b9,#03
	db #b7,#03,#b9,#03,#b7,#03,#ba,#03
	db #b7,#03,#ba,#03,#b2,#03,#b0,#03
	db #b3,#03,#ba,#03,#b7,#03,#b0,#03
	db #39,#82,#b9,#03,#b2,#03,#b7,#03
	db #b7,#03,#b2,#03,#ff,#32,#02,#12
	db #37,#02,#02,#37,#83,#30,#84,#37
	db #82,#37,#82,#b7,#02,#32,#82,#37
	db #82,#b7,#02,#b7,#02,#b7,#02,#37
	db #82,#30,#84,#39,#82,#30,#82,#b7
	db #02,#33,#82,#35,#82,#35,#82,#32
	db #82,#b5,#02,#35,#82,#35,#83,#30
	db #83,#30,#86,#ae,#02,#2e,#82,#2e
	db #82,#30,#82,#30,#82,#2e,#82,#30
	db #82,#b0,#02,#35,#82,#b5,#02,#b0
	db #02,#35,#82,#b5,#02,#b5,#02,#b5
	db #02,#ff,#c6,#04,#c8,#04,#ca,#04
	db #cb,#04,#cd,#04,#cf,#04,#d1,#04
	db #d2,#04,#d2,#04,#d1,#04,#cf,#04
	db #cd,#04,#cb,#04,#ca,#04,#c8,#04
	db #c6,#04,#c6,#04,#c5,#04,#c3,#04
	db #c1,#04,#bf,#04,#be,#04,#bc,#04
	db #ba,#04,#ba,#04,#b9,#04,#b7,#04
	db #b5,#04,#b3,#04,#b2,#04,#b0,#04
	db #ae,#04,#c6,#04,#c8,#04,#ca,#04
	db #cb,#04,#cd,#04,#cf,#04,#d1,#04
	db #c6,#04,#c8,#04,#ca,#04,#cb,#04
	db #cd,#04,#cf,#04,#d1,#04,#d2,#04
	db #d2,#04,#d1,#04,#cf,#04,#cd,#04
	db #cb,#04,#ca,#04,#c8,#04,#c6,#04
	db #c6,#04,#c8,#04,#ca,#04,#cb,#04
	db #cd,#04,#cf,#04,#d1,#04,#d2,#04
	db #d2,#04,#d1,#04,#cf,#04,#cd,#04
	db #cb,#04,#ca,#04,#c8,#04,#46,#84
	db #4d,#83,#4f,#82,#cd,#04,#ff,#00
	db #50,#ff,#00,#50,#ff,#39,#02,#13
	db #b0,#03,#b7,#03,#b7,#03,#ba,#03
	db #b7,#03,#3a,#82,#b9,#03,#39,#84
	db #b7,#03,#ba,#03,#39,#82,#ba,#03
	db #ba,#03,#bc,#03,#b9,#03,#b9,#03
	db #b7,#03,#b2,#03,#bc,#03,#b3,#03
	db #ba,#03,#3a,#82,#ba,#03,#b9,#03
	db #b9,#03,#b2,#03,#b9,#03,#b0,#03
	db #ae,#00,#b9,#03,#ba,#03,#b3,#03
	db #b9,#03,#b9,#03,#b2,#03,#b9,#03
	db #b3,#03,#ba,#03,#b2,#03,#b9,#03
	db #b7,#03,#b2,#03,#bc,#03,#b3,#03
	db #ba,#03,#b9,#03,#b3,#03,#ba,#03
	db #b2,#03,#b7,#03,#b9,#03,#b3,#03
	db #b9,#03,#b7,#03,#b9,#03,#b7,#03
	db #ba,#03,#b7,#03,#ba,#03,#b2,#03
	db #b0,#03,#b3,#03,#ba,#03,#b7,#03
	db #b0,#03,#39,#82,#b9,#03,#b2,#03
	db #b7,#03,#b7,#03,#b2,#03,#ff,#b9
	db #03,#b0,#03,#ae,#00,#b9,#03,#ba
	db #03,#b3,#03,#b9,#03,#b9,#03,#b2
	db #03,#b9,#03,#b3,#03,#ba,#03,#b2
	db #03,#b9,#03,#b7,#03,#b2,#03,#bc
	db #03,#b3,#03,#ba,#03,#b9,#03,#b3
	db #03,#ba,#03,#b2,#03,#b7,#03,#b9
	db #03,#b3,#03,#b9,#03,#b7,#03,#b9
	db #03,#b7,#03,#ba,#03,#b7,#03,#ba
	db #03,#b2,#03,#b0,#03,#b3,#03,#ba
	db #03,#b7,#03,#b0,#03,#39,#82,#b9
	db #03,#b2,#03,#b7,#03,#b7,#03,#32
	db #a3,#ff,#ad,#03,#a4,#03,#a2,#00
	db #ad,#03,#ae,#03,#a7,#03,#ad,#03
	db #ad,#03,#a6,#03,#ad,#03,#a7,#03
	db #ae,#03,#a6,#03,#ad,#03,#ab,#03
	db #a6,#03,#b0,#03,#a7,#03,#ae,#03
	db #ad,#03,#a7,#03,#ae,#03,#a6,#03
	db #ab,#03,#ad,#03,#a7,#03,#ad,#03
	db #ab,#03,#ad,#03,#ab,#03,#ae,#03
	db #ab,#03,#ae,#03,#a6,#03,#a4,#03
	db #a7,#03,#ae,#03,#ab,#03,#a4,#03
	db #2d,#82,#ad,#03,#a6,#03,#ab,#03
	db #ab,#03,#a6,#03,#ba,#03,#bc,#03
	db #be,#03,#c1,#03,#c1,#03,#bc,#03
	db #c3,#03,#c3,#03,#c3,#03,#bc,#03
	db #c1,#03,#be,#03,#c3,#03,#c3,#03
	db #c1,#03,#be,#03,#bc,#03,#c3,#03
	db #be,#03,#c1,#03,#c3,#03,#ba,#03
	db #ba,#03,#bc,#03,#bf,#03,#ba,#03
	db #bc,#03,#be,#03,#bf,#03,#ba,#03
	db #bc,#03,#be,#03,#bf,#03,#bc,#03
	db #ff,#b9,#03,#b0,#03,#ae,#00,#b9
	db #03,#ba,#03,#b3,#03,#b9,#03,#b9
	db #03,#b2,#03,#b9,#03,#b3,#03,#ba
	db #03,#b2,#03,#b9,#03,#b7,#03,#b2
	db #03,#bc,#03,#b3,#03,#ba,#03,#b9
	db #03,#b3,#03,#ba,#03,#b2,#03,#b7
	db #03,#b9,#03,#b3,#03,#b9,#03,#b7
	db #03,#b9,#03,#b7,#03,#ba,#03,#b7
	db #03,#ba,#03,#b2,#03,#b0,#03,#b3
	db #03,#ba,#03,#b7,#03,#b0,#03,#39
	db #82,#b9,#03,#b2,#03,#b7,#03,#b7
	db #03,#b2,#03,#fe,#22,#ff,#c5,#f3
	db #00,#c5,#03,#c3,#03,#c3,#03,#ba
	db #03,#c3,#03,#c5,#03,#be,#03,#c3
	db #03,#c5,#03,#bf,#03,#c6,#03,#be
	db #03,#c5,#03,#c3,#03,#be,#03,#c8
	db #03,#bf,#03,#c6,#03,#c5,#03,#bf
	db #03,#c6,#03,#be,#03,#c3,#03,#c5
	db #03,#bf,#03,#c5,#03,#c3,#03,#c5
	db #03,#c3,#03,#c6,#03,#c3,#03,#c6
	db #03,#be,#03,#bc,#03,#bf,#03,#c6
	db #03,#c3,#03,#bc,#03,#45,#82,#c5
	db #03,#be,#03,#c3,#03,#c3,#03,#3e
	db #84,#3e,#83,#43,#82,#c3,#03,#c3
	db #03,#bc,#03,#c5,#03,#be,#03,#c3
	db #03,#45,#82,#c3,#03,#c5,#03,#43
	db #82,#c3,#03,#be,#03,#43,#82,#c3
	db #03,#bc,#03,#43,#82,#c3,#03,#c3
	db #03,#43,#82,#be,#03,#c5,#03,#ff
	db #00,#31,#b9,#13,#b9,#03,#b7,#03
	db #b7,#03,#ba,#03,#b7,#03,#b9,#03
	db #b2,#03,#b7,#03,#b9,#03,#b3,#03
	db #ba,#03,#b2,#03,#b9,#03,#b7,#03
	db #b2,#03,#bc,#03,#b3,#03,#ba,#03
	db #b9,#03,#b3,#03,#ba,#03,#b2,#03
	db #b7,#03,#b9,#03,#b3,#03,#b9,#03
	db #b7,#03,#b9,#03,#37,#82,#ff,#be
	db #03,#ca,#03,#d6,#03,#e2,#03,#e2
	db #03,#e2,#03,#d6,#03,#d6,#03,#e2
	db #03,#e2,#03,#e2,#03,#d6,#03,#be
	db #03,#be,#03,#be,#03,#be,#03,#ca
	db #03,#d6,#03,#ca,#03,#d6,#03,#ca
	db #03,#d6,#03,#d6,#03,#d6,#03,#d6
	db #03,#e2,#03,#e2,#03,#e2,#03,#d6
	db #03,#e2,#03,#e2,#03,#e2,#03,#e2
	db #03,#ca,#03,#b2,#03,#b2,#03,#b2
	db #03,#b2,#03,#a6,#03,#b2,#03,#a6
	db #03,#b2,#03,#a6,#03,#a6,#03,#a6
	db #03,#b2,#03,#a6,#03,#b2,#03,#a6
	db #03,#a6,#03,#a6,#03,#b2,#03,#a6
	db #03,#b2,#03,#a6,#03,#a6,#03,#a6
	db #03,#a6,#03,#a6,#03,#b2,#03,#b2
	db #03,#b2,#03,#b2,#03,#a6,#03,#b2
	db #03,#a6,#03,#b2,#03,#a6,#03,#a6
	db #03,#a6,#03,#b2,#03,#a6,#03,#b2
	db #03,#a6,#03,#a6,#03,#a6,#03,#a6
	db #03,#b2,#03,#a6,#03,#b2,#03,#ff
	db #be,#13,#be,#03,#be,#03,#be,#03
	db #ca,#03,#d6,#03,#d6,#03,#d6,#03
	db #d6,#03,#d2,#03,#d4,#03,#d6,#03
	db #d2,#03,#d4,#03,#d4,#03,#d6,#03
	db #d2,#03,#d4,#03,#d6,#03,#d2,#03
	db #d4,#03,#d6,#03,#d2,#03,#d4,#03
	db #d6,#03,#d2,#03,#d4,#03,#d6,#03
	db #d2,#03,#d4,#03,#d6,#03,#d2,#03
	db #d4,#03,#d6,#03,#d2,#03,#d4,#03
	db #d6,#03,#d2,#03,#d4,#03,#d6,#03
	db #d2,#03,#d4,#03,#d6,#03,#d2,#03
	db #d4,#03,#d6,#03,#d2,#03,#d4,#03
	db #d6,#03,#d6,#03,#d4,#03,#d2,#03
	db #d2,#03,#d2,#03,#d2,#03,#d4,#03
	db #d6,#03,#d6,#03,#d6,#03,#d4,#03
	db #d6,#03,#d7,#03,#d9,#03,#d9,#03
	db #d7,#03,#db,#03,#d7,#03,#d9,#03
	db #d6,#03,#d6,#03,#d7,#03,#d9,#03
	db #d6,#03,#d7,#03,#d9,#03,#db,#03
	db #db,#03,#dd,#03,#5c,#82,#ff,#d2
	db #03,#d4,#03,#d2,#03,#d4,#03,#d2
	db #03,#d4,#03,#d2,#03,#d4,#03,#c6
	db #03,#c8,#03,#c6,#03,#c8,#03,#c6
	db #03,#c8,#03,#c6,#03,#c8,#03,#ba
	db #03,#bc,#03,#ba,#03,#bc,#03,#ba
	db #03,#bc,#03,#ba,#03,#bc,#03,#ae
	db #03,#b0,#03,#ae,#03,#b0,#03,#ae
	db #03,#b0,#03,#ae,#03,#b0,#03,#c6
	db #03,#c8,#03,#c6,#03,#c8,#03,#c6
	db #03,#c8,#03,#c6,#03,#c8,#03,#d2
	db #03,#d4,#03,#d2,#03,#d4,#03,#d2
	db #03,#d4,#03,#d2,#03,#d4,#03,#de
	db #03,#e0,#03,#de,#03,#e0,#03,#de
	db #03,#e0,#03,#de,#03,#e0,#03,#de
	db #03,#e0,#03,#de,#03,#e0,#03,#d2
	db #03,#d4,#03,#d2,#03,#d4,#03,#d2
	db #03,#d4,#03,#d2,#03,#d4,#03,#de
	db #03,#e0,#03,#de,#03,#d2,#03,#d4
	db #03,#c6,#03,#c8,#03,#ba,#03,#bc
	db #03,#ae,#03,#b0,#03,#ca,#03,#ff
	db #00,#50,#ff,#00,#50,#ff,#00,#06
	db #fe,#1c,#b2,#03,#b2,#03,#b2,#03
	db #b2,#03,#a6,#03,#b2,#03,#a6,#03
	db #b2,#03,#a6,#03,#a6,#03,#a6,#03
	db #b2,#03,#a6,#03,#b2,#03,#a6,#03
	db #a6,#03,#a6,#03,#b2,#03,#a6,#03
	db #b2,#03,#a6,#03,#a6,#03,#a6,#03
	db #a6,#03,#a6,#03,#b2,#03,#b2,#03
	db #b2,#03,#b2,#03,#a6,#03,#b2,#03
	db #a6,#03,#b2,#03,#a6,#03,#a6,#03
	db #a6,#03,#b2,#03,#a6,#03,#b2,#03
	db #a6,#03,#a6,#03,#a6,#03,#a6,#03
	db #b2,#03,#a6,#03,#b2,#03,#ff,#b2
	db #03,#b2,#03,#b2,#03,#b2,#03,#a6
	db #03,#b2,#03,#a6,#03,#b2,#03,#a6
	db #03,#a6,#03,#a6,#03,#b2,#03,#a6
	db #03,#b2,#03,#a6,#03,#a6,#03,#a6
	db #03,#b2,#03,#a6,#03,#b2,#03,#a6
	db #03,#a6,#03,#a6,#03,#a6,#03,#a6
	db #03,#b2,#03,#b2,#03,#b2,#03,#b2
	db #03,#a6,#03,#b2,#03,#a6,#03,#b2
	db #03,#a6,#03,#a6,#03,#a6,#03,#b2
	db #03,#a6,#03,#b2,#03,#a6,#03,#a6
	db #03,#a6,#03,#a6,#03,#b2,#03,#a6
	db #03,#b2,#03,#bf,#03,#be,#03,#be
	db #03,#bf,#03,#bf,#03,#be,#03,#be
	db #03,#be,#03,#bf,#03,#be,#03,#bf
	db #03,#bf,#03,#bf,#03,#bf,#03,#be
	db #03,#be,#03,#bf,#03,#bf,#03,#bf
	db #03,#be,#03,#bf,#03,#bf,#03,#bf
	db #03,#be,#03,#bf,#03,#bf,#03,#be
	db #03,#bf,#03,#bf,#03,#bf,#03,#bf
	db #03,#be,#03,#be,#03,#be,#03,#ff
	db #a6,#03,#a6,#03,#b2,#03,#a6,#03
	db #b2,#03,#a6,#03,#a6,#03,#a6,#03
	db #a6,#03,#b2,#03,#a6,#03,#b2,#03
	db #bf,#03,#be,#03,#be,#03,#bf,#03
	db #bf,#03,#be,#03,#be,#03,#be,#03
	db #bf,#03,#be,#03,#bf,#03,#bf,#03
	db #bf,#03,#bf,#03,#be,#03,#be,#03
	db #bf,#03,#bf,#03,#bf,#03,#be,#03
	db #bf,#03,#bf,#03,#bf,#03,#be,#03
	db #bf,#03,#bf,#03,#be,#03,#bf,#03
	db #bf,#03,#bf,#03,#bf,#03,#be,#03
	db #be,#03,#be,#03,#b3,#03,#b2,#03
	db #b3,#03,#b3,#03,#b2,#03,#a6,#03
	db #b2,#03,#b2,#03,#b3,#03,#b2,#03
	db #b2,#03,#b2,#03,#a6,#03,#a7,#03
	db #a6,#03,#a6,#03,#a6,#03,#a7,#03
	db #b3,#03,#b3,#03,#b3,#03,#b2,#03
	db #b0,#03,#b2,#03,#a6,#03,#a6,#03
	db #a4,#03,#a6,#03,#b2,#03,#b0,#03
	db #b2,#03,#a6,#03,#b0,#03,#b0,#03
	db #ff,#b2,#09,#b2,#09,#b2,#09,#b2
	db #09,#a6,#09,#b2,#09,#a6,#09,#b2
	db #09,#a6,#09,#a6,#09,#a6,#09,#b2
	db #09,#a6,#09,#b2,#09,#a6,#09,#a6
	db #09,#a6,#09,#b2,#09,#a6,#09,#b2
	db #09,#a6,#09,#a6,#09,#a6,#09,#a6
	db #09,#a6,#09,#b2,#09,#b2,#09,#b2
	db #09,#b2,#09,#a6,#09,#b2,#09,#a6
	db #09,#b2,#09,#a6,#09,#a6,#09,#a6
	db #09,#b2,#09,#a6,#09,#b2,#09,#a6
	db #09,#a6,#09,#a6,#09,#a6,#09,#b2
	db #09,#a6,#09,#b2,#09,#bf,#19,#be
	db #09,#be,#09,#bf,#09,#bf,#09,#be
	db #09,#be,#09,#be,#09,#bf,#09,#be
	db #09,#bf,#09,#bf,#09,#bf,#09,#bf
	db #09,#be,#09,#be,#09,#bf,#09,#bf
	db #09,#bf,#09,#be,#09,#bf,#09,#bf
	db #09,#bf,#09,#be,#09,#bf,#09,#bf
	db #09,#be,#09,#bf,#09,#bf,#09,#bf
	db #09,#bf,#09,#be,#09,#be,#09,#be
	db #09,#ff,#b9,#f9,#00,#b9,#09,#b7
	db #09,#b7,#09,#ba,#09,#b7,#09,#b9
	db #09,#b2,#09,#b7,#09,#b9,#09,#b3
	db #09,#ba,#09,#b2,#09,#b9,#09,#b7
	db #09,#b2,#09,#bc,#09,#b3,#09,#ba
	db #09,#b9,#09,#b3,#09,#ba,#09,#b2
	db #09,#b7,#09,#b9,#09,#b3,#09,#b9
	db #09,#b7,#09,#b9,#09,#b7,#09,#ba
	db #09,#b7,#09,#ba,#09,#b2,#09,#b0
	db #09,#b3,#09,#ba,#09,#b7,#09,#b0
	db #09,#39,#82,#b9,#09,#b2,#09,#b7
	db #09,#b7,#09,#32,#84,#32,#83,#37
	db #82,#b7,#09,#b7,#09,#b0,#09,#b9
	db #09,#b2,#09,#b7,#09,#39,#82,#b7
	db #09,#b9,#09,#37,#82,#b7,#09,#b2
	db #09,#37,#82,#b7,#09,#b0,#09,#37
	db #82,#b7,#09,#b7,#09,#37,#82,#b2
	db #09,#b9,#09,#ff,#b9,#f4,#00,#b9
	db #04,#b7,#04,#b7,#04,#ba,#04,#b7
	db #04,#b9,#04,#b2,#04,#b7,#04,#b9
	db #04,#b3,#04,#ba,#04,#b2,#04,#b9
	db #04,#b7,#04,#b2,#04,#bc,#04,#b3
	db #04,#ba,#04,#b9,#04,#b3,#04,#ba
	db #04,#b2,#04,#b7,#04,#b9,#04,#b3
	db #04,#b9,#04,#b7,#04,#b9,#04,#b7
	db #04,#ba,#04,#b7,#04,#ba,#04,#b2
	db #04,#b0,#04,#b3,#04,#ba,#04,#b7
	db #04,#b0,#04,#39,#82,#b9,#04,#b2
	db #04,#b7,#04,#b7,#04,#32,#84,#32
	db #83,#37,#82,#b7,#04,#b7,#04,#b0
	db #04,#b9,#04,#b2,#04,#b7,#04,#39
	db #82,#b7,#04,#b9,#04,#37,#82,#b7
	db #14,#b2,#04,#37,#82,#b7,#04,#b0
	db #04,#37,#82,#b7,#04,#b7,#04,#37
	db #82,#b2,#04,#b9,#04,#ff,#00,#0c
	db #c6,#02,#c8,#02,#c8,#02,#c8,#02
	db #d4,#02,#d4,#02,#e2,#02,#e2,#02
	db #e2,#02,#e3,#02,#e3,#02,#e3,#02
	db #e3,#02,#e5,#02,#d9,#02,#a9,#02
	db #9f,#02,#9d,#02,#a7,#02,#a7,#02
	db #9d,#02,#9d,#02,#9d,#02,#9d,#02
	db #a7,#02,#a7,#02,#a7,#02,#a9,#02
	db #a8,#02,#27,#a7,#ff,#de,#14,#e0
	db #04,#e2,#04,#c6,#04,#c8,#04,#ca
	db #04,#ba,#04,#bc,#04,#be,#04,#ae
	db #04,#b0,#04,#b2,#04,#de,#04,#e0
	db #04,#e2,#04,#d2,#04,#d4,#04,#d6
	db #04,#c6,#04,#c8,#04,#ca,#04,#ba
	db #04,#bc,#04,#be,#04,#ae,#04,#b0
	db #04,#b2,#04,#a2,#04,#a4,#04,#a6
	db #04,#96,#04,#98,#04,#9a,#04,#a4
	db #04,#a6,#04,#a4,#04,#a6,#04,#a4
	db #04,#a6,#04,#a6,#04,#a6,#04,#a4
	db #04,#a6,#04,#ae,#04,#b0,#04,#b2
	db #04,#ba,#04,#bc,#04,#be,#04,#bc
	db #04,#be,#04,#be,#04,#bc,#04,#be
	db #04,#3a,#9a,#ff,#2e,#02,#02,#2e
	db #82,#2e,#82,#30,#82,#b0,#02,#b0
	db #02,#b0,#02,#30,#82,#33,#83,#b0
	db #02,#33,#82,#b3,#02,#33,#82,#2e
	db #83,#b3,#02,#b3,#02,#33,#82,#30
	db #82,#37,#82,#35,#82,#b5,#02,#2e
	db #82,#37,#82,#37,#82,#b7,#02,#37
	db #82,#b7,#02,#b7,#02,#32,#82,#b5
	db #02,#b5,#02,#b2,#02,#35,#82,#b5
	db #02,#b5,#02,#b5,#02,#35,#82,#30
	db #82,#b3,#02,#33,#82,#b3,#02,#b3
	db #02,#b3,#02,#b3,#02,#b3,#02,#b3
	db #02,#2e,#82,#32,#82,#2e,#86,#ff
	db #00,#50,#ff,#00,#50,#ff,#fe,#0c
	db #c6,#02,#c8,#02,#c8,#02,#c8,#02
	db #d4,#02,#d4,#02,#e2,#02,#e2,#02
	db #e2,#02,#e3,#02,#e3,#02,#e3,#02
	db #e3,#02,#e5,#02,#d9,#02,#a9,#02
	db #9f,#02,#9d,#02,#a7,#02,#a7,#02
	db #9d,#02,#9d,#02,#9d,#02,#9d,#02
	db #a7,#02,#a7,#02,#a7,#02,#a9,#02
	db #a8,#02,#27,#a7,#ff,#9d,#02,#9d
	db #02,#a7,#02,#a7,#02,#a7,#02,#a9
	db #02,#a8,#02,#27,#c9,#ff,#9d,#02
	db #9d,#02,#a7,#02,#a7,#02,#a7,#02
	db #a9,#02,#a8,#02,#27,#85,#43,#82
	db #c1,#02,#be,#02,#bf,#02,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#bc,#02
	db #c3,#02,#c3,#02,#c3,#02,#c1,#02
	db #ba,#02,#3f,#82,#c3,#02,#c1,#02
	db #43,#82,#3e,#82,#c3,#02,#bf,#02
	db #bf,#02,#bf,#02,#3a,#82,#c1,#02
	db #c1,#02,#bf,#02,#bf,#02,#c1,#02
	db #bf,#02,#c1,#02,#bc,#02,#be,#02
	db #c1,#02,#3f,#82,#c3,#02,#bf,#02
	db #43,#82,#c3,#02,#3c,#82,#c1,#02
	db #c1,#02,#c1,#02,#c1,#02,#3c,#82
	db #c1,#02,#41,#82,#c1,#02,#41,#82
	db #41,#82,#ba,#02,#41,#82,#c1,#02
	db #ba,#02,#c1,#02,#ff,#9d,#02,#9d
	db #02,#a7,#02,#a7,#02,#a7,#02,#a9
	db #02,#a8,#02,#27,#85,#43,#82,#c1
	db #02,#be,#02,#bf,#02,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#bc,#02,#c3
	db #02,#c3,#02,#c3,#02,#c1,#02,#ba
	db #02,#3f,#82,#c3,#02,#c1,#02,#43
	db #82,#3e,#82,#c3,#02,#bf,#02,#bf
	db #02,#bf,#02,#3a,#82,#c1,#02,#c1
	db #02,#bf,#02,#bf,#02,#c1,#02,#bf
	db #02,#c1,#02,#bc,#02,#be,#02,#c1
	db #02,#3f,#82,#c3,#02,#bf,#02,#43
	db #82,#c3,#02,#3c,#82,#c1,#02,#c1
	db #02,#c1,#02,#c1,#02,#3c,#82,#c1
	db #02,#41,#82,#c1,#02,#41,#82,#41
	db #82,#ba,#02,#41,#82,#c1,#02,#ba
	db #02,#c1,#02,#ff,#b9,#f1,#01,#b9
	db #01,#b7,#01,#b7,#01,#ba,#01,#b7
	db #01,#b9,#01,#b2,#01,#b7,#01,#b9
	db #01,#b3,#01,#ba,#01,#b2,#01,#b9
	db #01,#b7,#01,#b2,#01,#bc,#01,#b3
	db #01,#ba,#01,#b9,#01,#b3,#01,#ba
	db #01,#b2,#01,#b7,#01,#b9,#01,#b3
	db #01,#b9,#01,#b7,#01,#b9,#01,#b7
	db #01,#ba,#01,#b7,#01,#ba,#01,#b2
	db #01,#b0,#01,#b3,#01,#ba,#01,#b7
	db #01,#b0,#01,#39,#82,#b9,#01,#b2
	db #01,#b7,#01,#b7,#01,#32,#84,#32
	db #83,#37,#82,#b7,#01,#b7,#01,#b0
	db #01,#b9,#01,#b2,#01,#b7,#01,#39
	db #82,#b7,#01,#b9,#01,#37,#82,#b7
	db #01,#b2,#01,#37,#82,#b7,#01,#b0
	db #01,#37,#82,#b7,#01,#b7,#01,#37
	db #82,#b2,#01,#b9,#01,#ff,#fe,#0b
	db #b3,#02,#b3,#02,#33,#82,#b3,#02
	db #b3,#02,#33,#82,#b3,#02,#b0,#02
	db #b3,#02,#b3,#02,#b3,#02,#b3,#02
	db #30,#82,#33,#82,#b0,#02,#33,#82
	db #33,#82,#b0,#02,#33,#82,#b3,#02
	db #30,#82,#b3,#02,#b0,#02,#33,#82
	db #b3,#02,#33,#82,#ae,#02,#35,#82
	db #b5,#02,#35,#82,#b5,#02,#b5,#02
	db #b5,#02,#b5,#02,#b5,#02,#b5,#02
	db #30,#82,#b3,#02,#30,#82,#b3,#02
	db #33,#82,#b3,#02,#33,#82,#33,#82
	db #30,#88,#ff
;
.music_info
	db "Cheese Cruncher 1.0 Intro (1993)(Lamer System)()",0
	db "ST-Module",0

	read "music_end.asm"
