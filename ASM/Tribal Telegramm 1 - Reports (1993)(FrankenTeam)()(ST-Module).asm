; Music of Tribal Telegramm 1 - Reports (1993)(FrankenTeam)()(ST-Module)
; Ripped by Megachur the 05/10/2013
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "TRIBT1RE.BIN"
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
	ld a,#05
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
	ld b,#9a
	daa
	sbc d
	ld c,b
	sbc d
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
	db #86,#96,#c6,#96,#e6,#96,#00,#00
	db #49,#e3,#45,#44,#20,#92,#00,#ff
	db #06,#97,#46,#97,#66,#97,#00,#00
	db #23,#91,#10,#90,#09,#0e,#23,#4e
	db #fe,#8f,#ca,#90,#98,#8e,#50,#30
	db #06,#97,#86,#97,#a6,#97,#0b,#15
	db #06,#97,#c6,#97,#a6,#97,#00,#00
	db #06,#97,#e6,#97,#a6,#97,#00,#00
	db #06,#98,#46,#98,#a6,#97,#08,#18
	db #66,#98,#a6,#98,#a6,#97,#00,#00
	db #c6,#98,#06,#99,#a6,#97,#00,#00
	db #26,#99,#66,#99,#a6,#97,#00,#00
	db #86,#46,#a6,#49,#e6,#46,#00,#00
	db #c6,#49,#86,#49,#e6,#46,#00,#00
	db #06,#4a,#86,#49,#e6,#46,#00,#00
