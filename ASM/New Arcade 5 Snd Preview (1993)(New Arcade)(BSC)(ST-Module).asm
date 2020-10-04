; Music of New Arcade 5 Snd Preview (1993)(New Arcade)(BSC)(ST-Module)
; Ripped by Megachur the 09/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NEWAR5SP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #8010

	read "music_header.asm"

	jr l8014
	jr l8023
.l8014
	call l803f
	ld hl,l8462
	ld de,l802c
	ld bc,l81ff
	jp #bcd7
.l8023
	ld hl,l8462
	call #bcdd
	jp l80ab
.l802c
	push ix
	call l80c7
	pop ix
	ret
	jp l803f
	jp l80c7
	jp l80ab
	db #66,#04
;
.init_music
.l803f
;
	ld b,#03
	ld ix,l840e
	ld iy,l833a
	ld de,#001c
.l804c
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
	djnz l804c
	ld a,#05
	ld (l80ef),a
	ld a,d
	ld (l8103),a
	inc a
	ld (l80ea),a
	ld a,#38
	ld (l80f4),a
	ld a,#ff
	ld (l8336),a
	ld (l8337),a
	ld (l8338),a
	ld (l8339),a
	ld a,#0c
	ld c,d
	call l8318
	ld a,#0d
	ld c,d
	jp l8318
;
.stop_music
.l80ab
;
	ld a,#07
	ld c,#3f
	call l8318
	ld a,#08
	ld c,#00
	call l8318
	ld a,#09
	ld c,#00
	call l8318
	ld a,#0a
	ld c,#00
	jp l8318
;
.play_music
.l80c7
;
	ld hl,l80ea
	dec (hl)
	ld ix,l840e
	ld bc,l841c
	call l817d
	ld ix,l842a
	ld bc,l8438
	call l817d
	ld ix,l8446
	ld bc,l8454
	call l817d
.l80ea equ $ + 1
	ld a,#00
	or a
	jr nz,l80f3
.l80ef equ $ + 1
	ld a,#00
	ld (l80ea),a
.l80f4 equ $ + 1
.l80f3
	ld a,#00
	ld hl,l8337
	cp (hl)
	jr z,l8102
	ld (hl),a
	ld c,a
	ld a,#07
	call l8318
.l8103 equ $ + 1
.l8102
	ld a,#00
	ld hl,l8336
	cp (hl)
	jr z,l8111
	ld (hl),a
	ld c,a
	ld a,#06
	call l8318
.l8112 equ $ + 1
.l8111
	ld a,#00
	ld hl,l8338
	cp (hl)
	jr z,l8120
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8318
.l8121 equ $ + 1
.l8120
	ld a,#00
	ld hl,l8339
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8318
.l812e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l822e
.l813d
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
	jp l8318
