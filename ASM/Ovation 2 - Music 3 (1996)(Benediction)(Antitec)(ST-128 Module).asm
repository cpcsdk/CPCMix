; Music of Ovation 2 - Music 3 (1996)(Benediction)(Antitec)(ST-128 Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OVATI2M3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jr l8004
	jr l8013
.l8004
	call l8037
	ld hl,l8024
	ld de,l801c
	ld bc,l81ff
	jp #bcd7
.l8013
	ld hl,l8024
	call #bcdd
	jp l80af
.l801c
	push ix
	call l80cb
	pop ix
	ret
.l8024
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l8037
	jp l80cb
	jp l80af
;
.init_music
.l8037
;
	xor a
	ld hl,l85e2
	call l80a8
	ld hl,l8610
	call l80a8
	ld hl,l863e
	call l80a8
	ld ix,l85de
	ld iy,l8668
	ld de,#002e
	ld b,#03
.l8057
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l8057
	ld hl,l84f7
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l84f3),hl
	ld (l84f5),hl
	ld a,#0c
	ld c,d
	call l84d3
	ld a,#0d
	ld c,d
	jp l84d3
.l80a8
	ld b,#2a
.l80aa
	ld (hl),a
	inc hl
	djnz l80aa
	ret
;
.stop_music
.l80af
;
	ld a,#07
	ld c,#3f
	call l84d3
	ld a,#08
	ld c,#00
	call l84d3
	ld a,#09
	ld c,#00
	call l84d3
	ld a,#0a
	ld c,#00
	jp l84d3
;
.play_music
.l80cb
;
	ld hl,l84f9
	dec (hl)
	ld ix,l85de
	ld bc,l85ec
	call l816d
	ld ix,l860c
	ld bc,l861a
	call l816d
	ld ix,l863a
	ld bc,l8648
	call l816d
	ld hl,l84f2
	ld de,l84f9
	ld b,#06
	call l814a
	ld b,#07
	call l814a
	ld b,#0b
	call l814a
	ld b,#0d
	call l814a
	ld de,l84f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l85fd
	call l8123
	ld hl,l862b
	call l8123
	ld hl,l8659
