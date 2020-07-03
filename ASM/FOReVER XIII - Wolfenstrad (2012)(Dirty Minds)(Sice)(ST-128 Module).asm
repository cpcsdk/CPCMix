; Music of FOReVER XIII - Wolfenstrad (2012)(Dirty Minds)(Sice)(ST-128 Module)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOREVEXW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9b00

	read "music_header.asm"

	jp l9b09
	jp l9b9d
	jp l9b81
;
.init_music
.l9b09
;
	xor a
	ld hl,la0b4
	call l9b7a
	ld hl,la0e2
	call l9b7a
	ld hl,la110
	call l9b7a
	ld ix,la0b0
	ld iy,la13a
	ld de,#002e
	ld b,#03
.l9b29
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
	djnz l9b29
	ld hl,l9fc9
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
	ld (l9fc5),hl
	ld (l9fc7),hl
	ld a,#0c
	ld c,d
	call l9fa5
	ld a,#0d
	ld c,d
	jp l9fa5
.l9b7a
	ld b,#2a
.l9b7c
	ld (hl),a
	inc hl
	djnz l9b7c
	ret
;
.stop_music
.l9b81
;
	ld a,#07
	ld c,#3f
	call l9fa5
	ld a,#08
	ld c,#00
	call l9fa5
	ld a,#09
	ld c,#00
	call l9fa5
	ld a,#0a
	ld c,#00
	jp l9fa5
;
.play_music
.l9b9d
;
	ld hl,l9fcb
	dec (hl)
	ld ix,la0b0
	ld bc,la0be
	call l9c3f
	ld ix,la0de
	ld bc,la0ec
	call l9c3f
	ld ix,la10c
	ld bc,la11a
	call l9c3f
	ld hl,l9fc4
	ld de,l9fcb
	ld b,#06
	call l9c1c
	ld b,#07
	call l9c1c
	ld b,#0b
	call l9c1c
	ld b,#0d
	call l9c1c
	ld de,l9fcb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,la0cf
	call l9bf5
	ld hl,la0fd
	call l9bf5
	ld hl,la12b
