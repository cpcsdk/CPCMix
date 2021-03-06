; Music of Frogger (1992)(Deanysoft)()()
; Ripped by Megachur the 04/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FROGGER.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #70e0

	read "music_header.asm"

;
.play_music
;
	ld a,(l716d)
	and a
	ret nz
	ld bc,#05dc
.l70e8
	dec bc
	ld a,b
	or c
	jr nz,l70e8
	call l7267
	ld a,(l716d)
	and a
	ret z
	call l70f9
	ret
;
.init_music
.l70f9
;
	ld hl,l744b
	ld (l716e),hl
	ld hl,l766e
	ld (l7179),hl
	ld hl,l7a59
	ld (l7184),hl
	xor a
	ld (l7171),a
	ld (l717c),a
	ld (l7187),a
	ld (l716d),a
	ret
	ld hl,l719d
	call l7123
	ret
.l7120
	ld hl,l718f
.l7123
	ld e,#00
.l7125
	ld c,(hl)
	push hl
	ld a,e
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
	pop hl
	inc hl
	inc e
	ld a,#0b
	cp e
	ret z
	jr l7125
	ld a,e
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
.l716d
	db #00
.l716e
	dw l744b
.l7177 equ $ + 7
.l7176 equ $ + 6
.l7171 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l717c equ $ + 4
.l7179 equ $ + 1
.l7178
	db #00,#6e,#76,#00,#00,#00,#00,#00
.l7187 equ $ + 7
.l7184 equ $ + 4
.l7183 equ $ + 3
.l7182 equ $ + 2
.l7181 equ $ + 1
	db #00,#00,#00,#00,#59,#7a,#00,#00
.l718f equ $ + 7
.l718e equ $ + 6
.l718d equ $ + 5
.l718c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7197 equ $ + 7
.l7196 equ $ + 6
.l7195 equ $ + 5
.l7194 equ $ + 4
.l7193 equ $ + 3
.l7192 equ $ + 2
.l7191 equ $ + 1
.l7190
	db #00,#00,#00,#00,#00,#00,#38,#00
.l719d equ $ + 5
.l7199 equ $ + 1
.l7198
	db #00,#00,#00,#32,#01,#00,#00,#00
	db #00,#00,#00,#00,#38,#06,#00
.l71a7
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
.l7267
	ld ix,l716e
	ld b,#03