.l8123
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l8138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l8138
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l814a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l84d3
.l8155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l84d3
.l816d
	ld a,(l84f9)
	or a
	jp nz,l8225
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l8225
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8155
	or a
	jp z,l821a
	ld r,a
	and #7f
	cp #10
	jr c,l81f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l836d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l81ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l81ce
	rrca
	ld c,a
	ld hl,l866e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l81ed
	ld (ix+#1e),b
.l81ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l820e
.l81f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l84fe
.l81ff
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l820e
	ld a,d
	or a
	jr nz,l821c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l821c
.l821a
	ld a,(hl)
	inc hl
.l821c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l8225
	ld a,(ix+#17)
	or a
	jr nz,l823b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l823b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8251
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8251
	ld a,(ix+#0d)
	or a
	jr z,l825f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l827d
.l825f
	ld a,(ix+#1a)
	or a
	jp z,l8284
	ld c,a
	cp #03
	jr nz,l826c
	xor a
.l826c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l827d
	ld a,(ix+#18)
	dec c
	jr z,l827d
	ld a,(ix+#19)
.l827d
	add (ix+#07)
	ld b,d
	call l836d
.l8284
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l82ac
	dec (ix+#1b)
	jr nz,l82ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l82e4
.l82ac
	ld a,(ix+#29)
	or a
	jr z,l82e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l82db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l82d2
	ld (ix+#29),#ff
	jr l82db
.l82d2
	cp (ix+#2b)
	jr nz,l82db
	ld (ix+#29),#01
.l82db
	ld b,d
	or a
	jp p,l82e1
	dec b
.l82e1
	ld c,a
	jr l82ef
.l82e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l82ef
	pop hl
	bit 7,(ix+#14)
	jr z,l82f8
	ld h,d
	ld l,d
.l82f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l84d3
	ld c,h
	ld a,(ix+#02)
	call l84d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l834b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l833a
	dec (ix+#09)
	jr nz,l833a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8332
	xor a
	jr l8337
.l8332
	cp #10
	jr nz,l8337
	dec a
.l8337
	ld (ix+#1e),a
.l833a
	ld a,b
	sub (ix+#1e)
	jr nc,l8341
	xor a
.l8341
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l84d3
.l834b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l84fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l8369
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l8369
	ld (l84fa),hl
	ret
.l836d
	ld hl,l851c
	cp #61
	jr nc,l8377
	add a
	ld c,a
	add hl,bc
.l8377
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l84a6
	ld (ix+#1e),a
	jp l820e
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l839f
	neg
.l839f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l820e
	dec b
	jr l83b9
	inc b
.l83b9
	call l84a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l820e
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l848b
	ld a,(hl)
	inc hl
	or a
	jr z,l83fb
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l83fb
	ld (ix+#29),a
	jp l820e
	dec hl
	ld a,(hl)
	and #0f
	ld (l84fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l84fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l820e
	ld a,(hl)
	or a
	jr z,l842c
	call l84a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l820e
.l842c
	ld hl,#0101
	ld (l84f8),hl
	jp l820e
	call l84a6
	ld (ix+#1e),a
	jp l820e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l84b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l84b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l820e
	ld a,(hl)
	inc hl
	ld (l84f7),a
	jp l820e
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l820e
	call l84a6
	add a
.l848b
	ld b,#00
	ld c,a
	push hl
	ld hl,l86ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	db #7e,#dd,#77,#0d,#e1,#dd,#70,#06
	db #dd,#70,#1a,#c3,#0e
	add d
.l84a6
	ld a,(hl)
	inc hl
.l84a8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l84b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l866e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	db #c9,#53,#54,#2d,#31,#32,#38,#20
	db #4d,#6f,#64
.l84d3 equ $ + 3
	dw #6c75,#f365,#f406,#79ed
	dw #f606,#78ed,#c0f6,#79ed
	dw #3fe6,#79ed,#f406,#49ed
	dw #f606,#f64f,#ed80
.l84f5 equ $ + 7
.l84f3 equ $ + 5
.l84f2 equ $ + 4
	dw #ed79,#fb49,#00c9,#0000
.l84fd equ $ + 7
.l84fc equ $ + 6
.l84fa equ $ + 4
.l84f9 equ $ + 3
.l84f8 equ $ + 2
.l84f7 equ $ + 1
	dw #0000,#0000,#3800,#0000
.l84fe
	dw #8381,#8394,#8393,#83b8
	dw #83b5,#83c8,#83d9,#8401
	dw #841b,#8401,#8435,#843e
.l851c equ $ + 6
	dw #8460,#8468,#8487,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#26,#00,#24,#00
	db #22,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
.l85de equ $ + 6
	db #11,#00,#10,#00,#0f,#00,#08,#00
.l85e2 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l85ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l860c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l8610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l861a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l863e equ $ + 6
.l863a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8648
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8659 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l866e equ $ + 6
.l8668
	db #8e,#89,#b2,#89,#d6,#89,#ff,#bf
	db #00,#c0,#00,#c0,#00,#00,#0e,#87
	db #4e,#87,#6e,#87,#00,#00,#ff,#bf
	db #00,#c0,#00,#c0,#00,#00,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#ff,#0e,#07
	db #4e,#07,#6e,#07,#00,#00,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#ff,#8e,#87
	db #ce,#87,#ee,#87,#00,#00,#0e,#88
	db #4e,#88,#6e,#87,#18,#07,#6e,#88
	db #ae,#88,#6e,#87,#18,#07,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#ff,#0e,#07
	db #ae,#08,#2e,#08,#08,#00,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#ff,#ff,#bf
	db #00,#c0,#00,#c0,#00,#00,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#ff,#ce,#88
	db #0e,#89,#2e,#89,#00,#00,#00,#c0
.l86ee equ $ + 6
	db #ff,#bf,#ff,#bf,#ff,#ff,#4e,#89
	db #6e,#89,#00,#c0,#00,#c0,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#bf,#ff,#bf
	db #00,#c0,#00,#c0,#00,#c0,#00,#c0
	db #ff,#bf,#ff,#bf,#ff,#bf,#00,#00
	db #fd,#ff,#fa,#ff,#fd,#ff,#00,#00
	db #03,#00,#06,#00,#03,#00,#00,#00
	db #fd,#ff,#fa,#ff,#fd,#ff,#00,#00
	db #03,#00,#06,#00,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0d
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#00,#00,#00,#05,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#07,#09,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#09,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fa
	db #89,#00,#29,#8a,#00,#29,#8a,#00
	db #58,#8a,#00,#58,#8a,#00,#29,#8a
	db #00,#29,#8a,#00,#58,#8a,#00,#58
	db #8a,#00,#87,#8a,#00,#ad,#8a,#80
	db #8e,#89,#00,#d4,#8a,#00,#d4,#8a
	db #00,#d4,#8a,#00,#35,#8b,#00,#35
	db #8b,#00,#d4,#8a,#00,#d4,#8a,#00
	db #35,#8b,#00,#35,#8b,#00,#96,#8b
	db #00,#f7,#8b,#80,#b2,#89,#00,#58
	db #8c,#00,#5b,#8c,#00,#5b,#8c,#00
	db #c4,#8c,#00,#c4,#8c,#00,#5b,#8c
	db #00,#5b,#8c,#00,#c4,#8c,#00,#c4
	db #8c,#00,#2d,#8d,#00,#96,#8d,#80
	db #d6,#89,#49,#7f,#20,#49,#70,#02
	db #4c,#70,#02,#50,#70,#04,#4e,#70
	db #06,#4e,#70,#06,#d0,#70,#ce,#70
	db #50,#70,#0a,#45,#70,#02,#45,#70
	db #02,#47,#70,#02,#49,#70,#04,#4c
	db #70,#04,#4c,#70,#06,#4b,#70,#0a
	db #ff,#49,#7f,#21,#49,#70,#02,#4c
	db #70,#02,#50,#70,#04,#4e,#70,#06
	db #4e,#70,#06,#d0,#70,#ce,#70,#50
	db #70,#0a,#45,#70,#02,#45,#70,#02
	db #47,#70,#02,#49,#70,#04,#4c,#70
	db #04,#4c,#70,#06,#4b,#70,#0a,#ff
	db #49,#7f,#41,#42,#70,#04,#45,#70
	db #06,#c4,#70,#c2,#70,#44,#70,#0a
	db #3d,#70,#02,#3d,#70,#02,#40,#70
	db #02,#44,#70,#04,#45,#70,#04,#45
	db #70,#06,#44,#70,#0c,#44,#70,#02
	db #45,#70,#02,#47,#70,#02,#ff,#49
	db #7f,#21,#4b,#70,#02,#4c,#70,#02
	db #50,#70,#04,#4e,#70,#02,#4e,#70
	db #16,#4e,#70,#02,#50,#70,#02,#51
	db #70,#02,#55,#70,#04,#d3,#70,#d5
	db #70,#53,#70,#12,#ff,#49,#7f,#21
	db #4c,#70,#02,#50,#70,#02,#53,#70
	db #06,#d1,#70,#d0,#70,#51,#70,#12
	db #4c,#70,#02,#4e,#70,#02,#50,#70
	db #02,#57,#70,#06,#d5,#70,#d3,#70
	db #55,#70,#12,#ff,#31,#10,#02,#3d
	db #10,#02,#31,#10,#02,#3d,#10,#02
	db #31,#10,#02,#3d,#10,#02,#31,#10
	db #02,#3d,#10,#02,#31,#10,#02,#3d
	db #10,#02,#31,#10,#02,#3d,#10,#02
	db #31,#10,#02,#3d,#10,#02,#2f,#10
	db #02,#3b,#10,#02,#2d,#10,#02,#39
	db #10,#02,#2d,#10,#02,#39,#10,#02
	db #2d,#10,#02,#39,#10,#02,#2d,#10
	db #02,#39,#10,#02,#2f,#10,#02,#3b
	db #10,#02,#2f,#10,#02,#3b,#10,#02
	db #2f,#10,#02,#3b,#10,#02,#2f,#10
	db #02,#3b,#10,#02,#ff,#2a,#10,#02
	db #36,#10,#02,#2a,#10,#02,#36,#10
	db #02,#2d,#10,#02,#39,#10,#02,#2d
	db #10,#02,#39,#10,#02,#2c,#10,#02
	db #38,#10,#02,#2c,#10,#02,#38,#10
	db #02,#31,#10,#02,#3d,#10,#02,#31
	db #10,#02,#3d,#10,#02,#31,#10,#02
	db #3d,#10,#02,#2d,#10,#02,#39,#10
	db #02,#2d,#10,#02,#39,#10,#02,#2c
	db #10,#02,#38,#10,#02,#2c,#10,#02
	db #38,#10,#02,#2c,#10,#02,#38,#10
	db #02,#2c,#10,#02,#38,#10,#02,#2c
	db #10,#02,#38,#10,#02,#ff,#31,#10
	db #02,#3d,#10,#02,#31,#10,#02,#3d
	db #10,#02,#31,#10,#02,#3d,#10,#02
	db #2f,#10,#02,#3b,#10,#02,#2f,#10
	db #02,#3b,#10,#02,#2f,#10,#02,#3b
	db #10,#02,#2f,#10,#02,#3b,#10,#02
	db #2f,#10,#02,#3b,#10,#02,#2d,#10
	db #02,#39,#10,#02,#2d,#10,#02,#39
	db #10,#02,#2f,#10,#02,#3b,#10,#02
	db #2f,#10,#02,#3b,#10,#02,#31,#10
	db #02,#3d,#10,#02,#31,#10,#02,#3d
	db #10,#02,#31,#10,#02,#3d,#10,#02
	db #31,#10,#02,#3d,#10,#02,#ff,#31
	db #10,#02,#3d,#10,#02,#31,#10,#02
	db #3d,#10,#02,#31,#10,#02,#3d,#10
	db #02,#2d,#10,#02,#39,#10,#02,#2d
	db #10,#02,#39,#10,#02,#2d,#10,#02
	db #39,#10,#02,#2f,#10,#02,#3b,#10
	db #02,#2f,#10,#02,#3b,#10,#02,#2f
	db #10,#02,#3b,#10,#02,#2f,#10,#02
	db #3b,#10,#02,#30,#10,#02,#3c,#10
	db #02,#30,#10,#02,#3c,#10,#02,#31
	db #10,#02,#3d,#10,#02,#31,#10,#02
	db #3d,#10,#02,#31,#10,#02,#3d,#10
	db #02,#31,#10,#02,#3d,#10,#02,#ff
	db #00,#40,#ff,#34,#ef,#21,#3d,#80
	db #02,#b4,#60,#3d,#80,#02,#bd,#80
	db #34,#e0,#02,#3d,#80,#02,#b4,#60
	db #3d,#80,#02,#bd,#80,#34,#e0,#02
	db #3d,#80,#02,#b4,#60,#3d,#80,#02
	db #bd,#80,#34,#e0,#02,#3d,#80,#02
	db #b4,#60,#3b,#80,#02,#bb,#80,#34
	db #e0,#02,#39,#80,#02,#c0,#60,#39
	db #80,#02,#b9,#80,#34,#e0,#02,#39
	db #80,#02,#b4,#60,#39,#80,#02,#b9
	db #80,#34,#e0,#02,#3b,#80,#02,#b4
	db #60,#3b,#80,#02,#bb,#80,#34,#e0
	db #02,#3b,#80,#02,#b4,#60,#3b,#80
	db #02,#bb,#80,#ff,#34,#e0,#02,#36
	db #80,#02,#b4,#60,#36,#80,#02,#b6
	db #80,#34,#e0,#02,#39,#80,#02,#b4
	db #60,#39,#80,#02,#b9,#80,#34,#e0
	db #02,#38,#80,#02,#b4,#60,#38,#80
	db #02,#b8,#80,#34,#e0,#02,#3d,#80
	db #02,#b4,#60,#3d,#80,#02,#bd,#80
	db #34,#e0,#02,#39,#80,#02,#c0,#60
	db #39,#80,#02,#b9,#80,#34,#e0,#02
	db #39,#80,#02,#b4,#60,#38,#80,#02
	db #b8,#80,#34,#e0,#02,#38,#80,#02
	db #b4,#60,#38,#80,#02,#b8,#80,#34
	db #e0,#02,#38,#80,#02,#b4,#60,#38
	db #80,#02,#b8,#80,#ff,#34,#e0,#02
	db #3d,#80,#02,#b4,#60,#3d,#80,#02
	db #bd,#80,#34,#e0,#02,#3d,#80,#02
	db #b4,#60,#3b,#80,#02,#bb,#80,#34
	db #e0,#02,#3b,#80,#02,#b4,#60,#3b
	db #80,#02,#bb,#80,#34,#e0,#02,#3b
	db #80,#02,#b4,#60,#3b,#80,#02,#bb
	db #80,#34,#e0,#02,#39,#80,#02,#c0
	db #60,#39,#80,#02,#b9,#80,#34,#e0
	db #02,#3b,#80,#02,#b4,#60,#3b,#80
	db #02,#bb,#80,#34,#e0,#02,#3d,#80
	db #02,#b4,#60,#3d,#80,#02,#bd,#80
	db #34,#e0,#02,#3d,#80,#02,#b4,#60
	db #3d,#80,#02,#bd,#80,#ff,#34,#e0
	db #02,#3d,#80,#02,#b4,#60,#3d,#80
	db #02,#bd,#80,#34,#e0,#02,#3d,#80
	db #02,#b4,#60,#39,#80,#02,#b9,#80
	db #34,#e0,#02,#39,#80,#02,#b4,#60
	db #39,#80,#02,#b9,#80,#34,#e0,#02
	db #3b,#80,#02,#b4,#60,#3b,#80,#02
	db #bb,#80,#34,#e0,#02,#3b,#80,#02
	db #c0,#60,#3b,#80,#02,#bb,#80,#34
	db #e0,#02,#3c,#80,#02,#b4,#60,#3c
	db #80,#02,#bc,#80,#34,#e0,#02,#3d
	db #80,#02,#b4,#60,#3d,#80,#02,#bd
	db #80,#34,#e0,#02,#3d,#80,#02,#b4
	db #60,#b4,#60,#b4,#60,#b4,#60,#ff

;
.music_info
	db "Ovation 2 - Music 3 (1996)(Benediction)(Antitec)",0
	db "ST-128 Module",0

	read "music_end.asm"