.l8157
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l816c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l816c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8190
.l817d
	ld a,(l80ea)
	or a
	jp nz,l822e
	dec (ix+#06)
	jp nz,l822e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8190
	ld a,(hl)
	or a
	jr z,l812e
	cp #fe
	jr z,l813d
	cp #ff
	jr z,l8157
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8340
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l81cc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l81cc
	and #7f
	ld (ix+#06),a
	jr l821f
.l81cc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l81e0
	ld (ix+#05),a
	ld (ix+#0a),d
.l81e0
	add a
	add a
	add a
	ld e,a
	ld hl,l8476
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
.l81ff equ $ + 1
	jr z,l821f
	cp #f0
	jp z,l82d4
	cp #d0
	jp z,l82f0
	cp #b0
	jp z,l82f8
	cp #80
	jp nc,l8300
	cp #10
	jr nz,l821f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l821f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l822e
	ld a,(ix+#17)
	or a
	jr nz,l8242
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8242
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l826d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8340
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l826d
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
	call l8318
	ld c,h
	ld a,(ix+#03)
	call l8318
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l82ab
	and #0f
	sub (ix+#0a)
	jr nc,l82a1
	xor a
.l82a1
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8318
.l82ab
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
	jr z,l82c8
	ld b,a
	ld a,c
	ld (l8103),a
	ld a,b
	sub #40
.l82c8
	ld (l82cf),a
	ld a,(l80f4)
.l82cf equ $ + 1
	bit 0,a
	ld (l80f4),a
	ret
.l82d4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l84f6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l821f
.l82f0
	inc hl
	ld a,(hl)
	ld (l80ef),a
	jp l821f
.l82f8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l821f
.l8300
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8121),a
	inc hl
	ld a,(hl)
	ld (l8112),a
	jp l821f
.l8318
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
.l8339 equ $ + 3
.l8338 equ $ + 2
.l8337 equ $ + 1
.l8336
	db #ff,#ff,#ff,#ff
.l833a
	dw l8836,l8869,l889c
.l8340
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
.l840e
	db #00,#00,#00,#01,#08,#00,#00,#00
.l841c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l842a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l8438 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8446
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l8454 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8462 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l8476
	db #10,#7f,#10,#7f,#10,#7f,#00,#00
	db #16,#85,#56,#85,#76,#85,#00,#00
	db #96,#85,#d6,#85,#f6,#85,#00,#00
	db #10,#7f,#10,#7f,#10,#7f,#00,#00
	db #16,#86,#56,#86,#76,#86,#00,#00
	db #10,#7f,#10,#7f,#10,#7f,#00,#00
	db #96,#86,#d6,#86,#f6,#86,#00,#00
	db #16,#86,#16,#87,#f6,#85,#18,#07
	db #36,#87,#76,#87,#f6,#85,#18,#07
	db #10,#7f,#56,#85,#96,#84,#08,#18
	db #76,#85,#b6,#85,#96,#84,#18,#08
	db #36,#82,#76,#82,#d6,#80,#07,#18
	db #86,#fe,#c6,#00,#e6,#fe,#00,#00
	db #06,#ff,#46,#ff,#66,#ff,#00,#00
	db #26,#05,#66,#05,#86,#05,#00,#00
	db #a6,#05,#e6,#05,#06,#06,#00,#00
.l84f6
	db #26,#06,#46,#06,#96,#87,#b6,#87
	db #d6,#87,#f6,#87,#16,#88,#66,#00
	db #e6,#04,#a0,#f6,#06,#05,#26,#05
	db #46,#05,#a0,#f6,#a0,#f6,#a0,#f6
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
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0d,#0b,#0b,#09,#08
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
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #f8,#00,#fd,#f8,#00,#fd,#f8,#00
	db #fd,#f8,#00,#fd,#f8,#00,#fd,#f8
	db #00,#fd,#f8,#00,#fd,#f8,#00,#fd
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
.l8836
	db #00,#cf,#88,#00,#16,#89,#00,#87
	db #89,#00,#f8,#89,#00,#cf,#88,#00
	db #69,#8a,#00,#da,#8a,#00,#4b,#8b
	db #00,#bc,#8b,#00,#1e,#8c,#00,#87
	db #89,#00,#f8,#89,#00,#cf,#88,#00
	db #69,#8a,#00,#da,#8a,#00,#4b,#8b
.l8869 equ $ + 3
	db #80,#36,#88,#00,#87,#8c,#00,#b9
	db #8c,#00,#e4,#8c,#00,#0c,#8d,#00
	db #87,#8c,#00,#31,#8d,#00,#5b,#8d
	db #00,#8c,#8d,#00,#b5,#8d,#00,#12
	db #8e,#00,#e4,#8c,#00,#0c,#8d,#00
	db #87,#8c,#00,#31,#8d,#00,#5b,#8d
.l889c equ $ + 6
	db #00,#8c,#8d,#80,#69,#88,#00,#70
	db #8e,#00,#a6,#8e,#00,#03,#8f,#00
	db #61,#8f,#00,#c3,#8f,#00,#a6,#8e
	db #00,#20,#90,#00,#7e,#90,#00,#70
	db #8e,#00,#e0,#90,#00,#03,#8f,#00
	db #61,#8f,#00,#c3,#8f,#00,#a6,#8e
	db #00,#20,#90,#00,#7e,#90,#80,#9c
	db #88,#27,#02,#17,#27,#02,#07,#27
	db #82,#27,#82,#27,#82,#27,#82,#27
	db #82,#27,#82,#2c,#82,#2c,#82,#2c
	db #82,#2c,#82,#2c,#82,#2c,#82,#2c
	db #82,#2c,#82,#2a,#82,#2a,#82,#2a
	db #82,#2a,#82,#29,#82,#29,#82,#29
	db #82,#29,#82,#33,#02,#f7,#06,#27
	db #02,#17,#27,#02,#07,#27,#82,#27
	db #82,#27,#82,#27,#82,#27,#82,#ff
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#2c,#02,#17,#50
	db #02,#f2,#03,#2c,#02,#17,#50,#02
	db #f2,#03,#2c,#02,#17,#50,#02,#f2
	db #03,#2c,#02,#17,#50,#02,#f2,#03
	db #2a,#02,#17,#4e,#02,#f2,#04,#2a
	db #02,#17,#4e,#02,#f2,#04,#29,#02
	db #17,#4d,#02,#f2,#05,#29,#02,#17
	db #4d,#02,#f2,#05,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #ff,#25,#02,#12,#49,#02,#f7,#02
	db #25,#02,#12,#49,#02,#f7,#02,#25
	db #02,#12,#49,#02,#f7,#02,#25,#02
	db #12,#49,#02,#f7,#02,#2a,#02,#12
	db #4e,#02,#f7,#02,#2a,#02,#12,#4e
	db #02,#f7,#02,#2a,#02,#12,#4e,#02
	db #f7,#02,#2a,#02,#12,#4e,#02,#f7
	db #02,#2c,#02,#12,#50,#02,#f7,#02
	db #2c,#02,#12,#50,#02,#f7,#02,#2c
	db #02,#12,#50,#02,#f7,#02,#2c,#02
	db #12,#50,#02,#f7,#02,#31,#02,#12
	db #49,#02,#f7,#02,#31,#02,#12,#49
	db #02,#f7,#02,#31,#02,#12,#49,#02
	db #f7,#02,#31,#02,#12,#49,#02,#f7
	db #02,#ff,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#2c,#02
	db #17,#50,#02,#f2,#03,#2c,#02,#17
	db #50,#02,#f2,#03,#2c,#02,#17,#50
	db #02,#f2,#03,#2c,#02,#17,#50,#02
	db #f2,#03,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#ff,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#2c
	db #02,#17,#50,#02,#f2,#03,#2c,#02
	db #17,#50,#02,#f2,#03,#2c,#02,#17
	db #50,#02,#f2,#03,#2c,#02,#17,#50
	db #02,#f2,#03,#2a,#02,#17,#4e,#02
	db #f2,#04,#2a,#02,#17,#4e,#02,#f2
	db #04,#29,#02,#17,#4d,#02,#f2,#05
	db #29,#02,#17,#4d,#02,#f2,#05,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#ff,#25,#02,#12,#49
	db #02,#f7,#02,#25,#02,#12,#49,#02
	db #f7,#02,#25,#02,#12,#49,#02,#f7
	db #02,#25,#02,#12,#49,#02,#f7,#02
	db #2a,#02,#12,#4e,#02,#f7,#02,#2a
	db #02,#12,#4e,#02,#f7,#02,#2a,#02
	db #12,#4e,#02,#f7,#02,#2a,#02,#12
	db #4e,#02,#f7,#02,#2c,#02,#12,#50
	db #02,#f7,#02,#2c,#02,#12,#50,#02
	db #f7,#02,#2c,#02,#12,#50,#02,#f7
	db #02,#2c,#02,#12,#50,#02,#f7,#02
	db #31,#02,#12,#49,#02,#f7,#02,#31
	db #02,#12,#49,#02,#f7,#02,#31,#02
	db #12,#49,#02,#f7,#02,#31,#02,#12
	db #49,#02,#f7,#02,#ff,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#2c,#02,#17,#50,#02,#f2,#03
	db #2c,#02,#17,#50,#02,#f2,#03,#2c
	db #02,#17,#50,#02,#f2,#03,#2c,#02
	db #17,#50,#02,#f2,#03,#27,#02,#17
	db #4b,#02,#f2,#02,#27,#02,#17,#4b
	db #02,#f2,#02,#27,#02,#17,#4b,#02
	db #f2,#02,#27,#02,#17,#4b,#02,#f2
	db #02,#27,#02,#17,#4b,#02,#f2,#02
	db #27,#02,#17,#4b,#02,#f2,#02,#27
	db #02,#17,#4b,#02,#f2,#02,#27,#02
	db #17,#4b,#02,#f2,#02,#ff,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#3a,#02,#01
	db #3a,#82,#6b,#02,#04,#3a,#02,#06
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #3a,#02,#06,#3a,#82,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#ba,#01,#3a,#82,#ba,#01,#3a
	db #82,#3a,#02,#06,#6b,#02,#04,#ff
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#3a
	db #02,#01,#3a,#82,#6b,#02,#04,#3a
	db #02,#06,#ba,#01,#ba,#01,#ba,#01
	db #ba,#01,#3a,#02,#06,#3a,#82,#6b
	db #02,#04,#3a,#02,#01,#6b,#02,#04
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#6b
	db #02,#04,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c1,#01,#c1,#01,#c1,#01
	db #c1,#01,#bd,#01,#bd,#01,#bd,#01
	db #bd,#01,#3a,#02,#06,#6b,#02,#04
	db #ff,#3f,#04,#18,#42,#02,#08,#3f
	db #82,#45,#82,#46,#82,#4b,#84,#47
	db #82,#46,#82,#44,#88,#46,#82,#44
	db #82,#42,#84,#44,#82,#42,#82,#41
	db #82,#3f,#82,#3d,#84,#3f,#84,#36
	db #02,#f7,#06,#33,#02,#07,#45,#82
	db #3a,#86,#ff,#3f,#04,#18,#42,#02
	db #08,#3f,#82,#45,#82,#46,#82,#4b
	db #84,#47,#82,#46,#82,#44,#88,#46
	db #82,#44,#82,#42,#84,#44,#82,#42
	db #82,#41,#82,#3f,#82,#3d,#84,#3f
	db #8c,#3d,#04,#f8,#06,#ff,#49,#04
	db #f8,#06,#49,#04,#08,#49,#84,#47
	db #84,#46,#82,#47,#82,#44,#82,#46
	db #82,#42,#8a,#44,#84,#44,#82,#50
	db #84,#4e,#84,#4d,#82,#4e,#82,#4b
	db #82,#4d,#82,#49,#88,#ff,#3f,#04
	db #18,#42,#02,#08,#3f,#82,#45,#82
	db #46,#82,#4b,#84,#47,#82,#46,#82
	db #44,#88,#46,#82,#44,#82,#42,#84
	db #3f,#88,#46,#82,#44,#82,#42,#84
	db #3f,#8c,#ff,#3f,#04,#18,#42,#02
	db #08,#3f,#82,#45,#82,#46,#82,#4b
	db #84,#47,#82,#46,#82,#44,#88,#42
	db #82,#44,#82,#46,#84,#3a,#82,#3a
	db #82,#3a,#82,#3c,#82,#3e,#84,#3f
	db #8c,#3d,#04,#18,#ff,#49,#04,#18
	db #49,#04,#08,#49,#84,#47,#84,#46
	db #82,#47,#82,#44,#82,#46,#82,#42
	db #82,#42,#82,#41,#82,#42,#84,#44
	db #84,#44,#82,#50,#84,#4e,#82,#cd
	db #08,#ce,#08,#4d,#82,#4e,#82,#4b
	db #82,#4d,#82,#49,#88,#ff,#3f,#04
	db #18,#42,#02,#08,#3f,#82,#45,#82
	db #46,#82,#4b,#84,#47,#82,#46,#82
	db #44,#88,#46,#82,#44,#82,#42,#84
	db #3f,#88,#c6,#08,#ca,#08,#c8,#08
	db #ca,#08,#4b,#84,#3f,#8c,#ff,#3a
	db #02,#01,#6b,#02,#04,#3a,#02,#06
	db #3a,#02,#01,#ba,#01,#ba,#01,#3a
	db #82,#3a,#02,#06,#3a,#02,#01,#3a
	db #82,#6b,#02,#04,#3a,#02,#06,#ba
	db #01,#ba,#01,#ba,#01,#ba,#01,#3a
	db #02,#06,#3a,#82,#6b,#02,#04,#3a
	db #02,#01,#6b,#02,#04,#3a,#02,#06
	db #3a,#02,#01,#ba,#01,#ba,#01,#3a
	db #82,#3a,#02,#06,#6b,#02,#04,#3a
	db #02,#01,#6b,#02,#04,#3a,#02,#06
	db #ba,#01,#3a,#82,#ba,#01,#3a,#84
	db #6b,#02,#14,#ff,#3a,#02,#01,#6b
	db #02,#04,#3a,#02,#06,#3a,#02,#01
	db #ba,#01,#ba,#01,#3a,#82,#3a,#02
	db #06,#3a,#02,#01,#3a,#82,#6b,#02
	db #04,#3a,#02,#06,#ba,#01,#ba,#01
	db #ba,#01,#ba,#01,#3a,#02,#06,#3a
	db #82,#6b,#02,#04,#3a,#02,#01,#6b
	db #02,#04,#3a,#02,#06,#3a,#02,#01
	db #ba,#01,#ba,#01,#3a,#82,#3a,#02
	db #06,#6b,#02,#04,#3a,#02,#01,#6b
	db #02,#04,#3a,#02,#06,#ba,#01,#3a
	db #82,#ba,#01,#3a,#82,#3d,#04,#f8
	db #06,#ff,#3a,#04,#11,#6b,#04,#04
	db #6b,#84,#6b,#82,#3a,#02,#01,#3a
	db #84,#6b,#04,#04,#6b,#84,#6b,#84
	db #3a,#04,#01,#6b,#02,#04,#3a,#02
	db #01,#3a,#84,#6b,#04,#04,#3a,#04
	db #01,#6b,#02,#04,#ba,#01,#ba,#01
	db #3a,#82,#6b,#04,#04,#6b,#82,#ff
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#3a,#02,#01
	db #3a,#82,#6b,#02,#04,#3a,#02,#06
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #3a,#02,#06,#3a,#82,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#ba,#01,#3a,#82,#ba,#01,#3a
	db #84,#6b,#02,#14,#ff,#3a,#02,#11
	db #6b,#02,#04,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#3a,#02,#01,#3a,#82,#6b
	db #02,#04,#3a,#02,#06,#ba,#01,#3a
	db #82,#ba,#01,#3a,#02,#06,#3a,#82
	db #6b,#02,#04,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#3a,#02,#01,#ba
	db #01,#ba,#01,#3a,#82,#3a,#02,#06
	db #6b,#02,#04,#3a,#02,#01,#6b,#02
	db #04,#3a,#02,#06,#ba,#01,#3a,#82
	db #ba,#01,#3a,#82,#3a,#02,#06,#6b
	db #02,#04,#ff,#ba,#01,#ba,#01,#ba
	db #01,#ba,#01,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#3a,#02,#01,#3a,#82,#6b
	db #02,#04,#3a,#02,#06,#ba,#01,#ba
	db #01,#ba,#01,#ba,#01,#3a,#02,#06
	db #3a,#82,#6b,#02,#04,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#6b,#02,#04,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#ba,#01
	db #3a,#82,#ba,#01,#3a,#82,#3a,#02
	db #06,#6b,#02,#04,#ff,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#3a,#02,#01,#3a,#82,#6b
	db #02,#04,#3a,#02,#06,#ba,#01,#ba
	db #01,#ba,#01,#ba,#01,#3a,#02,#06
	db #3a,#82,#6b,#02,#04,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#3a,#02
	db #01,#ba,#01,#ba,#01,#3a,#82,#3a
	db #02,#06,#6b,#02,#04,#3a,#02,#01
	db #6b,#02,#04,#3a,#02,#06,#ba,#01
	db #3a,#82,#ba,#01,#3a,#84,#6b,#02
	db #14,#ff,#3a,#02,#11,#6b,#02,#04
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#3a
	db #02,#01,#3a,#82,#6b,#02,#04,#3a
	db #02,#06,#ba,#01,#3a,#82,#ba,#01
	db #3a,#02,#06,#3a,#82,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#3a,#02,#01,#ba,#01,#ba,#01
	db #3a,#82,#3a,#02,#06,#6b,#02,#04
	db #3a,#02,#01,#6b,#02,#04,#3a,#02
	db #06,#ba,#01,#3a,#82,#ba,#01,#3a
	db #82,#3a,#02,#06,#6b,#02,#04,#ff
	db #ba,#01,#ba,#01,#ba,#01,#ba,#01
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#3a
	db #02,#01,#3a,#82,#6b,#02,#04,#3a
	db #02,#06,#ba,#01,#ba,#01,#ba,#01
	db #ba,#01,#3a,#02,#06,#3a,#82,#6b
	db #02,#04,#3a,#02,#01,#6b,#02,#04
	db #3a,#02,#06,#3a,#02,#01,#ba,#01
	db #ba,#01,#3a,#82,#3a,#02,#06,#6b
	db #02,#04,#3a,#02,#01,#6b,#02,#04
	db #3a,#02,#06,#ba,#01,#3a,#82,#ba
	db #01,#3a,#82,#3a,#02,#06,#6b,#02
	db #04,#ff,#3a,#04,#11,#6b,#04,#04
	db #6b,#84,#6b,#82,#3a,#02,#01,#3a
	db #84,#6b,#04,#04,#6b,#84,#6b,#84
	db #3a,#04,#01,#6b,#02,#04,#3a,#02
	db #01,#3a,#84,#6b,#04,#04,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c1,#01
	db #c1,#01,#c1,#01,#c1,#01,#bd,#01
	db #bd,#01,#bd,#01,#3d,#83,#6b,#02
	db #04,#ff,#00,#cc,#21,#0f,#0f,#4c
	db #77,#cc,#77,#ee,#66,#cc,#00,#00
	db #11,#88,#77,#ee,#77,#ee,#77,#ee
	db #21,#0f,#0f,#4c,#66,#00,#77,#ee
	db #00,#cc,#00,#00,#11,#88,#77,#ee
	db #77,#ee,#77,#ee,#21,#0f,#0f,#4c
	db #77,#ee,#77,#ee,#77,#ee,#00,#00
	db #77,#ee,#77,#ee,#77,#ee,#77,#ee
	db #21,#05,#0f,#06,#1f,#87,#05,#0f
	db #06,#4c,#77,#ee,#11,#cc,#21,#0f
	db #0f,#4c,#77,#cc,#77,#ee,#66,#cc
	db #00,#00,#11,#88,#77,#ee,#77,#ee
	db #77,#ee,#21,#0f,#0f,#4c,#66,#00
	db #77,#ee,#00,#cc,#00,#00,#11,#88
	db #77,#ee,#77,#ee,#77,#ee,#21,#0f
	db #0f,#4c,#66,#ee,#77,#ee,#33,#cc
	db #00,#00,#11,#88,#77,#ee,#77,#ee
	db #77,#ee,#21,#38,#83,#02,#0a,#0a
	db #07,#1f,#87,#05,#0f,#4e,#1f,#05
	db #00,#ff,#05,#00,#ff,#05,#00,#32
	db #05,#66,#08,#21,#05,#0f,#06,#1f
	db #87,#05,#0f,#06,#4c,#33,#cc,#77
	db #ee,#21,#0f,#0f,#4c,#66,#05,#00
	db #04,#cc,#00,#00,#77,#ee,#33,#cc
	db #33,#cc,#33,#cc,#05,#ff,#50,#00
	db #00,#f0,#e0,#05,#00,#20,#70,#f0
	db #05,#00,#04,#f0,#e0,#05,#00,#20
	db #70,#f0,#05,#00,#04,#f0,#e0,#05
	db #0e,#03,#05,#00,#1d,#70,#f0,#05
	db #00,#04,#f0,#e0,#0e,#0e,#05,#00
	db #1e,#70,#f0,#05,#00,#04,#f0,#e0
	db #05,#0e,#07,#05,#00,#19,#70,#f0
	db #05,#00,#04,#f0,#e0,#0e,#0e,#05
	db #00,#1e,#70,#f0,#05,#00,#04,#f0
	db #e0,#05,#0e,#0b,#05,#00,#15,#70
	db #f0,#05,#00,#04,#f0,#e0,#05,#0e
	db #03,#05,#00,#1d,#70,#f0,#05,#00
	db #04,#f0,#e0,#05,#0e,#0f,#05,#00
	db #11,#70,#f0,#05,#00,#04,#f0,#e0
	db #05,#0e,#03,#05,#00,#1d,#70,#f0
	db #05,#00,#04,#05,#f0,#0c,#05,#90
	db #04,#c0,#f0,#90,#90,#80,#00,#80
	db #30,#05,#f0,#0c,#05,#00,#04,#05
	db #f0,#0c,#90,#10,#90,#90,#e0,#70
	db #c0,#30,#80,#30,#05,#f0,#0e,#05
	db #00,#52,#10,#80,#70,#e0,#30,#c0
	db #10,#80,#70,#c0,#60,#60,#70,#f0
	db #70,#c0,#70,#e0,#10,#80,#05,#00
	db #04,#10,#80,#05,#00,#04,#60,#c0
	db #70,#c0,#60,#60,#70,#c0,#70,#e0
	db #10,#80,#00,#00,#70,#60,#70,#60
	db #05,#00,#04,#60,#c0,#70,#c0,#05
	db #60,#03,#00,#70,#c0,#70,#e0,#00
	db #00,#70,#60,#70,#60,#00,#00,#30
	db #00,#10,#80,#00,#60,#00,#c0,#87
	db #3f,#05,#ff,#04,#cb,#7f,#05,#ff
	db #04,#ed,#0f,#0f,#7f,#05,#ff,#10
	db #ed,#0f,#0f,#7f,#05,#ff,#10,#ed
	db #0f,#0f,#7f,#05,#ff,#10,#ed,#05
	db #0f,#05,#1e,#1f,#87,#2e,#70,#60
	db #70,#60,#43,#4c,#66,#66,#11,#88
	db #21,#0f,#0b,#4c,#05,#00,#08,#77
	db #66,#77,#66,#77,#66,#77,#66,#21
	db #0f,#0b,#4c,#05,#00,#08,#77,#66
	db #77,#66,#77,#66,#77,#66,#21,#0f
	db #0b,#4c,#05,#00,#08,#77,#66,#77
	db #66,#77,#66,#77,#66,#21,#0f,#0f
	db #0d,#0d,#0f,#0f,#1f,#87,#05,#0f
	db #06,#4c,#66,#66,#11,#88,#21,#0f
	db #0f,#4c,#66,#05,#00,#04,#66,#00
	db #00,#11,#88,#77,#66,#77,#66,#77
	db #66,#21,#0f,#0f,#4c,#66,#66,#00
	db #00,#11,#88,#00,#00,#11,#88,#77
	db #66,#77,#66,#77,#66,#21,#0f,#0f
	db #4c,#66,#66,#00,#00,#66,#66,#00
	db #00,#11,#88,#77,#66,#77,#66,#77
	db #66,#21,#05,#0f,#06,#1f,#87,#05
	db #0f,#06,#4c,#66,#66,#00,#66,#21
	db #0f,#0f,#4c,#05,#00,#08,#77,#66
	db #77,#66,#77,#66,#77,#66,#21,#0f
	db #0f,#4c,#66,#66,#00,#00,#11,#88
	db #00,#00,#11,#88,#77,#66,#77,#66
	db #77,#66,#21,#0f,#0f,#4c,#66,#66
	db #00,#00,#66,#66,#00,#00,#11,#88
	db #66,#66,#77,#66,#00,#66,#21,#05
	db #0f,#06,#1f,#87,#0f,#0b,#0a,#0e
	db #0f,#00,#4c,#70,#60,#70,#60,#21
	db #01,#08,#4c,#60,#05,#00,#03,#70
	db #e0,#00,#00,#10,#80,#70,#60,#70
	db #60,#70,#60,#21,#01,#08,#4c,#60
	db #05,#00,#03,#10,#80,#00,#00,#10
	db #80,#60,#00,#70,#60,#60,#00,#21
	db #01,#08,#4c,#05,#00,#08,#70,#60
	db #70,#60,#70,#60,#70,#60,#21,#00
	db #05,#0f,#05,#1f,#87,#05,#0f,#06
	db #4c,#77,#66,#11,#88,#21,#0f,#0f
	db #4c,#05,#00,#08,#77,#66,#77,#66
	db #77,#66,#77,#66,#21,#0f,#0f,#4c
	db #05,#00,#08,#77,#66,#77,#66,#77
	db #66,#77,#66,#21,#0f,#0f,#4c,#66
	db #66,#00,#00,#66,#66,#00,#00,#11
	db #88,#66,#66,#77,#66,#00,#66,#21
	db #05,#0f,#06,#1f,#87,#0f,#1e,#c3
	db #05,#0f,#03,#4c,#77,#66,#11,#88
	db #21,#0f,#0f,#4c,#66,#05,#00,#03
	db #77,#ee,#00,#00,#11,#88,#77,#66
	db #77,#66,#77,#66,#21,#0f,#0f,#4c
	db #66,#05,#00,#03,#11,#88,#00,#00
	db #11,#88,#77,#66,#77,#66,#77,#66
	db #21,#0f,#0f,#4c,#05,#00,#08,#77
	db #66,#77,#66,#77,#66,#77,#66,#21
	db #05,#0f,#06,#1f,#87,#05,#0f,#06
	db #4c,#77,#66,#00,#66,#21,#0f,#0f
	db #4c,#66,#05,#00,#03,#77,#ee,#00
	db #00,#11,#88,#77,#66,#77,#66,#77
	db #66,#21,#0f,#0f,#4c,#66,#05,#00
	db #03,#11,#88,#00,#00,#11,#88,#77
	db #66,#77,#66,#77,#66,#21,#0f,#0f
	db #4c,#66,#66,#00,#00,#66,#66,#00
	db #00,#11,#88,#77,#66,#77,#66,#77
	db #66,#21,#29,#0b,#0a,#02,#03,#07
	db #1f,#87,#05,#0f,#4e,#1f,#05,#00
	db #ff,#05,#00,#ff,#05,#00,#33,#44
	db #01,#10,#00,#03,#08,#44,#01,#10
	db #00,#87,#2e,#01,#04,#00,#43,#4c
	db #01,#04,#00,#21,#09,#09,#4c,#01
	db #10,#00,#21,#08,#03,#4c,#01,#10
	db #00,#21,#09,#0f,#4c,#01,#10,#00
	db #21,#0f,#0f,#00,#00,#04,#05,#00
	db #52,#c0,#05,#00,#22,#30,#05,#00
	db #04,#c0,#05,#00,#22,#30,#05,#00
	db #04,#c0,#00,#05,#0e,#04,#05,#00
	db #1d,#30,#05,#00,#04,#c0,#00,#0e
	db #0e,#05,#00,#1f,#30,#05,#00,#04
	db #c0,#00,#05,#0e,#08,#05,#00,#19
	db #30,#05,#00,#04,#c0,#00,#0e,#0e
	db #05,#00,#1f,#30,#05,#00,#04,#c0
	db #00,#05,#0e,#0c,#05,#00,#15,#30
	db #05,#00,#04,#c0,#00,#05,#0e,#03
	db #05,#00,#1e,#30,#05,#00,#04,#c0
	db #00,#05,#0e,#20,#00,#30,#05,#00
	db #04,#c0,#00,#05,#0e,#03,#05,#00
	db #1e,#30,#05,#00,#04,#05,#f0,#0c
	db #c0,#30,#90,#90,#c0,#f0,#05,#90
	db #03,#40,#90,#05,#f0,#0d,#05,#00
	db #04,#05,#f0,#0c,#05,#90,#04,#e0
	db #70,#f0,#90,#90,#05,#f0,#0f,#05
	db #00,#52,#10,#80,#60,#e0,#00,#60
	db #10,#80,#60,#c0,#05,#60,#03,#b0
	db #60,#00,#60,#e0,#10,#80,#10,#80
	db #00,#00,#10,#80,#05,#00,#04,#05
	db #60,#03,#00,#70,#c0,#60,#00,#60
	db #60,#10,#80,#10,#80,#05,#60,#04
	db #05,#00,#04,#05,#60,#03,#00,#70
	db #c0,#60,#00,#60,#00,#60,#e0,#10
	db #80,#05,#60,#04,#00,#00,#10,#80
	db #10,#80,#60,#60,#10,#80,#87,#2e
	db #05,#00,#04,#43,#4c,#05,#00,#04
	db #21,#0c,#03,#4c,#05,#00,#10,#21
	db #08,#03,#4c,#05,#00,#10,#21,#0c
	db #03,#4c,#05,#00,#10,#21,#05,#0f
	db #06,#1f,#87,#2e,#05,#60,#04,#43
	db #4c,#66,#66,#11,#88,#21,#08,#01
	db #4c,#05,#00,#08,#05,#66,#08,#21
	db #08,#01,#4c,#05,#00,#08,#05,#66
	db #08,#21,#08,#01,#4c,#05,#00,#08
	db #05,#66,#08,#21,#02,#0a,#03,#0d
	db #0f,#0f,#1f,#87,#05,#0f,#06,#4c
	db #66,#66,#33,#00,#21,#0f,#0f,#4c
	db #66,#66,#00,#00,#66,#66,#00,#00
	db #11,#88,#05,#66,#06,#21,#0f,#0f
	db #4c,#66,#66,#00,#00,#33,#05,#00
	db #03,#11,#88,#05,#66,#06,#21,#0f
	db #0f,#4c,#66,#66,#00,#00,#66,#66
	db #00,#00,#11,#88,#05,#66,#06,#21
	db #05,#0f,#06,#1f,#87,#05,#0f,#06
	db #4c,#05,#66,#04,#21,#0f,#0f,#4c
	db #05,#00,#08,#05,#66,#08,#21,#0f
	db #0f,#4c,#66,#66,#00,#00,#33,#05
	db #00,#03,#11,#88,#05,#66,#06,#21
	db #0f,#0f,#4c,#66,#66,#00,#00,#66
	db #66,#00,#00,#11,#88,#05,#66,#06
	db #21,#05,#0f,#06,#1f,#87,#0f,#0b
	db #08,#08,#0b,#01,#4c,#05,#60,#04
	db #21,#09,#09,#4c,#60,#05,#00,#04
	db #c0,#00,#00,#10,#80,#05,#60,#06
	db #21,#09,#09,#4c,#60,#60,#00,#00
	db #30,#05,#00,#03,#10,#80,#60,#00
	db #05,#60,#03,#00,#21,#09,#09,#4c
	db #05,#00,#08,#05,#60,#08,#21,#08
	db #05,#0f,#05,#1f,#87,#05,#0f,#06
	db #4c,#66,#66,#11,#88,#21,#0f,#0f
	db #4c,#05,#00,#08,#05,#66,#08,#21
	db #0f,#0f,#4c,#05,#00,#08,#05,#66
	db #08,#21,#0f,#0f,#4c,#66,#66,#00
	db #00,#66,#66,#00,#00,#11,#88,#05
	db #66,#06,#21,#05,#0f,#06,#1f,#87
	db #0f,#0f,#87,#05,#0f,#03,#4c,#66
	db #66,#33,#00,#21,#0f,#0f,#4c,#66
	db #05,#00,#04,#cc,#00,#00,#11,#88
	db #05,#66,#06,#21,#0f,#0f,#4c,#66
	db #66,#00,#00,#33,#05,#00,#03,#11
	db #88,#05,#66,#06,#21,#0f,#0f,#4c
	db #05,#00,#08,#05,#66,#08,#21,#05
	db #0f,#06,#1f,#87,#05,#0f,#06,#4c
	db #05,#66,#04,#21,#0f,#0f,#4c,#66
	db #05,#00,#04,#cc,#00,#00,#11,#88
	db #05,#66,#06,#21,#0f,#0f,#4c,#66
	db #66,#00,#00,#33,#05,#00,#03,#11
	db #88,#05,#66,#06,#21,#0f,#0f,#4c
	db #66,#66,#00,#00,#66,#66,#00,#00
	db #11,#88,#05,#66,#06,#21,#38,#83
	db #05,#0b,#03,#07,#1f,#05,#ff,#50
	db #05,#00,#ff,#05,#00,#ff,#05,#00
	db #b4,#f0,#c0,#05,#00,#20,#30,#f0
	db #05,#00,#04,#f0,#c0,#05,#00,#20
	db #30,#f0,#05,#00,#04,#f0,#c0,#05
	db #0e,#04,#05,#00,#1c,#30,#f0,#05
	db #00,#04,#f0,#c0,#0e,#0e,#05,#00
	db #1e,#30,#f0,#05,#00,#04,#f0,#c0
	db #05,#0e,#08,#05,#00,#18,#30,#f0
	db #05,#00,#04,#f0,#c0,#0e,#0e,#05
	db #00,#1e,#30,#f0,#05,#00,#04,#f0
	db #c0,#05,#0e,#0c,#05,#00,#14,#30
	db #f0,#05,#00,#04,#f0,#c0,#05,#0e
	db #03,#05,#00,#1d,#30,#f0,#05,#00
	db #04,#f0,#c0,#05,#0e,#20,#30,#f0
	db #05,#00,#04,#f0,#c0,#05,#0e,#20
	db #30,#f0,#05,#00,#04,#05,#f0,#0c
	db #e0,#70,#c0,#30,#c0,#10,#c0,#30
	db #90,#c0,#80,#10,#05,#f0,#0c,#05
	db #00,#04,#05,#f0,#0c,#90,#90,#c0
	db #30,#c0,#30,#80,#30,#80,#10,#05
	db #f0,#0e,#05,#00,#52,#70,#e0,#60
	db #60,#70,#c0,#10,#80,#60,#60,#30
	db #c0,#60,#30,#70,#e0,#60,#60,#10
	db #80,#10,#80,#00,#00,#70,#e0,#05
	db #00,#04,#60,#60,#70,#e0,#60,#00
	db #70,#e0,#60,#60,#10,#80,#10,#80
	db #30,#c0,#30,#c0,#05,#00,#04,#60
	db #60,#70,#e0,#60,#00,#70,#e0,#70
	db #e0,#60,#60,#10,#80,#30,#c0,#30
	db #c0,#05,#00,#03,#c0,#70,#e0,#30
	db #c0,#30,#00,#87,#2e,#05,#00,#04
	db #43,#4c,#05,#00,#04,#21,#09,#09
	db #4c,#05,#00,#10,#21,#09,#09,#4c
	db #05,#00,#10,#21,#09,#09,#4c,#05
	db #00,#10,#21,#05,#0f,#05,#1e,#1f
	db #87,#2e,#30,#c0,#30,#c0,#43,#4c
	db #33,#cc,#77,#ee,#21,#0f,#0b,#4c
	db #05,#00,#08,#33,#cc,#33,#cc,#33
	db #cc,#33,#cc,#21,#0f,#0b,#4c,#05
	db #00,#08,#33,#cc,#33,#cc,#33,#cc
	db #33,#cc,#21,#0f,#0b,#4c,#05,#00
	db #08,#33,#cc,#33,#cc,#33,#cc,#33
	db #cc,#21,#05,#0f,#06,#1f,#87,#05
	db #0f,#06,#4c,#33,#cc,#77,#ee,#21
	db #0f,#0f,#4c,#33,#cc,#00,#00,#33
	db #cc,#00,#00,#77,#ee,#33,#cc,#33
	db #cc,#33,#cc,#21,#0f,#0f,#4c,#66
	db #66,#00,#00,#77,#ee,#00,#00,#77
	db #ee,#33,#cc,#33,#cc,#33,#cc,#21
	db #0f,#0f,#4c,#66,#66,#00,#00,#33
	db #cc,#00,#00,#77,#ee,#33,#cc,#33
	db #cc,#33,#cc,#21,#05,#0f,#06,#1f
	db #87,#05,#0f,#06,#4c,#33,#cc,#33
	db #cc,#21,#0f,#0f,#4c,#05,#00,#08
	db #33,#cc,#33,#cc,#33,#cc,#33,#cc
	db #21,#0f,#0f,#4c,#33,#cc,#00,#00
	db #77,#ee,#00,#00,#77,#ee,#33,#cc
	db #33,#cc,#33,#cc,#21,#0f,#0f,#4c
	db #66,#66,#00,#00,#33,#cc,#00,#00
	db #77,#ee,#33,#cc,#33,#cc,#33,#cc
	db #21,#05,#0f,#06,#1f,#87,#05,#0f
	db #05,#03,#4c,#30,#c0,#30,#c0,#21
	db #0d,#0b,#4c,#60,#05,#00,#04,#c0
	db #00,#00,#70,#e0,#30,#c0,#30,#c0
	db #30,#c0,#21,#0d,#0b,#4c,#30,#c0
	db #00,#00,#70,#e0,#00,#00,#70,#e0
	db #70,#e0,#30,#c0,#70,#e0,#21,#0d
	db #0b,#4c,#05,#00,#08,#30,#c0,#30
	db #c0,#30,#c0,#30,#c0,#21,#0c,#05
	db #0f,#05,#1f,#87,#05,#0f,#06,#4c
	db #33,#cc,#77,#ee,#21,#0f,#0f,#4c
	db #05,#00,#08,#33,#cc,#33,#cc,#33
	db #cc,#33,#cc,#21,#0f,#0f,#4c,#05
	db #00,#08,#33,#cc,#33,#cc,#33,#cc
	db #33,#cc,#21,#0f,#0f,#4c,#66,#66
	db #00,#00,#33,#cc,#00,#00,#77,#ee
	db #33,#cc,#33,#cc,#33,#cc,#21,#05
	db #0f,#06,#1f,#87,#05,#0f,#06,#4c
	db #33,#cc,#77,#ee,#21,#0f,#0f,#4c
	db #66,#05,#00,#04,#cc,#00,#00,#77
	db #ee,#33,#cc,#33,#cc,#33,#cc,#21
	db #0f,#0f,#4c,#33,#cc,#00,#00,#77
	db #ee,#00,#00,#77,#ee,#33,#cc,#33
	db #cc,#33,#cc,#21,#0f,#0f,#4c,#05
	db #00,#08,#33,#cc,#33,#cc,#33,#cc
	db #33,#cc,#21,#05,#0f,#06,#1f,#87
	db #05,#0f,#06,#4c,#33,#cc,#33,#cc
	db #21,#0f,#0f,#4c,#66,#05,#00,#04
	db #cc,#00,#00,#77,#ee,#33,#cc,#33
	db #cc,#33,#cc,#21,#0f,#0f,#4c,#33
	db #cc,#00,#00,#77,#ee,#00,#00,#77
	db #ee,#33,#cc,#33,#cc,#33,#cc,#21
	db #0f,#0f,#4c,#33,#cc,#00,#00,#33
	db #cc,#00,#00,#77,#ee,#33,#cc,#33
	db #cc,#33,#cc,#21,#0c,#07,#0a,#02
	db #03,#07,#1f,#05,#00,#ff,#05,#00
	db #ff,#05,#00,#ff,#05,#00,#05,#c0
	db #00,#0e,#05,#00,#20,#30,#05,#00
	db #04,#c0,#00,#0e,#0e,#05,#00,#1f
	db #30,#05,#00,#04,#c0,#00,#05,#0e
	db #05,#05,#00,#1c,#30,#05,#00,#04
	db #c0,#00,#0e,#0e,#05,#00,#1f,#30
	db #05,#00,#04,#c0,#00,#05,#0e,#09
	db #05,#00,#18,#30,#05,#00,#04,#c0
	db #00,#05,#0e,#03,#05,#00,#1e,#30
	db #05,#00,#04,#c0,#00,#05,#0e,#0d
	db #05,#00,#14,#30,#05,#00,#04,#c0
	db #00,#05,#0e,#03,#05,#00,#1e,#30
	db #05,#00,#04,#c0,#05,#00,#22,#30
	db #05,#00,#04,#c0,#05,#00,#22,#30
	db #05,#00,#04,#05,#f0,#24,#05,#00
	db #04,#05,#f0,#24,#05,#00,#a2,#87
	db #2e,#05,#00,#04,#43,#4c,#05,#00
	db #04,#21,#09,#09,#4c,#05,#00,#10
	db #21,#08,#03,#4c,#05,#00,#10,#21
	db #09,#0f,#4c,#05,#00,#10,#21,#0f
	db #0f,#00,#00,#04,#78,#d3,#87,#2e
	db #05,#00,#04,#43,#4c,#05,#00,#04
	db #21,#0f,#0f,#4c,#05,#00,#10,#21
	db #0f,#0f,#4c,#05,#00,#10,#21,#0f
	db #0f,#4c,#05,#00,#10,#21,#05,#0f
	db #06,#1f,#87,#05,#0f,#06,#4c,#05
	db #00,#04,#21,#0f,#0f,#4c,#05,#00
	db #10,#21,#0f,#0f,#4c,#05,#00,#10
	db #21,#0f,#0f,#4c,#05,#00,#10,#21
	db #05,#0f,#06,#1f,#87,#05,#0f,#06
	db #4c,#05,#00,#04,#21,#0f,#0f,#4c
	db #05,#00,#10,#21,#0f,#0f,#4c,#05
	db #00,#10,#21,#0f,#0f,#4c,#05,#00
	db #10,#21,#05,#0f,#06,#1f,#87,#05
	db #0f,#06,#4c,#05,#00,#04,#21,#0f
	db #0f,#4c,#05,#00,#10,#21,#0f,#0f
	db #4c,#05,#00,#10,#21,#0f,#0f,#4c
	db #05,#00,#10,#21,#05,#0f,#06,#1f
	db #87,#05,#0f,#06,#4c,#05,#00,#04
	db #21,#0f,#0f,#4c,#05,#00,#10,#21
	db #0f,#0f,#4c,#05,#00,#10,#21,#0f
	db #0f,#4c,#05,#00,#10,#21,#05,#0f
	db #06,#1f,#87,#05,#0f,#06,#4c,#05
	db #00,#04,#21,#0f,#0f,#4c,#05,#00
	db #10,#21,#0f,#0f,#4c,#05,#00,#10
	db #21,#0f,#0f,#4c,#05,#00,#10,#21
	db #05,#0f,#06,#1f,#87,#05,#0f,#06
	db #4c,#05,#00,#04,#21,#0f,#0f,#4c
	db #05,#00,#10,#21,#0f,#0f,#4c,#05
	db #00,#10,#21,#0f,#0f,#4c,#05,#00
	db #10,#21,#05,#0f,#06,#1f,#05,#00
	db #ff,#05,#00,#ff,#05,#00,#b2
;
.music_info
	db "New Arcade 5 Snd Preview (1993)(New Arcade)(BSC)",0
	db "ST-Module",0

	read "music_end.asm"