.l9bf5
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
	jr nz,l9c0a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9c0a
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
.l9c1c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l9fa5
.l9c27
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l9fa5
.l9c3f
	ld a,(l9fcb)
	or a
	jp nz,l9cf7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9cf7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9c27
	or a
	jp z,l9cec
	ld r,a
	and #7f
	cp #10
	jr c,l9cc7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l9e3f
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
	jr z,l9ca0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l9ca0
	rrca
	ld c,a
	ld hl,la140
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
	jr z,l9cbf
	ld (ix+#1e),b
.l9cbf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l9ce0
.l9cc7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l9fd0
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
.l9ce0
	ld a,d
	or a
	jr nz,l9cee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l9cee
.l9cec
	ld a,(hl)
	inc hl
.l9cee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9cf7
	ld a,(ix+#17)
	or a
	jr nz,l9d0d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l9d0d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9d23
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9d23
	ld a,(ix+#0d)
	or a
	jr z,l9d31
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l9d4f
.l9d31
	ld a,(ix+#1a)
	or a
	jp z,l9d56
	ld c,a
	cp #03
	jr nz,l9d3e
	xor a
.l9d3e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l9d4f
	ld a,(ix+#18)
	dec c
	jr z,l9d4f
	ld a,(ix+#19)
.l9d4f
	add (ix+#07)
	ld b,d
	call l9e3f
.l9d56
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l9d7e
	dec (ix+#1b)
	jr nz,l9d7e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l9db6
.l9d7e
	ld a,(ix+#29)
	or a
	jr z,l9db6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l9dad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l9da4
	ld (ix+#29),#ff
	jr l9dad
.l9da4
	cp (ix+#2b)
	jr nz,l9dad
	ld (ix+#29),#01
.l9dad
	ld b,d
	or a
	jp p,l9db3
	dec b
.l9db3
	ld c,a
	jr l9dc1
.l9db6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9dc1
	pop hl
	bit 7,(ix+#14)
	jr z,l9dca
	ld h,d
	ld l,d
.l9dca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l9fa5
	ld c,h
	ld a,(ix+#02)
	call l9fa5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9e1d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l9e0c
	dec (ix+#09)
	jr nz,l9e0c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9e04
	xor a
	jr l9e09
.l9e04
	cp #10
	jr nz,l9e09
	dec a
.l9e09
	ld (ix+#1e),a
.l9e0c
	ld a,b
	sub (ix+#1e)
	jr nc,l9e13
	xor a
.l9e13
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l9fa5
.l9e1d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l9fcc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9e3b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9e3b
	ld (l9fcc),hl
	ret
.l9e3f
	ld hl,l9fee
	cp #61
	jr nc,l9e49
	add a
	ld c,a
	add hl,bc
.l9e49
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9f78
	ld (ix+#1e),a
	jp l9ce0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9e71
	neg
.l9e71
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
	jp l9ce0
	dec b
	jr l9e8b
	inc b
.l9e8b
	call l9f78
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l9ce0
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
	jp l9f5d
	ld a,(hl)
	inc hl
	or a
	jr z,l9ecd
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
.l9ecd
	ld (ix+#29),a
	jp l9ce0
	dec hl
	ld a,(hl)
	and #0f
	ld (l9fcf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9fce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l9ce0
	ld a,(hl)
	or a
	jr z,l9efe
	call l9f7a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l9ce0
.l9efe
	ld hl,#0101
	ld (l9fca),hl
	jp l9ce0
	call l9f78
	ld (ix+#1e),a
	jp l9ce0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9f89
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9f89
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l9ce0
	ld a,(hl)
	inc hl
	ld (l9fc9),a
	jp l9ce0
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
	jp l9ce0
	call l9f78
	add a
.l9f5d
	ld b,#00
	ld c,a
	push hl
	ld hl,la1c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l9ce0
.l9f78
	ld a,(hl)
	inc hl
.l9f7a
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
.l9f89
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,la140
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l9fed
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l9fa5
	di
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
	ei
.l9fc4
	ret
.l9fcc equ $ + 7
.l9fcb equ $ + 6
.l9fca equ $ + 5
.l9fc9 equ $ + 4
.l9fc7 equ $ + 2
.l9fc5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fcf equ $ + 2
.l9fce equ $ + 1
	db #38,#00,#00
.l9fd0
	db #53,#9e,#66,#9e,#65,#9e,#8a,#9e
	db #87,#9e,#9a,#9e,#ab,#9e,#d3,#9e
	db #ed,#9e,#d3,#9e,#07,#9f,#10,#9f
.l9fed equ $ + 5
	db #32,#9f,#3a,#9f,#59,#9f
.l9fee
	dw #0000,#0e18,#0d4d,#0c8e
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
.la0b4 equ $ + 4
.la0b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.la0be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.la0e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.la0ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la10c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.la110
	db #00,#00,#00,#00,#00,#00,#00,#00
.la11a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la12b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la13a equ $ + 2
	db #00,#00,#a0,#a4,#eb,#a4,#36,#a5
.la140
	db #e0,#a1,#20,#a2,#40,#a2,#40,#00
	db #60,#a2,#a0,#a2,#c0,#a2,#c0,#00
	db #e0,#a2,#20,#a3,#40,#a3,#00,#00
	db #e0,#a2,#60,#a3,#40,#a3,#00,#00
	db #e0,#a2,#80,#a3,#a0,#a3,#9a,#06
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #e0,#a2,#c0,#a3,#40,#a3,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #d2,#5a,#d2,#5a,#d2,#5a,#00,#00
	db #e0,#a3,#20,#a4,#40,#a4,#00,#00
.la1c0
	db #60,#a4,#80,#a4,#d2,#5a,#d2,#5a
	db #d2,#5a,#d2,#5a,#d2,#5a,#d2,#5a
	db #d2,#5a,#d2,#5a,#d2,#5a,#d2,#5a
	db #d2,#5a,#d2,#5a,#d2,#5a,#d2,#5a
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0e,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0f,#0e,#0f,#0f,#0f,#0e
	db #0e,#0e,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#01,#01,#01,#01
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
	db #00,#03,#03,#07,#07,#00,#03,#03
	db #07,#07,#00,#03,#03,#07,#07,#00
	db #03,#03,#07,#07,#00,#03,#03,#07
	db #07,#00,#03,#03,#07,#07,#00,#03
	db #00,#04,#04,#07,#07,#00,#04,#04
	db #07,#07,#00,#04,#04,#07,#07,#00
	db #04,#04,#07,#07,#00,#04,#04,#07
	db #07,#00,#04,#04,#07,#07,#00,#04
	db #00,#81,#a5,#00,#81,#a5,#00,#81
	db #a5,#00,#81,#a5,#00,#c0,#a5,#00
	db #c0,#a5,#00,#c0,#a5,#00,#c0,#a5
	db #00,#c0,#a5,#00,#c0,#a5,#00,#c0
	db #a5,#00,#c0,#a5,#00,#81,#a5,#00
	db #81,#a5,#00,#c0,#a5,#00,#c0,#a5
	db #00,#c0,#a5,#00,#c0,#a5,#00,#c0
	db #a5,#00,#c0,#a5,#00,#49,#a6,#00
	db #49,#a6,#00,#00,#a6,#00,#00,#a6
	db #80,#a0,#a4,#00,#92,#a6,#00,#a0
	db #a6,#00,#07,#a7,#00,#07,#a7,#00
	db #86,#a7,#00,#86,#a7,#00,#1a,#a8
	db #00,#1a,#a8,#00,#0c,#a9,#00,#0c
	db #a9,#00,#db,#a8,#00,#db,#a8,#00
	db #5b,#a9,#00,#5b,#a9,#00,#86,#a7
	db #00,#86,#a7,#00,#1a,#a8,#00,#1a
	db #a8,#00,#db,#a8,#00,#db,#a8,#00
	db #c3,#aa,#00,#c3,#aa,#00,#0f,#aa
	db #00,#0f,#aa,#80,#eb,#a4,#00,#f4
	db #aa,#00,#31,#ab,#00,#9e,#ab,#00
	db #9e,#ab,#00,#26,#ac,#00,#26,#ac
	db #00,#26,#ac,#00,#26,#ac,#00,#63
	db #ad,#00,#63,#ad,#00,#b0,#ac,#00
	db #b0,#ac,#00,#b4,#ad,#00,#b4,#ad
	db #00,#26,#ac,#00,#26,#ac,#00,#26
	db #ac,#00,#26,#ac,#00,#b0,#ac,#00
	db #b0,#ac,#00,#1f,#af,#00,#1f,#af
	db #00,#69,#ae,#00,#69,#ae,#80,#36
	db #a5,#2f,#0a,#0d,#06,#2f,#00,#04
	db #2f,#00,#02,#2a,#0a,#09,#02,#2f
	db #0a,#0d,#02,#2f,#00,#06,#2f,#00
	db #04,#2f,#00,#02,#2a,#0a,#09,#04
	db #2f,#0a,#0d,#06,#2f,#00,#04,#2f
	db #00,#02,#2a,#0a,#09,#02,#2f,#0a
	db #0d,#02,#2f,#00,#06,#2f,#00,#04
	db #2f,#00,#02,#2a,#0a,#09,#04,#ff
	db #2f,#0a,#0d,#06,#2f,#00,#04,#2f
	db #00,#02,#2a,#0a,#09,#02,#2f,#0a
	db #0d,#02,#2f,#00,#06,#2f,#00,#04
	db #2f,#00,#02,#2a,#0a,#09,#04,#2b
	db #0a,#11,#06,#2b,#00,#04,#2b,#00
	db #02,#2b,#0a,#0d,#02,#2b,#0a,#11
	db #02,#2f,#0a,#0d,#06,#2f,#00,#04
	db #2f,#00,#02,#2a,#0a,#09,#04,#ff
	db #2b,#0a,#11,#06,#2b,#0a,#11,#04
	db #2b,#0a,#11,#02,#32,#0a,#0b,#02
	db #2b,#0a,#11,#02,#2b,#0a,#11,#06
	db #2b,#0a,#11,#04,#2b,#0a,#11,#02
	db #32,#0a,#0b,#04,#2b,#0a,#11,#06
	db #2b,#0a,#11,#04,#2b,#0a,#11,#02
	db #32,#0a,#0b,#02,#2b,#0a,#11,#02
	db #2b,#0a,#11,#06,#2b,#0a,#11,#04
	db #2b,#0a,#11,#02,#32,#0a,#0b,#04
	db #ff,#2b,#0a,#11,#06,#2b,#0a,#11
	db #04,#2b,#0a,#11,#02,#32,#0a,#0b
	db #02,#2b,#0a,#11,#02,#2b,#0a,#11
	db #06,#2b,#0a,#11,#04,#2b,#0a,#11
	db #02,#32,#0a,#0b,#04,#33,#0a,#20
	db #06,#33,#0a,#20,#04,#33,#0a,#20
	db #02,#2e,#0a,#15,#02,#33,#0a,#20
	db #02,#2b,#0a,#11,#06,#2b,#0a,#11
	db #04,#2b,#0a,#11,#02,#32,#0a,#0b
	db #04,#ff,#40,#01,#00,#1c,#40,#00
	db #04,#40,#00,#1b,#40,#00,#05,#ff
	db #40,#0b,#20,#58,#fb,#10,#58,#40
	db #02,#58,#f0,#04,#58,#f0,#02,#58
	db #40,#02,#34,#fb,#10,#34,#fb,#15
	db #34,#fb,#10,#34,#fb,#25,#58,#fb
	db #10,#58,#40,#02,#58,#f0,#06,#3b
	db #fb,#10,#40,#0b,#10,#39,#fb,#15
	db #38,#fb,#10,#34,#fb,#10,#40,#0b
	db #20,#58,#fb,#10,#58,#40,#02,#58
	db #f0,#04,#58,#f0,#02,#58,#40,#02
	db #34,#fb,#10,#34,#fb,#15,#34,#fb
	db #10,#34,#fb,#25,#58,#fb,#10,#58
	db #40,#02,#58,#f0,#05,#3b,#fb,#10
	db #40,#0b,#10,#39,#fb,#45,#ff,#58
	db #fb,#25,#58,#fb,#10,#58,#40,#02
	db #58,#f0,#02,#2f,#10,#02,#58,#fb
	db #10,#2f,#0b,#13,#58,#40,#02,#34
	db #fb,#10,#34,#fb,#15,#34,#fb,#10
	db #34,#fb,#25,#58,#fb,#10,#58,#40
	db #02,#58,#f0,#02,#2f,#1b,#20,#2f
	db #0b,#23,#3b,#fb,#10,#39,#fb,#10
	db #39,#fb,#15,#38,#fb,#10,#34,#fb
	db #10,#34,#fb,#25,#58,#fb,#10,#58
	db #40,#02,#58,#f0,#02,#2f,#10,#02
	db #58,#fb,#10,#2f,#0b,#13,#58,#40
	db #02,#34,#fb,#10,#34,#fb,#15,#34
	db #fb,#10,#34,#fb,#25,#58,#fb,#10
	db #58,#40,#02,#58,#f0,#02,#2f,#10
	db #02,#2f,#0b,#13,#3b,#fb,#10,#39
	db #fb,#10,#39,#fb,#45,#ff,#47,#6b
	db #14,#42,#6b,#12,#47,#6b,#14,#47
	db #6b,#22,#47,#6b,#12,#47,#6b,#14
	db #42,#6b,#22,#42,#6b,#12,#49,#6b
	db #14,#45,#6b,#22,#49,#6b,#12,#47
	db #6b,#14,#45,#6b,#22,#42,#6b,#12
	db #47,#6b,#14,#47,#6b,#22,#47,#6b
	db #12,#47,#6b,#14,#42,#6b,#22,#42
	db #6b,#12,#47,#6b,#14,#49,#6b,#22
	db #47,#6b,#12,#45,#6b,#14,#47,#6b
	db #22,#40,#6b,#12,#47,#6b,#14,#43
	db #6b,#22,#47,#6b,#12,#43,#6b,#14
	db #40,#6b,#22,#40,#6b,#12,#47,#6b
	db #14,#42,#6b,#22,#47,#6b,#12,#42
	db #6b,#14,#40,#6b,#22,#4a,#6b,#12
	db #47,#6b,#14,#42,#6b,#22,#47,#6b
	db #12,#42,#6b,#14,#4a,#6b,#22,#4a
	db #6b,#12,#47,#6b,#14,#42,#6b,#22
	db #47,#6b,#12,#42,#6b,#14,#4a,#6b
	db #12,#ff,#47,#6b,#12,#42,#6b,#14
	db #47,#6b,#12,#47,#6b,#12,#c7,#26
	db #02,#47,#61,#10,#47,#6b,#14,#42
	db #6b,#12,#2f,#3b,#12,#42,#6b,#12
	db #49,#6b,#14,#45,#6b,#12,#c7,#26
	db #02,#49,#61,#13,#47,#6b,#14,#45
	db #6b,#12,#2f,#3b,#12,#42,#6b,#12
	db #47,#6b,#14,#47,#6b,#12,#c7,#26
	db #02,#47,#61,#13,#47,#6b,#14,#42
	db #6b,#12,#2f,#3b,#12,#42,#6b,#12
	db #47,#6b,#14,#49,#6b,#12,#c7,#26
	db #02,#47,#61,#13,#45,#6b,#14,#47
	db #6b,#12,#2b,#3b,#12,#40,#6b,#12
	db #47,#6b,#14,#43,#6b,#12,#c3,#26
	db #12,#47,#61,#13,#43,#6b,#14,#40
	db #6b,#12,#2b,#3b,#12,#40,#6b,#12
	db #47,#6b,#14,#42,#6b,#12,#c3,#26
	db #12,#47,#61,#13,#42,#6b,#14,#40
	db #6b,#12,#2f,#3b,#12,#4a,#6b,#12
	db #47,#6b,#14,#42,#6b,#12,#c7,#26
	db #02,#47,#61,#13,#42,#6b,#14,#4a
	db #6b,#12,#2f,#3b,#12,#4a,#6b,#12
	db #47,#6b,#14,#42,#6b,#12,#2f,#3b
	db #12,#47,#6b,#12,#42,#6b,#14,#4a
	db #6b,#12,#ff,#45,#3b,#13,#03,#11
	db #01,#03,#11,#01,#47,#30,#09,#ce
	db #30,#ca,#30,#47,#30,#0e,#ce,#30
	db #ca,#30,#d3,#30,#02,#11,#01,#51
	db #30,#0c,#cf,#30,#ce,#30,#cf,#30
	db #cc,#30,#03,#11,#01,#03,#11,#01
	db #4e,#30,#0e,#ff,#45,#31,#13,#03
	db #11,#01,#03,#11,#01,#c7,#30,#c7
	db #30,#c2,#30,#47,#30,#03,#c9,#30
	db #4a,#30,#02,#49,#30,#02,#45,#30
	db #02,#47,#30,#03,#c2,#30,#c7,#30
	db #c2,#30,#47,#30,#03,#c9,#30,#4a
	db #30,#02,#49,#30,#02,#4a,#30,#02
	db #4c,#30,#03,#c7,#30,#cc,#30,#c7
	db #30,#4c,#30,#03,#ce,#30,#4f,#30
	db #02,#4e,#30,#02,#49,#30,#02,#47
	db #30,#10,#ff,#58,#fb,#15,#2f,#31
	db #13,#58,#fb,#13,#d8,#40,#2f,#31
	db #13,#d8,#f0,#2f,#31,#13,#af,#10
	db #2f,#31,#13,#58,#fb,#10,#2f,#0b
	db #13,#d8,#40,#2d,#31,#13,#34,#fb
	db #10,#34,#fb,#15,#34,#fb,#10,#34
	db #fb,#15,#2f,#31,#13,#58,#fb,#10
	db #d8,#40,#2f,#31,#13,#d8,#f0,#2f
	db #31,#13,#2f,#1b,#10,#2f,#31,#13
	db #2f,#0b,#13,#2f,#31,#13,#3b,#fb
	db #10,#39,#fb,#10,#39,#fb,#15,#38
	db #fb,#10,#34,#fb,#10,#34,#fb,#15
	db #2f,#31,#13,#58,#fb,#10,#d8,#40
	db #2f,#31,#13,#d8,#f0,#2f,#31,#13
	db #af,#10,#2f,#31,#13,#58,#fb,#10
	db #2f,#0b,#13,#d8,#40,#2d,#31,#13
	db #34,#fb,#10,#34,#fb,#15,#34,#fb
	db #10,#34,#fb,#15,#2f,#31,#13,#58
	db #fb,#10,#d8,#40,#2f,#31,#13,#d8
	db #f0,#2f,#31,#13,#af,#10,#2f,#31
	db #13,#2f,#0b,#13,#3b,#fb,#10,#39
	db #fb,#10,#39,#fb,#15,#2f,#31,#13
	db #2d,#31,#13,#2d,#31,#13,#ff,#58
	db #fb,#15,#2b,#31,#13,#58,#fb,#10
	db #d8,#40,#2b,#31,#13,#d8,#f0,#2b
	db #31,#13,#af,#10,#2b,#31,#13,#58
	db #fb,#10,#2b,#3b,#13,#d8,#40,#29
	db #31,#13,#34,#fb,#10,#34,#fb,#15
	db #34,#fb,#10,#34,#fb,#15,#2b,#31
	db #13,#58,#fb,#10,#d8,#40,#2b,#31
	db #13,#d8,#f0,#2b,#31,#13,#2f,#1b
	db #10,#2b,#31,#13,#2f,#0b,#13,#2b
	db #31,#13,#3b,#fb,#10,#39,#fb,#10
	db #39,#fb,#15,#38,#fb,#10,#34,#fb
	db #10,#34,#fb,#15,#2b,#31,#13,#58
	db #fb,#10,#d8,#40,#2b,#31,#13,#d8
	db #f0,#2b,#31,#13,#af,#10,#2b,#31
	db #13,#58,#fb,#10,#2f,#0b,#13,#d8
	db #40,#29,#31,#13,#34,#fb,#10,#34
	db #fb,#15,#34,#fb,#10,#34,#fb,#15
	db #2b,#31,#13,#58,#fb,#10,#d8,#40
	db #2b,#31,#13,#d8,#f0,#2b,#31,#13
	db #af,#10,#2b,#31,#13,#2f,#0b,#13
	db #3b,#fb,#10,#39,#fb,#10,#39,#fb
	db #15,#2b,#31,#13,#29,#31,#13,#29
	db #31,#13,#ff,#4d,#3b,#13,#03,#11
	db #01,#03,#11,#01,#4f,#30,#09,#d6
	db #30,#d2,#30,#4f,#30,#0e,#d6,#30
	db #d2,#30,#d9,#30,#02,#11,#01,#57
	db #30,#0c,#d6,#30,#d4,#30,#d7,#30
	db #d3,#30,#03,#11,#01,#03,#11,#01
	db #56,#30,#0e,#ff,#40,#fb,#10,#40
	db #fb,#d5,#40,#fb,#10,#40,#fb,#15
	db #40,#fb,#10,#40,#fb,#b5,#47,#fb
	db #10,#45,#fb,#10,#45,#fb,#15,#44
	db #fb,#10,#40,#fb,#10,#40,#fb,#d5
	db #40,#fb,#10,#40,#fb,#15,#40,#fb
	db #10,#40,#fb,#b5,#47,#fb,#10,#45
	db #fb,#10,#45,#fb,#15,#44,#fb,#10
	db #ff,#64,#fb,#10,#64,#fb,#25,#64
	db #fb,#10,#64,#40,#02,#64,#f0,#04
	db #64,#f0,#02,#64,#40,#02,#40,#fb
	db #10,#40,#fb,#15,#40,#fb,#10,#40
	db #fb,#25,#64,#fb,#10,#64,#40,#02
	db #64,#f0,#06,#47,#fb,#10,#45,#fb
	db #10,#45,#fb,#15,#44,#fb,#10,#40
	db #fb,#10,#40,#fb,#25,#64,#fb,#10
	db #64,#40,#02,#64,#f0,#04,#64,#f0
	db #02,#64,#40,#02,#40,#fb,#10,#40
	db #fb,#15,#40,#fb,#10,#40,#fb,#25
	db #64,#fb,#10,#64,#40,#02,#64,#f0
	db #05,#47,#fb,#10,#45,#fb,#10,#45
	db #fb,#15,#44,#fb,#20,#ff,#64,#fb
	db #10,#64,#fb,#25,#64,#fb,#10,#64
	db #40,#02,#64,#f0,#02,#2f,#0b,#10
	db #2f,#0b,#13,#64,#f0,#02,#64,#40
	db #02,#40,#fb,#10,#40,#fb,#15,#40
	db #fb,#10,#40,#fb,#25,#64,#fb,#10
	db #64,#40,#02,#64,#f0,#02,#2f,#0b
	db #20,#2f,#0b,#15,#2f,#0b,#17,#47
	db #fb,#10,#45,#fb,#10,#45,#fb,#15
	db #44,#fb,#10,#40,#fb,#10,#40,#fb
	db #25,#64,#fb,#10,#64,#40,#02,#64
	db #f0,#02,#2f,#0b,#10,#2f,#0b,#13
	db #2d,#00,#02,#64,#40,#02,#40,#fb
	db #10,#40,#fb,#15,#40,#fb,#10,#40
	db #fb,#25,#64,#fb,#10,#64,#40,#02
	db #64,#f0,#02,#2f,#0b,#20,#2f,#0b
	db #15,#47,#fb,#10,#45,#fb,#10,#45
	db #fb,#15,#44,#fb,#20,#ff,#64,#fb
	db #10,#64,#fb,#25,#64,#fb,#10,#64
	db #40,#02,#e4,#f0,#af,#10,#2f,#0b
	db #10,#2f,#0b,#13,#64,#f0,#02,#64
	db #40,#02,#40,#fb,#10,#40,#fb,#15
	db #40,#fb,#10,#40,#fb,#25,#64,#fb
	db #10,#64,#40,#02,#64,#f0,#02,#2f
	db #0b,#20,#2f,#1b,#10,#2f,#0b,#17
	db #47,#fb,#10,#45,#fb,#10,#45,#fb
	db #15,#44,#fb,#10,#40,#fb,#10,#40
	db #fb,#25,#64,#fb,#10,#64,#40,#02
	db #e4,#f0,#af,#10,#2f,#0b,#10,#2f
	db #0b,#13,#2d,#00,#02,#64,#40,#02
	db #40,#fb,#10,#40,#fb,#15,#40,#fb
	db #10,#40,#fb,#25,#64,#fb,#10,#64
	db #40,#02,#64,#f0,#02,#2f,#0b,#20
	db #2f,#0b,#15,#2f,#1b,#10,#45,#fb
	db #10,#45,#fb,#15,#44,#fb,#20,#ff
	db #64,#fb,#10,#64,#fb,#15,#c7,#26
	db #03,#64,#fb,#10,#e4,#40,#c7,#26
	db #03,#e4,#f0,#af,#10,#2f,#0b,#10
	db #2f,#0b,#13,#e4,#f0,#c7,#26,#03
	db #e4,#40,#c7,#26,#03,#40,#fb,#10
	db #40,#fb,#15,#40,#fb,#10,#40,#fb
	db #15,#c7,#26,#03,#64,#fb,#10,#e4
	db #40,#c7,#26,#03,#e4,#f0,#c7,#26
	db #03,#2f,#0b,#10,#c7,#26,#03,#2f
	db #1b,#10,#2f,#0b,#17,#47,#fb,#10
	db #45,#fb,#10,#45,#fb,#15,#44,#fb
	db #10,#40,#fb,#10,#40,#fb,#15,#c3
	db #26,#13,#64,#fb,#10,#e4,#40,#c3
	db #26,#13,#e4,#f0,#af,#10,#2f,#0b
	db #10,#2f,#0b,#10,#ad,#00,#c3,#26
	db #13,#e4,#40,#c3,#26,#13,#40,#fb
	db #10,#40,#fb,#15,#40,#fb,#10,#40
	db #fb,#15,#c7,#26,#03,#64,#fb,#11
	db #e4,#40,#c7,#26,#03,#e4,#f0,#c7
	db #26,#03,#2f,#0b,#10,#c7,#26,#03
	db #2f,#0b,#15,#2f,#1b,#10,#45,#fb
	db #10,#45,#fb,#15,#44,#fb,#10,#c7
	db #26,#03,#ff,#00,#01,#45,#31,#15
	db #03,#11,#01,#03,#11,#01,#c7,#30
	db #c7,#30,#c2,#30,#47,#30,#03,#c9
	db #30,#4a,#30,#02,#49,#30,#02,#45
	db #30,#02,#47,#30,#03,#c2,#30,#c7
	db #30,#c2,#30,#47,#30,#03,#c9,#30
	db #4a,#30,#02,#49,#30,#02,#4a,#30
	db #02,#4c,#30,#03,#c7,#30,#cc,#30
	db #c7,#30,#4c,#30,#03,#ce,#30,#4f
	db #30,#02,#4e,#30,#02,#49,#30,#02
	db #47,#30,#0f,#ff,#64,#fb,#10,#64
	db #fb,#15,#2f,#31,#13,#64,#fb,#10
	db #e4,#40,#2f,#31,#13,#e4,#f0,#2f
	db #31,#13,#2f,#0b,#10,#2f,#0b,#13
	db #e4,#f0,#2f,#31,#13,#e4,#40,#2d
	db #31,#13,#40,#fb,#10,#40,#fb,#15
	db #40,#fb,#10,#40,#fb,#15,#2f,#31
	db #13,#64,#fb,#10,#e4,#40,#2f,#31
	db #13,#e4,#f0,#2f,#31,#13,#2f,#0b
	db #10,#2f,#31,#13,#2f,#0b,#15,#2f
	db #0b,#17,#47,#fb,#10,#45,#fb,#10
	db #45,#fb,#15,#44,#fb,#10,#40,#fb
	db #10,#40,#fb,#15,#2f,#31,#13,#64
	db #fb,#10,#e4,#40,#2f,#31,#13,#e4
	db #f0,#2f,#31,#13,#2f,#0b,#10,#2f
	db #0b,#13,#ad,#00,#2f,#31,#13,#e4
	db #40,#2d,#31,#13,#40,#fb,#10,#40
	db #fb,#15,#40,#fb,#10,#40,#fb,#15
	db #2f,#31,#13,#64,#fb,#10,#e4,#40
	db #2f,#31,#13,#e4,#f0,#2f,#31,#13
	db #2f,#0b,#10,#2f,#31,#13,#2f,#0b
	db #15,#47,#fb,#10,#45,#fb,#10,#45
	db #fb,#15,#44,#fb,#10,#2d,#31,#13
	db #ff,#64,#fb,#10,#64,#fb,#15,#2b
	db #31,#13,#64,#fb,#10,#e4,#40,#2b
	db #31,#13,#e4,#f0,#2b,#31,#13,#2f
	db #0b,#10,#2f,#0b,#13,#e4,#f0,#2b
	db #31,#13,#e4,#40,#29,#31,#13,#40
	db #fb,#10,#40,#fb,#15,#40,#fb,#10
	db #40,#fb,#15,#2b,#31,#13,#64,#fb
	db #10,#2b,#31,#13,#2b,#31,#13,#e4
	db #f0,#2b,#31,#13,#2f,#0b,#10,#2b
	db #31,#13,#2f,#0b,#15,#2f,#0b,#17
	db #47,#fb,#10,#45,#fb,#10,#45,#fb
	db #15,#44,#fb,#10,#40,#fb,#10,#40
	db #fb,#15,#2b,#31,#13,#64,#fb,#10
	db #e4,#40,#2b,#31,#13,#e4,#f0,#2b
	db #31,#13,#2f,#0b,#10,#2f,#0b,#13
	db #ad,#00,#2b,#31,#13,#e4,#40,#29
	db #31,#13,#40,#fb,#10,#40,#fb,#15
	db #40,#fb,#10,#40,#fb,#15,#2b,#31
	db #13,#64,#fb,#10,#e4,#40,#2b,#31
	db #13,#e4,#f0,#2b,#31,#13,#2f,#0b
	db #10,#2b,#31,#13,#2f,#0b,#15,#47
	db #fb,#10,#45,#fb,#10,#45,#fb,#15
	db #44,#fb,#10,#29,#31,#13,#ff,#64
	db #fb,#10,#64,#fb,#15,#c3,#26,#03
	db #64,#fb,#10,#e4,#40,#c3,#26,#03
	db #e4,#f0,#af,#10,#2f,#0b,#10,#2f
	db #0b,#13,#e4,#f0,#c3,#26,#03,#e4
	db #40,#c3,#26,#03,#40,#fb,#10,#40
	db #fb,#15,#40,#fb,#10,#40,#fb,#15
	db #c3,#26,#00,#00
;
.music_info
	db "FOReVER XIII - Wolfenstrad (2012)(Dirty Minds)(Sice)",0
	db "ST-128 Module",0

	read "music_end.asm"
