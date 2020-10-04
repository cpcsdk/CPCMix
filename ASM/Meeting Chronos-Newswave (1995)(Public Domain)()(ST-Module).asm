; Music of Meeting Chronos-Newswave (1995)(Public Domain)()(ST-Module)
; Ripped by Megachur the 31/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEETINGC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #9000

	read "music_header.asm"

	jp l900b
	jp l9093
	jp l9077
	ld h,(hl)
	inc b
;
.init_music
.l900b
;
	ld b,#03
	ld ix,l93da
	ld iy,l9306
	ld de,#001c
.l9018
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
	djnz l9018
	ld a,#06
	ld (l90bb),a
	ld a,d
	ld (l90cf),a
	inc a
	ld (l90b6),a
	ld a,#38
	ld (l90c0),a
	ld a,#ff
	ld (l9302),a
	ld (l9303),a
	ld (l9304),a
	ld (l9305),a
	ld a,#0c
	ld c,d
	call l92e4
	ld a,#0d
	ld c,d
	jp l92e4
;
.stop_music
.l9077
;
	ld a,#07
	ld c,#3f
	call l92e4
	ld a,#08
	ld c,#00
	call l92e4
	ld a,#09
	ld c,#00
	call l92e4
	ld a,#0a
	ld c,#00
	jp l92e4
;
.play_music
.l9093
;
	ld hl,l90b6
	dec (hl)
	ld ix,l93da
	ld bc,l93e8
	call l9149
	ld ix,l93f6
	ld bc,l9404
	call l9149
	ld ix,l9412
	ld bc,l9420
	call l9149
.l90b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l90bf
.l90bb equ $ + 1
	ld a,#00
	ld (l90b6),a
.l90c0 equ $ + 1
.l90bf
	ld a,#00
	ld hl,l9303
	cp (hl)
	jr z,l90ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l92e4
.l90cf equ $ + 1
.l90ce
	ld a,#00
	ld hl,l9302
	cp (hl)
	jr z,l90dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l92e4
.l90de equ $ + 1
.l90dd
	ld a,#00
	ld hl,l9304
	cp (hl)
	jr z,l90ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l92e4
.l90ed equ $ + 1
.l90ec
	ld a,#00
	ld hl,l9305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l92e4
.l90fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l91fa
.l9109
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
	jp l92e4
