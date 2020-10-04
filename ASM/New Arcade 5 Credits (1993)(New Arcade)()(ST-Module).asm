; Music of New Arcade 5 Credits (1993)(New Arcade)()(ST-Module)
; Ripped by Megachur the 09/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NEWAR5CR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
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
	ld a,#08
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
	dw l4606,l462a,l464e
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
	db #00,#3f,#00,#3f,#00,#3f,#00,#00
	db #00,#3f,#45,#8d,#54,#5f,#4e,#4f
	db #06,#45,#46,#45,#66,#45,#1a,#00
	db #ff,#3e,#21,#d1,#70,#9d,#23,#56
	db #86,#45,#c6,#45,#e6,#45,#08,#18
	db #fe,#3e,#ca,#3f,#98,#3d,#50,#30
	db #08,#7b,#4f,#45,#00,#2c,#b0,#18
	db #ec,#3d,#a0,#6f,#08,#15,#4d,#4f
	db #06,#3f,#af,#57,#75,#3d,#f0,#30
	db #09,#15,#e6,#c4,#66,#c4,#08,#18
	db #e6,#3e,#26,#3f,#46,#3f,#00,#00
	db #00,#b5,#00,#b5,#00,#b5,#00,#00
	db #00,#b5,#00,#b5,#00,#b5,#00,#00
	db #00,#b5,#00,#b5,#00,#b5,#00,#00
	db #00,#b5,#00,#b5,#00,#b5,#00,#00
	db #00,#b5,#00,#b5,#00,#b5,#00,#00
.l44e6
	db #06,#c5,#26,#c5,#46,#c5,#c6,#7d
	db #66,#c5,#66,#03,#86,#03,#00,#b5
	db #00,#b5,#00,#b5,#00,#b5,#00,#b5
	db #00,#b5,#00,#b5,#00,#b5,#00,#b5
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
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4606
	db #00,#72,#46,#00,#a3,#46,#00,#72
	db #46,#00,#72,#46,#00,#72,#46,#00
	db #72,#46,#00,#a3,#46,#00,#72,#46
	db #00,#72,#46,#00,#d4,#46,#00,#d8
.l462a equ $ + 4
	db #46,#80,#06,#46,#00,#e3,#46,#00
	db #e9,#46,#00,#f1,#46,#00,#f7,#46
	db #00,#03,#47,#00,#e3,#46,#00,#e9
	db #46,#00,#f1,#46,#00,#f7,#46,#00
	db #ff,#46,#00,#07,#47,#80,#2a,#46
