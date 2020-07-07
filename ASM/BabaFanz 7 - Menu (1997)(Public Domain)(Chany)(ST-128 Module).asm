; Music of BabaFanz 7 - Menu (1997)(Public Domain)(Chany)(ST-128 Module)
; Ripped by Megachur the 31/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BABAFA7M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #6000

	read "music_header.asm"


	jp l6009
	jp l609d
	jp l6081
;
.init_music
.l6009
;
	xor a
	ld hl,l65b4
	call l607a
	ld hl,l65e2
	call l607a
	ld hl,l6610
	call l607a
	ld ix,l65b0
	ld iy,l663a
	ld de,#002e
	ld b,#03
.l6029
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
	djnz l6029
	ld hl,l64c9
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
	ld (l64c5),hl
	ld (l64c7),hl
	ld a,#0c
	ld c,d
	call l64a5
	ld a,#0d
	ld c,d
	jp l64a5
.l607a
	ld b,#2a
.l607c
	ld (hl),a
	inc hl
	djnz l607c
	ret
;
.stop_music
.l6081
;
	ld a,#07
	ld c,#3f
	call l64a5
	ld a,#08
	ld c,#00
	call l64a5
	ld a,#09
	ld c,#00
	call l64a5
	ld a,#0a
	ld c,#00
	jp l64a5
;
.play_music
.l609d
;
	ld hl,l64cb
	dec (hl)
	ld ix,l65b0
	ld bc,l65be
	call l613f
	ld ix,l65de
	ld bc,l65ec
	call l613f
	ld ix,l660c
	ld bc,l661a
	call l613f
	ld hl,l64c4
	ld de,l64cb
	ld b,#06
	call l611c
	ld b,#07
	call l611c
	ld b,#0b
	call l611c
	ld b,#0d
	call l611c
	ld de,l64cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l65cf
	call l60f5
	ld hl,l65fd
	call l60f5
	ld hl,l662b
