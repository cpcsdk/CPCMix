; Music of Tribal Telegramm 1 - Hardware (1993)(FrankenTeam)()(ST-Module)
; Ripped by Megachur the 05/10/2013
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "TRIBT1HA.BIN"
	ENDIF

music_date_rip_day		equ 05
music_date_rip_month	equ 10
music_date_rip_year		equ 2013
music_adr				equ &9100

	read "music_header.asm"

	jr l9104
	jr l9113
.l9104
	call l912f
	ld hl,l9552
	ld de,l911c
	ld bc,#81ff
	jp #bcd7
.l9113
	ld hl,l9552
	call #bcdd
	jp l919b
.l911c
	push ix
	call l91b7
	pop ix
	ret
	jp l912f
	jp l91b7
	jp l919b
	ld h,(hl)
	inc b
;
.init_music
.l912f
;
	ld b,#03
	ld ix,l94fe
	ld iy,l942a
	ld de,#001c
.l913c
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
	djnz l913c
	ld a,#06
	ld (l91df),a
	ld a,d
	ld (l91f3),a
	inc a
	ld (l91da),a
	ld a,#38
	ld (l91e4),a
	ld a,#ff
	ld (l9426),a
	ld (l9427),a
	ld (l9428),a
	ld (l9429),a
	ld a,#0c
	ld c,d
	call l9408
	ld a,#0d
	ld c,d
	jp l9408
;
.stop_music
.l919b
;
	ld a,#07
	ld c,#3f
	call l9408
	ld a,#08
	ld c,#00
	call l9408
	ld a,#09
	ld c,#00
	call l9408
	ld a,#0a
	ld c,#00
	jp l9408
;
.play_music
.l91b7
;
	ld hl,l91da
	dec (hl)
	ld ix,l94fe
	ld bc,l950c
	call l926d
	ld ix,l951a
	ld bc,l9528
	call l926d
	ld ix,l9536
	ld bc,l9544
	call l926d
.l91da equ $ + 1
	ld a,#00
	or a
	jr nz,l91e3
.l91df equ $ + 1
	ld a,#00
	ld (l91da),a
.l91e4 equ $ + 1
.l91e3
	ld a,#00
	ld hl,l9427
	cp (hl)
	jr z,l91f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l9408
.l91f3 equ $ + 1
.l91f2
	ld a,#00
	ld hl,l9426
	cp (hl)
	jr z,l9201
	ld (hl),a
	ld c,a
	ld a,#06
	call l9408
.l9202 equ $ + 1
.l9201
	ld a,#00
	ld hl,l9428
	cp (hl)
	jr z,l9210
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9408
.l9211 equ $ + 1
.l9210
	ld a,#00
	ld hl,l9429
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9408
.l921e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l931e
.l922d
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
	jp l9408