.l726d
	push bc
	ld a,(ix+#03)
	and a
	jr nz,l72cc
	ld l,(ix+#00)
	ld h,(ix+#01)
	inc hl
	inc hl
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld a,(hl)
	cp #ff
	jr nz,l7290
	ld a,#01	; reset music
	ld (l716d),a
	jp l7308
.l7290
	ld (ix+#02),a
	ld a,#38
	ld (l7196),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	rra
	rra
	rra
	rra
	and #0f
	ld (ix+#0a),a
	ld a,(hl)
	and #0f
	ld (ix+#04),a
	cp #01
	jp z,l73b4
	cp #02
	jp z,l73b4
	cp #05
	jp z,l73ca
	cp #06
	jp z,l740b
	cp #07
	jp z,l740b
	cp #08
	jp z,l73eb
.l72cc
	ld de,l72db
	ld l,(ix+#04)
	ld h,#00
	add hl,hl
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l72db
	inc d
	ld (hl),e
	adc e
	ld (hl),e
	sbc h
	ld (hl),e
	xor l
	ld (hl),e
	add hl,de
	ld (hl),e
	jr z,l735a
	ld l,b
	ld (hl),e
	halt
	ld (hl),e
	ld c,b
	ld (hl),e
.l72ed
	ld l,(ix+#02)
	ld h,#00
	ld de,l71a7
	add hl,hl
	add hl,de
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
.l7300
	dec (ix+#03)
	ld de,#000b
	add ix,de
.l7308
	pop bc
	dec b
	jp nz,l726d
	call l7414
	call l7120
	ret
	dec (ix+#0a)
	jr l72ed
	ld a,(ix+#05)
	xor #01
	ld (ix+#05),a
	jr z,l72ed
	dec (ix+#0a)
	jr l72ed
	ld l,(ix+#06)
	ld h,(ix+#07)
	inc hl
	ld a,(hl)
	cp #fa
	jr nz,l7338
	ld hl,l73de
	ld a,(hl)
.l7338
	ld (ix+#06),l
	ld (ix+#07),h
	ld b,a
	ld a,(ix+#08)
	add b
	ld (ix+#08),a
	jr l7300
	ld l,(ix+#06)
	ld h,(ix+#07)
	inc hl
	ld a,(hl)
	cp #fa
	jr nz,l7358
	ld hl,l7402
	ld a,(hl)
.l735a equ $ + 2
.l7358
	ld (ix+#06),l
	ld (ix+#07),h
	ld b,a
	ld a,(ix+#0a)
	add b
	ld (ix+#0a),a
	jr l7300
	dec (ix+#0a)
	dec (ix+#0a)
	ld a,#1c
	ld (l7196),a
	jp l7300
	ld a,(ix+#05)
	xor #01
	ld (ix+#05),a
	jr z,l7383
	dec (ix+#0a)
.l7383
	ld a,#1c
	ld (l7196),a
	jp l7300
	ld l,(ix+#08)
	ld h,(ix+#09)
	dec hl
	dec hl
	ld (ix+#08),l
	ld (ix+#09),h
	jp l7300
	ld l,(ix+#08)
	ld h,(ix+#09)
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	jp l7300
	ld (ix+#0a),#00
	jp l7300
.l73b4
	ld l,(ix+#02)
	ld h,#00
	ld de,l71a7
	add hl,hl
	add hl,de
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	jp l72cc
.l73ca
	ld hl,l73d6
	ld (ix+#06),l
	ld (ix+#07),h
	jp l73b4
.l73d6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l73de
	db #01,#ff,#ff,#01,#01,#ff,#ff,#01
	db #01,#ff,#ff,#01,#fa
.l73eb
	ld hl,l73f7
	ld (ix+#06),l
	ld (ix+#07),h
	jp l73b4
.l73f7
	db #01,#01,#01,#01,#00,#ff,#00,#ff
.l7402 equ $ + 3
	db #00,#ff,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#fa
.l740b
	ld a,(ix+#02)
	ld (l7195),a
	jp l72cc
.l7414
	ld a,(l7176)
	ld (l718f),a
	ld a,(l7177)
	ld (l7190),a
	ld a,(l7178)
	ld (l7197),a
	ld a,(l7181)
	ld (l7191),a
	ld a,(l7182)
	ld (l7192),a
	ld a,(l7183)
	ld (l7198),a
	ld a,(l718c)
	ld (l7193),a
	ld a,(l718d)
	ld (l7194),a
	ld a,(l718e)
	ld (l7199),a
	ret
.l744b
	db #00,#00,#00,#43,#08,#f0,#40,#04
	db #f0,#3c,#04,#f0,#48,#08,#f0,#47
	db #04,#f0,#45,#04,#f0,#43,#08,#f0
	db #48,#04,#f0,#40,#04,#f0,#3e,#10
	db #f4,#33,#40,#81,#45,#04,#f0,#41
	db #04,#f0,#3c,#04,#f0,#41,#04,#f0
	db #45,#04,#f0,#41,#04,#f0,#3c,#04
	db #f0,#41,#04,#f0,#46,#04,#f0,#46
	db #04,#f0,#45,#04,#f0,#45,#04,#f0
	db #43,#10,#f0,#46,#04,#f0,#46,#04
	db #f0,#45,#04,#f0,#45,#04,#f0,#43
	db #04,#f0,#43,#04,#f0,#48,#06,#f0
	db #48,#02,#f0,#48,#04,#f0,#46,#02
	db #f0,#48,#01,#f0,#46,#01,#f0,#45
	db #04,#f0,#43,#04,#f0,#41,#10,#f0
	db #43,#08,#f0,#40,#04,#f0,#3c,#04
	db #f0,#48,#08,#f0,#47,#04,#f0,#45
	db #04,#f0,#43,#08,#f0,#48,#04,#f0
	db #40,#04,#f0,#3e,#10,#f0,#34,#04
	db #03,#40,#02,#b0,#40,#02,#b0,#34
	db #04,#03,#40,#02,#b0,#40,#02,#b0
	db #34,#04,#03,#40,#02,#b0,#40,#02
	db #b0,#34,#04,#03,#40,#02,#b0,#40
	db #02,#b0,#34,#04,#b3,#40,#02,#b0
	db #40,#02,#b0,#34,#04,#b3,#40,#02
	db #b0,#40,#02,#b0,#34,#04,#b3,#40
	db #02,#b0,#40,#02,#b0,#34,#04,#b3
	db #40,#02,#b0,#40,#02,#b0,#45,#04
	db #e4,#41,#04,#e4,#3c,#04,#e4,#41
	db #04,#e4,#45,#04,#e4,#41,#04,#e4
	db #3c,#04,#e4,#41,#04,#e4,#46,#04
	db #e4,#46,#04,#e4,#45,#04,#e4,#45
	db #04,#e4,#43,#10,#c5,#46,#04,#e4
	db #46,#04,#e4,#45,#04,#e4,#45,#04
	db #e4,#43,#08,#c5,#48,#08,#c5,#48
	db #02,#e5,#48,#02,#a3,#46,#02,#e5
	db #46,#02,#a3,#45,#02,#e5,#45,#02
	db #a3,#43,#02,#e5,#43,#02,#a3,#41
	db #10,#e4,#3d,#40,#85,#49,#08,#f0
	db #46,#04,#f0,#47,#04,#f0,#49,#08
	db #f0,#46,#08,#f0,#44,#10,#f4,#42
	db #10,#f4,#44,#08,#f0,#44,#04,#f0
	db #46,#04,#f0,#44,#08,#f0,#3f,#08
	db #f4,#44,#20,#f4,#44,#08,#f0,#44
	db #04,#f0,#46,#04,#f0,#49,#08,#f0
	db #46,#08,#f0,#44,#10,#f4,#42,#10
	db #f4,#44,#08,#f4,#44,#04,#f4,#46
	db #04,#f4,#44,#08,#f4,#3f,#08,#f4
	db #44,#18,#c5,#44,#08,#c4,#49,#08
	db #f0,#46,#04,#f0,#47,#04,#f0,#49
	db #08,#f0,#46,#08,#f0,#44,#10,#f4
	db #42,#10,#f4,#44,#08,#f0,#44,#04
	db #f0,#46,#04,#f0,#44,#08,#f0,#42
	db #08,#f0,#3f,#18,#f4,#3d,#08,#f4
	db #44,#08,#f4,#44,#04,#f4,#46,#04
	db #f0,#49,#08,#f4,#3d,#08,#f4,#44
	db #10,#f4,#46,#08,#f4,#42,#08,#f4
	db #49,#08,#f4,#49,#04,#f0,#4b,#04
	db #f0,#49,#08,#f4,#3f,#08,#f4,#42
	db #08,#f4,#42,#14,#a5,#42,#04,#a2
	db #40,#34,#75,#41,#04,#85,#40,#04
	db #85,#3e,#04,#85,#40,#34,#75,#41
	db #04,#85,#40,#04,#85,#43,#04,#85
	db #45,#34,#75,#43,#04,#85,#41,#04
	db #85,#3e,#04,#85,#40,#34,#75,#40
	db #04,#85,#3c,#04,#85,#39,#04,#85
	db #37,#34,#75,#37,#04,#85,#39,#04
	db #85,#3b,#04,#85,#3c,#34,#75,#0b
.l766e equ $ + 3
	db #0c,#73,#ff,#00,#00,#00,#24,#40
	db #f3,#24,#04,#f0,#28,#04,#f0,#1f
	db #04,#f0,#28,#04,#f0,#24,#04,#f0
	db #28,#04,#f0,#1f,#04,#f0,#28,#04
	db #f0,#24,#04,#f0,#28,#04,#f0,#1f
	db #04,#f0,#28,#04,#f0,#24,#04,#f0
	db #28,#04,#f0,#1f,#04,#f0,#28,#04
	db #f0,#29,#04,#f0,#2d,#04,#f0,#24
	db #04,#f0,#2d,#04,#f0,#29,#04,#f0
	db #2d,#04,#f0,#24,#04,#f0,#2d,#04
	db #f0,#2b,#04,#f0,#2e,#04,#f0,#24
	db #04,#f0,#2e,#04,#f0,#2b,#04,#f0
	db #2e,#04,#f0,#24,#04,#f0,#2e,#04
	db #f0,#2b,#04,#f0,#2e,#04,#f0,#24
	db #04,#f0,#2e,#04,#f0,#2b,#04,#f0
	db #2e,#04,#f0,#24,#04,#f0,#30,#04
	db #f0,#24,#04,#f0,#25,#04,#f0,#26
	db #04,#f0,#28,#04,#f0,#29,#10,#f0
	db #30,#10,#f0,#35,#10,#f0,#30,#10
	db #f0,#37,#04,#f0,#1f,#04,#f0,#21
	db #04,#f0,#23,#04,#f0,#24,#04,#f0
	db #28,#04,#f0,#1f,#04,#f0,#28,#04
	db #f0,#24,#04,#f0,#28,#04,#f0,#1f
	db #04,#f0,#28,#04,#f0,#24,#04,#f0
	db #28,#04,#f0,#1f,#04,#f0,#28,#04
	db #f0,#24,#04,#f0,#28,#04,#f0,#1f
	db #04,#f0,#28,#04,#f0,#29,#04,#f0
	db #2d,#04,#f0,#24,#04,#f0,#2d,#04
	db #f0,#29,#04,#f0,#2d,#04,#f0,#24
	db #04,#f0,#2d,#04,#f0,#2b,#04,#f0
	db #2e,#04,#f0,#24,#04,#f0,#2e,#04
	db #f0,#2b,#04,#f0,#2e,#04,#f0,#24
	db #04,#f0,#2e,#04,#f0,#2b,#04,#f0
	db #2e,#04,#f0,#24,#04,#f0,#2e,#04
	db #f0,#2b,#04,#f0,#2e,#04,#f0,#24
	db #04,#f0,#30,#04,#f0,#30,#02,#e5
	db #30,#02,#f3,#2e,#02,#e5,#2e,#02
	db #f3,#2d,#02,#e5,#2d,#02,#f3,#2b
	db #02,#e5,#2b,#02,#f3,#29,#04,#e4
	db #29,#04,#e0,#29,#04,#e0,#29,#02
	db #e0,#29,#02,#e0,#2a,#04,#e0,#2e
	db #04,#e0,#25,#04,#e0,#2e,#04,#e0
	db #2a,#04,#e0,#2e,#04,#e0,#25,#04
	db #e0,#2e,#04,#e0,#2a,#04,#e0,#2e
	db #04,#e0,#25,#04,#e0,#2e,#04,#e0
	db #2a,#04,#e0,#2e,#04,#e0,#25,#04
	db #e0,#2e,#04,#e0,#2a,#04,#e0,#2e
	db #04,#e0,#25,#04,#e0,#2e,#04,#e0
	db #2a,#04,#e0,#2e,#04,#e0,#25,#04
	db #e0,#2e,#04,#e0,#2a,#04,#e0,#2e
	db #04,#e0,#25,#04,#e0,#2e,#04,#e0
	db #2a,#04,#e0,#2e,#04,#e0,#25,#04
	db #e0,#2e,#04,#e0,#2c,#04,#e0,#2f
	db #04,#e0,#27,#04,#e0,#2f,#04,#e0
	db #2c,#04,#e0,#2f,#04,#e0,#27,#04
	db #e0,#2f,#04,#e0,#2c,#04,#e0,#2f
	db #04,#e0,#27,#04,#e0,#2f,#04,#e0
	db #2c,#04,#e0,#2f,#04,#e0,#27,#04
	db #e0,#2f,#04,#e0,#25,#04,#e0,#2c
	db #04,#e0,#29,#04,#e0,#2c,#04,#e0
	db #25,#04,#e0,#2c,#04,#e0,#29,#04
	db #e0,#2c,#04,#e0,#2a,#04,#e0,#2e
	db #04,#e0,#25,#04,#e0,#2e,#04,#e0
	db #2a,#04,#e0,#2e,#04,#e0,#25,#04
	db #e0,#2e,#04,#e0,#2c,#04,#e0,#2f
	db #04,#e0,#2a,#04,#e0,#2f,#04,#e0
	db #29,#04,#e0,#2f,#04,#e0,#27,#04
	db #e0,#2f,#04,#e0,#25,#08,#e0,#4d
	db #08,#b8,#4b,#08,#b8,#4a,#08,#b8
	db #36,#04,#e0,#3a,#04,#e0,#31,#04
	db #e0,#3a,#04,#e0,#36,#04,#e0,#3a
	db #04,#e0,#31,#04,#e0,#3a,#04,#e0
	db #36,#04,#e0,#3a,#04,#e0,#31,#04
	db #e0,#3a,#04,#e0,#36,#04,#e0,#3a
	db #04,#e0,#31,#04,#e0,#3a,#04,#e0
	db #38,#04,#e0,#3b,#04,#e0,#33,#04
	db #e0,#3b,#04,#e0,#38,#04,#e0,#3b
	db #04,#e0,#33,#04,#e0,#3b,#04,#e0
	db #38,#04,#e0,#3b,#04,#e0,#33,#04
	db #e0,#3b,#04,#e0,#38,#04,#e0,#3b
	db #04,#e0,#33,#04,#e0,#3b,#04,#e0
	db #31,#04,#e0,#38,#04,#e0,#35,#04
	db #e0,#38,#04,#e0,#31,#04,#e0,#38
	db #04,#e0,#35,#04,#e0,#38,#04,#e0
	db #36,#04,#e0,#3a,#04,#e0,#31,#04
	db #e0,#3a,#04,#e0,#36,#04,#e0,#3a
	db #04,#e0,#31,#04,#e0,#3a,#04,#e0
	db #3d,#04,#e0,#3f,#04,#e0,#3d,#04
	db #e0,#3f,#04,#e0,#3d,#08,#e0,#31
	db #08,#f0,#36,#08,#e4,#36,#14,#a5
	db #36,#04,#a2,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
	db #04,#e0,#34,#04,#e0,#2b,#04,#e0
	db #34,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
	db #04,#e0,#2b,#04,#e0,#2d,#04,#e0
	db #2f,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
	db #04,#e0,#34,#04,#e0,#2b,#04,#e0
	db #34,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
	db #04,#e0,#30,#04,#e0,#32,#04,#e0
	db #34,#04,#e0,#35,#04,#e0,#39,#04
	db #e0,#30,#04,#e0,#39,#04,#e0,#35
	db #04,#e0,#39,#04,#e0,#30,#04,#e0
	db #39,#04,#e0,#35,#04,#e0,#39,#04
	db #e0,#30,#04,#e0,#39,#04,#e0,#35
	db #04,#e0,#35,#04,#e0,#34,#04,#e0
	db #32,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
	db #04,#e0,#34,#04,#e0,#2b,#04,#e0
	db #34,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
	db #04,#e0,#30,#04,#e0,#2f,#04,#e0
	db #2d,#04,#e0,#2b,#04,#e0,#2f,#04
	db #e0,#26,#04,#e0,#2f,#04,#e0,#2b
	db #04,#e0,#2f,#04,#e0,#26,#04,#e0
	db #2f,#04,#e0,#2b,#04,#e0,#2f,#04
	db #e0,#32,#04,#e0,#2f,#04,#e0,#37
	db #04,#e0,#2b,#04,#e0,#2d,#04,#e0
	db #2f,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#32
	db #04,#e0,#37,#04,#e0,#2b,#04,#e0
	db #34,#04,#e0,#30,#04,#e0,#34,#04
	db #e0,#2b,#04,#e0,#34,#04,#e0,#30
.l7a59 equ $ + 6
	db #04,#e0,#07,#10,#e3,#ff,#00,#00
	db #00,#0f,#40,#f3,#18,#08,#e0,#13
	db #08,#e0,#18,#08,#e0,#13,#08,#e0
	db #18,#08,#e0,#13,#08,#e0,#18,#08
	db #e0,#13,#08,#e0,#1d,#08,#e0,#18
	db #08,#e0,#1d,#08,#e0,#18,#08,#e0
	db #1f,#08,#e0,#18,#08,#e0,#1f,#08
	db #e0,#18,#08,#e0,#1f,#08,#e0,#18
	db #08,#e0,#1f,#08,#e0,#18,#08,#e0
	db #18,#04,#e0,#19,#04,#e0,#1a,#04
	db #e0,#1c,#04,#e0,#1d,#10,#e4,#4f
	db #10,#a4,#54,#10,#a4,#4f,#10,#a4
	db #53,#10,#a4,#18,#08,#f0,#13,#08
	db #f0,#18,#08,#f0,#13,#08,#f0,#18
	db #08,#f0,#13,#08,#f0,#18,#08,#f0
	db #13,#08,#f0,#1d,#08,#f0,#18,#08
	db #f0,#1d,#08,#f0,#18,#08,#f0,#1f
	db #08,#f0,#18,#08,#f0,#1f,#08,#f0
	db #18,#08,#f0,#1f,#08,#f0,#18,#08
	db #f0,#1f,#08,#f0,#18,#08,#f0,#54
	db #02,#e0,#54,#02,#f3,#52,#02,#e0
	db #52,#02,#f3,#51,#02,#e0,#51,#02
	db #f3,#4f,#02,#e0,#4f,#02,#f3,#4d
	db #10,#e4,#1e,#08,#e4,#19,#08,#e4
	db #1e,#08,#e4,#19,#08,#e4,#1e,#08
	db #e4,#19,#08,#e4,#1e,#08,#e4,#19
	db #08,#e4,#1e,#08,#e4,#19,#08,#e4
	db #1e,#08,#e4,#19,#08,#e4,#1e,#08
	db #e4,#19,#08,#e4,#1e,#08,#e4,#19
	db #08,#e4,#20,#08,#e4,#1b,#08,#e4
	db #20,#08,#e4,#1b,#08,#e4,#20,#08
	db #e4,#1b,#08,#e4,#20,#08,#e4,#1b
	db #08,#e4,#19,#08,#e4,#1d,#08,#e4
	db #19,#08,#e4,#1d,#08,#e4,#1e,#08
	db #e4,#19,#08,#e4,#1e,#08,#e4,#19
	db #08,#e4,#20,#08,#e4,#1e,#08,#e4
	db #1d,#08,#e4,#1b,#08,#e4,#19,#08
	db #e4,#50,#08,#58,#4e,#08,#58,#4d
	db #08,#58,#52,#40,#75,#53,#40,#75
	db #56,#20,#75,#50,#10,#75,#52,#10
	db #75,#56,#21,#72,#3a,#07,#e4,#3a
	db #14,#a5,#3a,#04,#a2,#24,#08,#c4
	db #1f,#08,#e4,#24,#08,#e4,#1f,#08
	db #e4,#24,#08,#e4,#1f,#08,#e4,#24
	db #04,#e4,#1f,#04,#e0,#21,#04,#e0
	db #23,#04,#e0,#24,#08,#e4,#1f,#08
	db #e4,#24,#08,#e4,#1f,#08,#e4,#24
	db #08,#e4,#1f,#08,#e4,#24,#04,#e4
	db #24,#04,#e0,#21,#04,#e0,#1f,#04
	db #e0,#1d,#08,#e4,#18,#08,#e4,#1d
	db #08,#e4,#18,#08,#e4,#1d,#08,#e4
	db #18,#08,#e4,#1d,#08,#e4,#23,#08
	db #e4,#24,#08,#e4,#1f,#08,#e4,#24
	db #08,#e4,#1f,#08,#e4,#24,#08,#e4
	db #1f,#08,#e4,#24,#08,#e4,#1f,#08
	db #e4,#1f,#08,#e4,#1a,#08,#e4,#1f
	db #08,#e4,#1a,#08,#e4,#1f,#08,#e4
	db #1a,#08,#e4,#1f,#08,#e4,#1f,#08
	db #e4,#24,#08,#e4,#1f,#08,#e4,#26
	db #08,#e4,#1f,#08,#e4,#24,#08,#e4
	db #1f,#08,#e4,#24,#08,#e4,#07,#08
	db #e3,#ff

	org #7c3d
	xor a
	ld (#7171),a
	ld (#717c),a
	ld (#7187),a
	ld (#716d),a
	ld (#716e),hl
	ld (#7179),de
	ld (#7184),bc
	ret

	db #00,#00,#00,#07,#02
	db #f5,#07,#01,#03,#07,#02,#c0,#07
	db #01,#03,#ff,#00,#00,#00,#07,#02
	db #f5,#07,#01,#03,#07,#02,#c0,#07
	db #01,#03,#ff,#00,#00,#00,#07,#02
	db #f5,#07,#01,#03,#07,#02,#c0,#07
	db #01,#03,#ff,#00,#00,#00,#58,#04
	db #a2,#03,#12,#f4,#01,#01,#03,#ff
	db #00,#00,#00,#57,#04,#a2,#09,#12
	db #f4,#01,#01,#03,#ff,#00,#00,#00
	db #12,#16,#d7,#01,#01,#03,#ff,#00
	db #00,#00,#1b,#01,#f5,#22,#01,#f5
	db #2f,#01,#c5,#44,#01,#a5,#58,#01
	db #75,#1d,#11,#03,#ff,#00,#00,#00
	db #03,#16,#03,#ff,#00,#00,#00,#01
	db #16,#b7,#ff,#00,#00,#00,#55,#04
	db #f1,#4c,#04,#f3,#53,#04,#f1,#58
	db #05,#f2,#04,#01,#03,#ff,#00,#00
	db #00,#56,#04,#f1,#4d,#04,#f3,#54
	db #04,#f1,#57,#05,#f2,#00,#01,#03
	db #ff,#00,#00,#00,#01,#12,#03,#ff
	db #00,#00,#00,#43,#08,#f0,#40,#04
	db #f0,#3c,#04,#f0,#48,#08,#f0,#47
	db #04,#f0,#45,#04,#f0,#43,#08,#f0
	db #45,#04,#f0,#47,#04,#f0,#48,#10
	db #d5,#48,#10,#b4,#00,#01,#03,#ff
	db #00,#00,#00,#24,#10,#c5,#29,#10
	db #c5,#2b,#10,#c5,#24,#10,#c5,#24
	db #08,#c0,#00,#09,#03,#ff,#00,#00
	db #00,#4f,#10,#85,#51,#10,#85,#53
	db #10,#85,#54,#10,#85,#54,#08,#a0
	db #04,#09,#03,#ff,#00,#00,#00,#43
	db #02,#f0,#44,#02,#f0,#43,#02,#f0
	db #41,#02,#f0,#3f,#02,#f0,#41,#02
	db #f0,#3e,#02,#f0,#3f,#02,#f0,#3c
	db #02,#f0,#3f,#02,#f0,#3e,#02,#f0
	db #3f,#02,#f0,#37,#02,#f0,#3c,#02
	db #f0,#3a,#02,#f0,#37,#02,#f0,#3c
	db #1a,#f4,#00,#01,#03,#ff,#00,#00
	db #00,#3c,#04,#e0,#38,#04,#e0,#37
	db #04,#e0,#35,#04,#e0,#33,#04,#e0
	db #32,#04,#e0,#2b,#04,#e0,#2f,#04
	db #e0,#30,#1a,#e4,#00,#01,#03,#ff
	db #00,#00,#00,#20,#08,#f5,#1f,#08
	db #f5,#1b,#08,#f5,#13,#08,#f5,#18
	db #1a,#f4,#00,#01,#03,#ff,#00,#00
	db #00,#3c,#01,#f0,#3d,#01,#f0,#3e
	db #01,#f0,#3f,#01,#e0,#40,#01,#d0
	db #41,#01,#c0,#42,#01,#b0,#43,#01
	db #a0,#44,#01,#90,#45,#01,#80,#46
	db #01,#70,#47,#01,#60,#48,#01,#50
	db #00,#01,#03,#ff,#00,#00,#00,#40
	db #01,#f0,#41,#01,#f0,#42,#01,#f0
	db #43,#01,#e0,#44,#01,#d0,#45,#01
	db #c0,#46,#01,#b0,#47,#01,#a0,#48
	db #01,#90,#49,#01,#80,#4a,#01,#70
	db #4b,#01,#60,#4c,#01,#50,#02,#01
	db #03,#ff,#00,#00,#00,#43,#01,#f0
	db #44,#01,#f0,#45,#01,#f0,#46,#01
	db #e0,#47,#01,#d0,#48,#01,#c0,#49
	db #01,#b0,#4a,#01,#a0,#4b,#01,#90
	db #4c,#01,#80,#4d,#01,#70,#4e,#01
	db #60,#4f,#01,#50,#04,#01,#03,#ff
	db #00,#00,#00,#30,#02,#f0,#2b,#02
	db #f0,#30,#02,#f0,#32,#02,#f0,#34
	db #02,#f0,#30,#02,#f0,#34,#02,#f0
	db #35,#02,#f0,#37,#02,#f0,#34,#02
	db #f0,#37,#02,#f0,#38,#02,#f0,#39
	db #02,#f0,#35,#02,#f0,#37,#02,#f0
	db #35,#02,#f0,#39,#02,#f0,#35,#02
	db #f0,#37,#02,#f0,#35,#02,#f0,#3b
	db #02,#f0,#37,#02,#f0,#39,#02,#f0
	db #3b,#02,#f0,#3c,#10,#f4,#00,#01
	db #03,#ff,#00,#00,#00,#24,#04,#d0
	db #26,#04,#d0,#28,#08,#d0,#28,#04
	db #d0,#2c,#04,#d0,#2d,#08,#d0,#2d
	db #08,#d0,#2f,#08,#d0,#30,#10,#d4
	db #00,#01,#03,#ff,#00,#00,#00,#18
	db #08,#d4,#1c,#08,#d4,#1c,#08,#d4
	db #1d,#08,#d4,#1d,#08,#d4,#1f,#08
	db #d4,#18,#10,#d4,#00,#01,#03,#ff
	db #00,#00,#00,#24,#08,#f0,#26,#02
	db #f0,#27,#06,#f0,#24,#06,#f0,#2a
	db #0a,#e5,#2a,#10,#e0,#07,#01,#03
	db #ff,#00,#00,#00,#18,#08,#f0,#1a
	db #02,#f0,#1b,#06,#f0,#18,#06,#f0
	db #1e,#0a,#e5,#1e,#10,#e0,#04,#01
	db #03,#ff,#00,#00,#00,#43,#16,#03
	db #4e,#0a,#a5,#4e,#10,#a0,#00,#01
	db #03,#ff,#00,#00,#00,#48,#01,#f0
	db #4c,#01,#f0,#4f,#01,#f0,#48,#01
	db #a0,#4c,#01,#90,#4f,#01,#80,#48
	db #01,#70,#4c,#01,#60,#4f,#01,#50
	db #48,#01,#03,#ff,#00,#00,#00,#43
	db #01,#f0,#48,#01,#f0,#4c,#01,#f0
	db #43,#01,#a0,#48,#01,#90,#4c,#01
	db #80,#43,#01,#70,#48,#01,#60,#4c
	db #01,#50,#48,#01,#03,#ff,#00,#00
	db #00,#4c,#01,#f0,#4f,#01,#f0,#54
	db #01,#f0,#4c,#01,#a0,#4f,#01,#90
	db #54,#01,#80,#4c,#01,#70,#4f,#01
	db #60,#54,#01,#50,#48,#01,#03,#ff
	db #00,#00,#00,#0c,#1b,#03,#ff,#00
	db #00,#00,#0e,#1b,#03,#ff,#00,#00
	db #00,#00,#01,#67,#00,#01,#77,#00
	db #01,#87,#00,#01,#97,#00,#01,#a7
	db #00,#01,#b7,#00,#01,#97,#00,#01
	db #87,#00,#01,#77,#00,#01,#57,#00
	db #01,#67,#00,#01,#77,#00,#01,#87
	db #00,#01,#97,#00,#01,#a7,#00,#01
	db #b7,#00,#01,#c7,#00,#01,#d7,#00
	db #01,#a7,#00,#01,#97,#00,#01,#87
	db #00,#01,#77,#00,#01,#67,#00,#01
	db #57,#00,#01,#47,#00,#01,#03,#ff
	db #00,#00,#00,#27,#02,#f5,#27,#01
	db #c3,#27,#06,#f5,#24,#01,#03,#ff
	db #00,#00,#00,#29,#02,#f5,#29,#01
	db #c3,#29,#06,#f5,#26,#01,#03,#ff
	db #00,#00,#00,#00,#0a,#03,#ff,#00
	db #00
; #032d
; call #70f9
; #1987
; call #70e0
;
.music_info
	db "Frogger (1992)(Deanysoft)()",0
	db "",0

	read "music_end.asm"
