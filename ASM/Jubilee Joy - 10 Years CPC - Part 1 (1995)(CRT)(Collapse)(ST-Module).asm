; Music of Jubilee Joy - 10 Years CPC - Part 1 (1995)(CRT)(Collapse)(ST-Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JJ1YPAR1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #53f3

	read "music_header.asm"

	jr l53f7
	jr l5406
.l53f7
	call l5422
	ld hl,l5845
	ld de,l540f
	ld bc,#81ff
	jp #bcd7
.l5406
	ld hl,l5845
	call #bcdd
	jp l548e
.l540f
	push ix
	call l54aa
	pop ix
	ret
	jp l5422
	jp l54aa
	jp l548e
	ld h,(hl)
	inc b
;
.init_music
.l5422
;
	ld b,#03
	ld ix,l57f1
	ld iy,l571d
	ld de,#001c
.l542f
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
	djnz l542f
	ld a,#06
	ld (l54d2),a
	ld a,d
	ld (l54e6),a
	inc a
	ld (l54cd),a
	ld a,#38
	ld (l54d7),a
	ld a,#ff
	ld (l5719),a
	ld (l571a),a
	ld (l571b),a
	ld (l571c),a
	ld a,#0c
	ld c,d
	call l56fb
	ld a,#0d
	ld c,d
	jp l56fb
;
.stop_music
.l548e
;
	ld a,#07
	ld c,#3f
	call l56fb
	ld a,#08
	ld c,#00
	call l56fb
	ld a,#09
	ld c,#00
	call l56fb
	ld a,#0a
	ld c,#00
	jp l56fb
;
.play_music
.l54aa
;
	ld hl,l54cd
	dec (hl)
	ld ix,l57f1
	ld bc,l57ff
	call l5560
	ld ix,l580d
	ld bc,l581b
	call l5560
	ld ix,l5829
	ld bc,l5837
	call l5560
.l54cd equ $ + 1
	ld a,#02
	or a
	jr nz,l54d6
.l54d2 equ $ + 1
	ld a,#06
	ld (l54cd),a
.l54d7 equ $ + 1
.l54d6
	ld a,#38
	ld hl,l571a
	cp (hl)
	jr z,l54e5
	ld (hl),a
	ld c,a
	ld a,#07
	call l56fb
.l54e6 equ $ + 1
.l54e5
	ld a,#06
	ld hl,l5719
	cp (hl)
	jr z,l54f4
	ld (hl),a
	ld c,a
	ld a,#06
	call l56fb
.l54f5 equ $ + 1
.l54f4
	ld a,#00
	ld hl,l571b
	cp (hl)
	jr z,l5503
	ld (hl),a
	ld c,a
	ld a,#0b
	call l56fb
.l5504 equ $ + 1
.l5503
	ld a,#00
	ld hl,l571c
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l56fb
.l5511
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5611
.l5520
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
	jp l56fb
.l553a
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l554f
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l554f
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5573
.l5560
	ld a,(l54cd)
	or a
	jp nz,l5611
	dec (ix+#06)
	jp nz,l5611
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5573
	ld a,(hl)
	or a
	jr z,l5511
	cp #fe
	jr z,l5520
	cp #ff
	jr z,l553a
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5723
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l55af
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l55af
	and #7f
	ld (ix+#06),a
	jr l5602
.l55af
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l55c3
	ld (ix+#05),a
	ld (ix+#0a),d
.l55c3
	add a
	add a
	add a
	ld e,a
	ld hl,l5859
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
	jr z,l5602
	cp #f0
	jp z,l56b7
	cp #d0
	jp z,l56d3
	cp #b0
	jp z,l56db
	cp #80
	jp nc,l56e3
	cp #10
	jr nz,l5602
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5602
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5611
	ld a,(ix+#17)
	or a
	jr nz,l5625
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5625
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5650
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5723
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5650
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
	call l56fb
	ld c,h
	ld a,(ix+#03)
	call l56fb
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l568e
	and #0f
	sub (ix+#0a)
	jr nc,l5684
	xor a
.l5684
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l56fb
.l568e
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
	jr z,l56ab
	ld b,a
	ld a,c
	ld (l54e6),a
	ld a,b
	sub #40
.l56ab
	ld (l56b2),a
	ld a,(l54d7)
.l56b2 equ $ + 1
	set 5,a
	ld (l54d7),a
	ret
.l56b7
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l58d9
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5602
.l56d3
	inc hl
	ld a,(hl)
	ld (l54d2),a
	jp l5602
.l56db
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5602
.l56e3
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5504),a
	inc hl
	ld a,(hl)
	ld (l54f5),a
	jp l5602
.l56fb
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
.l571c equ $ + 3
.l571b equ $ + 2
.l571a equ $ + 1
.l5719
	db #06,#38,#00,#00
.l571d
	dw l5b39,l5b84,l5bcf
.l5723
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
.l57f1 equ $ + 4
	db #00,#00,#00,#00,#02,#5d,#00,#01
	db #08,#05,#01,#1a,#00,#00,#00,#df
.l57ff equ $ + 2
	db #48,#5b,#f9,#58,#d9,#5a,#59,#59
	db #08,#00,#05,#1b,#53,#03,#00,#00
.l580d
	db #4e,#5f,#02,#03,#09,#04,#01,#24
.l581b equ $ + 6
	db #00,#00,#00,#e7,#93,#5b,#59,#5a
	db #99,#5a,#b9,#5a,#00,#00,#05,#1b
.l5829 equ $ + 4
	db #de,#01,#00,#00,#e3,#60,#04,#05
	db #0a,#07,#02,#28,#00,#00,#00,#ef
.l5837 equ $ + 2
	db #de,#5b,#79,#59,#19,#5b,#59,#59
	db #00,#00,#17,#09,#7b,#01,#00,#00
.l5845
	db #f9,#b7,#fb,#b7,#00,#81,#0f,#54
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l5859 equ $ + 4
	db #75,#6c,#65,#2e,#f9,#58,#39,#59
	db #59,#59,#00,#00,#79,#59,#b9,#59
	db #59,#59,#00,#00,#3c,#a6,#38,#07
	db #13,#55,#00,#ff,#d9,#59,#19,#5a
	db #39,#5a,#00,#00,#59,#5a,#99,#5a
	db #b9,#5a,#00,#00,#f9,#58,#d9,#5a
	db #59,#59,#08,#00,#f9,#58,#f9,#5a
	db #59,#59,#18,#07,#79,#59,#19,#5b
	db #59,#59,#00,#00,#f9,#52,#a2,#6b
	db #68,#51,#f0,#30,#fc,#28,#f3,#52
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
.l58d9 equ $ + 4
	db #f3,#52,#00,#00,#f3,#52,#f3,#52
	db #f3,#52,#f3,#52,#f3,#52,#f3,#52
	db #f3,#52,#f3,#52,#f3,#52,#f3,#52
	db #f3,#52,#f3,#52,#f3,#52,#f3,#52
	db #f3,#52,#f3,#52,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0f,#0f,#0f
	db #0f,#0f,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #06,#06,#06,#06,#05,#05,#05,#05
	db #05,#05,#05,#05,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5b39 equ $ + 4
	db #00,#00,#00,#00,#00,#1a,#5c,#00
	db #79,#5c,#00,#79,#5c,#00,#c0,#5c
	db #00,#c0,#5c,#00,#a7,#5d,#00,#a7
	db #5d,#00,#41,#5d,#00,#41,#5d,#00
	db #a7,#5d,#00,#c0,#5c,#00,#c0,#5c
	db #00,#23,#5e,#00,#23,#5e,#00,#45
	db #5e,#00,#45,#5e,#00,#23,#5e,#00
	db #87,#5e,#00,#41,#5d,#00,#41,#5d
	db #00,#87,#5e,#00,#87,#5e,#00,#87
.l5b84 equ $ + 7
	db #5e,#00,#87,#5e,#80,#3c,#5b,#00
	db #b9,#5e,#00,#bc,#5e,#00,#bc,#5e
	db #00,#1e,#5f,#00,#1e,#5f,#00,#ce
	db #5f,#00,#ce,#5f,#00,#79,#5f,#00
	db #79,#5f,#00,#ce,#5f,#00,#1e,#5f
	db #00,#1e,#5f,#00,#23,#60,#00,#23
	db #60,#00,#26,#60,#00,#26,#60,#00
	db #23,#60,#00,#48,#60,#00,#79,#5f
	db #00,#79,#5f,#00,#23,#60,#00,#23
	db #60,#00,#48,#60,#00,#23,#60,#80
.l5bcf equ $ + 2
	db #87,#5b,#00,#4b,#60,#00,#4e,#60
	db #00,#4e,#60,#00,#be,#60,#00,#be
	db #60,#00,#4a,#61,#00,#4a,#61,#00
	db #06,#61,#00,#06,#61,#00,#4a,#61
	db #00,#be,#60,#00,#be,#60,#00,#6c
	db #61,#00,#6c,#61,#00,#6c,#61,#00
	db #6c,#61,#00,#6c,#61,#00,#b0,#61
	db #00,#06,#61,#00,#06,#61,#00,#d2
	db #61,#00,#d2,#61,#00,#b0,#61,#00
	db #d2,#61,#80,#d2,#5b,#ae,#04,#ae
	db #04,#2e,#82,#2e,#02,#03,#2e,#02
	db #04,#2e,#82,#2e,#82,#2e,#02,#03
	db #ae,#03,#ae,#03,#ae,#04,#2e,#82
	db #ae,#04,#2e,#82,#2e,#82,#2e,#82
	db #2e,#82,#2e,#02,#03,#ae,#03,#ae
	db #03,#ae,#04,#2e,#82,#ae,#04,#2e
	db #02,#03,#ae,#04,#ae,#04,#2e,#82
	db #2e,#82,#2e,#02,#03,#ae,#03,#ae
	db #03,#ae,#04,#2e,#82,#ae,#04,#2e
	db #03,#03,#ae,#04,#ae,#04,#ae,#04
	db #ae,#04,#ae,#04,#2e,#02,#03,#ae
	db #03,#ae,#03,#ff,#30,#02,#b6,#00
	db #b2,#06,#33,#82,#b5,#06,#33,#82
	db #b0,#06,#32,#82,#b0,#06,#32,#84
	db #b5,#06,#35,#83,#33,#82,#33,#82
	db #b2,#06,#b2,#06,#32,#82,#30,#84
	db #30,#82,#b2,#06,#33,#82,#b5,#06
	db #33,#82,#b0,#06,#32,#82,#b0,#06
	db #32,#84,#b5,#06,#35,#83,#b3,#06
	db #33,#83,#b2,#06,#32,#83,#ae,#06
	db #2e,#83,#ff,#a4,#05,#b0,#05,#b0
	db #05,#a4,#05,#b0,#05,#b0,#05,#a4
	db #05,#b0,#05,#a4,#05,#b0,#05,#b0
	db #05,#a4,#05,#b0,#05,#b0,#05,#a4
	db #05,#b0,#05,#a7,#05,#b3,#05,#b3
	db #05,#a7,#05,#b3,#05,#b3,#05,#a7
	db #05,#b3,#05,#ab,#05,#b7,#05,#b7
	db #05,#ab,#05,#b7,#05,#b7,#05,#ab
	db #05,#b7,#05,#a4,#05,#b0,#05,#b0
	db #05,#a4,#05,#b0,#05,#b0,#05,#a4
	db #05,#b0,#05,#a4,#05,#b0,#05,#b0
	db #05,#a4,#05,#b0,#05,#b0,#05,#a4
	db #05,#b0,#05,#a7,#05,#b3,#05,#b3
	db #05,#a7,#05,#b3,#05,#b3,#05,#a7
	db #05,#b3,#05,#9f,#05,#ab,#05,#ab
	db #05,#9f,#05,#ab,#05,#ab,#05,#9f
	db #05,#ab,#05,#ff,#22,#02,#05,#a2
	db #05,#a2,#05,#2e,#82,#a2,#05,#22
	db #82,#a2,#05,#a2,#05,#a2,#05,#2e
	db #82,#a2,#05,#a2,#05,#25,#82,#a5
	db #05,#a5,#05,#31,#82,#a5,#05,#25
	db #82,#a5,#05,#a5,#05,#a5,#05,#a5
	db #05,#b1,#05,#a5,#05,#a5,#05,#20
	db #82,#a0,#05,#a0,#05,#2c,#82,#a0
	db #05,#20,#82,#a0,#05,#a0,#05,#a0
	db #05,#2c,#82,#a0,#05,#a0,#05,#1e
	db #82,#9e,#05,#9e,#05,#2a,#82,#9e
	db #05,#1d,#82,#9d,#05,#9d,#05,#9d
	db #05,#a7,#05,#a9,#05,#a7,#05,#9d
	db #05,#ff,#24,#02,#05,#a4,#05,#a4
	db #05,#b0,#05,#a4,#05,#a4,#05,#a4
	db #05,#24,#82,#a4,#05,#a4,#05,#b0
	db #05,#a4,#05,#a4,#05,#a4,#05,#27
	db #82,#a7,#05,#a7,#05,#b3,#05,#a7
	db #05,#a7,#05,#a7,#05,#b3,#05,#a7
	db #05,#a7,#05,#b3,#05,#a7,#05,#a7
	db #05,#b3,#05,#b3,#05,#b7,#05,#ab
	db #05,#ab,#05,#b7,#05,#ab,#05,#ab
	db #05,#b7,#05,#ab,#05,#b7,#05,#ab
	db #05,#b7,#05,#ab,#05,#b7,#05,#ab
	db #05,#b7,#05,#ab,#05,#a4,#05,#b0
	db #05,#a4,#05,#a4,#05,#b0,#05,#a4
	db #05,#b0,#05,#a4,#05,#a4,#05,#b0
	db #05,#a4,#05,#a4,#05,#b0,#05,#a4
	db #05,#b0,#05,#a4,#05,#ff,#2e,#04
	db #04,#2e,#84,#2e,#84,#2e,#84,#2e
	db #84,#2e,#84,#2e,#84,#2e,#84,#2e
	db #84,#2e,#84,#2e,#84,#2e,#84,#2e
	db #84,#2e,#84,#2e,#84,#2e,#84,#ff
	db #24,#02,#07,#30,#82,#30,#82,#24
	db #82,#24,#82,#30,#82,#30,#82,#24
	db #82,#24,#82,#30,#82,#30,#82,#24
	db #82,#24,#82,#30,#82,#30,#82,#24
	db #82,#20,#82,#2c,#82,#2c,#82,#20
	db #82,#20,#82,#2c,#82,#2c,#82,#20
	db #82,#20,#82,#2c,#82,#2c,#82,#20
	db #82,#20,#82,#2c,#82,#2c,#82,#20
	db #82,#ff,#2e,#03,#05,#2e,#83,#2e
	db #82,#2e,#83,#2e,#83,#2e,#82,#31
	db #83,#31,#83,#31,#82,#31,#83,#31
	db #83,#31,#82,#2a,#83,#2a,#83,#2a
	db #82,#2a,#83,#2a,#83,#2a,#82,#29
	db #83,#29,#83,#29,#82,#25,#83,#25
	db #83,#25,#82,#ff,#fe,#40,#ff,#ae
	db #04,#ae,#04,#2e,#82,#2e,#02,#03
	db #ae,#04,#ae,#04,#2e,#82,#ae,#04
	db #ae,#04,#2e,#02,#03,#ae,#03,#ae
	db #03,#ae,#04,#2e,#82,#ae,#04,#2e
	db #02,#03,#ae,#04,#ae,#04,#ae,#04
	db #ae,#04,#2e,#82,#2e,#02,#03,#ae
	db #03,#ae,#03,#ae,#04,#2e,#82,#ae
	db #04,#2e,#04,#03,#2e,#02,#04,#2e
	db #82,#2e,#02,#03,#ae,#03,#ae,#03
	db #ae,#04,#2e,#82,#ae,#04,#2e,#02
	db #03,#ae,#04,#ae,#04,#2e,#82,#2e
	db #82,#2e,#02,#03,#ae,#03,#ae,#03
	db #ff,#ae,#04,#ae,#04,#ae,#04,#ae
	db #04,#2e,#04,#03,#ae,#04,#ae,#04
	db #2e,#82,#2e,#02,#03,#ae,#03,#ae
	db #03,#ae,#04,#2e,#82,#ae,#04,#2e
	db #04,#03,#ae,#04,#ae,#04,#2e,#82
	db #2e,#02,#03,#ae,#03,#ae,#03,#ae
	db #04,#2e,#82,#ae,#04,#2e,#04,#03
	db #ae,#04,#ae,#04,#2e,#82,#2e,#02
	db #03,#ae,#03,#ae,#03,#ae,#04,#2e
	db #82,#ae,#04,#2e,#04,#03,#ae,#04
	db #ae,#04,#2e,#82,#2e,#02,#03,#ae
	db #03,#ae,#03,#ff,#ae,#04,#2e,#82
	db #ae,#04,#2e,#04,#03,#2e,#02,#04
	db #2e,#82,#2e,#02,#03,#ae,#03,#ae
	db #03,#ae,#04,#2e,#82,#ae,#04,#2e
	db #04,#03,#2e,#02,#04,#2e,#82,#2e
	db #02,#03,#ae,#03,#ae,#03,#ae,#04
	db #2e,#82,#ae,#04,#2e,#04,#03,#2e
	db #02,#04,#2e,#82,#2e,#02,#03,#ae
	db #03,#ae,#03,#ae,#04,#2e,#82,#ae
	db #04,#2e,#04,#03,#2e,#02,#04,#2e
	db #82,#2e,#02,#03,#ae,#03,#ae,#03
	db #ff,#ae,#04,#2e,#82,#ae,#04,#2e
	db #04,#03,#2e,#02,#04,#2e,#82,#2e
	db #02,#03,#ae,#03,#ae,#03,#ae,#04
	db #2e,#82,#ae,#04,#2e,#04,#03,#2e
	db #02,#04,#2e,#82,#2e,#02,#03,#ae
	db #03,#ae,#03,#ae,#04,#2e,#82,#ae
	db #04,#2e,#04,#03,#2e,#02,#04,#2e
	db #82,#2e,#02,#03,#ae,#03,#ae,#03
	db #ae,#04,#2e,#82,#ae,#04,#2e,#04
	db #03,#2e,#02,#04,#2e,#82,#2e,#02
	db #03,#ae,#03,#ae,#03,#ff,#00,#40
	db #ff,#2e,#04,#04,#2e,#84,#2e,#84
	db #2e,#84,#2e,#84,#2e,#84,#2e,#84
	db #2e,#84,#2e,#84,#2e,#84,#2e,#84
	db #2e,#84,#2e,#84,#2e,#84,#2e,#84
	db #2e,#84,#ff,#00,#40,#ff,#fe,#40
	db #ff,#24,#02,#05,#24,#82,#b0,#05
	db #a4,#05,#a4,#05,#24,#82,#a4,#05
	db #a4,#05,#a4,#05,#b0,#05,#a4,#05
	db #a4,#05,#a4,#05,#27,#82,#27,#82
	db #b3,#05,#a7,#05,#a7,#05,#27,#82
	db #a7,#05,#a7,#05,#a7,#05,#b3,#05
	db #a7,#05,#a7,#05,#a7,#05,#29,#82
	db #29,#82,#b5,#05,#a9,#05,#a9,#05
	db #29,#82,#a9,#05,#a9,#05,#a9,#05
	db #b5,#05,#a9,#05,#a9,#05,#a9,#05
	db #a1,#05,#a1,#05,#ad,#05,#a1,#05
	db #a1,#05,#a1,#05,#ad,#05,#a1,#05
	db #a2,#05,#a2,#05,#ae,#05,#a2,#05
	db #a2,#05,#a2,#05,#ae,#05,#a2,#05
	db #ff,#00,#02,#37,#02,#07,#b7,#07
	db #37,#82,#37,#82,#b7,#07,#b7,#07
	db #b7,#07,#37,#82,#37,#84,#33,#82
	db #b3,#07,#33,#82,#35,#82,#b5,#07
	db #b5,#07,#32,#82,#32,#85,#33,#82
	db #b3,#07,#33,#82,#33,#82,#b3,#07
	db #b3,#07,#b3,#07,#33,#82,#33,#84
	db #30,#82,#b0,#07,#30,#82,#32,#82
	db #b2,#07,#b2,#07,#2e,#82,#2e,#83
	db #ff,#00,#02,#2e,#02,#00,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#2e,#83,#2e,#82,#ac,#00
	db #2e,#82,#ae,#00,#ff,#00,#02,#33
	db #02,#01,#32,#82,#2e,#82,#33,#83
	db #32,#83,#2e,#84,#33,#82,#32,#82
	db #2e,#82,#33,#83,#32,#83,#2e,#8e
	db #2b,#82,#32,#82,#30,#90,#ff,#00
	db #01,#30,#02,#05,#24,#82,#30,#82
	db #30,#82,#30,#82,#24,#82,#30,#82
	db #30,#82,#30,#82,#24,#82,#30,#82
	db #30,#82,#30,#82,#24,#82,#30,#82
	db #30,#82,#2c,#82,#20,#82,#2c,#82
	db #2c,#82,#2c,#82,#20,#82,#2c,#82
	db #2c,#82,#2c,#82,#20,#82,#2c,#82
	db #2c,#82,#2c,#82,#20,#82,#2c,#82
	db #ac,#05,#ff,#2e,#04,#04,#2e,#84
	db #2e,#84,#2e,#84,#2e,#84,#2e,#84
	db #2e,#84,#2e,#84,#2e,#84,#2e,#84
	db #2e,#84,#2e,#84,#2e,#84,#2e,#84
	db #2e,#84,#2e,#84,#ff,#2e,#03,#04
	db #ae,#04,#2e,#04,#03,#2e,#02,#04
	db #2e,#82,#ae,#03,#2e,#02,#04,#ae
	db #04,#2e,#82,#2e,#82,#2e,#03,#03
	db #ae,#04,#2e,#83,#ae,#04,#ae,#03
	db #2e,#03,#04,#2e,#82,#2e,#82,#2e
	db #02,#03,#2e,#02,#04,#2e,#83,#ae
	db #04,#2e,#02,#03,#2e,#02,#04,#2e
	db #82,#2e,#82,#ae,#03,#ae,#04,#2e
	db #82,#ae,#04,#ae,#04,#ae,#04,#ae
	db #04,#2e,#03,#03,#ae,#04,#ff
;
.music_info
	db "Jubilee Joy - 10 Years CPC - Part 1 (1995)(CRT)(Collapse)",0
	db "ST-Module",0

	read "music_end.asm"