.l9123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l915c
.l9149
	ld a,(l90b6)
	or a
	jp nz,l91fa
	dec (ix+#06)
	jp nz,l91fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l915c
	ld a,(hl)
	or a
	jr z,l90fa
	cp #fe
	jr z,l9109
	cp #ff
	jr z,l9123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l930c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9198
	and #7f
	ld (ix+#06),a
	jr l91eb
.l9198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l91ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l91ac
	add a
	add a
	add a
	ld e,a
	ld hl,l9442
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
	jr z,l91eb
	cp #f0
	jp z,l92a0
	cp #d0
	jp z,l92bc
	cp #b0
	jp z,l92c4
	cp #80
	jp nc,l92cc
	cp #10
	jr nz,l91eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l91eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l91fa
	ld a,(ix+#17)
	or a
	jr nz,l920e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l920e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l930c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9239
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
	call l92e4
	ld c,h
	ld a,(ix+#03)
	call l92e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9277
	and #0f
	sub (ix+#0a)
	jr nc,l926d
	xor a
.l926d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l92e4
.l9277
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
	jr z,l9294
	ld b,a
	ld a,c
	ld (l90cf),a
	ld a,b
	sub #40
.l9294
	ld (l929b),a
	ld a,(l90c0)
.l929b equ $ + 1
	bit 0,a
	ld (l90c0),a
	ret
.l92a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l94c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l91eb
.l92bc
	inc hl
	ld a,(hl)
	ld (l90bb),a
	jp l91eb
.l92c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l91eb
.l92cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l90ed),a
	inc hl
	ld a,(hl)
	ld (l90de),a
	jp l91eb
.l92e4
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
.l9305 equ $ + 3
.l9304 equ $ + 2
.l9303 equ $ + 1
.l9302
	db #ff,#ff,#ff,#ff
.l9306
	dw l96a2,l96cc,l96f6
.l930c
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
.l93da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l93e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#94,#22,#95
	db #42,#95,#10,#10,#62,#95,#a2,#95
	db #c2,#95,#00,#00,#e2,#94,#e2,#95
	db #42,#95,#10,#10,#02,#96,#42,#96
	db #42,#95,#08,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
	db #dc,#5e,#00,#00,#dc,#5e,#dc,#5e
.l94c2 equ $ + 4
	db #dc,#5e,#00,#00,#62,#96,#dc,#5e
	db #dc,#5e,#82,#96,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#dc,#5e,#dc,#5e
	db #dc,#5e,#dc,#5e,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
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
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#08,#09,#09,#09,#07
	db #08,#08,#0a,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96a2 equ $ + 4
	db #00,#00,#00,#00,#00,#20,#97,#00
	db #20,#97,#00,#20,#97,#00,#20,#97
	db #00,#20,#97,#00,#20,#97,#00,#62
	db #97,#02,#ef,#97,#02,#ef,#97,#02
	db #ef,#97,#02,#ef,#97,#02,#ef,#97
.l96cc equ $ + 6
	db #02,#ef,#97,#80,#a2,#96,#00,#33
	db #98,#00,#51,#98,#00,#65,#98,#00
	db #7a,#98,#00,#7a,#98,#00,#a0,#98
	db #00,#b8,#98,#02,#b8,#98,#02,#b8
	db #98,#02,#d2,#98,#02,#f6,#98,#02
	db #d2,#98,#02,#b8,#98,#80,#cc,#96
.l96f6
	db #00,#20,#99,#00,#79,#99,#00,#2a
	db #9a,#00,#79,#99,#00,#79,#99,#00
	db #79,#99,#00,#db,#9a,#02,#68,#9b
	db #02,#68,#9b,#02,#19,#9c,#02,#68
	db #9b,#02,#19,#9c,#02,#68,#9b,#80
	db #f6,#96,#31,#02,#00,#3d,#82,#38
	db #82,#31,#82,#40,#82,#31,#82,#3f
	db #82,#3d,#82,#31,#82,#3d,#82,#38
	db #82,#31,#82,#40,#82,#31,#82,#3f
	db #82,#3d,#82,#34,#82,#3d,#82,#38
	db #82,#34,#82,#40,#82,#34,#82,#3f
	db #82,#3d,#82,#36,#82,#3d,#82,#39
	db #82,#36,#82,#40,#82,#36,#82,#3f
	db #82,#3d,#82,#ff,#c9,#b3,#0f,#49
	db #02,#b3,#00,#c9,#b3,#0f,#49,#02
	db #b3,#00,#c9,#b3,#0f,#49,#02,#b3
	db #00,#c9,#b3,#0f,#49,#02,#b3,#00
	db #c9,#b3,#0f,#49,#03,#b3,#00,#c7
	db #b3,#0f,#47,#02,#b3,#00,#c7,#b3
	db #0f,#47,#02,#b3,#00,#c7,#b3,#0f
	db #47,#02,#b3,#00,#c7,#b3,#0f,#47
	db #02,#b3,#00,#c7,#b3,#0f,#47,#03
	db #b3,#00,#cc,#b3,#0f,#4c,#02,#b3
	db #00,#cc,#b3,#0f,#4c,#02,#b3,#00
	db #cc,#b3,#0f,#4c,#02,#b3,#00,#cc
	db #b3,#0f,#4c,#02,#b3,#00,#cc,#b3
	db #0f,#4c,#03,#b3,#00,#ce,#b3,#0f
	db #4e,#02,#b3,#00,#ce,#b3,#0f,#4e
	db #02,#b3,#00,#ce,#b3,#0f,#4e,#02
	db #b3,#00,#ce,#b3,#0f,#4e,#02,#b3
	db #00,#ce,#b3,#0f,#4e,#03,#b3,#00
	db #ff,#31,#02,#b0,#01,#3d,#02,#00
	db #38,#82,#31,#82,#40,#82,#31,#82
	db #3f,#82,#3d,#82,#31,#82,#3d,#82
	db #38,#82,#31,#82,#40,#82,#31,#82
	db #3f,#82,#3d,#82,#34,#82,#3d,#82
	db #38,#82,#34,#82,#40,#82,#34,#82
	db #3f,#82,#3d,#82,#36,#82,#3d,#82
	db #39,#82,#36,#82,#40,#82,#36,#82
	db #3f,#82,#3d,#82,#ff,#50,#08,#f2
	db #00,#4e,#82,#4c,#82,#4e,#82,#50
	db #8a,#4e,#02,#02,#4c,#82,#4e,#83
	db #50,#89,#4e,#82,#4c,#82,#4e,#82
	db #50,#92,#ff,#49,#0c,#02,#4b,#82
	db #47,#8f,#c9,#02,#4b,#82,#4c,#90
	db #4e,#8c,#4c,#82,#4b,#82,#ff,#49
	db #0c,#f2,#00,#4b,#02,#02,#47,#8f
	db #c9,#02,#4b,#82,#4c,#8c,#4e,#02
	db #00,#53,#92,#ff,#50,#04,#02,#4e
	db #82,#4c,#86,#4e,#82,#4b,#8c,#4b
	db #82,#cc,#02,#4e,#83,#50,#84,#53
	db #82,#50,#86,#ce,#02,#d0,#02,#51
	db #86,#50,#82,#4e,#84,#4c,#82,#4e
	db #84,#ff,#49,#08,#02,#50,#84,#51
	db #82,#50,#92,#47,#88,#4e,#84,#50
	db #82,#4e,#86,#4c,#82,#4b,#84,#47
	db #86,#ff,#49,#08,#f2,#03,#50,#04
	db #02,#51,#82,#50,#92,#47,#88,#4e
	db #84,#50,#82,#4e,#86,#4c,#82,#4b
	db #84,#47,#86,#ff,#49,#04,#02,#44
	db #82,#49,#86,#44,#82,#47,#88,#42
	db #82,#44,#82,#47,#86,#4c,#84,#47
	db #82,#4c,#86,#47,#82,#4e,#88,#50
	db #82,#4e,#82,#4c,#82,#49,#84,#ff
	db #50,#04,#02,#53,#82,#50,#86,#53
	db #82,#4e,#88,#4c,#82,#4e,#82,#50
	db #82,#53,#82,#d0,#02,#53,#83,#55
	db #84,#53,#82,#50,#84,#4e,#02,#03
	db #4e,#04,#02,#50,#84,#4c,#86,#4c
	db #84,#ff,#c9,#f0,#00,#49,#02,#00
	db #c9,#00,#49,#82,#c9,#00,#49,#82
	db #c9,#00,#49,#82,#c9,#00,#49,#83
	db #c7,#f0,#00,#47,#02,#00,#c7,#00
	db #47,#82,#c7,#00,#47,#82,#c7,#00
	db #47,#82,#c7,#00,#47,#83,#cc,#f0
	db #00,#4c,#02,#00,#cc,#00,#4c,#82
	db #cc,#00,#4c,#82,#cc,#00,#4c,#82
	db #cc,#00,#4c,#83,#ce,#f0,#00,#4e
	db #02,#00,#ce,#00,#4e,#82,#ce,#00
	db #4e,#82,#ce,#00,#4e,#82,#ce,#00
	db #4e,#83,#ff,#a5,#f1,#00,#c9,#f0
	db #00,#bd,#c0,#19,#c9,#f0,#00,#c9
	db #01,#bd,#c0,#19,#c9,#f0,#00,#c9
	db #00,#a5,#b1,#00,#c9,#00,#c9,#00
	db #bd,#c0,#19,#c9,#f1,#00,#c9,#f0
	db #00,#bd,#c0,#19,#bd,#00,#a3,#f1
	db #00,#c7,#f0,#00,#bb,#c0,#1c,#c7
	db #f0,#00,#c7,#01,#bb,#c0,#1c,#c7
	db #f0,#00,#c7,#00,#a3,#b1,#00,#c7
	db #00,#c7,#00,#bb,#c0,#1c,#c7,#f1
	db #00,#c7,#f0,#00,#bb,#c0,#1c,#bb
	db #c0,#1c,#c0,#f1,#00,#cc,#f0,#00
	db #c0,#c0,#15,#cc,#f0,#00,#cc,#01
	db #c0,#c0,#15,#cc,#f0,#00,#cc,#00
	db #a8,#b1,#00,#cc,#00,#cc,#00,#c0
	db #c0,#15,#cc,#f1,#00,#cc,#f0,#00
	db #c0,#c0,#15,#c0,#c0,#15,#aa,#f1
	db #00,#ce,#f0,#00,#c2,#c0,#13,#ce
	db #f0,#00,#ce,#01,#c2,#c0,#13,#ce
	db #f0,#00,#ce,#f0,#00,#aa,#b1,#00
	db #ce,#00,#ce,#00,#c2,#c0,#13,#ce
	db #f1,#00,#ce,#f0,#00,#c2,#c0,#13
	db #c2,#c0,#13,#ff,#a5,#f1,#00,#c9
	db #f0,#00,#bd,#c0,#19,#c9,#f0,#00
	db #c9,#01,#bd,#c0,#19,#c9,#f0,#00
	db #c9,#00,#a5,#b1,#00,#c9,#00,#c9
	db #00,#bd,#c0,#19,#c9,#f1,#00,#c9
	db #f0,#00,#bd,#c0,#19,#bd,#00,#a3
	db #f1,#00,#c7,#f0,#00,#bb,#c0,#1c
	db #c7,#f0,#00,#c7,#01,#bb,#c0,#1c
	db #c7,#f0,#00,#c7,#00,#a3,#b1,#00
	db #c7,#00,#c7,#00,#bb,#c0,#1c,#c7
	db #f1,#00,#c7,#f0,#00,#bb,#c0,#1c
	db #bb,#c0,#1c,#c0,#f1,#00,#cc,#f0
	db #00,#c0,#c0,#15,#cc,#f0,#00,#cc
	db #01,#c0,#c0,#15,#cc,#f0,#00,#cc
	db #00,#a8,#b1,#00,#cc,#00,#cc,#00
	db #c0,#c0,#15,#cc,#f1,#00,#cc,#f0
	db #00,#c0,#c0,#15,#c0,#c0,#15,#aa
	db #f1,#00,#ce,#f0,#00,#c2,#c0,#13
	db #ce,#f0,#00,#ce,#01,#c2,#c0,#13
	db #ce,#f0,#00,#ce,#f0,#00,#aa,#b1
	db #00,#ce,#00,#ce,#00,#c2,#c0,#13
	db #ce,#f1,#00,#ce,#f0,#00,#c2,#c0
	db #13,#c2,#c0,#13,#ff,#c9,#f3,#00
	db #49,#02,#b3,#0f,#c9,#b3,#00,#49
	db #02,#b3,#0f,#c9,#b3,#00,#49,#02
	db #b3,#0f,#c9,#b3,#00,#49,#02,#b3
	db #0f,#c9,#b3,#00,#49,#03,#b3,#0f
	db #c7,#b3,#00,#47,#02,#b3,#0f,#c7
	db #b3,#00,#47,#02,#b3,#0f,#c7,#b3
	db #00,#47,#02,#b3,#0f,#c7,#b3,#00
	db #47,#02,#b3,#0f,#c7,#b3,#00,#47
	db #03,#b3,#0f,#cc,#b3,#00,#4c,#02
	db #b3,#0f,#cc,#b3,#00,#4c,#02,#b3
	db #0f,#cc,#b3,#00,#4c,#02,#b3,#0f
	db #cc,#b3,#00,#4c,#02,#b3,#0f,#cc
	db #b3,#00,#4c,#03,#b3,#0f,#ce,#b3
	db #00,#4e,#02,#b3,#0f,#ce,#b3,#00
	db #4e,#02,#b3,#0f,#ce,#b3,#00,#4e
	db #02,#b3,#0f,#ce,#b3,#00,#4e,#02
	db #b3,#0f,#ce,#b3,#00,#4e,#03,#b3
	db #0f,#ff,#a5,#f1,#00,#c9,#f0,#00
	db #bd,#c0,#16,#c9,#f0,#00,#c9,#01
	db #bd,#c0,#16,#c9,#f0,#00,#c9,#00
	db #a5,#b1,#00,#c9,#00,#c9,#00,#bd
	db #c0,#16,#c9,#f1,#00,#c9,#f0,#00
	db #bd,#c0,#16,#bd,#00,#a3,#f1,#00
	db #c7,#f0,#00,#bb,#c0,#19,#c7,#f0
	db #00,#c7,#01,#bb,#c0,#19,#c7,#f0
	db #00,#c7,#00,#a3,#b1,#00,#c7,#00
	db #c7,#00,#bb,#c0,#19,#c7,#f1,#00
	db #c7,#f0,#00,#bb,#c0,#19,#bb,#c0
	db #19,#c0,#f1,#00,#cc,#f0,#00,#c0
	db #c0,#13,#cc,#f0,#00,#cc,#01,#c0
	db #c0,#13,#cc,#f0,#00,#cc,#00,#a8
	db #b1,#00,#cc,#00,#cc,#00,#c0,#c0
	db #13,#cc,#f1,#00,#cc,#f0,#00,#c0
	db #c0,#13,#c0,#c0,#13,#aa,#f1,#00
	db #ce,#f0,#00,#c2,#c0,#11,#ce,#f0
	db #00,#ce,#01,#c2,#c0,#11,#ce,#f0
	db #00,#ce,#f0,#00,#aa,#b1,#00,#ce
	db #00,#ce,#00,#c2,#c0,#11,#ce,#f1
	db #00,#ce,#f0,#00,#c2,#c0,#11,#c2
	db #c0,#11,#ff,#a5,#f1,#00,#c9,#f0
	db #00,#bd,#c0,#16,#c9,#f0,#00,#c9
	db #01,#bd,#c0,#16,#c9,#f0,#00,#c9
	db #00,#a5,#b1,#00,#c9,#00,#c9,#00
	db #bd,#c0,#16,#c9,#f1,#00,#c9,#f0
	db #00,#bd,#c0,#16,#bd,#00,#a3,#f1
	db #00,#c7,#f0,#00,#bb,#c0,#19,#c7
	db #f0,#00,#c7,#01,#bb,#c0,#19,#c7
	db #f0,#00,#c7,#00,#a3,#b1,#00,#c7
	db #00,#c7,#00,#bb,#c0,#19,#c7,#f1
	db #00,#c7,#f0,#00,#bb,#c0,#19,#bb
	db #c0,#19,#c0,#f1,#00,#cc,#f0,#00
	db #c0,#c0,#13,#cc,#f0,#00,#cc,#01
	db #c0,#c0,#13,#cc,#f0,#00,#cc,#00
	db #a8,#b1,#00,#cc,#00,#cc,#00,#c0
	db #c0,#13,#cc,#f1,#00,#cc,#f0,#00
	db #c0,#c0,#13,#c0,#c0,#13,#aa,#f1
	db #00,#ce,#f0,#00,#c2,#c0,#11,#ce
	db #f0,#00,#ce,#01,#c2,#c0,#11,#ce
	db #f0,#00,#ce,#f0,#00,#aa,#b1,#00
	db #ce,#00,#ce,#00,#c2,#c0,#11,#ce
	db #f1,#00,#ce,#f0,#00,#c2,#c0,#11
	db #c2,#c0,#11,#ff
;
.music_info
	db "Meeting Chronos-Newswave (1995)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"