.l60f5
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
	jr nz,l610a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l610a
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
.l611c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l64a5
.l6127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l64a5
.l613f
	ld a,(l64cb)
	or a
	jp nz,l61f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l61f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6127
	or a
	jp z,l61ec
	ld r,a
	and #7f
	cp #10
	jr c,l61c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l633f
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
	jr z,l61a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l61a0
	rrca
	ld c,a
	ld hl,l6640
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
	jr z,l61bf
	ld (ix+#1e),b
.l61bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l61e0
.l61c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l64d0
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
.l61e0
	ld a,d
	or a
	jr nz,l61ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l61ee
.l61ec
	ld a,(hl)
	inc hl
.l61ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l61f7
	ld a,(ix+#17)
	or a
	jr nz,l620d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l620d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6223
	ld a,(ix+#0d)
	or a
	jr z,l6231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l624f
.l6231
	ld a,(ix+#1a)
	or a
	jp z,l6256
	ld c,a
	cp #03
	jr nz,l623e
	xor a
.l623e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l624f
	ld a,(ix+#18)
	dec c
	jr z,l624f
	ld a,(ix+#19)
.l624f
	add (ix+#07)
	ld b,d
	call l633f
.l6256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l627e
	dec (ix+#1b)
	jr nz,l627e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l62b6
.l627e
	ld a,(ix+#29)
	or a
	jr z,l62b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l62ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l62a4
	ld (ix+#29),#ff
	jr l62ad
.l62a4
	cp (ix+#2b)
	jr nz,l62ad
	ld (ix+#29),#01
.l62ad
	ld b,d
	or a
	jp p,l62b3
	dec b
.l62b3
	ld c,a
	jr l62c1
.l62b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l62c1
	pop hl
	bit 7,(ix+#14)
	jr z,l62ca
	ld h,d
	ld l,d
.l62ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l64a5
	ld c,h
	ld a,(ix+#02)
	call l64a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l631d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l630c
	dec (ix+#09)
	jr nz,l630c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6304
	xor a
	jr l6309
.l6304
	cp #10
	jr nz,l6309
	dec a
.l6309
	ld (ix+#1e),a
.l630c
	ld a,b
	sub (ix+#1e)
	jr nc,l6313
	xor a
.l6313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l64a5
.l631d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l64cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l633b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l633b
	ld (l64cc),hl
	ret
.l633f
	ld hl,l64ee
	cp #61
	jr nc,l6349
	add a
	ld c,a
	add hl,bc
.l6349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6478
	ld (ix+#1e),a
	jp l61e0
.l6365
	dec b
.l6366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6371
	neg
.l6371
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
	jp l61e0
.l6387
	dec b
	jr l638b
.l638a
	inc b
.l638b
	call l6478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l61e0
.l639a
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
	jp l645d
.l63ab
	ld a,(hl)
	inc hl
	or a
	jr z,l63cd
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
.l63cd
	ld (ix+#29),a
	jp l61e0
.l63d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l64cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l64ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l61e0
.l63ed
	ld a,(hl)
	or a
	jr z,l63fe
	call l647a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l61e0
.l63fe
	ld hl,#0101
	ld (l64ca),hl
	jp l61e0
.l6407
	call l6478
	ld (ix+#1e),a
	jp l61e0
.l6410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l61e0
.l6432
	ld a,(hl)
	inc hl
	ld (l64c9),a
	jp l61e0
.l643a
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
	jp l61e0
.l6459
	call l6478
	add a
.l645d
	ld b,#00
	ld c,a
	push hl
	ld hl,l66c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l61e0
.l6478
	ld a,(hl)
	inc hl
.l647a
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
.l6489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l64a5
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
.l64c4
	ret
.l64cc equ $ + 7
.l64cb equ $ + 6
.l64ca equ $ + 5
.l64c9 equ $ + 4
.l64c7 equ $ + 2
.l64c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64cf equ $ + 2
.l64ce equ $ + 1
	db #38,#00,#00
.l64d0
	dw l6353,l6366,l6365,l638a
	dw l6387,l639a,l63ab,l63d3
	dw l63ed,l63d3,l6407,l6410
	dw l6432,l643a,l6459
.l64ee
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
.l65b0 equ $ + 2
	dw #000f,#0008
.l65b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l65be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l65e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6610 equ $ + 6
.l660c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l661a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l662b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6640 equ $ + 6
.l663a
	db #00,#6b,#5d,#6b,#ba,#6b,#e0,#66
	db #20,#67,#40,#67,#80,#00,#60,#67
	db #a0,#67,#c0,#67,#00,#00,#e0,#67
	db #20,#68,#40,#68,#08,#18,#d2,#43
	db #12,#20,#48,#c0,#00,#00,#60,#68
	db #a0,#68,#40,#68,#48,#00,#c0,#68
	db #00,#69,#20,#69,#09,#00,#d2,#1f
	db #d2,#1f,#76,#30,#00,#00,#d2,#1f
	db #d2,#1f,#d2,#78,#50,#00,#40,#69
	db #80,#69,#40,#68,#40,#00,#a0,#69
	db #e0,#69,#00,#6a,#00,#00,#20,#6a
	db #60,#6a,#40,#68,#16,#0a,#76,#20
	db #d2,#1f,#d2,#1f,#00,#00,#d2,#63
	db #12,#20,#f8,#bf,#00,#00,#d2,#1f
	db #2b,#70,#d2,#1f,#00,#00,#d2,#1f
	db #d2,#62,#12,#20,#96,#a0,#c0,#68
.l66c0 equ $ + 6
	db #80,#6a,#a0,#6a,#00,#00,#d2,#1f
	db #c0,#6a,#d2,#63,#12,#20,#88,#c0
	db #d2,#1f,#e0,#6a,#2b,#70,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#62,#12,#20
	db #d2,#1f,#d2,#1f,#d2,#1f,#90,#01
	db #e0,#01,#30,#02,#80,#02,#d0,#02
	db #20,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0f,#0f,#0e,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #17,#00,#2f,#00,#47,#00,#5e,#00
	db #75,#00,#8d,#00,#a4,#00,#bc,#00
	db #d3,#00,#eb,#00,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0b,#0a,#08
	db #06,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#01,#01,#02,#01,#01,#02,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#09,#09
	db #0a,#0a,#0b,#0b,#0a,#0a,#0b,#0b
	db #0c,#0c,#0b,#0b,#0a,#0a,#0b,#0b
	db #0c,#0c,#0b,#0b,#0a,#0a,#0b,#0b
	db #0c,#0c,#0b,#0b,#0a,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #08,#00,#04,#00,#02,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0a,#0c
	db #0d,#0d,#0d,#0c,#0c,#0b,#09,#05
	db #00,#8d,#8d,#8d,#8d,#8d,#8d,#8d
	db #8d,#8d,#8d,#8d,#8d,#8d,#8d,#8d
	db #8d,#8d,#8d,#8d,#8d,#8d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0c,#0a,#08,#06,#04,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0f,#0f
	db #0f,#0e,#0d,#0f,#0e,#0d,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0a,#09,#08,#07,#06,#05
	db #05,#05,#05,#05,#05,#05,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #b0,#00,#e0,#00,#10,#01,#40,#01
	db #70,#01,#a0,#01,#d0,#01,#00,#02
	db #00,#02,#30,#02,#60,#02,#70,#02
	db #80,#02,#90,#02,#a0,#02,#b0,#02
	db #b0,#02,#c0,#02,#e0,#02,#e0,#02
	db #e0,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#01,#00,#00,#01,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0e,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#08,#08,#00,#02
	db #02,#04,#04,#04,#06,#06,#06,#06
	db #09,#09,#09,#0c,#0c,#0c,#0c,#0e
	db #0e,#0e,#10,#10,#10,#11,#11,#11
	db #13,#13,#13,#14,#15,#15,#00,#02
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#17
	db #6c,#00,#22,#6c,#00,#87,#6c,#00
	db #87,#6c,#00,#eb,#6c,#00,#02,#6d
	db #00,#02,#6d,#00,#70,#6d,#00,#70
	db #6d,#00,#f2,#6d,#00,#84,#6e,#00
	db #84,#6e,#00,#05,#6f,#00,#05,#6f
	db #00,#c6,#6f,#00,#c6,#6f,#00,#48
	db #70,#00,#48,#70,#00,#76,#70,#00
	db #76,#70,#00,#a1,#70,#00,#02,#6d
	db #00,#02,#6d,#00,#70,#6d,#00,#70
	db #6d,#00,#ae,#70,#00,#ae,#70,#00
	db #30,#71,#00,#30,#71,#00,#42,#71
	db #80,#00,#6b,#00,#52,#71,#00,#52
	db #71,#00,#52,#71,#00,#52,#71,#00
	db #73,#71,#00,#83,#71,#00,#83,#71
	db #00,#83,#71,#00,#83,#71,#00,#83
	db #71,#00,#94,#71,#00,#94,#71,#00
	db #83,#71,#00,#83,#71,#00,#83,#71
	db #00,#83,#71,#00,#b7,#71,#00,#b7
	db #71,#00,#83,#71,#00,#83,#71,#00
	db #c8,#71,#00,#83,#71,#00,#83,#71
	db #00,#83,#71,#00,#83,#71,#00,#e5
	db #71,#00,#e5,#71,#00,#67,#72,#00
	db #67,#72,#00,#52,#71,#80,#5d,#6b
	db #00,#e8,#72,#00,#fe,#72,#00,#11
	db #73,#00,#11,#73,#00,#74,#73,#00
	db #93,#73,#00,#93,#73,#00,#15,#74
	db #00,#15,#74,#00,#96,#74,#00,#17
	db #75,#00,#17,#75,#00,#d7,#75,#00
	db #d7,#75,#00,#d7,#75,#00,#d7,#75
	db #00,#98,#76,#00,#98,#76,#00,#59
	db #77,#00,#59,#77,#00,#da,#77,#00
	db #93,#73,#00,#93,#73,#00,#15,#74
	db #00,#15,#74,#00,#fd,#77,#00,#fd
	db #77,#00,#66,#78,#00,#66,#78,#00
	db #cf,#78,#80,#ba,#6b,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#3c,#ff
	db #4f,#21,#40,#03,#21,#01,#03,#21
	db #01,#03,#21,#01,#03,#21,#01,#03
	db #21,#01,#03,#21,#01,#03,#21,#01
	db #03,#21,#01,#03,#21,#01,#03,#21
	db #01,#03,#21,#0b,#01,#10,#01,#10
	db #01,#10,#01,#10,#01,#10,#01,#10
	db #01,#10,#4f,#21,#50,#02,#21,#01
	db #02,#21,#01,#02,#21,#01,#02,#21
	db #01,#02,#21,#01,#02,#21,#01,#02
	db #21,#01,#02,#21,#01,#02,#21,#01
	db #02,#21,#01,#02,#21,#0a,#01,#10
	db #01,#10,#01,#10,#01,#10,#01,#10
	db #01,#10,#01,#10,#ff,#4f,#2d,#06
	db #04,#03,#21,#01,#03,#21,#01,#03
	db #21,#01,#03,#21,#01,#03,#21,#01
	db #03,#21,#01,#03,#21,#01,#03,#21
	db #01,#03,#21,#01,#03,#21,#01,#03
	db #21,#0b,#01,#10,#01,#10,#01,#10
	db #01,#10,#01,#10,#01,#10,#01,#10
	db #4f,#21,#50,#02,#21,#01,#02,#21
	db #01,#02,#21,#01,#02,#21,#01,#02
	db #21,#01,#02,#21,#01,#02,#21,#01
	db #02,#21,#01,#02,#21,#01,#02,#21
	db #01,#02,#21,#0a,#01,#10,#01,#10
	db #01,#10,#01,#10,#01,#10,#01,#20
	db #ff,#74,#f1,#60,#01,#10,#01,#10
	db #01,#10,#01,#10,#01,#10,#01,#10
	db #f4,#f0,#f4,#f0,#74,#f0,#32,#ff
	db #43,#8f,#16,#43,#80,#02,#46,#80
	db #02,#c3,#80,#43,#80,#02,#43,#80
	db #02,#43,#80,#02,#c6,#80,#c5,#80
	db #c3,#80,#c1,#80,#c3,#80,#43,#80
	db #02,#46,#80,#02,#c3,#80,#43,#80
	db #02,#43,#80,#02,#43,#80,#02,#c6
	db #80,#c5,#80,#c3,#80,#c1,#80,#c6
	db #80,#46,#80,#02,#48,#80,#02,#c6
	db #80,#46,#80,#02,#46,#80,#02,#46
	db #80,#02,#c8,#80,#c6,#80,#c5,#80
	db #c3,#80,#c1,#80,#41,#80,#02,#45
	db #80,#02,#c1,#80,#41,#80,#02,#41
	db #80,#02,#41,#80,#02,#c6,#80,#c5
	db #80,#c3,#80,#c1,#80,#ff,#43,#8f
	db #16,#ca,#80,#c5,#80,#ca,#80,#c6
	db #80,#ca,#80,#c8,#80,#ca,#80,#c6
	db #80,#ca,#80,#c5,#80,#ca,#80,#c6
	db #80,#ca,#80,#c5,#80,#ca,#80,#c3
	db #80,#ca,#80,#c5,#80,#ca,#80,#c6
	db #80,#ca,#80,#c8,#80,#ca,#80,#c6
	db #80,#ca,#80,#c5,#80,#ca,#80,#c6
	db #80,#ca,#80,#c5,#80,#ca,#80,#c6
	db #80,#ca,#80,#c8,#80,#ca,#80,#ca
	db #80,#ca,#80,#cb,#80,#ca,#80,#ca
	db #80,#ca,#80,#c8,#80,#ca,#80,#ca
	db #80,#ca,#80,#c8,#80,#ca,#80,#c1
	db #80,#c8,#80,#c3,#80,#c8,#80,#c5
	db #80,#c8,#80,#c6,#80,#c8,#80,#c5
	db #80,#c8,#80,#c3,#80,#c8,#80,#c5
	db #80,#c8,#80,#c6,#80,#c8,#80,#ff
	db #43,#8f,#16,#ca,#80,#c5,#80,#ca
	db #80,#c6,#80,#ca,#80,#c8,#80,#ca
	db #80,#c6,#80,#ca,#80,#c5,#80,#ca
	db #80,#c6,#80,#ca,#80,#c5,#80,#ca
	db #80,#c3,#80,#ca,#80,#c5,#80,#ca
	db #80,#c6,#80,#ca,#80,#c8,#80,#ca
	db #80,#c6,#80,#ca,#80,#c5,#80,#ca
	db #80,#c6,#80,#ca,#80,#c5,#80,#ca
	db #80,#c6,#80,#ca,#80,#c8,#80,#ca
	db #80,#ca,#80,#ca,#80,#cb,#80,#ca
	db #80,#ca,#80,#ca,#80,#c8,#80,#ca
	db #80,#ca,#80,#ca,#80,#c6,#80,#ca
	db #80,#41,#81,#10,#48,#81,#10,#43
	db #81,#11,#48,#81,#11,#45,#81,#11
	db #48,#81,#11,#46,#81,#12,#48,#81
	db #12,#45,#81,#12,#48,#81,#12,#43
	db #81,#13,#48,#81,#13,#45,#81,#13
	db #48,#81,#13,#41,#81,#14,#48,#81
	db #14,#ff,#b7,#40,#ab,#40,#b7,#40
	db #b7,#40,#b7,#40,#ab,#40,#b7,#40
	db #b7,#40,#ab,#40,#b7,#40,#ab,#40
	db #ab,#40,#b7,#40,#ab,#40,#b7,#40
	db #b7,#40,#ab,#40,#b7,#40,#b7,#40
	db #b7,#40,#ab,#40,#b7,#40,#b7,#40
	db #ab,#40,#b7,#40,#ab,#40,#ab,#40
	db #b7,#40,#ab,#40,#b7,#40,#b7,#40
	db #ab,#40,#ba,#40,#ba,#40,#ba,#40
	db #ae,#40,#ba,#40,#ba,#40,#ae,#40
	db #ba,#40,#ae,#40,#ae,#40,#ba,#40
	db #ae,#40,#ba,#40,#ba,#40,#ae,#40
	db #ba,#40,#a9,#40,#b5,#40,#a9,#40
	db #b5,#40,#b5,#40,#a9,#40,#b5,#40
	db #a9,#40,#a9,#40,#b5,#40,#a9,#40
	db #b5,#40,#b5,#40,#a9,#40,#b5,#40
	db #b5,#40,#ff,#43,#81,#10,#4a,#81
	db #10,#43,#81,#11,#4a,#81,#11,#43
	db #81,#12,#4a,#81,#12,#43,#81,#13
	db #4a,#81,#13,#43,#81,#10,#4a,#81
	db #10,#43,#81,#11,#4a,#81,#11,#43
	db #81,#12,#4a,#81,#12,#43,#81,#13
	db #4a,#81,#13,#43,#81,#10,#4b,#81
	db #10,#43,#81,#11,#4b,#81,#11,#43
	db #81,#12,#4b,#81,#12,#43,#81,#13
	db #4b,#81,#13,#43,#81,#10,#4b,#81
	db #10,#43,#81,#11,#4b,#81,#11,#43
	db #81,#12,#4b,#81,#12,#43,#81,#13
	db #4b,#81,#13,#46,#81,#10,#4d,#81
	db #10,#46,#81,#11,#4d,#81,#11,#46
	db #81,#12,#4d,#81,#12,#46,#81,#13
	db #4d,#81,#13,#46,#81,#10,#4d,#81
	db #10,#46,#81,#11,#4d,#81,#11,#46
	db #81,#12,#4d,#81,#12,#46,#81,#13
	db #4d,#81,#13,#41,#81,#10,#48,#81
	db #10,#41,#81,#11,#48,#81,#11,#41
	db #81,#12,#48,#81,#12,#41,#81,#13
	db #48,#81,#13,#41,#81,#10,#48,#81
	db #10,#41,#81,#11,#48,#81,#11,#41
	db #81,#12,#48,#81,#12,#41,#81,#13
	db #4a,#81,#13,#ff,#43,#8f,#16,#c3
	db #a0,#ca,#80,#c3,#a0,#c8,#80,#c3
	db #a0,#ca,#80,#c3,#a0,#c3,#80,#c3
	db #a0,#ca,#80,#c3,#a0,#c8,#80,#c3
	db #a0,#ca,#80,#c3,#a0,#cb,#80,#c3
	db #a0,#ca,#80,#c3,#a0,#c8,#80,#c3
	db #a0,#c3,#80,#c3,#a0,#cb,#80,#c3
	db #a0,#ca,#80,#c3,#a0,#c8,#80,#c3
	db #a0,#c3,#80,#c3,#a0,#c6,#80,#c6
	db #a0,#cd,#80,#c6,#a0,#cb,#80,#c6
	db #a0,#cd,#80,#c6,#a0,#c6,#80,#c6
	db #a0,#cd,#80,#c6,#a0,#cb,#80,#c6
	db #a0,#cd,#80,#c6,#a0,#c1,#80,#c1
	db #a0,#c8,#80,#c1,#a0,#c6,#80,#c1
	db #a0,#c8,#80,#c1,#a0,#c1,#80,#c1
	db #a0,#c8,#80,#c1,#a0,#c6,#80,#c1
	db #a0,#c8,#80,#c1,#a0,#ff,#4f,#af
	db #16,#cd,#a0,#d2,#a0,#d1,#a0,#4f
	db #a0,#0c,#cf,#a0,#ca,#a0,#cf,#a0
	db #ca,#a0,#4f,#a0,#0c,#d2,#a0,#d4
	db #a0,#d6,#a0,#d7,#a0,#52,#a0,#0c
	db #cd,#a0,#d1,#a0,#cf,#a0,#d1,#a0
	db #4d,#a0,#0c,#ff,#4f,#a1,#20,#4d
	db #a0,#02,#54,#a0,#02,#56,#a0,#16
	db #54,#a0,#02,#56,#a0,#02,#59,#a0
	db #0c,#03,#21,#01,#03,#21,#01,#02
	db #22,#02,#54,#a0,#0a,#52,#a0,#02
	db #51,#a0,#02,#4f,#a0,#02,#ff,#6c
	db #90,#04,#6c,#90,#04,#fe,#01,#fe
	db #01,#fe,#36,#ff,#43,#8f,#16,#ca
	db #80,#c5,#80,#ca,#80,#c6,#80,#ca
	db #80,#c8,#80,#ca,#80,#c6,#80,#ca
	db #80,#c5,#80,#ca,#80,#c6,#80,#ca
	db #80,#c5,#80,#ca,#80,#c3,#80,#ca
	db #80,#c5,#80,#ca,#80,#c6,#80,#ca
	db #80,#c8,#80,#ca,#80,#c6,#80,#ca
	db #80,#c5,#80,#ca,#80,#c6,#80,#ca
	db #80,#c5,#80,#ca,#80,#c6,#80,#ca
	db #80,#c8,#80,#ca,#80,#ca,#80,#ca
	db #80,#cb,#80,#ca,#80,#ca,#80,#ca
	db #80,#c8,#80,#ca,#80,#ca,#80,#ca
	db #80,#c6,#80,#ca,#80,#c1,#80,#c8
	db #80,#c3,#80,#c8,#80,#c5,#80,#c8
	db #80,#c6,#80,#c8,#80,#c5,#80,#c8
	db #80,#c3,#80,#c8,#80,#c5,#80,#c8
	db #80,#c1,#80,#c8,#80,#ff,#74,#f0
	db #04,#74,#f0,#04,#fe,#18,#74,#f0
	db #10,#74,#f0,#04,#74,#f0,#0c,#ff
	db #74,#f0,#04,#74,#f0,#1c,#74,#f0
	db #10,#74,#f0,#04,#74,#f0,#0c,#ff
	db #37,#2a,#19,#10,#3a,#2a,#15,#08
	db #3c,#2a,#13,#08,#37,#2a,#19,#10
	db #3a,#2a,#15,#08,#39,#2a,#16,#04
	db #37,#2a,#19,#02,#35,#2a,#1c,#02
	db #ff,#37,#2a,#19,#07,#01,#10,#01
	db #10,#01,#10,#01,#10,#01,#00,#35
	db #ff,#37,#2a,#19,#10,#37,#2a,#19
	db #10,#3a,#2a,#15,#10,#35,#2a,#1c
	db #10,#ff,#4f,#2a,#0d,#0e,#02,#12
	db #01,#02,#12,#01,#4f,#2a,#0d,#0e
	db #02,#12,#01,#02,#12,#01,#52,#2a
	db #0b,#0e,#02,#12,#01,#02,#12,#01
	db #4d,#2a,#0e,#10,#ff,#37,#aa,#19
	db #10,#37,#aa,#19,#10,#3a,#aa,#15
	db #10,#35,#aa,#1c,#10,#ff,#74,#f1
	db #80,#a9,#40,#b5,#40,#a9,#40,#b5
	db #40,#b5,#40,#a9,#40,#b5,#40,#b5
	db #40,#b7,#40,#ab,#40,#b7,#40,#37
	db #40,#2d,#ff,#2b,#41,#10,#b7,#40
	db #ab,#40,#b7,#40,#b7,#40,#ab,#40
	db #b7,#40,#b7,#40,#b7,#40,#ab,#40
	db #b7,#40,#b7,#40,#ab,#40,#b7,#40
	db #ab,#40,#ab,#40,#b7,#40,#ab,#40
	db #b7,#40,#b7,#40,#ab,#40,#b7,#40
	db #b7,#40,#b7,#40,#ab,#40,#b7,#40
	db #b7,#40,#ab,#40,#b7,#40,#ab,#40
	db #ab,#40,#b7,#40,#ae,#40,#ba,#40
	db #ba,#40,#ae,#40,#ba,#40,#ba,#40
	db #ba,#40,#ae,#40,#ba,#40,#ba,#40
	db #ae,#40,#ba,#40,#ae,#40,#ae,#40
	db #ba,#40,#ae,#40,#b5,#40,#b5,#40
	db #a9,#40,#b5,#40,#b5,#40,#b5,#40
	db #a9,#40,#b5,#40,#b5,#40,#a9,#40
	db #b5,#40,#a9,#40,#a9,#40,#b5,#40
	db #a9,#40,#b5,#40,#ff,#ab,#40,#b7
	db #40,#ab,#40,#b7,#40,#b7,#40,#ab
	db #40,#b7,#40,#b7,#40,#b7,#40,#ab
	db #40,#b7,#40,#b7,#40,#ab,#40,#b7
	db #40,#ab,#40,#ab,#40,#b7,#40,#ab
	db #40,#b7,#40,#b7,#40,#ab,#40,#b7
	db #40,#b7,#40,#b7,#40,#ab,#40,#b7
	db #40,#b7,#40,#ab,#40,#b7,#40,#ab
	db #40,#ab,#40,#b7,#40,#ae,#40,#ba
	db #40,#ae,#40,#ba,#40,#ba,#40,#ae
	db #40,#ba,#40,#ba,#40,#ba,#40,#ae
	db #40,#ba,#40,#ba,#40,#ae,#40,#ba
	db #40,#ae,#40,#ae,#40,#a9,#40,#b5
	db #40,#a9,#40,#b5,#40,#b5,#40,#a9
	db #40,#b5,#40,#b5,#40,#b5,#40,#a9
	db #40,#b5,#40,#b5,#40,#a9,#40,#b5
	db #40,#a9,#40,#a9,#40,#ff,#fe,#01
	db #fe,#01,#01,#20,#74,#f1,#40,#74
	db #f0,#18,#74,#f0,#10,#74,#f0,#04
	db #74,#f0,#0c,#ff,#0d,#06,#04,#74
	db #f0,#04,#74,#f0,#18,#74,#f0,#10
	db #74,#f0,#04,#74,#f0,#0c,#ff,#37
	db #4f,#21,#2b,#40,#02,#37,#40,#02
	db #2b,#40,#02,#37,#40,#02,#2b,#40
	db #02,#37,#40,#02,#2b,#40,#02,#3a
	db #40,#02,#2e,#40,#02,#3a,#40,#02
	db #2e,#40,#02,#3c,#40,#02,#30,#40
	db #02,#3c,#40,#02,#30,#40,#02,#37
	db #40,#02,#2b,#40,#02,#37,#40,#02
	db #2b,#40,#02,#37,#40,#02,#2b,#40
	db #02,#37,#40,#02,#2b,#40,#02,#3a
	db #40,#02,#2e,#40,#02,#3a,#40,#02
	db #2e,#40,#02,#39,#40,#02,#2d,#40
	db #02,#b7,#40,#b7,#40,#b5,#40,#b5
	db #40,#ff,#37,#4d,#06,#02,#2b,#40
	db #02,#3d,#11,#10,#bd,#10,#b7,#40
	db #bd,#10,#ab,#40,#bd,#10,#bd,#10
	db #bd,#10,#3d,#00,#0c,#09,#00,#28
	db #ff,#bb,#1d,#06,#b7,#40,#ab,#40
	db #bb,#00,#bb,#00,#b7,#40,#ab,#40
	db #b7,#40,#bb,#10,#b7,#40,#ab,#40
	db #b7,#40,#bb,#00,#b7,#40,#ab,#40
	db #b7,#40,#bb,#10,#ab,#40,#b7,#40
	db #bb,#00,#bb,#00,#ab,#40,#b7,#40
	db #ab,#40,#bb,#10,#ab,#40,#bd,#00
	db #b7,#40,#bd,#00,#ab,#40,#b7,#40
	db #ab,#40,#bd,#10,#ba,#40,#ae,#40
	db #bd,#00,#bd,#00,#ba,#40,#ae,#40
	db #bd,#00,#bd,#10,#ae,#40,#bd,#00
	db #ba,#40,#bd,#00,#ae,#40,#ba,#40
	db #ae,#40,#bd,#10,#b5,#40,#a9,#40
	db #bd,#00,#bd,#00,#b5,#40,#a9,#40
	db #b5,#40,#bd,#10,#b5,#40,#b5,#00
	db #b5,#40,#bd,#00,#a9,#40,#b5,#40
	db #a9,#40,#ff,#bb,#00,#b7,#40,#f4
	db #50,#ab,#40,#bb,#10,#ab,#40,#f4
	db #50,#b7,#40,#bb,#00,#b7,#40,#f4
	db #50,#ab,#40,#bb,#10,#f4,#50,#bb
	db #00,#f4,#50,#bb,#00,#ab,#40,#f4
	db #50,#b7,#40,#bb,#10,#ab,#40,#f4
	db #50,#b7,#40,#bb,#00,#b7,#40,#f4
	db #50,#ab,#40,#bb,#10,#f4,#50,#bb
	db #00,#f4,#50,#bb,#00,#ae,#40,#f4
	db #50,#ba,#40,#bb,#10,#ae,#40,#f4
	db #50,#ba,#40,#bb,#00,#ba,#40,#f4
	db #50,#ae,#40,#bb,#10,#f4,#50,#bb
	db #00,#f4,#50,#bb,#00,#a9,#40,#f4
	db #50,#b5,#40,#bb,#10,#a9,#40,#f4
	db #50,#b5,#40,#bb,#00,#b5,#40,#f4
	db #50,#a9,#40,#bb,#10,#f4,#50,#bb
	db #00,#f4,#50,#ff,#bd,#00,#b7,#40
	db #f4,#50,#ab,#40,#bd,#10,#b7,#40
	db #f4,#50,#ab,#40,#bd,#00,#b7,#40
	db #f4,#50,#ab,#40,#bd,#10,#f4,#50
	db #bd,#00,#f4,#50,#bd,#00,#ab,#40
	db #f4,#50,#b7,#40,#bd,#10,#ab,#40
	db #f4,#50,#b7,#40,#bd,#00,#b7,#40
	db #f4,#50,#ab,#40,#bd,#10,#f4,#50
	db #bd,#00,#f4,#50,#bd,#00,#ba,#40
	db #f4,#50,#ae,#40,#bd,#10,#ae,#40
	db #f4,#50,#ba,#40,#bd,#00,#ba,#40
	db #f4,#50,#ae,#40,#bd,#10,#f4,#50
	db #bd,#00,#f4,#50,#bd,#00,#a9,#40
	db #f4,#50,#b5,#40,#bd,#10,#b5,#40
	db #f4,#50,#a9,#40,#bd,#00,#a9,#40
	db #f4,#50,#b5,#40,#bd,#10,#f4,#50
	db #bd,#00,#f4,#50,#ff,#3d,#01,#10
	db #37,#41,#10,#74,#51,#10,#c3,#ae
	db #47,#3d,#11,#10,#74,#51,#10,#3d
	db #01,#10,#c3,#ae,#47,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#2b,#41
	db #10,#3d,#11,#10,#c3,#ae,#47,#74
	db #51,#10,#37,#41,#10,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#2b,#41
	db #10,#3d,#11,#10,#c3,#ae,#47,#3d
	db #01,#10,#74,#51,#10,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#37,#41
	db #10,#3d,#11,#10,#c3,#ae,#47,#74
	db #51,#10,#2b,#41,#10,#3d,#01,#10
	db #c6,#ae,#47,#3d,#01,#10,#74,#51
	db #10,#3d,#11,#10,#c6,#ae,#47,#74
	db #51,#10,#3a,#41,#10,#3d,#01,#10
	db #c6,#ae,#47,#74,#51,#10,#c6,#ae
	db #47,#3d,#11,#10,#c6,#ae,#47,#74
	db #51,#10,#2e,#41,#10,#3d,#01,#10
	db #c1,#ae,#47,#74,#51,#10,#c1,#ae
	db #47,#3d,#11,#10,#74,#51,#10,#3d
	db #11,#10,#c1,#ae,#47,#3d,#01,#10
	db #74,#51,#10,#3d,#11,#10,#c1,#ae
	db #47,#3d,#11,#10,#3d,#11,#10,#35
	db #41,#10,#a9,#40,#ff,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#c3,#ae
	db #47,#3d,#11,#10,#c3,#ae,#47,#74
	db #51,#10,#c3,#ae,#47,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#c3,#ae
	db #47,#3d,#11,#10,#74,#51,#10,#3d
	db #01,#10,#74,#51,#10,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#c3,#ae
	db #47,#3d,#11,#10,#c3,#ae,#47,#74
	db #51,#10,#c3,#ae,#47,#3d,#01,#10
	db #c3,#ae,#47,#74,#51,#10,#c3,#ae
	db #47,#3d,#11,#10,#74,#51,#10,#3d
	db #01,#10,#74,#51,#10,#3d,#01,#10
	db #c6,#ae,#47,#74,#51,#10,#c6,#ae
	db #47,#3d,#11,#10,#c6,#ae,#47,#74
	db #51,#10,#c6,#ae,#47,#3d,#01,#10
	db #c6,#ae,#47,#74,#51,#10,#c6,#ae
	db #47,#3d,#11,#10,#74,#51,#10,#3d
	db #01,#10,#74,#51,#10,#3d,#01,#10
	db #c1,#ae,#47,#74,#51,#10,#c1,#ae
	db #47,#3d,#11,#10,#c1,#ae,#47,#74
	db #51,#10,#c1,#ae,#47,#3d,#01,#10
	db #c1,#ae,#47,#74,#51,#10,#c1,#ae
	db #47,#3d,#11,#10,#74,#51,#10,#3d
	db #01,#10,#74,#51,#10,#ff,#39,#01
	db #10,#c3,#ae,#47,#74,#51,#10,#c3
	db #ae,#47,#39,#11,#10,#c3,#ae,#47
	db #74,#51,#10,#c3,#ae,#47,#39,#01
	db #10,#c3,#ae,#47,#74,#51,#10,#c3
	db #ae,#47,#39,#11,#10,#74,#51,#10
	db #39,#01,#10,#74,#51,#10,#39,#01
	db #10,#c3,#ae,#47,#74,#51,#10,#c3
	db #ae,#47,#39,#11,#10,#c3,#ae,#47
	db #74,#51,#10,#c3,#ae,#47,#39,#01
	db #10,#c3,#ae,#47,#74,#51,#10,#c3
	db #ae,#47,#39,#11,#10,#74,#51,#10
	db #39,#01,#10,#74,#51,#10,#39,#01
	db #10,#c6,#ae,#47,#74,#51,#10,#c6
	db #ae,#47,#39,#11,#10,#c6,#ae,#47
	db #74,#51,#10,#c6,#ae,#47,#39,#01
	db #10,#c6,#ae,#47,#74,#51,#10,#c6
	db #ae,#47,#39,#11,#10,#74,#51,#10
	db #39,#01,#10,#74,#51,#10,#39,#01
	db #10,#c1,#ae,#47,#74,#51,#10,#c1
	db #ae,#47,#39,#11,#10,#c1,#ae,#47
	db #74,#51,#10,#c1,#ae,#47,#39,#01
	db #10,#c1,#ae,#47,#74,#51,#10,#c1
	db #ae,#47,#39,#11,#10,#74,#51,#10
	db #39,#01,#10,#74,#51,#10,#ff,#bd
	db #00,#b7,#40,#f4,#50,#ab,#40,#bd
	db #10,#b7,#40,#f4,#50,#ab,#40,#bd
	db #00,#b7,#40,#f4,#50,#ab,#40,#bd
	db #10,#f4,#50,#bd,#00,#f4,#50,#bd
	db #00,#b7,#40,#f4,#50,#ab,#40,#bd
	db #10,#ab,#40,#f4,#50,#b7,#40,#bd
	db #00,#b7,#40,#f4,#50,#ab,#40,#bd
	db #10,#f4,#50,#bd,#00,#f4,#50,#bd
	db #00,#ae,#40,#f4,#50,#ba,#40,#bd
	db #10,#ae,#40,#f4,#50,#ba,#40,#bd
	db #00,#ba,#40,#f4,#50,#ae,#40,#bd
	db #10,#f4,#50,#bd,#00,#f4,#50,#bd
	db #00,#b5,#40,#f4,#50,#a9,#40,#bd
	db #10,#a9,#40,#f4,#50,#b5,#40,#bd
	db #00,#b5,#40,#f4,#50,#a9,#40,#bd
	db #10,#f4,#50,#bd,#00,#f4,#50,#ff
	db #ba,#00,#b5,#40,#ba,#00,#a9,#40
	db #ba,#00,#b5,#40,#ba,#00,#a9,#40
	db #ba,#00,#ba,#00,#ba,#00,#ba,#00
	db #ba,#00,#ec,#00,#6d,#00,#05,#09
	db #00,#2d,#ff,#39,#00,#02,#74,#50
	db #02,#39,#10,#02,#74,#50,#02,#39
	db #00,#02,#74,#50,#02,#b9,#10,#f4
	db #50,#b9,#00,#f4,#50,#39,#00,#02
	db #74,#50,#02,#39,#10,#02,#74,#50
	db #02,#39,#00,#02,#74,#50,#02,#b9
	db #10,#f4,#50,#b9,#00,#f4,#50,#39
	db #00,#02,#74,#50,#02,#39,#10,#02
	db #74,#50,#02,#39,#00,#02,#74,#50
	db #02,#b9,#10,#f4,#50,#b9,#00,#f4
	db #50,#39,#00,#02,#74,#50,#02,#39
	db #10,#02,#74,#50,#02,#39,#00,#02
	db #74,#50,#02,#b9,#10,#f4,#50,#b9
	db #00,#f4,#50,#ff,#3b,#01,#20,#74
	db #50,#02,#3b,#00,#02,#74,#50,#02
	db #3b,#00,#02,#74,#50,#02,#bb,#10
	db #f4,#50,#bb,#00,#f4,#50,#3b,#00
	db #02,#74,#50,#02,#3b,#10,#02,#74
	db #50,#02,#3b,#00,#02,#74,#50,#02
	db #bb,#10,#f4,#50,#bb,#00,#f4,#50
	db #3b,#00,#02,#74,#50,#02,#3b,#10
	db #02,#74,#50,#02,#3b,#00,#02,#74
	db #50,#02,#bb,#10,#f4,#50,#bb,#00
	db #f4,#50,#3b,#00,#02,#74,#50,#02
	db #3b,#00,#02,#74,#50,#02,#3b,#00
	db #02,#74,#50,#02,#bb,#10,#f4,#50
	db #bb,#00,#f4,#50,#ff,#3d,#00,#02
	db #74,#50,#02,#3d,#00,#02,#74,#50
	db #02,#3d,#00,#02,#74,#50,#02,#bd
	db #10,#f4,#50,#bd,#00,#f4,#50,#3d
	db #00,#02,#74,#50,#02,#3d,#10,#02
	db #74,#50,#02,#3d,#00,#02,#74,#50
	db #02,#bd,#10,#f4,#50,#bd,#00,#f4
	db #50,#3d,#00,#02,#74,#50,#02,#3d
	db #10,#02,#74,#50,#02,#3d,#00,#02
	db #74,#50,#02,#bd,#10,#f4,#50,#bd
	db #00,#f4,#50,#3d,#00,#02,#74,#50
	db #02,#3d,#01,#21,#74,#51,#21,#3d
	db #01,#22,#74,#51,#22,#3d,#11,#13
	db #74,#51,#13,#3d,#01,#14,#74,#51
	db #14,#ff
;
.music_info
	db "BabaFanz 7 - Menu (1997)(Public Domain)(Chany)",0
	db "ST-128 Module",0

	read "music_end.asm"
