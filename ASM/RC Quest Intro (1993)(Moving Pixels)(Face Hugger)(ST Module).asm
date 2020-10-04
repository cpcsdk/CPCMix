; Music of RC Quest Intro (1993)(Moving Pixels)(Face Hugger)(ST Module)
; Ripped by Megachur the 20/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RCQUESTI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #5990

	read "music_header.asm"

	jr l5994
	jr l59a3
.l5994
	call l59bf
	ld hl,l5de2
	ld de,l59ac
	ld bc,#81ff
	jp #bcd7
.l59a3
	ld hl,l5de2
	call #bcdd
	jp l5a2b
.l59ac
	push ix
	call l5a47
	pop ix
	ret
	
	jp l59bf        ; init music
	jp l5a47        ; play music
	jp l5a2b        ; stop music
	ld h,(hl)
	inc b
;
.init_music
.l59bf
;
	ld b,#03
	ld ix,l5d8e
	ld iy,l5cba
	ld de,#001c
.l59cc
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
	djnz l59cc
	ld a,#05
	ld (l5a6f),a
	ld a,d
	ld (l5a83),a
	inc a
	ld (l5a6a),a
	ld a,#38
	ld (l5a74),a
	ld a,#ff
	ld (l5cb6),a
	ld (l5cb7),a
	ld (l5cb8),a
	ld (l5cb9),a
	ld a,#0c
	ld c,d
	call l5c98
	ld a,#0d
	ld c,d
	jp l5c98
;
.stop_music
.l5a2b
;
	ld a,#07
	ld c,#3f
	call l5c98
	ld a,#08
	ld c,#00
	call l5c98
	ld a,#09
	ld c,#00
	call l5c98
	ld a,#0a
	ld c,#00
	jp l5c98
;
.play_music
.l5a47
;
	ld hl,l5a6a
	dec (hl)
	ld ix,l5d8e
	ld bc,l5d9c
	call l5afd
	ld ix,l5daa
	ld bc,l5db8
	call l5afd
	ld ix,l5dc6
	ld bc,l5dd4
	call l5afd
.l5a6a equ $ + 1
	ld a,#00
	or a
	jr nz,l5a73
.l5a6f equ $ + 1
	ld a,#00
	ld (l5a6a),a
.l5a74 equ $ + 1
.l5a73
	ld a,#00
	ld hl,l5cb7
	cp (hl)
	jr z,l5a82
	ld (hl),a
	ld c,a
	ld a,#07
	call l5c98
.l5a83 equ $ + 1
.l5a82
	ld a,#00
	ld hl,l5cb6
	cp (hl)
	jr z,l5a91
	ld (hl),a
	ld c,a
	ld a,#06
	call l5c98
.l5a92 equ $ + 1
.l5a91
	ld a,#00
	ld hl,l5cb8
	cp (hl)
	jr z,l5aa0
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5c98
.l5aa1 equ $ + 1
.l5aa0
	ld a,#00
	ld hl,l5cb9
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5c98
.l5aae
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5bae
.l5abd
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
	jp l5c98