.l9247
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l925c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l925c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9280
.l926d
	ld a,(l91da)
	or a
	jp nz,l931e
	dec (ix+#06)
	jp nz,l931e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9280
	ld a,(hl)
	or a
	jr z,l921e
	cp #fe
	jr z,l922d
	cp #ff
	jr z,l9247
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9430
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l92bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l92bc
	and #7f
	ld (ix+#06),a
	jr l930f
.l92bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l92d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l92d0
	add a
	add a
	add a
	ld e,a
	ld hl,l9566
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
	jr z,l930f
	cp #f0
	jp z,l93c4
	cp #d0
	jp z,l93e0
	cp #b0
	jp z,l93e8
	cp #80
	jp nc,l93f0
	cp #10
	jr nz,l930f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l930f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l931e
	ld a,(ix+#17)
	or a
	jr nz,l9332
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9332
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l935d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9430
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l935d
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
	call l9408
	ld c,h
	ld a,(ix+#03)
	call l9408
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l939b
	and #0f
	sub (ix+#0a)
	jr nc,l9391
	xor a
.l9391
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9408
.l939b
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
	jr z,l93b8
	ld b,a
	ld a,c
	ld (l91f3),a
	ld a,b
	sub #40
.l93b8
	ld (l93bf),a
	ld a,(l91e4)
.l93bf equ $ + 1
	bit 0,a
	ld (l91e4),a
	ret
.l93c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l95e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l930f
.l93e0
	inc hl
	ld a,(hl)
	ld (l91df),a
	jp l930f
.l93e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l930f
.l93f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9211),a
	inc hl
	ld a,(hl)
	ld (l9202),a
	jp l930f
.l9408
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
.l9426
	rst #38
.l9427
	rst #38
.l9428
	rst #38
.l9429
	rst #38
.l942a
	ld b,(hl)
	sbc c
	ld h,a
	sbc c
	adc b
	sbc c
.l9430
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
.l94fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l950c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l951a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9528 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9536 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9544 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9552
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l9566
	db #06,#96,#46,#96,#66,#96,#00,#00
	db #00,#90,#45,#de,#54,#b0,#4e,#4f
	db #86,#96,#c6,#96,#e6,#96,#00,#00
	db #06,#97,#46,#97,#e6,#96,#08,#00
	db #23,#91,#10,#90,#09,#0e,#23,#4e
	db #86,#96,#66,#97,#e6,#96,#00,#00
	db #06,#97,#86,#97,#e6,#96,#08,#18
	db #ec,#8e,#a0,#c0,#08,#66,#4d,#4f
	db #a6,#97,#e6,#97,#06,#98,#00,#00
	db #26,#98,#66,#98,#86,#98,#00,#00
	db #00,#90,#00,#90,#00,#90,#00,#00
	db #86,#96,#a6,#98,#c6,#98,#00,#00
	db #00,#90,#00,#90,#00,#90,#00,#00
	db #00,#90,#00,#90,#00,#90,#00,#00
	db #00,#90,#00,#90,#00,#90,#00,#00
	db #00,#90,#00,#90,#00,#90,#00,#00
.l95e6
	db #e6,#98,#06,#99,#26,#99,#00,#90
	db #00,#90,#00,#90,#00,#90,#00,#90
	db #00,#90,#00,#90,#00,#90,#00,#90
	db #00,#90,#00,#90,#00,#90,#00,#90
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
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#05,#04,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #06,#05,#05,#05,#04,#03,#01,#00
	db #0c,#0d,#0e,#0d,#0c,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#04,#03,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0b,#0c,#8c,#8c,#8c,#8d,#8d
	db #8d,#8c,#8c,#8c,#8d,#8d,#8d,#8c
	db #8c,#8c,#8d,#8d,#8d,#8c,#8c,#8c
	db #8d,#8d,#8d,#8c,#8c,#8c,#8d,#8d
	db #ff,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#2f,#00,#5e,#00,#8d,#00
	db #bc,#00,#eb,#00,#1a,#01,#49,#01
	db #78,#01,#a7,#01,#d6,#01,#05,#02
	db #34,#02,#63,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#0c,#12,#18,#1e,#04,#0a
	db #10,#16,#1c,#02,#08,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#a9,#99,#00,#a9,#99,#00,#14
	db #9a,#00,#14,#9a,#00,#a9,#99,#00
	db #a9,#99,#00,#a9,#99,#00,#a9,#99
	db #00,#a9,#99,#00,#a9,#99,#80,#46
	db #99,#00,#7f,#9a,#00,#7f,#9a,#00
	db #bd,#9a,#00,#bd,#9a,#00,#ef,#9a
	db #00,#ef,#9a,#00,#2f,#9b,#00,#2f
	db #9b,#00,#b0,#9b,#00,#b0,#9b,#80
	db #67,#99,#00,#33,#9c,#00,#33,#9c
	db #00,#a4,#9c,#00,#a4,#9c,#00,#33
	db #9c,#00,#33,#9c,#00,#33,#9c,#00
	db #33,#9c,#00,#33,#9c,#00,#33,#9c
	db #80,#88,#99,#22,#02,#a2,#0f,#fe
	db #01,#22,#82,#fe,#01,#22,#82,#1f
	db #02,#a2,#12,#fe,#01,#1f,#82,#fe
	db #01,#1f,#82,#1b,#02,#a2,#16,#fe
	db #01,#1b,#82,#fe,#01,#1b,#82,#1d
	db #02,#a2,#14,#fe,#01,#9d,#a2,#14
	db #1f,#02,#a2,#12,#21,#02,#a2,#10
	db #22,#02,#a2,#0f,#fe,#01,#22,#82
	db #fe,#01,#22,#82,#1f,#02,#a2,#12
	db #fe,#01,#1f,#82,#fe,#01,#1f,#82
	db #1b,#02,#a2,#16,#fe,#01,#1b,#82
	db #fe,#01,#1b,#82,#1d,#02,#a2,#14
	db #fe,#01,#9d,#a2,#14,#1f,#02,#a2
	db #12,#21,#02,#a2,#10,#ff,#22,#02
	db #a2,#0f,#fe,#01,#22,#82,#fe,#01
	db #22,#82,#1f,#02,#a2,#12,#fe,#01
	db #1f,#82,#fe,#01,#1f,#82,#1b,#02
	db #a2,#16,#fe,#01,#1b,#82,#fe,#01
	db #1b,#82,#1d,#02,#a2,#14,#fe,#01
	db #9d,#a2,#14,#1f,#02,#a2,#12,#21
	db #02,#a2,#10,#22,#02,#a2,#0f,#fe
	db #01,#22,#82,#fe,#01,#22,#82,#1f
	db #02,#a2,#12,#fe,#01,#1f,#82,#fe
	db #01,#1f,#82,#1b,#02,#a2,#16,#fe
	db #01,#1b,#82,#fe,#01,#1b,#82,#1d
	db #02,#a2,#14,#fe,#01,#9d,#a2,#14
	db #1f,#02,#a2,#12,#21,#02,#a2,#10
	db #ff,#41,#02,#02,#3f,#82,#3e,#82
	db #3c,#82,#ba,#02,#3c,#82,#3e,#82
	db #3a,#83,#33,#82,#37,#82,#3a,#82
	db #3e,#82,#3f,#82,#be,#02,#3c,#82
	db #3a,#83,#41,#82,#3f,#82,#3e,#82
	db #3c,#82,#3e,#83,#3c,#83,#3a,#82
	db #33,#83,#33,#83,#37,#82,#3a,#82
	db #b9,#02,#37,#83,#39,#82,#ff,#46
	db #04,#06,#4a,#82,#4d,#84,#4b,#82
	db #4a,#82,#48,#82,#3f,#82,#41,#82
	db #3f,#82,#3e,#84,#3c,#82,#3a,#82
	db #3c,#82,#3e,#84,#3e,#82,#3c,#82
	db #3a,#82,#3c,#84,#3f,#84,#3e,#82
	db #3c,#82,#3a,#82,#3c,#86,#39,#82
	db #ff,#46,#02,#f5,#00,#4a,#02,#05
	db #4d,#82,#4a,#82,#43,#82,#46,#82
	db #4a,#82,#46,#82,#3f,#82,#43,#82
	db #46,#82,#43,#82,#41,#82,#45,#82
	db #48,#82,#45,#82,#46,#82,#4a,#82
	db #4d,#82,#52,#84,#4f,#82,#4d,#82
	db #4a,#82,#3f,#82,#43,#82,#46,#82
	db #4b,#84,#4a,#82,#48,#82,#45,#82
	db #ff,#d2,#03,#cd,#03,#ca,#03,#cd
	db #03,#ca,#03,#c6,#03,#ca,#03,#c6
	db #03,#c1,#03,#c6,#03,#c1,#03,#be
	db #03,#c1,#03,#be,#03,#ba,#03,#be
	db #03,#ba,#03,#b5,#03,#ba,#03,#b5
	db #03,#b2,#03,#b5,#03,#b2,#03,#ae
	db #03,#c6,#03,#ca,#03,#cd,#03,#d2
	db #03,#cd,#03,#ca,#03,#c6,#03,#ca
	db #03,#ba,#03,#be,#03,#c1,#03,#c6
	db #03,#be,#03,#c1,#03,#c6,#03,#ca
	db #03,#c6,#03,#ca,#03,#cd,#03,#d2
	db #03,#ca,#03,#cd,#03,#d2,#03,#d6
	db #03,#d9,#03,#d6,#03,#d2,#03,#d6
	db #03,#d2,#03,#cd,#03,#ca,#03,#cd
	db #03,#ca,#03,#c6,#03,#ca,#03,#c6
	db #03,#c1,#03,#c1,#03,#c3,#03,#c5
	db #03,#ff,#46,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#46,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#43,#02,#f5,#02,#ec,#1b
	db #ec,#0b,#43,#02,#f5,#02,#ec,#1b
	db #ec,#0b,#3f,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#3f,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#41,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#41,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#46,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#46,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#43,#02,#f5,#02,#ec,#1b
	db #ec,#0b,#43,#02,#f5,#02,#ec,#1b
	db #ec,#0b,#3f,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#3f,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#41,#02,#f5,#01,#ec,#1b
	db #ec,#0b,#c1,#f5,#01,#ec,#1b,#c1
	db #f5,#01,#ec,#1b,#ff,#3a,#02,#18
	db #46,#02,#f5,#01,#3a,#02,#19,#46
	db #02,#f5,#01,#3a,#02,#18,#43,#02
	db #f5,#02,#3a,#02,#19,#43,#02,#f5
	db #02,#3a,#02,#18,#3f,#02,#f5,#01
	db #3a,#02,#19,#3f,#02,#f5,#01,#3a
	db #02,#18,#41,#02,#f5,#01,#3a,#02
	db #19,#41,#02,#f5,#01,#3a,#02,#18
	db #46,#02,#f5,#01,#3a,#02,#19,#46
	db #02,#f5,#01,#3a,#02,#18,#43,#02
	db #f5,#02,#3a,#02,#19,#43,#02,#f5
	db #02,#3a,#02,#18,#3f,#02,#f5,#01
	db #3a,#02,#19,#3f,#02,#f5,#01,#3a
	db #02,#18,#41,#02,#f5,#01,#3a,#02
	db #19,#ba,#09,#ba,#09,#ff,#3a,#02
	db #18,#46,#02,#f5,#01,#3a,#02,#19
	db #46,#02,#f5,#01,#3a,#02,#18,#43
	db #02,#f5,#02,#3a,#02,#19,#43,#02
	db #f5,#02,#3a,#02,#18,#3f,#02,#f5
	db #01,#3a,#02,#19,#3f,#02,#f5,#01
	db #3a,#02,#18,#41,#02,#f5,#01,#3a
	db #02,#19,#41,#02,#f5,#01,#3a,#02
	db #18,#46,#02,#f5,#01,#3a,#02,#19
	db #46,#02,#f5,#01,#3a,#02,#18,#43
	db #02,#f5,#02,#3a,#02,#19,#43,#02
	db #f5,#02,#3a,#02,#18,#3f,#02,#f5
	db #01,#3a,#02,#19,#3f,#02,#f5,#01
	db #3a,#02,#18,#41,#02,#f5,#01,#3a
	db #02,#19,#ba,#09,#ba,#09,#ff,#00
;
.music_info
	db "Tribal Telegramm 1 - Hardware (1993)(FrankenTeam)()",0
	db "ST-Module",0

	read "music_end.asm"