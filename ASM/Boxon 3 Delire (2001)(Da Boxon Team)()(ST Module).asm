; Music of Boxon 3 Delire (2001)(Da Boxon Team)()(ST Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON3DL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #4000

	read "music_header.asm"

	jp l400b
	jp l4093
	jp l4077
	db #66,#04
;
.init_music
.l400b
;
	ld b,#03
	ld ix,l43da
	ld iy,l4306
	ld de,#001c
.l4018
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
	djnz l4018
	ld a,#06
	ld (l40bb),a
	ld a,d
	ld (l40cf),a
	inc a
	ld (l40b6),a
	ld a,#38
	ld (l40c0),a
	ld a,#ff
	ld (l4302),a
	ld (l4303),a
	ld (l4304),a
	ld (l4305),a
	ld a,#0c
	ld c,d
	call l42e4
	ld a,#0d
	ld c,d
	jp l42e4
;
.stop_music
.l4077
;
	ld a,#07
	ld c,#3f
	call l42e4
	ld a,#08
	ld c,#00
	call l42e4
	ld a,#09
	ld c,#00
	call l42e4
	ld a,#0a
	ld c,#00
	jp l42e4
;
.play_music
.l4093
;
	ld hl,l40b6
	dec (hl)
	ld ix,l43da
	ld bc,l43e8
	call l4149
	ld ix,l43f6
	ld bc,l4404
	call l4149
	ld ix,l4412
	ld bc,l4420
	call l4149
.l40b6 equ $ + 1
	ld a,#06
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#06
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#38
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#06
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#00
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#00
	ld hl,l4305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l42e4
.l40fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l41fa
.l4109
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
	jp l42e4
.l4123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l415c
.l4149
	ld a,(l40b6)
	or a
	jp nz,l41fa
	dec (ix+#06)
	jp nz,l41fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l415c
	ld a,(hl)
	or a
	jr z,l40fa
	cp #fe
	jr z,l4109
	cp #ff
	jr z,l4123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l430c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4198
	and #7f
	ld (ix+#06),a
	jr l41eb
.l4198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l41ac
	add a
	add a
	add a
	ld e,a
	ld hl,l4442
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
	jr z,l41eb
	cp #f0
	jp z,l42a0
	cp #d0
	jp z,l42bc
	cp #b0
	jp z,l42c4
	cp #80
	jp nc,l42cc
	cp #10
	jr nz,l41eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l41eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l41fa
	ld a,(ix+#17)
	or a
	jr nz,l420e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l420e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l430c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4239
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
	call l42e4
	ld c,h
	ld a,(ix+#03)
	call l42e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4277
	and #0f
	sub (ix+#0a)
	jr nc,l426d
	xor a
.l426d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l42e4
.l4277
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
	jr z,l4294
	ld b,a
	ld a,c
	ld (l40cf),a
	ld a,b
	sub #40
.l4294
	ld (l429b),a
	ld a,(l40c0)
.l429b equ $ + 1
	set 5,a
	ld (l40c0),a
	ret
.l42a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l41eb
.l42bc
	inc hl
	ld a,(hl)
	ld (l40bb),a
	jp l41eb
.l42c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l41eb
.l42cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l40ed),a
	inc hl
	ld a,(hl)
	ld (l40de),a
	jp l41eb
.l42e4
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
.l4305 equ $ + 3
.l4304 equ $ + 2
.l4303 equ $ + 1
.l4302
	db #06,#38,#00,#00
.l4306
	dw l47a2,l47d8,l480e
.l430c
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
.l43da equ $ + 4
	db #00,#00,#00,#00,#5b,#48,#00,#01
	db #08,#08,#01,#37,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #a5,#47,#e2,#46,#22,#47,#42,#47
	db #00,#00,#07,#19,#9f,#00,#82,#47
.l43f6
	db #a1,#48,#02,#03,#09,#05,#09,#3e
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#db,#47,#62,#46
	db #a2,#46,#c2,#46,#14,#0c,#07,#19
.l4412 equ $ + 4
	db #6a,#00,#00,#00,#7e,#4a,#04,#05
	db #0a,#00,#03,#30,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #11,#48,#e2,#44,#22,#45,#42,#45
	db #00,#00,#07,#19,#ef,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#62,#45,#a2,#45
	db #c2,#45,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#45,#22,#46
	db #42,#46,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#62,#46,#a2,#46
	db #c2,#46,#14,#0c,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#46,#22,#47
	db #42,#47,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#62,#47,#82,#47
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0a,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#0b,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#0c,#00
	db #0c,#00,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0a,#06,#02
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#02,#00,#03,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0e,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#86,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l47a2 equ $ + 4
	db #04,#07,#00,#04,#00,#44,#48,#00
	db #44,#48,#00,#44,#48,#00,#44,#48
	db #00,#44,#48,#00,#44,#48,#00,#44
	db #48,#00,#44,#48,#00,#44,#48,#00
	db #44,#48,#00,#44,#48,#00,#44,#48
	db #00,#44,#48,#00,#44,#48,#00,#44
	db #48,#00,#44,#48,#00,#44,#48,#80
.l47d8 equ $ + 2
	db #a2,#47,#00,#96,#48,#00,#96,#48
	db #00,#b8,#48,#00,#f8,#48,#00,#32
	db #49,#00,#64,#49,#00,#8c,#49,#00
	db #c0,#49,#00,#c3,#49,#00,#e7,#49
	db #00,#27,#4a,#00,#64,#49,#00,#8c
	db #49,#00,#c3,#49,#00,#e7,#49,#00
	db #b8,#48,#00,#f8,#48,#80,#d8,#47
.l480e
	db #00,#6b,#4a,#00,#6b,#4a,#00,#ad
	db #4a,#00,#2e,#4b,#00,#ad,#4a,#00
	db #ad,#4a,#00,#ad,#4a,#00,#af,#4b
	db #00,#f1,#4b,#00,#11,#4c,#00,#ad
	db #4a,#00,#ad,#4a,#00,#ad,#4a,#00
	db #f1,#4b,#00,#11,#4c,#00,#ad,#4a
	db #00,#2e,#4b,#80,#0e,#48,#3a,#02
	db #f8,#01,#46,#04,#08,#3a,#82,#ba
	db #08,#3a,#82,#ba,#08,#46,#82,#ba
	db #08,#ba,#08,#41,#82,#4d,#84,#41
	db #82,#c1,#08,#41,#82,#c1,#08,#4d
	db #82,#c1,#08,#c2,#08,#43,#02,#f8
	db #00,#4f,#04,#08,#43,#82,#c3,#08
	db #43,#82,#c3,#08,#4f,#82,#cf,#08
	db #c3,#08,#3f,#02,#f8,#01,#4b,#04
	db #08,#3f,#82,#bf,#08,#3f,#82,#bf
	db #08,#4b,#82,#c1,#08,#bf,#08,#ff
	db #4a,#0d,#05,#ca,#05,#c8,#05,#c6
	db #05,#48,#8a,#46,#82,#48,#82,#4a
	db #82,#48,#82,#46,#84,#46,#88,#c6
	db #05,#c5,#05,#43,#8c,#45,#82,#46
	db #82,#ff,#4d,#02,#08,#46,#82,#46
	db #82,#4d,#82,#46,#82,#46,#82,#cd
	db #08,#cb,#08,#ca,#08,#c8,#08,#48
	db #82,#4a,#84,#48,#82,#48,#82,#4a
	db #84,#ca,#08,#c8,#08,#46,#82,#43
	db #84,#c3,#08,#c5,#08,#46,#82,#43
	db #84,#c3,#08,#c5,#08,#46,#86,#c6
	db #08,#c8,#08,#46,#86,#c8,#08,#c6
	db #08,#ff,#46,#06,#08,#46,#82,#c6
	db #08,#45,#82,#c5,#08,#43,#82,#41
	db #82,#45,#86,#45,#82,#c6,#08,#45
	db #82,#c5,#08,#43,#82,#45,#82,#46
	db #86,#46,#82,#4a,#82,#48,#82,#46
	db #82,#45,#82,#46,#86,#c6,#08,#c8
	db #08,#4a,#82,#48,#82,#46,#82,#c6
	db #08,#c8,#08,#ff,#46,#06,#05,#46
	db #82,#48,#82,#4a,#82,#48,#82,#46
	db #82,#48,#86,#48,#82,#4a,#82,#4b
	db #82,#4a,#82,#48,#82,#4a,#86,#4a
	db #82,#48,#82,#46,#82,#48,#82,#4a
	db #82,#4b,#86,#4b,#82,#4a,#82,#48
	db #82,#46,#82,#48,#82,#ff,#46,#0e
	db #05,#c8,#05,#c6,#05,#45,#8a,#45
	db #82,#46,#82,#45,#82,#43,#86,#43
	db #82,#43,#82,#41,#82,#3f,#82,#3e
	db #82,#3f,#86,#41,#82,#43,#82,#45
	db #82,#46,#82,#48,#82,#ff,#46,#04
	db #08,#46,#84,#46,#84,#46,#82,#c8
	db #08,#c6,#08,#48,#84,#48,#84,#48
	db #82,#48,#82,#4a,#82,#4b,#82,#4a
	db #84,#4a,#84,#4a,#82,#48,#82,#46
	db #82,#43,#82,#46,#84,#46,#84,#46
	db #82,#46,#82,#46,#82,#ca,#08,#c8
	db #08,#ff,#00,#40,#ff,#46,#04,#05
	db #4d,#84,#4a,#84,#46,#84,#48,#88
	db #4d,#86,#48,#82,#4a,#84,#46,#88
	db #43,#82,#4a,#82,#43,#88,#3f,#84
	db #c3,#05,#c6,#05,#bf,#05,#c3,#05
	db #ff,#46,#02,#05,#4d,#82,#46,#82
	db #4d,#82,#4a,#86,#cb,#05,#ca,#05
	db #48,#82,#51,#82,#48,#82,#4d,#84
	db #41,#82,#43,#82,#45,#82,#46,#82
	db #4f,#82,#46,#82,#43,#84,#4a,#84
	db #cf,#05,#cd,#05,#4b,#82,#43,#82
	db #4b,#82,#4f,#82,#46,#82,#4b,#82
	db #cf,#05,#cb,#05,#ca,#05,#c8,#05
	db #ff,#4a,#02,#08,#46,#82,#48,#82
	db #4a,#82,#48,#83,#c6,#08,#48,#82
	db #4a,#82,#48,#82,#48,#84,#c8,#08
	db #c9,#08,#4a,#82,#48,#82,#46,#82
	db #c8,#08,#c9,#08,#4a,#82,#4a,#84
	db #4a,#82,#4f,#82,#4d,#82,#4b,#82
	db #ca,#08,#c8,#08,#4b,#84,#4b,#82
	db #4b,#82,#4a,#83,#c8,#08,#4a,#82
	db #cb,#08,#c8,#08,#ff,#3a,#04,#00
	db #3a,#02,#01,#3a,#04,#00,#3a,#82
	db #3a,#02,#01,#3a,#02,#00,#3a,#84
	db #3a,#02,#01,#3a,#04,#00,#3a,#82
	db #3a,#02,#01,#3a,#02,#00,#3a,#84
	db #3a,#02,#01,#3a,#04,#00,#3a,#82
	db #3a,#02,#01,#3a,#02,#00,#3a,#84
	db #3a,#02,#01,#3a,#04,#00,#3a,#82
	db #3a,#02,#01,#3a,#02,#00,#ff,#ba
	db #00,#ba,#03,#ba,#03,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #03,#ba,#03,#ba,#00,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #00,#ba,#03,#ba,#03,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #03,#ba,#03,#ba,#00,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #00,#ba,#03,#ba,#03,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #03,#ba,#03,#ba,#00,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #00,#ba,#03,#ba,#03,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ba
	db #03,#ba,#03,#ba,#00,#ba,#03,#ba
	db #01,#ba,#03,#ba,#00,#ba,#03,#ff
	db #ba,#00,#ba,#03,#ba,#03,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#03,#ba,#03,#ba,#00,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#00,#ba,#03,#ba,#03,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#03,#ba,#03,#ba,#00,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#00,#ba,#03,#ba,#03,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#03,#ba,#03,#ba,#00,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#00,#ba,#03,#ba,#03,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ba,#03,#ba,#03,#ba,#00,#ba,#03
	db #ba,#01,#ba,#03,#ba,#00,#ba,#03
	db #ff,#3a,#04,#00,#3a,#02,#01,#3a
	db #04,#00,#3a,#82,#3a,#02,#01,#3a
	db #02,#00,#3a,#84,#3a,#02,#01,#3a
	db #04,#00,#3a,#82,#3a,#02,#01,#3a
	db #02,#00,#3a,#84,#3a,#02,#01,#3a
	db #04,#00,#3a,#82,#3a,#02,#01,#3a
	db #02,#00,#3a,#84,#3a,#02,#01,#3a
	db #04,#00,#3a,#82,#3a,#02,#01,#3a
	db #02,#00,#ff,#4a,#04,#05,#46,#88
	db #4d,#88,#45,#86,#cb,#05,#ca,#05
	db #48,#84,#43,#88,#4a,#85,#46,#82
	db #46,#85,#4b,#82,#ca,#05,#c8,#05
	db #46,#88,#ff,#c8,#00,#4a,#02,#05
	db #4a,#82,#4a,#82,#46,#85,#4d,#85
	db #4d,#82,#4d,#82,#45,#82,#48,#8a
	db #4a,#82,#4a,#82,#43,#83,#46,#84
	db #4f,#85,#46,#82,#c6,#05,#c8,#05
	db #46,#82,#46,#85,#cd,#00,#cb,#00
	db #cb,#00,#ca,#00,#ff
;
.music_info
	db "Boxon 3 Delire (2001)(Da Boxon Team)()",0
	db "ST Module",0

	read "music_end.asm"