.l5ad7
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5aec
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5aec
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5b10
.l5afd
	ld a,(l5a6a)
	or a
	jp nz,l5bae
	dec (ix+#06)
	jp nz,l5bae
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5b10
	ld a,(hl)
	or a
	jr z,l5aae
	cp #fe
	jr z,l5abd
	cp #ff
	jr z,l5ad7
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5cc0
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5b4c
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5b4c
	and #7f
	ld (ix+#06),a
	jr l5b9f
.l5b4c
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5b60
	ld (ix+#05),a
	ld (ix+#0a),d
.l5b60
	add a
	add a
	add a
	ld e,a
	ld hl,l5df6
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
	jr z,l5b9f
	cp #f0
	jp z,l5c54
	cp #d0
	jp z,l5c70
	cp #b0
	jp z,l5c78
	cp #80
	jp nc,l5c80
	cp #10
	jr nz,l5b9f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5b9f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5bae
	ld a,(ix+#17)
	or a
	jr nz,l5bc2
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5bc2
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5bed
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5cc0
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5bed
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
	call l5c98
	ld c,h
	ld a,(ix+#03)
	call l5c98
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5c2b
	and #0f
	sub (ix+#0a)
	jr nc,l5c21
	xor a
.l5c21
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5c98
.l5c2b
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
	jr z,l5c48
	ld b,a
	ld a,c
	ld (l5a83),a
	ld a,b
	sub #40
.l5c48
	ld (l5c4f),a
	ld a,(l5a74)
.l5c4f equ $ + 1
	bit 0,a
	ld (l5a74),a
	ret
.l5c54
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l5e76
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5b9f
.l5c70
	inc hl
	ld a,(hl)
	ld (l5a6f),a
	jp l5b9f
.l5c78
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5b9f
.l5c80
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5aa1),a
	inc hl
	ld a,(hl)
	ld (l5a92),a
	jp l5b9f
.l5c98
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
.l5cb9 equ $ + 3
.l5cb8 equ $ + 2
.l5cb7 equ $ + 1
.l5cb6
	db #ff,#ff,#ff,#ff
.l5cba
	dw l62b6,l630a,l635e
.l5cc0
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
.l5d8e
	db #00,#00,#00,#01,#08,#00,#00,#00
.l5d9c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5daa equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l5db8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5dc6
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l5dd4 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5de2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l5df6
	dw l5e96,l5ed6,l5ef6,#000c
	dw l5f16,l5f56,l5f76,#0000
	dw l5f96,l5fd6,l5ff6,#0000
	dw l6016,l6056,l5ff6,#1010
	dw l5f96,l6076,l6096,#0000
	dw l5f96,l60b6,l5ff6,#0000
	dw l6016,l60d6,l5ff6,#0816
	dw l5f96,l60f6,l5ff6,#0816
	dw l5f96,l6116,l6136,#0000
	dw #5890,#5890,#5890,#0000
	dw #5890,#5890,#5890,#0000
	dw #5890,#5890,#5890,#0000
	dw #5890,#5890,#5890,#0000
	dw #5890,#5890,#5890,#0000
	dw #5890,#5890,#5890,#0000
	dw #5890,#5890,#5890,#0000
.l5e76
	dw l6156,l6176,l6196,l61b6
	dw l61d6,l61f6,l6216,l6236
	dw l6256,l6276,l6296,#5890
	dw #5890,#5890,#5890,#5890
.l5e96
	dw #0000
	db #32,#00,#64,#00,#91,#00,#be,#00
	db #eb,#00,#22,#01,#4a,#01,#7c,#01
	db #a9,#01,#d6,#01,#08,#02,#3a,#02
	db #6c,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5ed6 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0d,#0c,#0a
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5ef6 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f16 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f56 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
.l5f76 equ $ + 6
	db #02,#02,#01,#00,#00,#00,#05,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
.l5f96 equ $ + 6
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fd6 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #0a,#09,#09,#08,#08,#07,#06,#05
	db #03,#01,#00,#00,#00,#00,#00,#00
.l5ff6 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6016 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
.l6056 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0d,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l6076 equ $ + 6
	db #80,#80,#80,#80,#80,#80,#0f,#0b
	db #07,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6096 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60b6 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0a,#0b
	db #0b,#0b,#0a,#09,#09,#08,#07,#07
	db #06,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#01,#01
.l60d6 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0c,#0d,#0c,#0b,#0a
	db #09,#0a,#0b,#0a,#09,#08,#07,#08
	db #09,#08,#07,#06,#05,#06,#07,#06
.l60f6 equ $ + 6
	db #05,#04,#03,#04,#05,#04,#0e,#0d
	db #0c,#0b,#0a,#0b,#0c,#0b,#0a,#09
	db #08,#09,#0a,#09,#08,#07,#06,#07
	db #08,#07,#06,#05,#04,#05,#06,#05
.l6116 equ $ + 6
	db #04,#03,#02,#03,#04,#03,#0f,#0f
	db #0e,#0e,#0f,#0d,#0c,#0c,#0e,#0b
	db #0a,#0a,#0d,#09,#08,#08,#0c,#07
	db #06,#06,#0b,#05,#04,#04,#0a,#03
.l6136 equ $ + 6
	db #02,#02,#09,#01,#00,#00,#09,#07
	db #05,#06,#07,#05,#03,#01,#02,#03
	db #04,#05,#03,#02,#05,#07,#04,#17
	db #0f,#08,#04,#02,#01,#02,#01,#01
.l6156 equ $ + 6
	db #02,#01,#04,#02,#01,#01,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l6176 equ $ + 6
	db #04,#07,#00,#04,#07,#00,#f9,#00
	db #05,#00,#05,#00,#05,#00,#05,#00
	db #05,#00,#05,#00,#05,#00,#05,#00
	db #05,#00,#05,#00,#05,#00,#05,#00
.l6196 equ $ + 6
	db #05,#00,#05,#00,#05,#00,#fb,#00
	db #02,#07,#00,#02,#07,#00,#02,#07
	db #00,#02,#07,#00,#02,#07,#00,#02
	db #07,#00,#02,#07,#00,#02,#07,#00
.l61b6 equ $ + 6
	db #02,#07,#00,#02,#07,#00,#fc,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
.l61d6 equ $ + 6
	db #03,#08,#00,#03,#08,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#00,#00,#00,#00,#00
.l61f6 equ $ + 6
	db #00,#00,#00,#00,#0c,#00,#16,#0a
	db #00,#0a,#00,#0a,#00,#0a,#00,#0a
	db #00,#0a,#00,#0a,#00,#0a,#00,#0a
	db #00,#0a,#00,#0a,#00,#0a,#00,#0a
.l6216 equ $ + 6
	db #00,#0a,#00,#0a,#00,#0a,#14,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
.l6236 equ $ + 6
	db #00,#08,#00,#08,#00,#08,#13,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
	db #00,#07,#00,#07,#00,#07,#00,#07
.l6256 equ $ + 6
	db #00,#07,#00,#07,#00,#07,#11,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
	db #00,#05,#00,#05,#00,#05,#00,#05
.l6276 equ $ + 6
	db #00,#05,#00,#05,#00,#05,#0f,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#03,#00,#03,#00,#03
.l6296 equ $ + 6
	db #00,#03,#00,#03,#00,#03,#0e,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#02
.l62b6 equ $ + 6
	db #00,#02,#00,#02,#00,#02,#00
	dw l644c
	db #00
	dw l6458
.l62bc
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l65be
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l6655
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l6655
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l63b2
	db #00
	dw l6464
	db #00
	dw l6479
	db #00
	dw l64a8
	db #00
	dw l6523
	db #00
	dw l63b2
	add b
	dw l62bc
.l630a
	db #00
	dw l6783
	db #00
	dw l680b
.l6310
	db #00
	dw l66ec
	db #00
	dw l66ec
	db #00
	dw l688f
	db #00
	dw l688f
	db #00
	dw l66f7
	db #00
	dw l66f7
	db #00
	dw l6a5c
	db #00
	dw l6934
	db #00
	dw l6934
	db #00
	dw l68db
	db #00
	dw l6a67
	db #00
	dw l66ec
	db #00
	dw l688f
	db #00
	dw l688f
	db #00
	dw l68db
	db #00
	dw l6a67
	db #00
	dw l66f7
	db #00
	dw l66f7
	db #00
	dw l6934
	db #00
	dw l698d
	db #00
	dw l69f0
	db #00
	dw l6a0b
	db #00
	dw l6a3b
	db #00
	dw l6a56
	db #00
	dw l6a59
	add b
	dw l6310
.l635e
	db #00
	dw l6b52
	db #00
	dw l6bad
.l6364
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6cd0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6d63
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6d63
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6ac0
	db #00
	dw l6c08
	db #00
	dw l6c24
	db #00
	dw l6c54
	db #00
	dw l6c6f
	db #00
	dw l6ac0
	add b
	dw l6364
.l63b2
	db #ae,#d0,#05,#a3,#c2,#1c,#97,#02
	db #af,#c2,#0e,#ba,#11,#a3,#c2,#1c
	db #97,#02,#af,#c2,#0e,#ae,#10,#a3
	db #c2,#1c,#97,#02,#af,#c2,#0e,#ba
	db #11,#a3,#c2,#1c,#97,#02,#af,#c2
	db #0e,#ae,#10,#a5,#c2,#19,#99,#02
	db #b1,#02,#ba,#11,#a5,#c2,#19,#99
	db #02,#b1,#02,#ae,#10,#a5,#c2,#19
	db #99,#02,#b1,#02,#ba,#11,#a5,#c2
	db #19,#99,#02,#b1,#02,#ae,#10,#a6
	db #c2,#18,#9a,#02,#b2,#c2,#0c,#ba
	db #11,#a6,#c2,#18,#9a,#02,#b2,#c2
	db #0c,#ae,#10,#a6,#c2,#18,#9a,#02
	db #b2,#c2,#0c,#ba,#11,#a6,#c2,#18
	db #9a,#02,#b2,#c2,#0c,#ae,#10,#a5
	db #c2,#19,#99,#02,#b1,#02,#ba,#11
	db #a5,#c2,#19,#99,#02,#b1,#02,#ae
	db #10,#a5,#c2,#19,#99,#02,#b1,#02
	db #ba,#11,#a5,#c2,#19,#99,#02,#ba
.l644c equ $ + 2
	db #11,#ff,#31,#10,#b3,#03,#32,#10
.l6458 equ $ + 6
	db #03,#34,#90,#33,#90,#ff,#31,#10
	db #b3,#02,#32,#10,#03,#34,#90,#33
.l6464 equ $ + 2
	db #90,#ff,#6c,#08,#18,#46,#0c,#b3
	db #09,#48,#04,#03,#4a,#8c,#4b,#88
.l6479 equ $ + 7
	db #4d,#84,#4f,#8c,#51,#84,#ff,#d1
	db #b3,#09,#4f,#03,#03,#4d,#83,#4b
	db #83,#4a,#83,#48,#83,#46,#83,#45
	db #83,#43,#83,#41,#83,#3f,#83,#3e
	db #83,#3c,#83,#3a,#83,#39,#83,#37
	db #83,#35,#83,#33,#83,#32,#83,#30
.l64a8 equ $ + 6
	db #83,#2e,#83,#2d,#83,#ff,#2d,#02
	db #b3,#09,#2d,#02,#b3,#0a,#2d,#02
	db #b3,#0b,#2d,#02,#b3,#0c,#2d,#02
	db #b3,#0d,#2d,#02,#b3,#0e,#fe,#04
	db #6c,#02,#b4,#05,#6c,#02,#b4,#03
	db #6c,#02,#b4,#00,#2e,#02,#d0,#06
	db #ae,#00,#ec,#04,#ec,#04,#ec,#04
	db #ba,#01,#ec,#04,#ec,#04,#ec,#04
	db #ae,#00,#ec,#04,#ec,#04,#ec,#04
	db #ba,#01,#ec,#04,#ec,#04,#ec,#04
	db #ae,#00,#ec,#04,#ec,#04,#ec,#04
	db #ba,#01,#ec,#04,#ec,#04,#ec,#04
	db #ae,#00,#ec,#04,#ec,#04,#ec,#04
	db #ba,#01,#ec,#04,#ec,#04,#ec,#04
	db #ae,#00,#ec,#04,#ec,#04,#ec,#04
	db #ba,#01,#ec,#04,#ec,#04,#ba,#01
.l6523 equ $ + 1
	db #ff,#ae,#d0,#06,#a3,#c2,#1c,#97
	db #02,#af,#c2,#0e,#ba,#11,#a3,#c2
	db #1c,#97,#02,#af,#c2,#0e,#ae,#10
	db #a3,#c2,#1c,#97,#02,#af,#c2,#0e
	db #ba,#11,#a3,#c2,#1c,#97,#02,#af
	db #c2,#0e,#ae,#10,#a5,#c2,#19,#99
	db #02,#b1,#02,#ba,#11,#a5,#c2,#19
	db #99,#02,#b1,#02,#ae,#10,#a5,#c2
	db #19,#99,#02,#b1,#02,#ba,#11,#a5
	db #c2,#19,#99,#02,#b1,#02,#ae,#10
	db #a6,#c2,#18,#9a,#02,#b2,#c2,#0c
	db #ba,#11,#a6,#c2,#18,#9a,#02,#b2
	db #c2,#0c,#ae,#10,#a6,#c2,#18,#9a
	db #02,#b2,#c2,#0c,#ba,#11,#a6,#c2
	db #18,#9a,#02,#b2,#c2,#0c,#ae,#10
	db #a5,#c2,#19,#99,#02,#b1,#02,#ba
	db #11,#a5,#c2,#19,#99,#02,#b1,#02
	db #ae,#10,#a5,#c2,#19,#99,#d2,#05
	db #b1,#02,#ba,#11,#a5,#c2,#19,#99
.l65be equ $ + 4
	db #02,#ba,#11,#ff,#ae,#d0,#05,#a3
	db #c2,#1c,#97,#02,#af,#c2,#0e,#ba
	db #11,#a3,#c2,#1c,#97,#02,#af,#c2
	db #0e,#ae,#10,#a3,#c2,#1c,#97,#02
	db #af,#c2,#0e,#ba,#11,#a3,#c2,#1c
	db #97,#02,#af,#c2,#0e,#ae,#10,#ad
	db #c2,#1f,#a1,#02,#b9,#02,#ba,#11
	db #ad,#c2,#1f,#a1,#02,#b9,#02,#ae
	db #10,#ad,#c2,#1f,#a1,#02,#b9,#02
	db #ba,#11,#ad,#c2,#1f,#a1,#02,#b9
	db #02,#ae,#10,#aa,#c2,#26,#9e,#02
	db #b6,#02,#ba,#11,#aa,#c2,#26,#9e
	db #02,#b6,#02,#ae,#10,#aa,#c2,#26
	db #9e,#02,#b6,#02,#ba,#11,#aa,#c2
	db #26,#9e,#02,#b6,#02,#ae,#10,#ac
	db #c2,#21,#a0,#02,#b8,#02,#ba,#11
	db #ac,#c2,#21,#a0,#02,#b8,#02,#ae
	db #10,#ac,#c2,#21,#ba,#11,#b8,#c2
	db #21,#ba,#11,#ac,#c2,#21,#ba,#11
.l6655 equ $ + 3
	db #ba,#11,#ff,#ae,#d0,#05,#a3,#c2
	db #1c,#97,#02,#af,#c2,#0e,#ba,#11
	db #a3,#c2,#1c,#97,#02,#af,#c2,#0e
	db #ae,#10,#a3,#c2,#1c,#97,#02,#af
	db #c2,#0e,#ba,#11,#a3,#c2,#1c,#97
	db #02,#af,#c2,#0e,#ae,#10,#ad,#c2
	db #1f,#a1,#02,#b9,#02,#ba,#11,#ad
	db #c2,#1f,#a1,#02,#b9,#02,#ae,#10
	db #ad,#c2,#1f,#a1,#02,#b9,#02,#ba
	db #11,#ad,#c2,#1f,#a1,#02,#b9,#02
	db #ae,#10,#aa,#c2,#26,#9e,#02,#b6
	db #02,#ba,#11,#aa,#c2,#26,#9e,#02
	db #b6,#02,#ae,#10,#aa,#c2,#26,#9e
	db #02,#b6,#02,#ba,#11,#aa,#c2,#26
	db #9e,#02,#b6,#02,#ae,#10,#ac,#c2
	db #21,#a0,#02,#b8,#02,#ba,#11,#ac
	db #c2,#21,#a0,#02,#b8,#02,#ae,#10
	db #ac,#c2,#21,#ba,#11,#b8,#c2,#21
	db #ba,#11,#ac,#c2,#21,#ba,#11,#ba
.l66ec equ $ + 2
	db #11,#ff,#3b,#10,#13,#3d,#10,#03
.l66f7 equ $ + 5
	db #3e,#90,#3d,#90,#ff,#42,#02,#f7
	db #03,#42,#02,#f7,#02,#42,#02,#f7
	db #01,#c2,#f7,#03,#42,#02,#f7,#02
	db #42,#02,#f7,#03,#c2,#f7,#01,#42
	db #02,#f7,#02,#c2,#f7,#03,#c2,#f7
	db #02,#42,#02,#f7,#03,#42,#02,#f7
	db #02,#42,#02,#f7,#01,#c2,#f7,#03
	db #42,#02,#f7,#02,#42,#02,#f7,#03
	db #c2,#f7,#01,#42,#02,#f7,#02,#c2
	db #f7,#03,#c2,#f7,#02,#42,#02,#f7
	db #03,#42,#02,#f7,#02,#42,#02,#f7
	db #01,#c2,#f7,#03,#42,#02,#f7,#02
	db #42,#02,#f7,#03,#c2,#f7,#01,#42
	db #02,#f7,#02,#c2,#f7,#03,#c2,#f7
	db #01,#42,#02,#f7,#02,#42,#02,#07
	db #42,#82,#42,#02,#f7,#03,#42,#02
	db #f7,#02,#42,#02,#f7,#01,#42,#02
	db #f7,#02,#c2,#f7,#03,#c2,#f7,#02
.l6783 equ $ + 1
	db #ff,#ae,#d0,#0e,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#d0,#0d,#ec,#04,#ec
	db #d4,#0c,#ec,#04,#ba,#d1,#0b,#ec
	db #04,#ec,#d4,#0a,#ec,#04,#ae,#d0
	db #09,#ec,#04,#ba,#d1,#08,#ec,#04
	db #ba,#01,#ec,#04,#ba,#01,#ba,#01
.l680b equ $ + 1
	db #ff,#ae,#d0,#07,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#00,#ec,#04,#ec,#04
	db #ec,#04,#ba,#01,#ec,#04,#ec,#04
	db #ec,#04,#ae,#d0,#06,#ec,#04,#ec
	db #04,#ec,#04,#ba,#01,#ec,#04,#ec
	db #04,#ec,#04,#ae,#00,#ec,#04,#ba
	db #d1,#05,#ec,#04,#ba,#01,#ec,#04
.l688f equ $ + 5
	db #ba,#01,#ba,#01,#ff,#be,#f3,#04
	db #b6,#03,#bd,#03,#b6,#03,#bb,#03
	db #fe,#01,#3b,#8a,#be,#03,#b6,#03
	db #bd,#03,#b6,#03,#bb,#03,#fe,#01
	db #3d,#8a,#be,#03,#b6,#03,#bd,#03
	db #b6,#03,#bb,#03,#fe,#01,#3e,#8a
	db #be,#03,#b6,#03,#bd,#03,#b6,#03
	db #bd,#03,#fe,#01,#bd,#03,#b6,#03
	db #bd,#03,#fe,#01,#bd,#03,#b6,#03
	db #bd,#03,#b6,#03,#bd,#03,#b6,#03
.l68db equ $ + 1
	db #ff,#42,#02,#f7,#05,#42,#02,#07
	db #42,#82,#42,#02,#f7,#06,#42,#02
	db #07,#42,#82,#42,#82,#42,#82,#42
	db #02,#f7,#07,#42,#02,#07,#42,#82
	db #42,#02,#f7,#06,#42,#02,#07,#42
	db #82,#42,#82,#42,#82,#42,#02,#f7
	db #05,#42,#02,#07,#42,#82,#42,#02
	db #f7,#06,#42,#02,#07,#42,#82,#42
	db #82,#42,#82,#42,#02,#f7,#07,#42
	db #02,#07,#42,#82,#42,#02,#f7,#06
	db #42,#02,#07,#42,#82,#42,#82,#42
.l6934 equ $ + 2
	db #82,#ff,#42,#02,#f7,#03,#42,#02
	db #07,#42,#82,#42,#02,#f7,#02,#42
	db #02,#07,#42,#82,#42,#82,#42,#82
	db #42,#02,#f7,#01,#42,#02,#07,#42
	db #82,#42,#02,#f7,#02,#42,#02,#07
	db #42,#82,#42,#82,#42,#82,#42,#02
	db #f7,#03,#42,#02,#07,#42,#82,#42
	db #02,#f7,#02,#42,#02,#07,#42,#82
	db #42,#82,#42,#82,#42,#02,#f7,#01
	db #42,#02,#07,#42,#82,#42,#02,#f7
	db #02,#42,#02,#07,#42,#82,#42,#82
.l698d equ $ + 3
	db #42,#82,#ff,#42,#02,#f7,#03,#42
	db #02,#07,#42,#82,#42,#02,#f7,#02
	db #42,#02,#07,#42,#82,#42,#82,#42
	db #82,#42,#02,#f7,#01,#42,#02,#07
	db #42,#82,#42,#02,#f7,#02,#42,#02
	db #07,#42,#82,#42,#82,#42,#82,#42
	db #02,#f7,#03,#42,#02,#07,#42,#82
	db #42,#02,#f7,#02,#42,#02,#07,#42
	db #82,#42,#82,#42,#82,#42,#02,#f7
	db #01,#42,#02,#d7,#06,#42,#02,#d7
	db #07,#42,#02,#f7,#02,#42,#02,#d7
	db #08,#42,#02,#d7,#09,#42,#02,#d7
.l69f0 equ $ + 6
	db #0a,#42,#02,#d7,#0c,#ff,#3a,#08
	db #d0,#08,#a8,#b3,#0f,#aa,#13,#4a
	db #08,#b3,#09,#4b,#08,#03,#4d,#88
	db #4f,#88,#51,#88,#52,#88,#54,#86
.l6a0b equ $ + 1
	db #ff,#54,#02,#b3,#09,#52,#03,#03
	db #51,#83,#4f,#83,#4d,#83,#4b,#83
	db #4a,#83,#48,#83,#46,#83,#45,#83
	db #43,#83,#41,#83,#3f,#83,#3e,#83
	db #3c,#83,#3a,#83,#39,#83,#37,#83
	db #35,#83,#33,#83,#32,#83,#30,#82
.l6a3b equ $ + 1
	db #ff,#30,#02,#b3,#09,#30,#02,#b3
	db #0a,#30,#02,#b3,#0b,#30,#02,#b3
	db #0c,#30,#02,#b3,#0d,#30,#02,#b3
.l6a59 equ $ + 7
.l6a56 equ $ + 4
	db #0e,#fe,#34,#ff,#00,#40,#ff,#00
.l6a5c equ $ + 2
	db #40,#ff,#3b,#10,#13,#39,#10,#03
.l6a67 equ $ + 5
	db #36,#90,#38,#90,#ff,#42,#02,#f7
	db #08,#42,#02,#07,#42,#82,#42,#02
	db #f7,#09,#42,#02,#07,#42,#82,#42
	db #82,#42,#82,#42,#02,#f7,#0a,#42
	db #02,#07,#42,#82,#42,#02,#f7,#09
	db #42,#02,#07,#42,#82,#42,#82,#42
	db #82,#42,#02,#f7,#08,#42,#02,#07
	db #42,#82,#42,#02,#f7,#09,#42,#02
	db #07,#42,#82,#42,#82,#42,#82,#42
	db #02,#f7,#0a,#42,#02,#07,#42,#82
	db #42,#02,#f7,#09,#42,#02,#07,#42
.l6ac0 equ $ + 6
	db #82,#42,#82,#42,#82,#ff,#a3,#c2
	db #1c,#ec,#14,#c7,#04,#ec,#04,#c7
	db #f5,#00,#ec,#14,#c7,#04,#ec,#04
	db #a3,#c2,#1c,#ec,#14,#c7,#04,#ec
	db #04,#c7,#f5,#00,#ec,#14,#c7,#04
	db #ec,#04,#a5,#c2,#19,#ec,#14,#c9
	db #04,#ec,#04,#c9,#f5,#00,#ec,#14
	db #c9,#04,#ec,#04,#a5,#c2,#19,#ec
	db #14,#c9,#04,#ec,#04,#c9,#f5,#00
	db #ec,#14,#c9,#04,#ec,#04,#a6,#c2
	db #18,#ec,#14,#ca,#04,#ec,#04,#ca
	db #f5,#00,#ec,#14,#ca,#04,#ec,#04
	db #a6,#c2,#18,#ec,#14,#ca,#04,#ec
	db #04,#ca,#f5,#00,#ec,#14,#ca,#04
	db #ec,#04,#a5,#c2,#19,#ec,#14,#c9
	db #04,#ec,#04,#c9,#f5,#00,#ec,#14
	db #c9,#04,#ec,#04,#a5,#c2,#19,#ec
	db #14,#c9,#04,#ec,#04,#c9,#f5,#00
	db #ec,#14,#c9,#04,#a5,#c2,#19,#ff
.l6b52
	db #00,#01,#b6,#06,#b8,#06,#b9,#06
	db #38,#82,#36,#82,#b6,#06,#b6,#06
	db #b8,#06,#b9,#06,#38,#82,#36,#83
	db #b6,#06,#b8,#06,#b9,#06,#38,#82
	db #36,#82,#b6,#06,#b6,#06,#b8,#06
	db #b9,#06,#38,#82,#36,#83,#b6,#06
	db #b8,#06,#b9,#06,#38,#82,#36,#82
	db #b6,#06,#b6,#06,#b8,#06,#b9,#06
	db #38,#82,#36,#83,#b6,#06,#b8,#06
	db #b9,#06,#38,#82,#36,#82,#b6,#06
	db #b6,#06,#b8,#06,#b9,#06,#38,#82
.l6bad equ $ + 3
	db #36,#82,#ff,#00,#01,#b6,#06,#b8
	db #06,#b9,#06,#38,#82,#36,#82,#b6
	db #06,#b6,#06,#b8,#06,#b9,#06,#38
	db #82,#36,#83,#b6,#06,#b8,#06,#b9
	db #06,#38,#82,#36,#82,#b6,#06,#b6
	db #06,#b8,#06,#b9,#06,#38,#82,#36
	db #83,#b6,#06,#b8,#06,#b9,#06,#38
	db #82,#36,#82,#b6,#06,#b6,#06,#b8
	db #06,#b9,#06,#38,#82,#36,#83,#b6
	db #06,#b8,#06,#b9,#06,#38,#82,#36
	db #82,#b6,#06,#b6,#06,#b8,#06,#b9
.l6c08 equ $ + 6
	db #06,#38,#82,#36,#82,#ff,#42,#08
	db #f7,#03,#4d,#03,#b3,#0f,#cd,#13
	db #4d,#04,#b3,#09,#4f,#0c,#03,#51
	db #84,#52,#88,#54,#8c,#56,#84,#57
.l6c24 equ $ + 2
	db #88,#ff,#57,#03,#b3,#09,#56,#03
	db #03,#54,#83,#52,#83,#51,#83,#4f
	db #83,#4d,#83,#4b,#83,#4a,#83,#48
	db #83,#46,#83,#45,#83,#43,#83,#41
	db #83,#3f,#83,#3e,#83,#3c,#83,#3a
	db #83,#39,#83,#37,#83,#35,#83,#b3
.l6c54 equ $ + 2
	db #03,#ff,#33,#02,#b3,#09,#33,#02
	db #b3,#0a,#33,#02,#b3,#0b,#33,#02
	db #b3,#0c,#33,#02,#b3,#0d,#33,#02
.l6c6f equ $ + 5
	db #b3,#0e,#fe,#34,#ff,#00,#01,#ec
	db #04,#ec,#04,#6c,#82,#ec,#04,#ec
	db #04,#6c,#82,#ec,#04,#ec,#04,#6c
	db #82,#ec,#04,#ec,#04,#6c,#82,#ec
	db #04,#ec,#04,#6c,#82,#ec,#04,#ec
	db #04,#6c,#82,#ec,#04,#ec,#04,#6c
	db #82,#ec,#04,#ec,#04,#6c,#82,#ec
	db #04,#ec,#04,#6c,#82,#ec,#04,#ec
	db #04,#6c,#82,#ec,#04,#ec,#04,#6c
	db #82,#ec,#04,#ec,#04,#6c,#82,#ec
	db #04,#ec,#04,#6c,#82,#ec,#04,#ec
	db #04,#6c,#82,#ec,#04,#ec,#04,#6c
.l6cd0 equ $ + 6
	db #82,#ec,#04,#6c,#82,#ff,#a3,#c2
	db #1c,#ec,#14,#c7,#04,#ec,#04,#c7
	db #f5,#00,#ec,#14,#c7,#04,#ec,#04
	db #a3,#c2,#1c,#ec,#14,#c7,#04,#ec
	db #04,#c7,#f5,#00,#ec,#14,#c7,#04
	db #ec,#04,#ad,#c2,#1f,#ec,#14,#c5
	db #04,#ec,#04,#c5,#f5,#00,#ec,#14
	db #c5,#04,#ec,#04,#ad,#c2,#1f,#ec
	db #14,#c5,#04,#ec,#04,#c5,#f5,#00
	db #ec,#14,#c5,#04,#ec,#04,#aa,#c2
	db #26,#ec,#14,#c2,#04,#ec,#04,#c2
	db #f5,#00,#ec,#14,#c2,#04,#ec,#04
	db #aa,#c2,#26,#ec,#14,#c2,#04,#ec
	db #04,#c2,#f5,#00,#ec,#14,#c2,#04
	db #ec,#04,#ac,#c2,#21,#ec,#14,#c4
	db #04,#ec,#04,#c4,#f5,#00,#ec,#14
	db #c4,#04,#ec,#04,#ac,#c2,#21,#ec
	db #14,#c4,#04,#ec,#04,#c4,#f5,#00
	db #ec,#14,#b8,#c2,#21,#ac,#c2,#21
.l6d63 equ $ + 1
	db #ff,#a3,#c2,#1c,#ec,#14,#c7,#04
	db #ec,#04,#c7,#f5,#00,#ec,#14,#c7
	db #04,#ec,#04,#a3,#c2,#1c,#ec,#14
	db #c7,#04,#ec,#04,#c7,#f5,#00,#ec
	db #14,#c7,#04,#ec,#04,#ad,#c2,#1f
	db #ec,#14,#c5,#04,#ec,#04,#c5,#f5
	db #00,#ec,#14,#c5,#04,#ec,#04,#ad
	db #c2,#1f,#ec,#14,#c5,#04,#ec,#04
	db #c5,#f5,#00,#ec,#14,#c5,#04,#ec
	db #04,#aa,#c2,#26,#ec,#14,#c2,#04
	db #ec,#04,#c2,#f5,#00,#ec,#14,#c2
	db #04,#ec,#04,#aa,#c2,#26,#ec,#14
	db #c2,#04,#ec,#04,#c2,#f5,#00,#ec
	db #14,#c2,#04,#ec,#04,#ac,#c2,#21
	db #ec,#14,#c4,#04,#ec,#04,#c4,#f5
	db #00,#ec,#14,#c4,#04,#ec,#04,#ac
	db #c2,#21,#ec,#14,#c4,#04,#ec,#04
	db #c4,#f5,#00,#ec,#14,#b8,#c2,#21
	db #ac,#c2,#21,#ff
;
.music_info
	db "RC Quest Intro (1993)(Moving Pixels)(Face Hugger)",0
	db "ST Module",0

	read "music_end.asm"