; Music of New Arcade 5 Utilitaires (1993)(New Arcade)()(ST-Module)
; Ripped by Megachur the 09/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NEWAR5UT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #2b20

	read "music_header.asm"

	jp l2b2b
	jp l2bb3
	jp l2b97
	db #66,#04
;
.init_music
.l2b2b
;
	ld b,#03
	ld ix,l2efa
	ld iy,l2e26
	ld de,#001c
.l2b38
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
	djnz l2b38
	ld a,#06
	ld (l2bdb),a
	ld a,d
	ld (l2bef),a
	inc a
	ld (l2bd6),a
	ld a,#38
	ld (l2be0),a
	ld a,#ff
	ld (l2e22),a
	ld (l2e23),a
	ld (l2e24),a
	ld (l2e25),a
	ld a,#0c
	ld c,d
	call l2e04
	ld a,#0d
	ld c,d
	jp l2e04
;
.stop_music
.l2b97
;
	ld a,#07
	ld c,#3f
	call l2e04
	ld a,#08
	ld c,#00
	call l2e04
	ld a,#09
	ld c,#00
	call l2e04
	ld a,#0a
	ld c,#00
	jp l2e04
;
.play_music
.l2bb3
;
	ld hl,l2bd6
	dec (hl)
	ld ix,l2efa
	ld bc,l2f08
	call l2c69
	ld ix,l2f16
	ld bc,l2f24
	call l2c69
	ld ix,l2f32
	ld bc,l2f40
	call l2c69
.l2bd6 equ $ + 1
	ld a,#01
	or a
	jr nz,l2bdf
.l2bdb equ $ + 1
	ld a,#06
	ld (l2bd6),a
.l2be0 equ $ + 1
.l2bdf
	ld a,#38
	ld hl,l2e23
	cp (hl)
	jr z,l2bee
	ld (hl),a
	ld c,a
	ld a,#07
	call l2e04
.l2bef equ $ + 1
.l2bee
	ld a,#00
	ld hl,l2e22
	cp (hl)
	jr z,l2bfd
	ld (hl),a
	ld c,a
	ld a,#06
	call l2e04
.l2bfe equ $ + 1
.l2bfd
	ld a,#00
	ld hl,l2e24
	cp (hl)
	jr z,l2c0c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l2e04
.l2c0d equ $ + 1
.l2c0c
	ld a,#00
	ld hl,l2e25
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l2e04
.l2c1a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l2d1a
.l2c29
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
	jp l2e04
