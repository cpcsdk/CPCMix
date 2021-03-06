; Music of Merry Christmas From Maniac (1995)(PD)()(ST-Module)
; Ripped by Megachur the 18/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MERRYCFM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #1fa7

	read "music_header.asm"

	jp l1fb2	; init
	jp l203a	; play
	jp l201e
	db #66,#04
;
.init_music
.l1fb2
;
	ld b,#03
	ld ix,l2381
	ld iy,l22ad
	ld de,#001c
.l1fbf
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
	djnz l1fbf
	ld a,#06
	ld (l2062),a
	ld a,d
	ld (l2076),a
	inc a
	ld (l205d),a
	ld a,#38
	ld (l2067),a
	ld a,#ff
	ld (l22a9),a
	ld (l22aa),a
	ld (l22ab),a
	ld (l22ac),a
	ld a,#0c
	ld c,d
	call l228b
	ld a,#0d
	ld c,d
	jp l228b
;
.stop_music
.l201e
;
	ld a,#07
	ld c,#3f
	call l228b
	ld a,#08
	ld c,#00
	call l228b
	ld a,#09
	ld c,#00
	call l228b
	ld a,#0a
	ld c,#00
	jp l228b
;
.play_music
.l203a
;
	ld hl,l205d
	dec (hl)
	ld ix,l2381
	ld bc,l238f
	call l20f0
	ld ix,l239d
	ld bc,l23ab
	call l20f0
	ld ix,l23b9
	ld bc,l23c7
	call l20f0
.l205d equ $ + 1
	ld a,#00
	or a
	jr nz,l2066
.l2062 equ $ + 1
	ld a,#00
	ld (l205d),a
.l2067 equ $ + 1
.l2066
	ld a,#00
	ld hl,l22aa
	cp (hl)
	jr z,l2075
	ld (hl),a
	ld c,a
	ld a,#07
	call l228b
.l2076 equ $ + 1
.l2075
	ld a,#00
	ld hl,l22a9
	cp (hl)
	jr z,l2084
	ld (hl),a
	ld c,a
	ld a,#06
	call l228b
.l2085 equ $ + 1
.l2084
	ld a,#00
	ld hl,l22ab
	cp (hl)
	jr z,l2093
	ld (hl),a
	ld c,a
	ld a,#0b
	call l228b
.l2094 equ $ + 1
.l2093
	ld a,#00
	ld hl,l22ac
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l228b
.l20a1
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l21a1
.l20b0
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
	jp l228b