.l464e
	db #00,#0b,#47,#00,#18,#47,#00,#27
	db #47,#00,#34,#47,#00,#44,#47,#00
	db #0b,#47,#00,#18,#47,#00,#27,#47
	db #00,#34,#47,#00,#3e,#47,#00,#48
	db #47,#80,#4e,#46,#ba,#02,#22,#82
	db #22,#82,#a2,#02,#22,#84,#16,#82
	db #ba,#02,#22,#82,#22,#82,#a2,#02
	db #22,#84,#16,#82,#ba,#02,#22,#82
	db #22,#82,#a2,#02,#22,#84,#16,#82
	db #ba,#02,#22,#82,#22,#82,#a2,#02
	db #22,#84,#16,#82,#ff,#ba,#02,#22
	db #82,#22,#82,#a2,#02,#22,#84,#16
	db #82,#ba,#02,#22,#82,#22,#82,#a2
	db #02,#22,#84,#16,#82,#ba,#02,#22
	db #82,#22,#82,#a2,#02,#22,#84,#16
	db #82,#ba,#02,#22,#82,#22,#82,#a2
	db #02,#22,#84,#16,#82,#ff,#2e,#30
	db #04,#ff,#00,#18,#2e,#14,#04,#22
	db #02,#02,#22,#82,#ff,#2e,#18,#04
	db #25,#98,#ff,#2e,#18,#04,#31,#8c
	db #30,#8c,#ff,#2e,#18,#04,#27,#98
	db #ff,#25,#18,#04,#25,#8c,#24,#8c
	db #ff,#52,#30,#04,#ff,#2e,#30,#04
	db #ff,#4e,#30,#04,#ff,#c6,#04,#c8
	db #04,#49,#92,#48,#82,#44,#82,#3d
	db #98,#ff,#c6,#04,#c8,#04,#49,#92
	db #48,#82,#44,#82,#4d,#8c,#4b,#8c
	db #ff,#c6,#04,#c8,#04,#49,#92,#48
	db #82,#44,#82,#3f,#98,#ff,#3d,#16
	db #04,#3a,#82,#41,#8c,#3f,#8c,#ff
	db #2e,#18,#04,#50,#98,#ff,#3a,#30
	db #04,#ff,#00,#18,#4d,#18,#04,#ff
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#cd,#38,#bc,#21,#a0,#47
	db #af,#f5,#e5,#46,#48,#cd,#32,#bc
	db #e1,#23,#f1,#3c,#fe,#10,#20,#f1
	db #3e,#04,#5e,#23,#56,#06,#bc,#ed
	db #59,#04,#ed,#51,#23,#3d,#20,#f2
	db #eb,#21,#00,#c0,#0e,#2a,#1a,#b9
	db #20,#10,#13,#1a,#fe,#02,#28,#09
	db #47,#13,#1a,#77,#23,#10,#fc,#18
	db #03,#79,#77,#23,#13,#7c,#b5,#20
	db #e5,#c9,#00,#0f,#19,#0e,#19,#03
	db #06,#1a,#02,#01,#17,#13,#18,#09
	db #15,#0d,#01,#1e,#02,#29,#06,#21
	db #07,#22,#2a,#40,#00,#80,#2a,#05
	db #f0,#00,#00,#80,#2a,#06,#f0,#00
	db #40,#50,#2a,#05,#f0,#a0,#a0,#80
	db #2a,#05,#f0,#a0,#00,#04,#f0,#28
	db #80,#2a,#06,#f0,#50,#00,#80,#2a
	db #05,#f0,#2a,#09,#00,#c0,#a0,#2a
	db #06,#00,#04,#48,#2a,#05,#c0,#58
	db #00,#0c,#2a,#03,#c0,#d0,#2a,#03
	db #00,#04,#d0,#2a,#04,#00,#04,#d0
	db #00,#0c,#a0,#2a,#03,#00,#0c,#58
	db #2a,#04,#00,#84,#48,#2a,#03,#c0
	db #84,#80,#2a,#07,#00,#05,#8d,#88
	db #2a,#03,#00,#44,#a8,#00,#44,#0a
	db #00,#00,#44,#8d,#02,#00,#00,#54
	db #2a,#08,#00,#0a,#2a,#04,#00,#dc
	db #41,#05,#ad,#82,#2a,#03,#00,#dc
	db #c9,#2a,#03,#00,#05,#88,#2a,#04
	db #00,#44,#0a,#82,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#ff,#00,#2a,#ff,#00
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#59,#00,#50,#50,#2a,#05
	db #f0,#a0,#a0,#d0,#2a,#07,#f0,#40
	db #2a,#07,#f0,#a0,#d0,#2a,#06,#f0
	db #50,#40,#c0,#a0,#d0,#f0,#2a,#03
	db #c0,#94,#f0,#f0,#50,#50,#2a,#05
	db #f0,#a0,#a0,#2a,#07,#00,#c0,#a0
	db #2a,#06,#00,#04,#2a,#06,#0c,#58
	db #00,#2a,#04,#0c,#58,#2a,#03,#00
	db #04,#58,#2a,#04,#00,#04,#58,#00
	db #0c,#a0,#2a,#03,#00,#0c,#58,#2a
	db #04,#00,#84,#2a,#05,#0c,#48,#2a
	db #07,#00,#54,#05,#ec,#2a,#03,#00
	db #44,#0a,#82,#cc,#0a,#2a,#03,#00
	db #cc,#c9,#00,#44,#05,#44,#2a,#05
	db #cc,#2a,#03,#88,#2a,#04,#cc,#ad
	db #01,#44,#4e,#82,#2a,#03,#00,#8d
	db #c9,#2a,#03,#00,#54,#05,#ec,#2a
	db #03,#00,#dc,#a8,#82,#2a,#ff,#00
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#ff,#00,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#59,#00,#40,#50,#2a
	db #04,#c0,#94,#a0,#a0,#d0,#2a,#05
	db #c0,#d0,#f0,#40,#e0,#2a,#05,#c0
	db #78,#a0,#d0,#2a,#05,#c0,#78,#50
	db #40,#c0,#a0,#d0,#2a,#05,#c0,#94
	db #f0,#40,#50,#2a,#04,#c0,#94,#a0
	db #a0,#2a,#07,#00,#c0,#a0,#2a,#06
	db #00,#04,#2a,#06,#0c,#00,#00,#2a
	db #03,#0c,#84,#58,#2a,#03,#00,#04
	db #58,#2a,#04,#00,#04,#58,#00,#0c
	db #28,#2a,#03,#00,#0c,#1c,#2a,#04
	db #00,#a4,#2a,#05,#0c,#48,#2a,#07
	db #00,#05,#44,#5e,#2a,#03,#fc,#0f
	db #88,#82,#8d,#88,#2a,#03,#00,#44
	db #89,#82,#44,#44,#0f,#5e,#fc,#fc
	db #ad,#4e,#00,#88,#8d,#0f,#2a,#03
	db #fc,#4e,#01,#44,#cc,#82,#2a,#03
	db #00,#cc,#c9,#2a,#03,#00,#05,#44
	db #2a,#05,#fc,#88,#02,#2a,#ff,#00
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#ff,#00,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#59,#00,#40,#14,#94
	db #2a,#03,#3c,#68,#78,#a0,#d0,#94
	db #2a,#03,#3c,#68,#94,#f0,#40,#e0
	db #94,#2a,#03,#3c,#c0,#78,#a0,#d0
	db #c0,#2a,#03,#3c,#68,#94,#f0,#14
	db #c0,#a0,#d0,#c0,#3c,#c0,#c0,#68
	db #c0,#f0,#40,#14,#94,#2a,#03,#3c
	db #c0,#78,#a0,#2a,#07,#00,#c0,#a0
	db #2a,#07,#00,#84,#48,#a0,#00,#50
	db #a0,#00,#00,#40,#48,#00,#00,#50
	db #2a,#04,#00,#d8,#2a,#05,#00,#88
	db #00,#80,#2a,#04,#00,#48,#2a,#05
	db #00,#40,#0c,#d0,#00,#e0,#0c,#80
	db #2a,#07,#00,#44,#00,#8d,#2a,#03
	db #fc,#cc,#00,#02,#8d,#c9,#2a,#03
	db #00,#88,#cc,#82,#44,#00,#8d,#2a
	db #04,#fc,#88,#00,#88,#44,#2a,#03
	db #fc,#ad,#cc,#01,#44,#cc,#02,#2a
	db #03,#00,#cc,#c9,#2a,#03,#00,#44
	db #00,#44,#cc,#5e,#fc,#4e,#88,#02
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#ff,#00,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#ff,#00,#2a,#59,#00
	db #14,#e0,#d0,#2a,#03,#f0,#b4,#d0
	db #a0,#3c,#94,#2a,#04,#f0,#94,#78
	db #14,#68,#78,#2a,#05,#f0,#a0,#3c
	db #d0,#2a,#04,#f0,#c0,#f0,#14,#84
	db #a0,#78,#f0,#f0,#68,#1c,#2a,#03
	db #f0,#14,#e0,#d0,#2a,#03,#f0,#e0
	db #d0,#a0,#2a,#07,#00,#88,#2a,#3b
	db #00,#88,#44,#5e,#ad,#4e,#00,#01
	db #00,#5e,#41,#2a,#04,#00,#cc,#00
	db #05,#00,#44,#0f,#ad,#0f,#cc,#00
	db #00,#0a,#00,#8d,#fc,#0f,#cc,#88
	db #01,#44,#00,#02,#2a,#03,#00,#0a
	db #01,#2a,#04,#00,#88,#2a,#03,#00
	db #44,#cc,#00,#02,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#ff,#00,#2a,#ff,#00
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#1e,#00,#40,#94,#2a,#04
	db #3c,#00,#00,#ac,#94,#2a,#03,#3c
	db #78,#a0,#00,#54,#48,#2a,#05,#3c
	db #78,#a0,#ac,#94,#2a,#04,#3c,#28
	db #00,#54,#48,#80,#ac,#94,#2a,#05
	db #3c,#f0,#00,#40,#94,#2a,#04,#3c
	db #2a,#08,#00,#50,#e0,#a0,#2a,#04
	db #00,#94,#a0,#e0,#d0,#2a,#04,#00
	db #c0,#d0,#50,#c0,#a0,#2a,#06,#00
	db #e0,#d0,#2a,#04,#00,#68,#78,#50
	db #84,#a0,#2a,#03,#00,#e0,#58,#2a
	db #03,#00,#50,#e0,#28,#2a,#19,#00
	db #88,#2a,#04,#00,#05,#cc,#cc,#03
	db #43,#2a,#09,#00,#05,#2a,#07,#00
	db #0a,#2a,#0a,#00,#44,#2a,#09,#00
	db #88,#2a,#05,#00,#01,#00,#5e,#01
	db #2a,#03,#00,#44,#00,#00,#54,#2a
	db #07,#00,#82,#a8,#2a,#06,#00,#02
	db #05,#00,#88,#2a,#03,#00,#a8,#01
	db #2a,#04,#00,#88,#2a,#05,#00,#01
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#ff,#00,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#ff,#00,#2a,#1f,#00
	db #a4,#a0,#2a,#04,#00,#a0,#00,#08
	db #2a,#05,#00,#50,#00,#04,#2a,#07
	db #00,#a0,#08,#2a,#05,#00,#50,#00
	db #04,#00,#28,#08,#2a,#06,#00,#50
	db #00,#a4,#a0,#2a,#04,#00,#a0,#2a
	db #07,#00,#50,#68,#a0,#2a,#04,#00
	db #c0,#a0,#a4,#d0,#2a,#03,#00,#50
	db #c0,#58,#50,#48,#a0,#2a,#06,#00
	db #e0,#d0,#2a,#04,#00,#a4,#d0,#50
	db #0c,#a0,#2a,#03,#00,#a4,#08,#2a
	db #03,#00,#50,#68,#a0,#2a,#0d,#00
	db #05,#2a,#08,#00,#a8,#00,#00,#8d
	db #fc,#88,#00,#00,#05,#2a,#08,#00
	db #a8,#2a,#04,#00,#05,#41,#00,#ec
	db #2a,#04,#00,#5e,#c9,#2a,#09,#00
	db #44,#4e,#82,#2a,#07,#00,#44,#2a
	db #04,#00,#01,#02,#00,#ec,#01,#2a
	db #03,#00,#44,#00,#00,#54,#2a,#07
	db #00,#82,#a8,#2a,#06,#00,#02,#54
	db #00,#88,#2a,#03,#00,#a8,#44,#2a
	db #04,#00,#44,#2a,#05,#00,#01,#2a
	db #ff,#00,#2a,#ff,#00,#2a,#ff,#00
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#ff,#00,#2a,#1f,#00,#a8
	db #2a,#05,#00,#50,#00,#08,#2a,#06
	db #00,#a0,#04,#2a,#07,#00,#a0,#08
	db #2a,#06,#00,#a0,#04,#00,#28,#08
	db #2a,#06,#00,#50,#00,#a8,#2a,#05
	db #00,#50,#2a,#08,#00,#c0,#a0,#2a
	db #06,#00,#04,#c0,#94,#2a,#03,#3c
	db #c0,#58,#00,#48,#c0,#2a,#03,#3c
	db #2a,#03,#00,#40,#d0,#2a,#04,#00
	db #04,#d0,#50,#0c,#a0,#2a,#03,#00
	db #84,#08,#2a,#04,#00,#84,#80,#2a
	db #0c,#00,#44,#dc,#2a,#04,#00,#44
	db #0f,#88,#00,#a8,#00,#00,#54,#ad
	db #2a,#03,#00,#05,#2a,#08,#00,#0a
	db #2a,#04,#00,#54,#41,#00,#fc,#2a
	db #04,#00,#dc,#e9,#2a,#0a,#00,#0a
	db #82,#2a,#08,#00,#cc,#cc,#89,#03
	db #02,#00,#00,#ad,#cc,#2a,#04,#00
	db #0f,#88,#54,#0f,#2a,#03,#cc,#89
	db #03,#03,#82,#ad,#4e,#2a,#03,#cc
	db #03,#03,#00,#54,#ad,#88,#2a,#03
	db #00,#fc,#cc,#2a,#05,#00,#2a,#03
	db #cc,#03,#03,#02,#2a,#ff,#00,#2a
	db #ff,#00,#2a,#ff,#00,#2a,#ff,#00
	db #2a,#ff,#00,#2a,#ff,#00,#2a,#ff
	db #00,#2a,#1b,#00
;
.music_info
	db "New Arcade 5 Credits (1993)(New Arcade)()",0
	db "ST-Module",0

	read "music_end.asm"