.l2c43
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l2c58
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l2c58
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l2c7c
.l2c69
	ld a,(l2bd6)
	or a
	jp nz,l2d1a
	dec (ix+#06)
	jp nz,l2d1a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l2c7c
	ld a,(hl)
	or a
	jr z,l2c1a
	cp #fe
	jr z,l2c29
	cp #ff
	jr z,l2c43
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l2e2c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l2cb8
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l2cb8
	and #7f
	ld (ix+#06),a
	jr l2d0b
.l2cb8
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l2ccc
	ld (ix+#05),a
	ld (ix+#0a),d
.l2ccc
	add a
	add a
	add a
	ld e,a
	ld hl,l2f62
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
	jr z,l2d0b
	cp #f0
	jp z,l2dc0
	cp #d0
	jp z,l2ddc
	cp #b0
	jp z,l2de4
	cp #80
	jp nc,l2dec
	cp #10
	jr nz,l2d0b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l2d0b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l2d1a
	ld a,(ix+#17)
	or a
	jr nz,l2d2e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l2d2e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l2d59
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l2e2c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l2d59
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
	call l2e04
	ld c,h
	ld a,(ix+#03)
	call l2e04
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2d97
	and #0f
	sub (ix+#0a)
	jr nc,l2d8d
	xor a
.l2d8d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l2e04
.l2d97
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
	jr z,l2db4
	ld b,a
	ld a,c
	ld (l2bef),a
	ld a,b
	sub #40
.l2db4
	ld (l2dbb),a
	ld a,(l2be0)
.l2dbb equ $ + 1
	bit 0,a
	ld (l2be0),a
	ret
.l2dc0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l2fe2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l2d0b
.l2ddc
	inc hl
	ld a,(hl)
	ld (l2bdb),a
	jp l2d0b
.l2de4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l2d0b
.l2dec
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l2c0d),a
	inc hl
	ld a,(hl)
	ld (l2bfe),a
	jp l2d0b
.l2e04
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
.l2e25 equ $ + 3
.l2e24 equ $ + 2
.l2e23 equ $ + 1
.l2e22
	db #ff,#ff,#ff,#ff
.l2e26
	dw l3422,l344f,l347c
.l2e2c
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
.l2efa equ $ + 4
	db #00,#00,#00,#00,#1b,#3a,#00,#01
	db #08,#10,#01,#00,#00,#00,#00,#df
.l2f08 equ $ + 2
	db #25,#34,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2f16
	db #8f,#3b,#02,#03,#09,#10,#01,#00
.l2f24 equ $ + 6
	db #00,#00,#00,#e7,#52,#34,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2f32 equ $ + 4
	db #00,#00,#00,#00,#f9,#3f,#04,#05
	db #0a,#10,#01,#00,#00,#00,#00,#ef
.l2f40 equ $ + 2
	db #7f,#34,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l2f62 equ $ + 4
	db #75,#6c,#65,#2e,#fc,#29,#fc,#29
	db #fc,#29,#00,#00,#fc,#29,#fc,#29
	db #fc,#29,#00,#00,#02,#30,#42,#30
	db #62,#30,#18,#07,#82,#30,#c2,#30
	db #62,#30,#00,#00,#fc,#29,#fc,#29
	db #fc,#29,#00,#00,#e2,#30,#22,#31
	db #62,#30,#18,#07,#fc,#29,#fc,#29
	db #fc,#29,#00,#00,#fc,#29,#fc,#29
	db #fc,#29,#00,#00,#42,#31,#82,#31
	db #62,#30,#00,#00,#fc,#29,#fc,#29
	db #be,#5c,#02,#33,#82,#30,#a2,#31
	db #62,#30,#00,#00,#82,#30,#c2,#31
	db #62,#30,#00,#00,#e2,#31,#22,#32
	db #42,#32,#00,#00,#62,#32,#a2,#32
	db #c2,#32,#00,#00,#e2,#32,#22,#33
	db #42,#33,#00,#00,#82,#30,#62,#33
.l2fe2 equ $ + 4
	db #82,#33,#00,#00,#fc,#29,#a2,#33
	db #c2,#33,#fd,#29,#fe,#29,#fd,#29
	db #e2,#33,#02,#34,#fa,#29,#fb,#29
	db #fc,#29,#fd,#29,#fe,#29,#fd,#29
	db #fc,#29,#fb,#29,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0e,#0d,#0c,#0b
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0f,#0d
	db #0b,#09,#07,#0d,#0b,#09,#07,#08
	db #09,#0a,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#80,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0d,#0d
	db #0b,#0b,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#f8,#a8,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#08,#06,#04
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c8,#00,#58,#02
	db #4c,#04,#40,#06,#34,#08,#bb,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0c
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#32,#00,#64,#00
	db #96,#00,#c8,#00,#fa,#00,#2c,#01
	db #5e,#01,#90,#01,#c2,#01,#f4,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #05,#05,#04,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#02,#02,#03,#03,#04
	db #04,#05,#06,#07,#09,#0c,#0f,#0f
	db #0f,#0e,#0d,#0c,#0a,#07,#05,#03
	db #02,#01,#01,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#02,#02,#03,#06,#0a,#0e,#15
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#0c,#18
	db #0c,#18,#0c,#00,#0c,#18,#0c,#18
	db #0c,#00,#0c,#18,#0c,#18,#0c,#00
	db #0c,#18,#0c,#18,#0c,#00,#0c,#18
	db #0c,#18,#0c,#00,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#0c,#00,#0b,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
.l3422 equ $ + 4
	db #0c,#00,#0c,#00,#00,#1b,#3a,#00
	db #6a,#35,#00,#6a,#35,#00,#2b,#36
	db #00,#d5,#36,#00,#7e,#37,#00,#7e
	db #37,#00,#2b,#36,#00,#d5,#36,#00
	db #24,#38,#00,#24,#38,#00,#ca,#38
	db #00,#72,#39,#00,#a9,#34,#80,#25
.l344f equ $ + 1
	db #34,#00,#8f,#3b,#00,#23,#3a,#00
	db #23,#3a,#00,#6e,#3a,#00,#ac,#3a
	db #00,#ee,#3a,#00,#ee,#3a,#00,#6e
	db #3a,#00,#ac,#3a,#00,#1e,#3b,#00
	db #1e,#3b,#00,#49,#3b,#00,#6c,#3b
.l347c equ $ + 6
	db #00,#20,#3a,#80,#52,#34,#00,#f9
	db #3f,#00,#10,#3c,#00,#10,#3c,#00
	db #89,#3c,#00,#19,#3d,#00,#aa,#3d
	db #00,#aa,#3d,#00,#89,#3c,#00,#19
	db #3d,#00,#3f,#3e,#00,#3f,#3e,#00
	db #d3,#3e,#00,#66,#3f,#00,#96,#3b
	db #80,#7f,#34,#a4,#8a,#1b,#a4,#ea
	db #1b,#b0,#8a,#1b,#b0,#ea,#1b,#a4
	db #8a,#1b,#a4,#ea,#1b,#b0,#8a,#1b
	db #b0,#ea,#1b,#a4,#8a,#1b,#a4,#ea
	db #1b,#b0,#8a,#1b,#b0,#ea,#1b,#a4
	db #8a,#1b,#a4,#ea,#1b,#b0,#8a,#1b
	db #b0,#ea,#1b,#a2,#8a,#1e,#a2,#ea
	db #1e,#ae,#8a,#1e,#ae,#ea,#1e,#a2
	db #8a,#1e,#a2,#ea,#1e,#ae,#8a,#1e
	db #ae,#ea,#1e,#9f,#8a,#24,#9f,#ea
	db #24,#ab,#8a,#24,#ab,#ea,#24,#9d
	db #8a,#28,#9d,#ea,#28,#a9,#8a,#28
	db #a9,#ea,#28,#a4,#8a,#1b,#a4,#ea
	db #1b,#b0,#8a,#1b,#b0,#ea,#1b,#a4
	db #8a,#1b,#a4,#ea,#1b,#b0,#8a,#1b
	db #b0,#ea,#1b,#a4,#8a,#1b,#a4,#ea
	db #1b,#b0,#8a,#1b,#b0,#ea,#1b,#a4
	db #8a,#1b,#a4,#ea,#1b,#b0,#8a,#1b
	db #b0,#ea,#1b,#a2,#8a,#1e,#a2,#ea
	db #1e,#ae,#8a,#1e,#ae,#ea,#1e,#a2
	db #8a,#1e,#a2,#ea,#1e,#ae,#8a,#1e
	db #ae,#ea,#1e,#9f,#8a,#24,#9f,#ea
	db #24,#ab,#8a,#24,#ab,#ea,#24,#9d
	db #8a,#28,#9d,#ea,#28,#a9,#8a,#28
	db #a9,#ea,#28,#ff,#a4,#8a,#09,#a4
	db #ea,#1b,#b0,#8a,#09,#b0,#ea,#1b
	db #a4,#8a,#09,#a4,#ea,#1b,#b0,#ea
	db #1b,#b0,#8a,#09,#a4,#ea,#1b,#a4
	db #8a,#09,#b0,#ea,#1b,#b0,#8a,#0a
	db #a4,#8a,#09,#a4,#ea,#1b,#b0,#8a
	db #0a,#b0,#8a,#09,#a2,#8a,#0a,#a2
	db #ea,#1e,#ae,#8a,#0a,#ae,#ea,#1e
	db #a2,#8a,#0a,#a2,#ea,#1e,#ae,#8a
	db #0a,#ae,#8a,#0c,#9f,#ea,#24,#9f
	db #8a,#0c,#ab,#ea,#24,#ab,#8a,#0c
	db #9d,#8a,#0a,#9d,#ea,#28,#a9,#8a
	db #0a,#a9,#ea,#28,#a4,#8a,#09,#a4
	db #ea,#1b,#b0,#8a,#09,#b0,#ea,#1b
	db #a4,#8a,#09,#a4,#ea,#1b,#b0,#ea
	db #1b,#b0,#8a,#09,#a4,#ea,#1b,#a4
	db #8a,#09,#b0,#ea,#1b,#b0,#8a,#0a
	db #a4,#8a,#09,#a4,#ea,#1b,#b0,#8a
	db #0a,#b0,#8a,#09,#a2,#8a,#0a,#a2
	db #ea,#1e,#ae,#8a,#0a,#ae,#ea,#1e
	db #a2,#8a,#0a,#a2,#ea,#1e,#ae,#8a
	db #0a,#ae,#8a,#0c,#9f,#ea,#24,#9f
	db #8a,#0c,#ab,#ea,#24,#ab,#8a,#0c
	db #9d,#aa,#0d,#9d,#ea,#28,#a9,#aa
	db #0d,#a9,#ea,#28,#ff,#a4,#ea,#1b
	db #a4,#ea,#1b,#96,#1c,#96,#1c,#a4
	db #ea,#1b,#a4,#ea,#1b,#96,#1c,#96
	db #1c,#a4,#ea,#1b,#a4,#ea,#1b,#b0
	db #8a,#09,#96,#1c,#a4,#ea,#1b,#a4
	db #ea,#1b,#96,#1c,#96,#1b,#a2,#ea
	db #1e,#a2,#ea,#1e,#96,#1c,#96,#1c
	db #a2,#ea,#1e,#a2,#ea,#1e,#96,#1c
	db #ae,#ea,#1e,#ab,#ea,#24,#ab,#ea
	db #24,#b7,#8a,#0c,#96,#1c,#ab,#ea
	db #24,#ab,#ea,#24,#a9,#8a,#0c,#96
	db #1b,#a4,#ea,#1b,#a4,#ea,#1b,#96
	db #1c,#96,#1c,#a4,#ea,#1b,#a4,#ea
	db #1b,#96,#1c,#96,#1c,#a4,#ea,#1b
	db #a4,#ea,#1b,#b0,#8a,#09,#96,#1c
	db #a4,#ea,#1b,#a4,#ea,#1b,#96,#1c
	db #96,#1b,#a9,#ea,#28,#a9,#ea,#28
	db #96,#1c,#96,#1c,#a9,#ea,#28,#a9
	db #ea,#28,#b5,#8a,#0a,#96,#1c,#ab
	db #ea,#24,#ab,#ea,#24,#b7,#8a,#09
	db #b7,#ea,#12,#bf,#1e,#ab,#ea,#24
	db #b7,#8a,#09,#b7,#ea,#12,#ff,#a4
	db #ea,#1b,#a4,#ea,#1b,#96,#1c,#96
	db #1c,#a4,#ea,#1b,#a4,#ea,#1b,#96
	db #1c,#96,#1c,#a4,#ea,#1b,#a4,#ea
	db #1b,#b0,#8a,#09,#96,#1c,#a4,#ea
	db #1b,#a4,#ea,#1b,#96,#1c,#96,#1b
	db #a2,#ea,#1e,#a2,#ea,#1e,#96,#1c
	db #96,#1c,#a2,#ea,#1e,#a2,#ea,#1e
	db #96,#1c,#ae,#ea,#1e,#ab,#ea,#24
	db #ab,#ea,#24,#b7,#8a,#0c,#96,#1c
	db #ab,#ea,#24,#ab,#ea,#24,#a9,#8a
	db #0c,#96,#1b,#a4,#ea,#1b,#a4,#ea
	db #1b,#96,#1c,#96,#1c,#a4,#ea,#1b
	db #a4,#ea,#1b,#96,#1c,#96,#1c,#a4
	db #ea,#1b,#a4,#ea,#1b,#b0,#8a,#09
	db #96,#1c,#a4,#ea,#1b,#a4,#ea,#1b
	db #96,#1c,#96,#1b,#a9,#ea,#28,#a9
	db #ea,#28,#96,#1c,#96,#1c,#a9,#ea
	db #28,#a9,#ea,#28,#b5,#8a,#0a,#96
	db #1c,#ab,#ea,#24,#ab,#ea,#24,#b7
	db #8a,#09,#b7,#ea,#12,#bf,#1e,#ab
	db #ea,#24,#bf,#1e,#b7,#ea,#12,#ff
	db #a2,#ea,#1e,#a2,#ea,#1e,#96,#1c
	db #96,#1c,#a2,#ea,#1e,#a2,#ea,#1e
	db #96,#1c,#96,#1c,#a2,#ea,#1e,#a2
	db #ea,#1e,#ae,#ea,#1e,#96,#1c,#a4
	db #ea,#1b,#a4,#ea,#1b,#96,#1c,#96
	db #1b,#a5,#ea,#19,#a5,#ea,#19,#96
	db #1c,#96,#1c,#a5,#ea,#19,#a5,#ea
	db #19,#96,#1c,#b1,#ea,#19,#a5,#ea
	db #19,#96,#1c,#b1,#ea,#19,#96,#1c
	db #9e,#ea,#26,#9e,#ea,#26,#aa,#ea
	db #26,#96,#1b,#a0,#ea,#21,#a0,#ea
	db #21,#96,#1c,#96,#1c,#a0,#ea,#21
	db #a0,#ea,#21,#96,#1c,#96,#1c,#a0
	db #ea,#21,#a0,#ea,#21,#ac,#ea,#21
	db #96,#1c,#a0,#ea,#21,#96,#1b,#96
	db #1c,#ac,#ea,#21,#a0,#ea,#21,#a0
	db #ea,#21,#96,#1c,#96,#1c,#a0,#ea
	db #21,#a0,#ea,#21,#ac,#ea,#21,#96
	db #1c,#a0,#ea,#21,#a0,#ea,#21,#bf
	db #1e,#b5,#18,#a0,#ea,#21,#bf,#1e
	db #ac,#ea,#21,#b2,#18,#ff,#9c,#ea
	db #2a,#9c,#ea,#2a,#96,#1c,#96,#1c
	db #9c,#ea,#2a,#9c,#ea,#2a,#96,#1c
	db #96,#1c,#9c,#ea,#2a,#9c,#ea,#2a
	db #a8,#8a,#0e,#96,#1c,#9c,#ea,#2a
	db #9c,#ea,#2a,#96,#1c,#96,#1b,#9f
	db #ea,#23,#9f,#ea,#23,#96,#1c,#96
	db #1c,#9f,#ea,#23,#9f,#ea,#23,#96
	db #1c,#ab,#ea,#23,#a4,#ea,#1b,#96
	db #1c,#b0,#8a,#1b,#96,#1c,#a4,#ea
	db #1b,#a4,#ea,#1b,#b0,#8a,#1b,#96
	db #1b,#a6,#ea,#2f,#a6,#ea,#2f,#96
	db #1c,#96,#1c,#a6,#ea,#2f,#a6,#ea
	db #2f,#96,#1c,#96,#1c,#a6,#ea,#2f
	db #a6,#ea,#2f,#b2,#8a,#0c,#96,#1c
	db #a6,#ea,#2f,#a6,#ea,#2f,#96,#1c
	db #96,#1b,#a6,#ea,#2f,#a6,#ea,#2f
	db #96,#1c,#96,#1c,#a6,#ea,#2f,#a6
	db #ea,#2f,#b2,#8a,#0c,#96,#1c,#a6
	db #ea,#2f,#a6,#ea,#2f,#3f,#02,#1e
	db #a6,#ea,#2f,#a6,#ea,#2f,#b2,#8a
	db #0c,#96,#1b,#ff,#a0,#ea,#21,#a0
	db #ea,#21,#96,#1c,#96,#1c,#a0,#ea
	db #21,#a0,#ea,#21,#96,#1c,#96,#1c
	db #9f,#ea,#24,#9f,#ea,#24,#ab,#ea
	db #24,#96,#1c,#9f,#ea,#24,#9f,#ea
	db #24,#96,#1c,#96,#1b,#a4,#ea,#1b
	db #a4,#ea,#1b,#96,#1c,#96,#1c,#a4
	db #ea,#1b,#a4,#ea,#1b,#96,#1c,#b0
	db #ea,#1b,#a4,#ea,#1b,#a4,#ea,#1b
	db #b0,#ea,#1b,#96,#1c,#a4,#ea,#1b
	db #b0,#ea,#1b,#a2,#ea,#1e,#96,#1b
	db #a0,#ea,#21,#a0,#ea,#21,#96,#1c
	db #96,#1c,#a0,#ea,#21,#a0,#ea,#21
	db #96,#1c,#96,#1c,#9f,#ea,#24,#9f
	db #ea,#24,#ab,#ea,#24,#96,#1c,#9f
	db #ea,#24,#9f,#ea,#24,#96,#1c,#96
	db #1b,#98,#ea,#36,#98,#ea,#36,#96
	db #1c,#96,#1c,#98,#ea,#36,#98,#ea
	db #36,#a4,#ea,#36,#96,#1c,#98,#ea
	db #36,#96,#1c,#a4,#ea,#36,#a4,#ea
	db #36,#98,#ea,#36,#bf,#1e,#a4,#ea
	db #36,#96,#1b,#ff,#a0,#ea,#21,#a0
	db #ea,#21,#96,#1c,#96,#1c,#a0,#ea
	db #21,#a0,#ea,#21,#96,#1c,#96,#1c
	db #9f,#ea,#24,#9f,#ea,#24,#ab,#ea
	db #24,#96,#1c,#9f,#ea,#24,#9f,#ea
	db #24,#96,#1c,#96,#1b,#a4,#ea,#1b
	db #a4,#ea,#1b,#96,#1c,#96,#1c,#a4
	db #ea,#1b,#a4,#ea,#1b,#96,#1c,#b0
	db #ea,#1b,#a4,#ea,#1b,#a4,#ea,#1b
	db #b0,#ea,#1b,#96,#1c,#a4,#ea,#1b
	db #b0,#ea,#1b,#a2,#ea,#1e,#96,#1b
	db #a0,#ea,#21,#a0,#ea,#21,#96,#1c
	db #96,#1c,#a0,#ea,#21,#a0,#ea,#21
	db #96,#1c,#96,#1c,#9f,#ea,#24,#9f
	db #ea,#24,#ab,#ea,#24,#96,#1c,#9f
	db #ea,#24,#9f,#ea,#24,#96,#1c,#96
	db #1b,#a9,#ea,#28,#a9,#ea,#28,#96
	db #1c,#b5,#ea,#14,#a9,#ea,#28,#a9
	db #ea,#28,#b5,#ea,#14,#96,#1c,#a9
	db #ea,#28,#a9,#ea,#28,#bf,#1e,#b5
	db #ea,#14,#bf,#1e,#bf,#1e,#b5,#ea
	db #14,#b5,#ea,#14,#ff,#54,#40,#d2
	db #02,#ff,#00,#40,#ff,#54,#02,#f2
	db #01,#54,#02,#02,#54,#83,#52,#82
	db #52,#82,#d2,#02,#54,#82,#cd,#02
	db #cf,#02,#52,#82,#52,#82,#52,#83
	db #4f,#82,#4f,#82,#cf,#02,#4d,#82
	db #4d,#82,#54,#02,#f2,#01,#54,#02
	db #02,#54,#83,#52,#82,#52,#82,#d2
	db #02,#54,#82,#cd,#02,#cf,#02,#52
	db #82,#52,#82,#52,#83,#4f,#82,#4f
	db #82,#cf,#02,#4d,#82,#4d,#82,#ff
	db #48,#04,#f2,#01,#4f,#02,#02,#cb
	db #02,#4d,#89,#4d,#82,#4d,#84,#4b
	db #82,#ca,#02,#4b,#82,#4a,#83,#46
	db #82,#48,#89,#d4,#f3,#02,#d2,#03
	db #d4,#03,#d2,#03,#d2,#03,#cf,#03
	db #cd,#03,#48,#02,#f2,#01,#4b,#02
	db #02,#4d,#82,#4b,#82,#d2,#02,#4f
	db #82,#4d,#82,#4f,#83,#ff,#48,#04
	db #f2,#01,#4f,#02,#02,#cb,#02,#4d
	db #89,#4d,#82,#4d,#84,#4b,#82,#ca
	db #02,#4b,#82,#4a,#83,#46,#82,#48
	db #89,#d4,#f3,#02,#d2,#03,#d4,#03
	db #d2,#03,#d2,#03,#cf,#03,#cd,#03
	db #48,#02,#f2,#01,#4b,#02,#02,#4d
	db #82,#4b,#82,#ca,#02,#4b,#82,#4d
	db #82,#cf,#02,#d2,#02,#d4,#02,#ff
	db #4d,#04,#f2,#02,#4d,#02,#02,#cd
	db #02,#49,#8b,#4d,#82,#4d,#82,#4d
	db #82,#ce,#02,#4d,#83,#4b,#82,#49
	db #82,#48,#84,#48,#82,#cb,#02,#50
	db #92,#96,#1c,#b5,#18,#96,#1c,#b3
	db #18,#96,#1c,#b3,#18,#96,#1b,#ff
	db #54,#02,#f5,#06,#4c,#02,#05,#4f
	db #82,#d1,#05,#4f,#8b,#4f,#82,#cf
	db #05,#51,#82,#4f,#82,#4a,#82,#cb
	db #05,#4c,#82,#4c,#82,#4a,#90,#4c
	db #03,#f2,#01,#4a,#03,#02,#4f,#82
	db #51,#88,#ff,#48,#08,#f2,#07,#4b
	db #08,#02,#4d,#83,#4f,#83,#4d,#82
	db #4b,#82,#48,#86,#4b,#88,#4a,#88
	db #4b,#89,#d4,#f3,#02,#d4,#03,#d4
	db #03,#52,#82,#54,#82,#ff,#48,#08
	db #f2,#07,#4b,#08,#02,#4d,#83,#4f
	db #83,#4d,#82,#4b,#82,#48,#86,#4b
	db #88,#4f,#88,#4d,#89,#cd,#f3,#02
	db #cd,#03,#cd,#03,#4f,#82,#52,#82
	db #ff,#00,#3a,#22,#06,#df,#06,#ff
	db #b0,#1d,#96,#0c,#96,#0c,#96,#0c
	db #3f,#02,#0e,#96,#0c,#96,#0c,#b0
	db #0d,#96,#0c,#b0,#0d,#96,#0c,#3f
	db #02,#0e,#96,#0c,#96,#0b,#b0,#0d
	db #96,#0c,#96,#0c,#96,#0c,#3f,#02
	db #0e,#96,#0c,#b0,#0d,#b0,#0d,#96
	db #0c,#b0,#0d,#96,#0c,#bf,#0e,#3f
	db #82,#96,#0b,#b0,#0d,#96,#0c,#96
	db #0c,#96,#0c,#3f,#02,#0e,#96,#0c
	db #96,#0c,#b0,#0d,#96,#0c,#b0,#0d
	db #96,#0c,#bf,#0e,#96,#0b,#96,#0c
	db #96,#0b,#b0,#0d,#96,#0c,#96,#0c
	db #96,#0c,#3f,#02,#0e,#b0,#0d,#96
	db #0c,#b0,#0d,#96,#0c,#bf,#0e,#b0
	db #0d,#bf,#0e,#bf,#0e,#bf,#0e,#96
	db #0b,#ff,#b0,#1d,#96,#0c,#96,#0c
	db #96,#0c,#3f,#02,#0e,#96,#0c,#96
	db #0c,#b0,#0d,#96,#0c,#b0,#0d,#96
	db #0c,#3f,#02,#0e,#96,#0c,#96,#0b
	db #b0,#0d,#96,#0c,#96,#0c,#96,#0c
	db #3f,#02,#0e,#96,#0c,#b0,#0d,#b0
	db #0d,#96,#0c,#b0,#0d,#96,#0c,#bf
	db #0e,#3f,#82,#96,#0b,#b0,#0d,#96
	db #0c,#96,#0c,#96,#0c,#3f,#02,#0e
	db #96,#0c,#96,#0c,#b0,#0d,#96,#0c
	db #b0,#0d,#96,#0c,#bf,#0e,#96,#0b
	db #96,#0c,#96,#0b,#b0,#0d,#96,#0c
	db #96,#0c,#96,#0c,#3f,#02,#0e,#b0
	db #0d,#96,#0c,#b0,#0d,#96,#0c,#3f
	db #02,#0e,#bf,#0e,#bf,#0e,#bf,#0e
	db #96,#0b,#ff,#b0,#1d,#96,#1c,#b0
	db #8a,#09,#b0,#ea,#1b,#3f,#02,#1e
	db #b0,#8a,#09,#b0,#ea,#1b,#b0,#1d
	db #96,#1c,#b0,#1d,#b0,#ea,#1b,#3f
	db #02,#1e,#b0,#8a,#09,#b0,#ea,#1b
	db #b0,#1d,#96,#1c,#ae,#8a,#0a,#ae
	db #ea,#1e,#3f,#02,#1e,#ae,#8a,#0a
	db #b0,#1d,#b0,#1d,#96,#1c,#b0,#1d
	db #b7,#ea,#12,#bf,#1e,#3f,#82,#a9
	db #ea,#28,#b0,#1d,#96,#1c,#b0,#8a
	db #09,#b0,#ea,#1b,#3f,#02,#1e,#b0
	db #8a,#09,#b0,#ea,#1b,#b0,#1d,#96
	db #1c,#b0,#1d,#b0,#ea,#1b,#bf,#1e
	db #96,#1b,#b0,#8a,#09,#b0,#ea,#1b
	db #b0,#1d,#96,#1c,#b5,#8a,#0a,#b5
	db #ea,#14,#3f,#02,#1e,#b0,#1d,#b5
	db #ea,#14,#b0,#1d,#96,#1c,#3f,#02
	db #1e,#ab,#ea,#24,#bf,#1e,#bf,#1e
	db #96,#1b,#ff,#b0,#1d,#96,#1c,#b0
	db #8a,#09,#b0,#ea,#1b,#3f,#02,#1e
	db #b0,#8a,#09,#b0,#ea,#1b,#b0,#1d
	db #96,#1c,#b0,#1d,#b0,#ea,#1b,#3f
	db #02,#1e,#b0,#8a,#09,#b0,#ea,#1b
	db #b0,#1d,#96,#1c,#ae,#8a,#0a,#ae
	db #ea,#1e,#3f,#02,#1e,#ae,#8a,#0a
	db #b0,#1d,#b0,#1d,#96,#1c,#b0,#1d
	db #b7,#ea,#12,#bf,#1e,#3f,#82,#a9
	db #ea,#28,#b0,#1d,#96,#1c,#b0,#8a
	db #09,#b0,#ea,#1b,#3f,#02,#1e,#b0
	db #8a,#09,#b0,#ea,#1b,#b0,#1d,#96
	db #1c,#b0,#1d,#b0,#ea,#1b,#bf,#1e
	db #96,#1b,#b0,#8a,#09,#b0,#ea,#1b
	db #b0,#1d,#96,#1c,#b5,#8a,#0a,#b5
	db #ea,#14,#3f,#02,#1e,#b0,#1d,#b5
	db #ea,#14,#b0,#1d,#96,#1c,#3f,#02
	db #1e,#ab,#ea,#24,#bf,#1e,#b7,#8a
	db #09,#96,#1b,#ff,#b0,#1d,#96,#0c
	db #ae,#ea,#1e,#ae,#ea,#1e,#3f,#02
	db #1e,#ae,#ea,#1e,#ae,#ea,#1e,#b0
	db #1d,#96,#1c,#b0,#1d,#ae,#ea,#1e
	db #3f,#02,#1e,#b0,#ea,#1b,#b0,#ea
	db #1b,#b0,#1d,#96,#1c,#b1,#ea,#19
	db #b1,#ea,#19,#3f,#02,#1e,#b1,#ea
	db #19,#b0,#1d,#b0,#1d,#a5,#ea,#19
	db #b0,#1d,#b1,#ea,#19,#bf,#1e,#3f
	db #82,#aa,#ea,#26,#b0,#1d,#96,#1c
	db #ac,#ea,#21,#ac,#ea,#21,#3f,#02
	db #1e,#ac,#ea,#21,#ac,#ea,#21,#b0
	db #1d,#96,#1c,#b0,#1d,#ac,#ea,#21
	db #bf,#1e,#a0,#ea,#21,#ac,#ea,#21
	db #96,#1b,#b0,#1d,#96,#1c,#ac,#ea
	db #21,#ac,#ea,#21,#3f,#02,#1e,#b0
	db #1d,#ac,#ea,#21,#b0,#1d,#b5,#18
	db #ac,#ea,#21,#ac,#ea,#21,#bf,#1e
	db #a0,#ea,#21,#bf,#1e,#ac,#ea,#21
	db #ff,#b0,#1d,#96,#1c,#a8,#8a,#0e
	db #a8,#ea,#2a,#3f,#02,#1e,#a8,#8a
	db #0e,#a8,#ea,#2a,#b0,#1d,#96,#1c
	db #b0,#1d,#a8,#ea,#2a,#3f,#02,#1e
	db #a6,#8a,#10,#a6,#ea,#2f,#b0,#1d
	db #96,#1c,#ab,#8a,#12,#ab,#ea,#23
	db #3f,#02,#1e,#ab,#8a,#12,#b0,#1d
	db #b0,#1d,#a4,#ea,#1b,#b0,#1d,#b0
	db #ea,#1b,#bf,#1e,#3f,#82,#b0,#ea
	db #1b,#b0,#1d,#96,#1c,#b2,#8a,#0c
	db #b2,#ea,#18,#3f,#02,#1e,#b2,#8a
	db #0c,#b2,#ea,#18,#b0,#1d,#96,#1c
	db #b0,#1d,#b2,#ea,#18,#bf,#1e,#96
	db #1b,#b2,#8a,#0c,#b2,#ea,#18,#b0
	db #1d,#96,#1c,#b2,#8a,#0c,#b2,#ea
	db #18,#3f,#02,#1e,#b0,#1d,#b2,#ea
	db #18,#b0,#1d,#b0,#1d,#b2,#8a,#0c
	db #b2,#ea,#18,#bf,#1e,#bf,#1e,#bf
	db #1e,#b2,#ea,#18,#ff,#b0,#1d,#96
	db #1c,#ac,#ea,#21,#ac,#ea,#21,#3f
	db #02,#1e,#ac,#ea,#21,#ac,#ea,#21
	db #b0,#1d,#96,#1c,#b0,#1d,#ab,#ea
	db #24,#3f,#02,#1e,#ab,#ea,#24,#ab
	db #ea,#24,#b0,#1d,#96,#1c,#b0,#ea
	db #1b,#b0,#ea,#1b,#3f,#02,#1e,#b0
	db #ea,#1b,#b0,#1d,#b0,#1d,#96,#1c
	db #b0,#1d,#b0,#ea,#1b,#bf,#1e,#3f
	db #82,#ae,#ea,#1e,#b0,#1d,#96,#1c
	db #ac,#ea,#21,#ac,#ea,#21,#3f,#02
	db #1e,#ac,#ea,#21,#ac,#ea,#21,#b0
	db #1d,#96,#1c,#b0,#1d,#ab,#ea,#24
	db #bf,#1e,#96,#1b,#ab,#ea,#24,#ab
	db #ea,#24,#b0,#1d,#96,#1c,#a4,#ea
	db #36,#a4,#ea,#36,#3f,#02,#1e,#b0
	db #1d,#a4,#ea,#36,#b0,#1d,#98,#ea
	db #36,#bf,#1e,#b0,#1d,#bf,#1e,#98
	db #ea,#36,#bf,#1e,#a4,#ea,#36,#ff
	db #b0,#1d,#96,#1c,#ac,#ea,#21,#ac
	db #ea,#21,#3f,#02,#1e,#ac,#ea,#21
	db #ac,#ea,#21,#b0,#1d,#96,#1c,#b0
	db #1d,#ab,#ea,#24,#3f,#02,#1e,#ab
	db #ea,#24,#ab,#ea,#24,#b0,#1d,#96
	db #1c,#b0,#ea,#1b,#b0,#ea,#1b,#3f
	db #02,#1e,#b0,#ea,#1b,#b0,#1d,#b0
	db #1d,#96,#1c,#b0,#1d,#b0,#ea,#1b
	db #bf,#1e,#3f,#82,#ae,#ea,#1e,#b0
	db #1d,#96,#1c,#ac,#ea,#21,#ac,#ea
	db #21,#3f,#02,#1e,#ac,#ea,#21,#ac
	db #ea,#21,#b0,#1d,#96,#1c,#b0,#1d
	db #ab,#ea,#24,#bf,#1e,#96,#1b,#ab
	db #ea,#24,#ab,#ea,#24,#b0,#1d,#96
	db #1c,#b5,#ea,#14,#b0,#1d,#bf,#1e
	db #b0,#1d,#b0,#1d,#b5,#ea,#14,#bf
	db #1e,#b0,#1d,#b5,#ea,#14,#b0,#1d
	db #a9,#ea,#28,#a9,#ea,#28,#bf,#1e
	db #bf,#1e,#ff,#56,#40,#02,#ff
;
.music_info
	db "New Arcade 5 Utilitaires (1993)(New Arcade)()",0
	db "ST-Module",0

	read "music_end.asm"