.l20ca
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l20df
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l20df
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l2103
.l20f0
	ld a,(l205d)
	or a
	jp nz,l21a1
	dec (ix+#06)
	jp nz,l21a1
	ld l,(ix+#00)
	ld h,(ix+#01)
.l2103
	ld a,(hl)
	or a
	jr z,l20a1
	cp #fe
	jr z,l20b0
	cp #ff
	jr z,l20ca
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l22b3
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l213f
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l213f
	and #7f
	ld (ix+#06),a
	jr l2192
.l213f
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l2153
	ld (ix+#05),a
	ld (ix+#0a),d
.l2153
	add a
	add a
	add a
	ld e,a
	ld hl,l23e9
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
	jr z,l2192
	cp #f0
	jp z,l2247
	cp #d0
	jp z,l2263
	cp #b0
	jp z,l226b
	cp #80
	jp nc,l2273
	cp #10
	jr nz,l2192
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l2192
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l21a1
	ld a,(ix+#17)
	or a
	jr nz,l21b5
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l21b5
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l21e0
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l22b3
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l21e0
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
	call l228b
	ld c,h
	ld a,(ix+#03)
	call l228b
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l221e
	and #0f
	sub (ix+#0a)
	jr nc,l2214
	xor a
.l2214
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l228b
.l221e
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
	jr z,l223b
	ld b,a
	ld a,c
	ld (l2076),a
	ld a,b
	sub #40
.l223b
	ld (l2242),a
	ld a,(l2067)
.l2242 equ $ + 1
	bit 0,a
	ld (l2067),a
	ret
.l2247
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l2469
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l2192
.l2263
	inc hl
	ld a,(hl)
	ld (l2062),a
	jp l2192
.l226b
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l2192
.l2273
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l2094),a
	inc hl
	ld a,(hl)
	ld (l2085),a
	jp l2192
.l228b
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
.l22ac equ $ + 3
.l22ab equ $ + 2
.l22aa equ $ + 1
.l22a9
	db #ff,#ff,#ff,#ff
.l22ad
	dw l2709,l272a,l274b
.l22b3
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
.l2381 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l238f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l239d
	db #00,#00,#02,#03,#09,#00,#00,#00
.l23ab equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l23b9 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l23c7 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l23e9
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #89,#24,#c9,#24,#e9,#24,#00,#00
	db #25,#92,#21,#f3,#a3,#20,#00,#ff
	db #db,#3e,#fd,#d0,#4c,#9d,#23,#56
	db #09,#25,#49,#25,#69,#25,#00,#00
	db #da,#3e,#a6,#3f,#74,#3d,#50,#30
	db #89,#25,#c9,#25,#e9,#25,#00,#00
	db #09,#25,#09,#26,#29,#26,#18,#07
	db #e2,#3e,#8b,#57,#51,#3d,#f0,#30
	db #49,#26,#89,#26,#a9,#26,#08,#18
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
.l2469
	db #dc,#3e,#c9,#26,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#e9,#26,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0d,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #24,#00,#18,#24,#00,#18,#24,#00
	db #18,#24,#00,#18,#24,#00,#18,#24
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
.l2709
	db #00,#6c,#27,#00,#78,#27,#00,#6c
	db #27,#00,#78,#27,#00,#86,#27,#00
	db #e4,#27,#00,#41,#28,#00,#9f,#28
	db #00,#fc,#28,#00,#53,#29,#80,#15
.l272a equ $ + 1
	db #27,#00,#b4,#29,#00,#d7,#29,#00
	db #b4,#29,#00,#1a,#2a,#00,#f6,#29
	db #00,#39,#2a,#00,#59,#2a,#00,#8b
	db #2a,#00,#b3,#2a,#00,#14,#2b,#80
.l274b equ $ + 2
	db #36,#27,#00,#6b,#2b,#00,#6e,#2b
	db #00,#71,#2b,#00,#2d,#2c,#00,#cc
	db #2b,#00,#8e,#2c,#00,#ef,#2c,#00
	db #8e,#2c,#00,#50,#2d,#00,#b1,#2d
	db #80,#57,#27,#00,#04,#2e,#0c,#09
	db #33,#8c,#30,#8c,#35,#88,#ff,#35
	db #04,#09,#32,#8c,#37,#8c,#33,#88
	db #35,#84,#2e,#88,#ff,#3a,#03,#04
	db #ba,#04,#ba,#01,#ae,#09,#ba,#04
	db #ae,#09,#ba,#06,#ae,#09,#ba,#01
	db #ae,#09,#ba,#04,#ba,#01,#ae,#09
	db #ba,#04,#ba,#01,#b3,#09,#ba,#04
	db #b3,#09,#ba,#06,#ba,#04,#ba,#01
	db #b3,#09,#ba,#04,#ba,#01,#b3,#09
	db #ba,#04,#ba,#01,#b0,#09,#ba,#04
	db #b0,#09,#ba,#06,#ba,#04,#ba,#01
	db #b0,#09,#ba,#04,#ba,#01,#b0,#09
	db #ba,#04,#ba,#01,#b5,#09,#ba,#04
	db #b5,#09,#ba,#06,#ba,#04,#ba,#01
	db #b5,#09,#ff,#3a,#03,#04,#ba,#04
	db #b2,#09,#b2,#09,#ba,#04,#b2,#09
	db #ba,#06,#b2,#09,#ba,#01,#b2,#09
	db #ba,#04,#ba,#01,#b2,#09,#ba,#04
	db #ba,#01,#b3,#09,#ba,#04,#b3,#09
	db #ba,#06,#ba,#04,#ba,#01,#b3,#09
	db #ba,#04,#ba,#01,#b3,#09,#ba,#04
	db #ba,#01,#b7,#09,#ba,#01,#ba,#01
	db #ba,#04,#ba,#01,#b0,#09,#ba,#04
	db #ba,#01,#b5,#09,#ba,#04,#b5,#09
	db #ae,#09,#ba,#04,#ae,#09,#ba,#06
	db #ba,#04,#ba,#01,#2e,#02,#09,#ff
	db #3a,#03,#04,#ba,#04,#ba,#01,#ae
	db #09,#ba,#04,#ae,#09,#ba,#06,#ae
	db #09,#ba,#01,#ae,#09,#ba,#04,#ba
	db #01,#ae,#09,#ba,#04,#ba,#01,#b3
	db #09,#ba,#04,#b3,#09,#ba,#06,#ba
	db #04,#ba,#01,#b3,#09,#ba,#04,#ba
	db #01,#b3,#09,#ba,#04,#ba,#01,#b0
	db #09,#ba,#04,#b0,#09,#ba,#06,#ba
	db #04,#ba,#01,#b0,#09,#ba,#04,#ba
	db #01,#b0,#09,#ba,#04,#ba,#01,#b5
	db #09,#ba,#04,#b5,#09,#ba,#06,#ba
	db #04,#ba,#01,#b5,#09,#ff,#3a,#03
	db #04,#ba,#04,#b2,#09,#b2,#09,#ba
	db #04,#b2,#09,#ba,#06,#b2,#09,#ba
	db #01,#b2,#09,#ba,#04,#ba,#01,#b2
	db #09,#ba,#04,#ba,#01,#b3,#09,#ba
	db #04,#b3,#09,#ba,#06,#ba,#04,#ba
	db #01,#b3,#09,#ba,#04,#ba,#01,#b3
	db #09,#ba,#04,#ba,#01,#b7,#09,#ba
	db #01,#ba,#01,#ba,#04,#ba,#01,#b0
	db #09,#ba,#04,#ba,#01,#b5,#09,#ba
	db #04,#b5,#09,#ae,#09,#ba,#04,#ae
	db #09,#ba,#06,#ba,#04,#ba,#01,#2e
	db #02,#09,#ff,#00,#01,#ba,#04,#ba
	db #01,#ba,#04,#ba,#01,#3a,#02,#04
	db #ba,#04,#ba,#06,#ba,#04,#ba,#01
	db #3a,#02,#04,#3a,#02,#01,#ba,#04
	db #ba,#01,#3a,#02,#04,#ba,#04,#ba
	db #06,#ba,#04,#ba,#01,#3a,#02,#04
	db #3a,#02,#01,#ba,#04,#ba,#01,#3a
	db #02,#04,#ba,#04,#ba,#06,#ba,#04
	db #ba,#01,#3a,#02,#04,#3a,#02,#01
	db #ba,#04,#ba,#01,#3a,#02,#04,#ba
	db #04,#ba,#06,#ba,#04,#ba,#01,#ba
	db #04,#ff,#b5,#19,#b9,#09,#bc,#09
	db #b9,#09,#b2,#09,#b6,#09,#b9,#09
	db #b6,#09,#b2,#09,#b6,#09,#b9,#09
	db #b6,#09,#b2,#09,#b6,#09,#b9,#09
	db #b6,#09,#ab,#09,#ae,#09,#b7,#09
	db #ab,#09,#ae,#09,#b7,#09,#ab,#09
	db #ae,#09,#b7,#09,#ab,#09,#ae,#09
	db #b7,#09,#b3,#09,#b7,#09,#b3,#09
	db #b7,#09,#ba,#09,#b7,#09,#b3,#09
	db #b7,#09,#b5,#09,#b9,#09,#bc,#09
	db #b9,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ff,#35,#04,#17,#3a,#04
	db #07,#3a,#82,#3c,#82,#3a,#82,#39
	db #82,#37,#84,#37,#84,#37,#84,#3c
	db #84,#3c,#82,#3e,#82,#3c,#82,#3a
	db #82,#39,#84,#39,#84,#ff,#39,#04
	db #17,#3e,#04,#07,#3e,#82,#3f,#82
	db #3e,#82,#3c,#82,#3a,#84,#3a,#84
	db #35,#82,#35,#82,#37,#84,#3a,#84
	db #39,#84,#3a,#88,#ff,#35,#04,#f7
	db #06,#3a,#04,#07,#3a,#82,#3c,#82
	db #3a,#82,#39,#82,#37,#84,#37,#84
	db #37,#84,#3c,#84,#3c,#82,#3e,#82
	db #3c,#82,#3a,#82,#39,#84,#39,#84
	db #ff,#39,#04,#17,#3e,#04,#07,#3e
	db #82,#3f,#82,#3e,#82,#3c,#82,#3a
	db #84,#3a,#84,#35,#82,#35,#82,#37
	db #84,#3a,#84,#39,#84,#3a,#88,#ff
	db #39,#04,#f7,#06,#3e,#04,#07,#3e
	db #82,#3f,#82,#3e,#82,#3c,#82,#3a
	db #84,#3a,#84,#35,#82,#35,#82,#37
	db #84,#3a,#84,#39,#84,#3a,#88,#ff
	db #35,#04,#f7,#01,#3a,#02,#07,#39
	db #82,#3a,#82,#3c,#82,#3a,#82,#39
	db #82,#37,#82,#35,#82,#33,#82,#32
	db #82,#30,#82,#37,#82,#3c,#82,#3b
	db #82,#3c,#82,#3e,#82,#3c,#82,#3a
	db #82,#39,#82,#37,#82,#35,#82,#34
	db #82,#ff,#33,#04,#f7,#01,#3e,#04
	db #07,#3e,#82,#3f,#82,#3e,#82,#3c
	db #82,#3a,#82,#39,#82,#37,#82,#35
	db #82,#33,#82,#32,#82,#33,#84,#3a
	db #84,#39,#84,#3a,#82,#35,#82,#2e
	db #84,#ff,#c6,#19,#ca,#09,#cd,#09
	db #ca,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#c1,#09,#c5,#09,#c8,#09
	db #c5,#09,#c1,#09,#c5,#09,#c8,#09
	db #c5,#09,#ff,#00,#01,#ba,#04,#ba
	db #01,#ba,#04,#ba,#01,#3a,#02,#04
	db #ba,#04,#ba,#06,#ba,#04,#ba,#01
	db #3a,#02,#04,#3a,#02,#01,#ba,#04
	db #ba,#01,#3a,#02,#04,#ba,#04,#ba
	db #06,#ba,#04,#ba,#01,#3a,#02,#04
	db #3a,#02,#01,#ba,#04,#ba,#01,#3a
	db #02,#04,#ba,#04,#ba,#06,#ba,#04
	db #ba,#01,#3a,#02,#04,#3a,#02,#01
	db #ba,#04,#ba,#01,#3a,#02,#04,#ba
	db #04,#ba,#06,#ba,#04,#ba,#01,#ba
	db #04,#ff,#00,#30,#ff,#00,#30,#ff
	db #00,#04,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#ba,#09,#be,#09,#c1,#09
	db #be,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bf,#09,#c3,#09,#c6,#09
	db #c3,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#bc,#09,#c0,#09,#c3,#09
	db #c0,#09,#c1,#09,#c5,#09,#c8,#09
	db #c5,#09,#c1,#09,#c5,#09,#c8,#09
	db #c5,#09,#ff,#c6,#09,#ca,#09,#cd
	db #09,#ca,#09,#ba,#09,#be,#09,#c1
	db #09,#be,#09,#ba,#09,#be,#09,#c1
	db #09,#be,#09,#ba,#09,#be,#09,#c1
	db #09,#be,#09,#bf,#09,#c3,#09,#c6
	db #09,#c3,#09,#bf,#09,#c3,#09,#c6
	db #09,#c3,#09,#bf,#09,#c3,#09,#c6
	db #09,#c3,#09,#bc,#09,#c0,#09,#c3
	db #09,#c0,#09,#bc,#09,#c0,#09,#c3
	db #09,#c0,#09,#bc,#09,#c0,#09,#c3
	db #09,#c0,#09,#c1,#09,#c5,#09,#c8
	db #09,#c5,#09,#c1,#09,#c5,#09,#c8
	db #09,#c5,#09,#ff,#c1,#09,#c5,#09
	db #c8,#09,#c5,#09,#be,#09,#c2,#09
	db #c5,#09,#c2,#09,#be,#09,#c2,#09
	db #c5,#09,#c2,#09,#be,#09,#c2,#09
	db #c5,#09,#c2,#09,#b7,#09,#ba,#09
	db #c3,#09,#b7,#09,#ba,#09,#c3,#09
	db #b7,#09,#ba,#09,#c3,#09,#b7,#09
	db #ba,#09,#c3,#09,#bf,#09,#c3,#09
	db #bf,#09,#c3,#09,#c6,#09,#c3,#09
	db #bf,#09,#c3,#09,#c1,#09,#c5,#09
	db #c8,#09,#c5,#09,#c6,#09,#ca,#09
	db #cd,#09,#ca,#09,#c6,#09,#ca,#09
	db #cd,#09,#ca,#09,#ff,#c1,#09,#c5
	db #09,#c8,#09,#c5,#09,#be,#09,#c2
	db #09,#c5,#09,#c2,#09,#be,#09,#c2
	db #09,#c5,#09,#c2,#09,#be,#00,#00
;
.music_info
	db "Merry Christmas From Maniac (1995)(PD)()",0
	db "ST-Module",0

	read "music_end.asm"