.l95e6
	db #46,#4a,#86,#99,#a6,#99,#c6,#99
	db #c6,#4a,#e6,#4a,#06,#4b,#26,#4b
	db #e6,#99,#66,#4b,#00,#d0,#00,#d0
	db #00,#d0,#00,#d0,#00,#d0,#00,#d0
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0a,#0a,#09,#06,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#06,#05,#04,#04,#04
	db #04,#03,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#08,#05,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#07,#07,#07,#08,#08
	db #08,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#01,#01,#01,#01,#01,#01,#01
	db #09,#0b,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0b,#0a,#09,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fc,#ff,#fb,#ff,#fa,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f8,#ff,#f8,#ff,#f8,#ff,#f8,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f8,#ff,#f8,#ff,#f8,#ff,#f8,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f8,#ff,#f8,#ff,#f8,#ff,#f8,#ff
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #fe,#ff,#fe,#ff,#fe,#ff,#fe,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0c,#0d,#0c,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#01,#01
	db #00,#00,#02,#00,#04,#00,#06,#00
	db #08,#00,#0a,#00,#0c,#00,#0e,#00
	db #10,#00,#12,#00,#14,#00,#16,#00
	db #18,#00,#1a,#00,#1c,#00,#1e,#00
	db #20,#00,#22,#00,#24,#00,#26,#00
	db #28,#00,#2a,#00,#2c,#00,#2e,#00
	db #30,#00,#32,#00,#34,#00,#36,#00
	db #38,#00,#3a,#00,#3c,#00,#3e,#00
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #fd,#fd,#fd,#fd,#fd,#fd,#fd,#fd
	db #fd,#fd,#fd,#fd,#fd,#fd,#fd,#fd
	db #fd,#fd,#fd,#fd,#fd,#fd,#fd,#fd
	db #fd,#fd,#fd,#fd,#fd,#fd,#fd,#fd
	db #00,#69,#9a,#00,#78,#9a,#00,#69
	db #9a,#00,#83,#9a,#00,#69,#9a,#00
	db #8e,#9a,#00,#f6,#9a,#00,#a9,#9a
	db #00,#f6,#9a,#00,#a9,#9a,#80,#06
	db #9a,#00,#58,#9b,#00,#9d,#9b,#00
	db #e1,#9b,#00,#9d,#9b,#00,#e1,#9b
	db #00,#25,#9c,#00,#d0,#9c,#00,#81
	db #9c,#00,#d0,#9c,#00,#81,#9c,#80
	db #27,#9a,#00,#1f,#9d,#00,#4a,#9d
	db #00,#5a,#9d,#00,#86,#9d,#00,#5a
	db #9d,#00,#98,#9d,#00,#b8,#9d,#00
	db #b8,#9d,#00,#b8,#9d,#00,#b8,#9d
	db #80,#48,#9a,#43,#10,#f6,#02,#48
	db #10,#f6,#01,#4d,#90,#4a,#10,#f6
	db #02,#ff,#43,#10,#f6,#02,#48,#10
	db #f6,#01,#4d,#a0,#ff,#43,#10,#f6
	db #02,#48,#10,#f6,#01,#4d,#a0,#ff
	db #43,#10,#f6,#02,#48,#10,#f6,#01
	db #4d,#90,#33,#03,#11,#33,#03,#01
	db #33,#83,#33,#83,#33,#82,#b3,#01
	db #b3,#01,#ff,#ba,#10,#ee,#03,#ee
	db #03,#28,#03,#08,#4f,#04,#f7,#08
	db #4a,#02,#07,#2b,#02,#08,#4b,#02
	db #07,#48,#03,#fb,#03,#24,#03,#18
	db #30,#02,#08,#4a,#03,#fb,#03,#26
	db #03,#18,#a4,#08,#a3,#08,#3a,#02
	db #00,#ee,#03,#21,#03,#08,#48,#02
	db #fb,#08,#3a,#08,#00,#48,#03,#fb
	db #03,#24,#03,#18,#24,#02,#08,#4a
	db #06,#fb,#03,#a6,#18,#a3,#08,#ff
	db #1c,#02,#18,#ee,#03,#28,#02,#08
	db #ee,#03,#1c,#02,#08,#46,#02,#00
	db #ee,#03,#6e,#82,#6e,#82,#ee,#03
	db #48,#03,#fb,#01,#24,#02,#18,#ee
	db #03,#ee,#03,#ee,#03,#4a,#04,#fb
	db #01,#ee,#03,#ee,#03,#a4,#18,#a3
	db #08,#21,#82,#ee,#03,#21,#02,#08
	db #ee,#03,#2d,#02,#08,#46,#02,#00
	db #21,#03,#08,#6e,#03,#03,#48,#03
	db #fb,#01,#24,#02,#18,#ee,#03,#24
	db #02,#08,#4a,#02,#fb,#01,#33,#02
	db #11,#e0,#03,#b3,#01,#b3,#01,#b3
	db #01,#ff,#37,#02,#17,#3a,#02,#b7
	db #01,#3e,#02,#07,#43,#82,#39,#82
	db #3a,#82,#3e,#82,#43,#82,#34,#82
	db #37,#82,#3c,#82,#40,#82,#35,#82
	db #37,#82,#3c,#82,#40,#82,#35,#82
	db #39,#82,#3c,#82,#41,#82,#34,#82
	db #39,#82,#3c,#82,#41,#82,#32,#82
	db #35,#82,#39,#82,#3e,#82,#34,#82
	db #35,#82,#39,#82,#41,#82,#ff,#37
	db #02,#b7,#02,#3a,#02,#07,#3e,#82
	db #43,#82,#39,#82,#3a,#82,#3e,#82
	db #43,#82,#34,#82,#37,#82,#3c,#82
	db #40,#82,#35,#82,#37,#82,#3c,#82
	db #40,#82,#35,#82,#39,#82,#3c,#82
	db #41,#82,#37,#82,#39,#82,#3c,#82
	db #41,#82,#35,#82,#39,#82,#3c,#82
	db #41,#82,#37,#82,#39,#82,#3c,#82
	db #41,#82,#ff,#37,#02,#b7,#02,#3a
	db #02,#07,#3e,#82,#43,#82,#39,#82
	db #3a,#82,#3e,#82,#43,#82,#34,#82
	db #37,#82,#3c,#82,#40,#82,#35,#82
	db #37,#82,#3c,#82,#40,#82,#35,#82
	db #39,#82,#3c,#82,#41,#82,#34,#82
	db #39,#82,#3c,#82,#41,#82,#32,#82
	db #35,#82,#39,#82,#3e,#82,#34,#82
	db #35,#82,#39,#82,#41,#82,#ff,#37
	db #02,#b7,#02,#3a,#02,#07,#3e,#82
	db #43,#82,#39,#82,#3a,#82,#3e,#82
	db #43,#82,#34,#82,#37,#82,#3c,#82
	db #40,#82,#35,#82,#37,#82,#3c,#82
	db #34,#82,#35,#02,#b7,#00,#39,#02
	db #07,#3c,#02,#b7,#01,#41,#02,#07
	db #37,#02,#b7,#02,#39,#02,#07,#3c
	db #02,#b7,#03,#41,#02,#07,#35,#02
	db #b7,#04,#39,#02,#07,#3c,#02,#b7
	db #05,#41,#02,#07,#37,#02,#b7,#06
	db #39,#02,#07,#3c,#02,#b7,#07,#41
	db #02,#07,#ff,#4f,#03,#f7,#08,#ee
	db #03,#4d,#02,#07,#4c,#04,#fb,#02
	db #ee,#03,#ee,#03,#ee,#03,#ee,#03
	db #4f,#03,#f7,#08,#ee,#03,#4f,#02
	db #07,#4d,#82,#4a,#82,#48,#82,#46
	db #82,#43,#82,#46,#82,#48,#83,#ee
	db #03,#46,#02,#07,#51,#04,#fb,#02
	db #41,#02,#f7,#08,#43,#02,#07,#45
	db #82,#45,#03,#0a,#45,#83,#45,#82
	db #45,#82,#45,#02,#07,#46,#82,#41
	db #82,#ff,#43,#02,#f7,#08,#43,#02
	db #0c,#43,#02,#b7,#02,#4c,#04,#fb
	db #02,#41,#02,#f7,#08,#43,#02,#07
	db #c5,#07,#45,#03,#0a,#45,#02,#07
	db #46,#82,#ca,#07,#48,#83,#46,#82
	db #45,#82,#c1,#07,#c3,#07,#43,#03
	db #0c,#fe,#03,#51,#04,#fb,#02,#41
	db #02,#f7,#08,#43,#02,#07,#c5,#07
	db #46,#83,#45,#82,#46,#82,#48,#82
	db #4a,#82,#48,#82,#4a,#82,#48,#82
	db #ff,#43,#08,#19,#43,#04,#09,#41
	db #82,#43,#8e,#41,#82,#43,#82,#45
	db #86,#45,#82,#43,#84,#45,#82,#41
	db #84,#3e,#84,#3e,#82,#bc,#09,#be
	db #09,#41,#82,#c1,#09,#be,#09,#c1
	db #09,#c3,#09,#ff,#43,#08,#09,#43
	db #84,#41,#82,#43,#8a,#41,#84,#40
	db #84,#41,#a0,#ff,#46,#08,#09,#46
	db #82,#45,#82,#41,#82,#40,#84,#41
	db #84,#43,#88,#c1,#09,#c3,#09,#48
	db #86,#48,#82,#46,#84,#48,#82,#45
	db #84,#43,#84,#41,#84,#3e,#82,#c1
	db #09,#c3,#09,#c5,#09,#c8,#09,#ff
	db #43,#08,#09,#45,#82,#46,#82,#41
	db #82,#43,#8a,#41,#84,#40,#84,#41
	db #a0,#ff,#43,#08,#09,#45,#82,#46
	db #82,#4a,#82,#48,#8a,#4d,#84,#4c
	db #84,#4d,#91,#33,#03,#11,#33,#03
	db #01,#33,#83,#33,#84,#ba,#00,#ba
	db #00,#ff,#28,#03,#18,#b4,#08,#33
	db #02,#01,#28,#03,#08,#6e,#03,#03
	db #33,#02,#01,#6e,#02,#03,#24,#02
	db #08,#ee,#03,#b0,#08,#33,#02,#01
	db #24,#02,#08,#26,#82,#ee,#03,#ee
	db #03,#33,#02,#01,#b0,#08,#af,#08
	db #2d,#83,#ad,#08,#33,#02,#01,#2d
	db #03,#08,#ee,#03,#ee,#03,#ee,#03
	db #33,#02,#01,#ee,#03,#ee,#03,#30
	db #02,#08,#ee,#03,#b0,#08,#33,#02
	db #01,#30,#02,#08,#2f,#82,#2d,#82
	db #33,#02,#01,#b2,#08,#af,#08,#ff
;
.music_info
	db "Tribal Telegramm 1 - Reports (1993)(FrankenTeam)()",0
	db "ST-Module",0

	read "music_end.asm"