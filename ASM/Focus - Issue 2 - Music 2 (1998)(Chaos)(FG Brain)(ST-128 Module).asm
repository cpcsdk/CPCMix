; Music of Focus - Issue 2 - Music 2 (1998)(Chaos)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOCUI2M2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #4c60

	read "music_header.asm"

	jp l4c69
	jp l4cfd
	jp l4ce1
;
.init_music
.l4c69
;
	xor a
	ld hl,l5214
	call l4cda
	ld hl,l5242
	call l4cda
	ld hl,l5270
	call l4cda
	ld ix,l5210
	ld iy,l529a
	ld de,#002e
	ld b,#03
.l4c89
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
	djnz l4c89
	ld hl,l5129
	ld (hl),#08
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5125),hl
	ld (l5127),hl
	ld a,#0c
	ld c,d
	call l5105
	ld a,#0d
	ld c,d
	jp l5105
.l4cda
	ld b,#2a
.l4cdc
	ld (hl),a
	inc hl
	djnz l4cdc
	ret
;
.stop_music
.l4ce1
;
	ld a,#07
	ld c,#3f
	call l5105
	ld a,#08
	ld c,#00
	call l5105
	ld a,#09
	ld c,#00
	call l5105
	ld a,#0a
	ld c,#00
	jp l5105
;
.play_music
.l4cfd
;
	ld hl,l512b
	dec (hl)
	ld ix,l5210
	ld bc,l521e
	call l4d9f
	ld ix,l523e
	ld bc,l524c
	call l4d9f
	ld ix,l526c
	ld bc,l527a
	call l4d9f
	ld hl,l5124
	ld de,l512b
	ld b,#06
	call l4d7c
	ld b,#07
	call l4d7c
	ld b,#0b
	call l4d7c
	ld b,#0d
	call l4d7c
	ld de,l512b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l522f
	call l4d55
	ld hl,l525d
	call l4d55
	ld hl,l528b
.l4d55
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
	jr nz,l4d6a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4d6a
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
.l4d7c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5105
.l4d87
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5105
.l4d9f
	ld a,(l512b)
	or a
	jp nz,l4e57
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4e57
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4d87
	or a
	jp z,l4e4c
	ld r,a
	and #7f
	cp #10
	jr c,l4e27
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4f9f
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
	jr z,l4e00
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4e00
	rrca
	ld c,a
	ld hl,l52a0
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
	jr z,l4e1f
	ld (ix+#1e),b
.l4e1f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4e40
.l4e27
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5130
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
	add a
.l4e40
	ld a,d
	or a
	jr nz,l4e4e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4e4e
.l4e4c
	ld a,(hl)
	inc hl
.l4e4e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4e57
	ld a,(ix+#17)
	or a
	jr nz,l4e6d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4e6d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4e83
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4e83
	ld a,(ix+#0d)
	or a
	jr z,l4e91
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4eaf
.l4e91
	ld a,(ix+#1a)
	or a
	jp z,l4eb6
	ld c,a
	cp #03
	jr nz,l4e9e
	xor a
.l4e9e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4eaf
	ld a,(ix+#18)
	dec c
	jr z,l4eaf
	ld a,(ix+#19)
.l4eaf
	add (ix+#07)
	ld b,d
	call l4f9f
.l4eb6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4ede
	dec (ix+#1b)
	jr nz,l4ede
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4f16
.l4ede
	ld a,(ix+#29)
	or a
	jr z,l4f16
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4f0d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4f04
	ld (ix+#29),#ff
	jr l4f0d
.l4f04
	cp (ix+#2b)
	jr nz,l4f0d
	ld (ix+#29),#01
.l4f0d
	ld b,d
	or a
	jp p,l4f13
	dec b
.l4f13
	ld c,a
	jr l4f21
.l4f16
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4f21
	pop hl
	bit 7,(ix+#14)
	jr z,l4f2a
	ld h,d
	ld l,d
.l4f2a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5105
	ld c,h
	ld a,(ix+#02)
	call l5105
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4f7d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4f6c
	dec (ix+#09)
	jr nz,l4f6c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4f64
	xor a
	jr l4f69
.l4f64
	cp #10
	jr nz,l4f69
	dec a
.l4f69
	ld (ix+#1e),a
.l4f6c
	ld a,b
	sub (ix+#1e)
	jr nc,l4f73
	xor a
.l4f73
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5105
.l4f7d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l512c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4f9b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4f9b
	ld (l512c),hl
	ret
.l4f9f
	ld hl,l514e
	cp #61
	jr nc,l4fa9
	add a
	ld c,a
	add hl,bc
.l4fa9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4fb3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l50d8
	ld (ix+#1e),a
	jp l4e40
.l4fc5
	dec b
.l4fc6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4fd1
	neg
.l4fd1
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
	jp l4e40
.l4fe7
	dec b
	jr l4feb
.l4fea
	inc b
.l4feb
	call l50d8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4e40
.l4ffa
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
	jp l50bd
.l500b
	ld a,(hl)
	inc hl
	or a
	jr z,l502d
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
.l502d
	ld (ix+#29),a
	jp l4e40
.l5033
	dec hl
	ld a,(hl)
	and #0f
	ld (l512f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l512e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4e40
.l504d
	ld a,(hl)
	or a
	jr z,l505e
	call l50da
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4e40
.l505e
	ld hl,#0101
	ld (l512a),hl
	jp l4e40
.l5067
	call l50d8
	ld (ix+#1e),a
	jp l4e40
.l5070
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l50e9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l50e9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4e40
.l5092
	ld a,(hl)
	inc hl
	ld (l5129),a
	jp l4e40
.l509a
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
	jp l4e40
.l50b9
	call l50d8
	add a
.l50bd
	ld b,#00
	ld c,a
	push hl
	ld hl,l5320
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4e40
.l50d8
	ld a,(hl)
	inc hl
.l50da
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
.l50e9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l52a0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5105
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
.l5124
	ret
.l512c equ $ + 7
.l512b equ $ + 6
.l512a equ $ + 5
.l5129 equ $ + 4
.l5127 equ $ + 2
.l5125
	db #00,#38,#00,#00,#08,#1e,#01,#00
.l512f equ $ + 2
.l512e equ $ + 1
	db #38,#00,#00
.l5130
	dw l4fb3,l4fc6,l4fc5,l4fea
	dw l4fe7,l4ffa,l500b,l5033
	dw l504d,l5033,l5067,l5070
.l514e equ $ + 6
	dw l5092,l509a,l50b9,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l5214 equ $ + 4
.l5210
	db #08,#00,#01,#08,#1c,#01,#00,#2d
.l521e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#40,#54
	db #80,#54,#20,#54,#10,#10,#08,#18
.l522f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#06,#01
	db #fd,#57,#a3,#55,#00,#d0,#00,#00
.l523e equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l5242 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l524c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l525d equ $ + 5
	db #00,#00,#00,#00,#00,#1f,#e7,#5c
	db #f4,#55,#00,#ff,#00,#00,#00,#00
.l526c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l5270
	db #00,#00,#00,#00,#00,#00,#00,#00
.l527a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l528b equ $ + 3
	db #00,#00,#00,#1f,#1b,#62,#45,#56
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l529a equ $ + 2
	db #00,#00,#a0,#55,#f1,#55,#42,#56
.l52a0
	db #32,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #32,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #32,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #32,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #32,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #32,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #40,#53,#80,#53,#a0,#53,#00,#00
	db #c0,#53,#00,#54,#20,#54,#18,#07
	db #39,#0c,#72,#54,#b2,#54,#a0,#48
	db #4c,#0c,#12,#53,#f2,#54,#e0,#48
	db #cc,#12,#32,#55,#04,#0c,#d2,#ff
	db #04,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #04,#0c,#04,#0c,#04,#0c,#d2,#ff
	db #40,#54,#80,#54,#20,#54,#10,#10
	db #a0,#54,#e0,#54,#00,#55,#00,#00
	db #20,#55,#60,#55,#80,#55,#1a,#00
.l5320
	db #32,#0c,#32,#0c,#32,#0c,#32,#0c
	db #32,#0c,#32,#0c,#32,#0c,#32,#0c
	db #32,#0c,#32,#0c,#32,#0c,#32,#0c
	db #32,#0c,#32,#0c,#32,#0c,#32,#0c
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
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
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#89,#89,#88,#88
	db #87,#87,#86,#86,#85,#85,#84,#84
	db #83,#83,#82,#82,#81,#81,#80,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#97,#57,#00,#93,#56,#00,#93
	db #56,#00,#93,#56,#00,#15,#57,#00
	db #93,#56,#00,#15,#57,#00,#93,#56
	db #00,#58,#58,#00,#93,#56,#00,#15
	db #57,#00,#da,#58,#00,#93,#56,#00
	db #93,#56,#00,#15,#57,#00,#93,#56
	db #00,#15,#57,#00,#5c,#59,#00,#cc
	db #59,#00,#4e,#5a,#00,#4e,#5a,#00
	db #4e,#5a,#00,#4e,#5a,#00,#4e,#5a
	db #00,#d0,#5a,#00,#91,#5b,#80,#a0
	db #55,#00,#e4,#5c,#00,#e4,#5c,#00
	db #e8,#5c,#00,#52,#5c,#00,#94,#5c
	db #00,#52,#5c,#00,#f6,#5c,#00,#56
	db #5d,#00,#a1,#5d,#00,#52,#5c,#00
	db #f6,#5c,#00,#cf,#5d,#00,#3e,#5e
	db #00,#52,#5c,#00,#94,#5c,#00,#52
	db #5c,#00,#f6,#5c,#00,#bb,#5e,#00
	db #2b,#5f,#00,#e8,#5c,#00,#e8,#5c
	db #00,#ad,#5f,#00,#ad,#5f,#00,#ad
	db #5f,#00,#0d,#60,#00,#b9,#60,#80
	db #f1,#55,#00,#19,#62,#00,#1c,#62
	db #00,#65,#61,#00,#65,#61,#00,#bf
	db #61,#00,#65,#61,#00,#bf,#61,#00
	db #65,#61,#00,#bd,#62,#00,#65,#61
	db #00,#bf,#61,#00,#17,#63,#00,#65
	db #61,#00,#65,#61,#00,#bf,#61,#00
	db #65,#61,#00,#bf,#61,#00,#71,#63
	db #00,#f9,#63,#00,#7a,#64,#00,#e3
	db #64,#00,#7a,#64,#00,#7a,#64,#00
	db #7a,#64,#00,#4d,#65,#00,#f6,#65
	db #80,#42,#56,#3f,#db,#12,#bf,#d0
	db #c2,#d0,#bf,#d0,#c6,#d0,#c2,#d0
	db #bf,#d0,#c2,#d0,#bf,#d0,#bf,#d0
	db #c2,#d0,#bf,#d0,#c6,#d0,#c2,#d0
	db #bf,#d0,#c2,#d0,#bd,#d0,#bd,#d0
	db #c2,#d0,#bd,#d0,#c6,#d0,#c2,#d0
	db #bd,#d0,#c2,#d0,#bd,#d0,#bd,#d0
	db #c2,#d0,#bd,#d0,#c6,#d0,#c2,#d0
	db #bd,#d0,#c2,#d0,#bd,#d0,#bd,#d0
	db #c1,#d0,#bd,#d0,#c4,#d0,#c1,#d0
	db #bd,#d0,#c1,#d0,#bd,#d0,#bd,#d0
	db #c1,#d0,#bd,#d0,#c4,#d0,#c1,#d0
	db #bd,#d0,#c1,#d0,#be,#d0,#be,#d0
	db #c1,#d0,#be,#d0,#c6,#d0,#c1,#d0
	db #be,#d0,#c1,#d0,#be,#d0,#be,#d0
	db #c1,#d0,#be,#d0,#c6,#d0,#c1,#d0
	db #be,#d0,#c1,#d0,#ff,#3b,#db,#12
	db #bb,#d0,#bf,#d0,#bb,#d0,#c2,#d0
	db #bf,#d0,#bb,#d0,#bf,#d0,#bb,#d0
	db #bb,#d0,#bf,#d0,#bb,#d0,#c2,#d0
	db #bf,#d0,#bb,#d0,#bf,#d0,#bd,#d0
	db #bd,#d0,#c1,#d0,#bd,#d0,#c4,#d0
	db #c1,#d0,#bd,#d0,#c1,#d0,#bd,#d0
	db #bd,#d0,#c1,#d0,#bd,#d0,#c4,#d0
	db #c1,#d0,#bd,#d0,#c1,#d0,#bd,#d0
	db #bd,#d0,#c1,#d0,#bd,#d0,#c4,#d0
	db #c1,#d0,#bd,#d0,#c1,#d0,#bd,#d0
	db #bd,#d0,#c1,#d0,#bd,#d0,#c4,#d0
	db #c1,#d0,#bd,#d0,#c1,#d0,#be,#d0
	db #be,#d0,#c1,#d0,#be,#d0,#c6,#d0
	db #c1,#d0,#be,#d0,#c1,#d0,#be,#d0
	db #be,#d0,#c1,#d0,#be,#d0,#c6,#d0
	db #c1,#d0,#be,#d0,#c1,#d0,#ff,#3f
	db #db,#19,#3f,#db,#19,#42,#db,#19
	db #3f,#db,#19,#46,#db,#19,#42,#db
	db #19,#3f,#db,#19,#42,#db,#19,#3f
	db #db,#19,#3f,#db,#19,#42,#db,#18
	db #3f,#db,#18,#46,#db,#18,#42,#db
	db #18,#3f,#db,#18,#42,#db,#18,#3d
	db #db,#18,#3d,#db,#18,#42,#db,#18
	db #3d,#db,#18,#46,#db,#18,#42,#db
	db #18,#3d,#db,#18,#42,#db,#17,#3d
	db #db,#17,#3d,#db,#17,#42,#db,#17
	db #3d,#db,#17,#46,#db,#17,#42,#db
	db #17,#3d,#db,#17,#42,#db,#17,#3d
	db #db,#17,#3d,#db,#16,#41,#db,#16
	db #3d,#db,#16,#44,#db,#16,#41,#db
	db #16,#3d,#db,#16,#41,#db,#16,#3d
	db #db,#16,#3d,#db,#15,#41,#db,#15
	db #3d,#db,#15,#44,#db,#15,#41,#db
	db #15,#3d,#db,#15,#41,#db,#14,#3e
	db #db,#14,#3e,#db,#14,#41,#db,#14
	db #3e,#db,#14,#46,#db,#14,#41,#db
	db #14,#3e,#db,#13,#41,#db,#13,#3e
	db #db,#13,#3e,#db,#13,#41,#db,#13
	db #3e,#db,#13,#46,#db,#12,#41,#db
	db #12,#3e,#db,#12,#41,#db,#12,#ff
	db #3e,#db,#12,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#be,#d0,#c1,#d0,#be
	db #d0,#c6,#d0,#c1,#d0,#be,#d0,#c1
	db #d0,#ff,#3f,#db,#12,#bf,#d0,#c2
	db #d0,#bf,#d0,#c6,#d0,#c2,#d0,#bf
	db #d0,#c2,#d0,#bf,#d0,#bf,#d0,#c2
	db #d0,#bf,#d0,#c6,#d0,#c2,#d0,#bf
	db #d0,#c2,#d0,#bd,#d0,#bd,#d0,#c2
	db #d0,#bd,#d0,#c6,#d0,#c2,#d0,#bd
	db #d0,#c2,#d0,#bd,#d0,#bd,#d0,#c2
	db #d0,#bd,#d0,#c6,#d0,#c2,#d0,#bd
	db #d0,#c2,#d0,#bd,#d0,#bd,#d0,#c1
	db #d0,#bd,#d0,#c4,#d0,#c1,#d0,#bd
	db #d0,#c1,#d0,#bd,#d0,#bd,#d0,#c1
	db #d0,#bd,#d0,#c4,#d0,#c1,#d0,#ca
	db #d0,#c1,#d0,#be,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#c6,#d0,#c1,#d0,#be
	db #d0,#c1,#d0,#be,#d0,#be,#d0,#c1
	db #d0,#be,#d0,#c6,#d0,#c1,#d0,#be
	db #d0,#c1,#d0,#ff,#3f,#db,#a2,#b3
	db #70,#b6,#70,#ba,#70,#b3,#70,#b6
	db #70,#ba,#70,#b3,#70,#b6,#70,#ba
	db #70,#b3,#70,#b6,#70,#ba,#70,#b3
	db #70,#b6,#70,#ba,#70,#b3,#70,#b6
	db #70,#ba,#70,#b3,#70,#b6,#70,#ba
	db #70,#b3,#70,#b6,#70,#ba,#70,#b6
	db #70,#b1,#70,#ba,#70,#b6,#70,#b1
	db #70,#ba,#70,#b6,#70,#b1,#70,#ba
	db #70,#b6,#70,#b1,#70,#ba,#70,#b6
	db #70,#b1,#70,#ba,#70,#b6,#70,#b1
	db #70,#ba,#70,#b6,#70,#b1,#70,#ba
	db #70,#b6,#70,#b1,#70,#ba,#70,#b6
	db #70,#b1,#70,#ba,#70,#b6,#70,#b1
	db #70,#b6,#70,#ff,#31,#7b,#12,#b5
	db #70,#b8,#70,#b1,#70,#b5,#70,#b8
	db #70,#b1,#70,#b5,#70,#b8,#70,#b1
	db #70,#b5,#70,#b8,#70,#b1,#70,#b5
	db #70,#b8,#70,#b1,#70,#b5,#70,#b8
	db #70,#b1,#70,#b5,#70,#b8,#70,#b1
	db #70,#b5,#70,#b8,#70,#b1,#70,#b5
	db #70,#b8,#70,#b1,#70,#b5,#70,#b8
	db #70,#b1,#70,#b5,#70,#b8,#70,#b2
	db #70,#b5,#70,#ba,#70,#b2,#70,#b5
	db #70,#ba,#70,#b2,#70,#b5,#70,#ba
	db #70,#b2,#70,#b5,#70,#ba,#70,#b2
	db #70,#b5,#70,#ba,#70,#b2,#70,#b5
	db #70,#ba,#70,#b2,#70,#b5,#70,#ba
	db #70,#b2,#70,#b5,#70,#ba,#70,#b2
	db #70,#b5,#70,#ba,#70,#b2,#70,#b5
	db #70,#ba,#70,#b5,#70,#ff,#33,#fb
	db #11,#b3,#f0,#b6,#f0,#ba,#f0,#bb
	db #f0,#ba,#f0,#b6,#f0,#b3,#f0,#b3
	db #f0,#b3,#f0,#b6,#f0,#ba,#f0,#bb
	db #f0,#ba,#f0,#b6,#f0,#b3,#f0,#b1
	db #f0,#b1,#f0,#b6,#f0,#ba,#f0,#bb
	db #f0,#ba,#f0,#b6,#f0,#b1,#f0,#b1
	db #f0,#b1,#f0,#b6,#f0,#ba,#f0,#bb
	db #f0,#ba,#f0,#b6,#f0,#b1,#f0,#b1
	db #f0,#b1,#f0,#b5,#f0,#b8,#f0,#ba
	db #f0,#b8,#f0,#b5,#f0,#b1,#f0,#b1
	db #f0,#b1,#f0,#b5,#f0,#b8,#f0,#ba
	db #f0,#b8,#f0,#b5,#f0,#b1,#f0,#b2
	db #f0,#b2,#f0,#b5,#f0,#ba,#f0,#bb
	db #f0,#ba,#f0,#b5,#f0,#b2,#f0,#b2
	db #f0,#b2,#f0,#b5,#f0,#ba,#f0,#bb
	db #f0,#ba,#f0,#b5,#f0,#ba,#f0,#ff
	db #33,#fb,#10,#33,#fb,#10,#36,#fb
	db #10,#3a,#fb,#10,#3b,#fb,#10,#3a
	db #fb,#10,#36,#fb,#10,#33,#fb,#11
	db #33,#fb,#11,#33,#fb,#11,#36,#fb
	db #11,#3a,#fb,#11,#3b,#fb,#11,#3a
	db #fb,#12,#36,#fb,#12,#33,#fb,#12
	db #31,#fb,#12,#31,#fb,#12,#36,#fb
	db #12,#3a,#fb,#13,#3b,#fb,#13,#3a
	db #fb,#13,#36,#fb,#13,#31,#fb,#13
	db #31,#fb,#13,#31,#fb,#14,#36,#fb
	db #14,#3a,#fb,#14,#3b,#fb,#14,#3a
	db #fb,#14,#36,#fb,#14,#31,#fb,#15
	db #31,#fb,#15,#31,#fb,#15,#35,#fb
	db #15,#38,#fb,#15,#3a,#fb,#15,#38
	db #fb,#16,#35,#fb,#16,#31,#fb,#16
	db #31,#fb,#16,#31,#fb,#16,#35,#fb
	db #16,#38,#fb,#17,#3a,#fb,#17,#38
	db #fb,#17,#35,#fb,#17,#31,#fb,#17
	db #32,#fb,#17,#32,#fb,#18,#35,#fb
	db #18,#3a,#fb,#18,#3b,#fb,#18,#3a
	db #fb,#18,#35,#fb,#18,#32,#fb,#19
	db #32,#fb,#19,#32,#fb,#19,#35,#fb
	db #19,#3a,#fb,#19,#3b,#fb,#19,#3a
	db #fb,#1a,#35,#fb,#1a,#3a,#fb,#1a
	db #ff,#33,#fb,#1a,#33,#fb,#1a,#36
	db #fb,#1a,#3a,#fb,#1a,#3b,#fb,#1a
	db #3a,#fb,#1a,#36,#fb,#1a,#33,#fb
	db #1a,#33,#fb,#1a,#33,#fb,#1a,#36
	db #fb,#1a,#3a,#fb,#1a,#3b,#fb,#1b
	db #3a,#fb,#1b,#36,#fb,#1b,#33,#fb
	db #1b,#31,#fb,#1b,#31,#fb,#1b,#36
	db #fb,#1b,#3a,#fb,#1b,#3b,#fb,#1b
	db #3a,#fb,#1b,#36,#fb,#1b,#31,#fb
	db #1b,#31,#fb,#1c,#31,#fb,#1c,#36
	db #fb,#1c,#3a,#fb,#1c,#3b,#fb,#1c
	db #3a,#fb,#1c,#36,#fb,#1c,#31,#fb
	db #1c,#31,#fb,#1c,#31,#fb,#1c,#35
	db #fb,#1c,#38,#fb,#1c,#3a,#fb,#1d
	db #38,#fb,#1d,#35,#fb,#1d,#31,#fb
	db #1d,#31,#fb,#1d,#31,#fb,#1d,#35
	db #fb,#1d,#38,#fb,#1d,#3a,#fb,#1d
	db #38,#fb,#1e,#35,#fb,#1e,#31,#fb
	db #1e,#32,#fb,#1e,#32,#fb,#1e,#35
	db #fb,#1e,#3a,#fb,#1e,#3b,#fb,#1e
	db #3a,#fb,#1e,#35,#fb,#1e,#32,#fb
	db #1e,#32,#fb,#1f,#32,#fb,#1f,#35
	db #fb,#1f,#3a,#fb,#1f,#3b,#fb,#1f
	db #3a,#fb,#1f,#35,#fb,#1f,#3a,#fb
	db #1f,#ff,#0b,#20,#46,#d0,#02,#46
	db #d0,#02,#c7,#d0,#46,#d0,#03,#44
	db #d0,#02,#42,#d0,#02,#44,#d0,#04
	db #46,#d0,#02,#46,#d0,#02,#c7,#d0
	db #49,#d0,#03,#47,#d0,#02,#46,#d0
	db #02,#44,#d0,#04,#c9,#d0,#fe,#01
	db #c9,#d0,#fe,#01,#c9,#d0,#49,#d0
	db #05,#cb,#d0,#c9,#d0,#47,#d0,#02
	db #46,#d0,#10,#ff,#0b,#20,#4b,#d0
	db #02,#4b,#d0,#02,#cd,#d0,#4e,#d0
	db #03,#4d,#d0,#02,#4b,#d0,#02,#4d
	db #d0,#04,#4d,#d0,#02,#4d,#d0,#02
	db #ce,#d0,#50,#d0,#03,#4e,#d0,#02
	db #4d,#d0,#06,#4d,#db,#10,#4d,#db
	db #10,#4d,#db,#10,#4d,#db,#11,#4d
	db #db,#10,#4d,#db,#11,#4d,#db,#12
	db #4d,#db,#13,#4d,#db,#14,#fe,#01
	db #4d,#db,#10,#ce,#d0,#50,#d0,#02
	db #52,#d0,#10,#ff,#0b,#00,#40,#ff
	db #46,#db,#00,#10,#49,#d0,#10,#44
	db #d0,#10,#46,#d0,#10,#ff,#0b,#20
	db #4b,#d0,#02,#4b,#d0,#02,#cd,#d0
	db #4e,#d0,#03,#4d,#d0,#02,#4b,#d0
	db #02,#4d,#d0,#04,#4d,#d0,#02,#4d
	db #d0,#02,#ce,#d0,#50,#d0,#03,#4e
	db #d0,#02,#4d,#d0,#06,#4d,#db,#10
	db #4d,#db,#10,#4d,#db,#10,#4d,#db
	db #11,#4d,#db,#10,#4d,#db,#11,#4d
	db #db,#12,#4d,#db,#13,#4d,#db,#14
	db #fe,#01,#4d,#db,#10,#ce,#d0,#50
	db #d0,#02,#52,#d0,#08,#d2,#70,#d0
	db #70,#d0,#70,#ce,#70,#ce,#70,#cd
	db #70,#cd,#70,#cb,#70,#ff,#0b,#20
	db #46,#d0,#02,#46,#d0,#02,#c7,#d0
	db #46,#d0,#03,#44,#d0,#02,#c2,#d0
	db #c1,#d0,#bf,#d0,#3d,#d0,#03,#46
	db #d0,#02,#46,#d0,#02,#c7,#d0,#49
	db #d0,#03,#4b,#d0,#02,#4d,#d0,#02
	db #4e,#d0,#04,#50,#d0,#02,#50,#d0
	db #02,#d0,#d0,#50,#d0,#05,#cd,#d0
	db #ce,#d0,#50,#d0,#02,#52,#d0,#0c
	db #d5,#d0,#d3,#d0,#d5,#d0,#d3,#d0
	db #ff,#0b,#20,#52,#d0,#12,#d5,#d0
	db #d3,#d0,#d5,#d0,#53,#d0,#03,#52
	db #d0,#12,#d5,#d0,#d3,#d0,#d5,#d0
	db #53,#d0,#03,#52,#d0,#06,#d2,#70
	db #d0,#70,#d0,#70,#ce,#70,#ce,#70
	db #cd,#70,#cd,#70,#cb,#70,#ff,#0b
	db #20,#46,#70,#02,#46,#70,#02,#c7
	db #70,#c6,#70,#c7,#70,#c6,#70,#c9
	db #70,#47,#70,#02,#c6,#70,#44,#70
	db #04,#46,#70,#02,#46,#70,#02,#c7
	db #d0,#c6,#d0,#c7,#70,#c6,#d0,#c7
	db #70,#49,#70,#02,#cb,#70,#4d,#70
	db #04,#d0,#70,#cd,#70,#c9,#70,#d0
	db #70,#cd,#70,#c9,#70,#d0,#70,#cd
	db #70,#c9,#70,#d0,#70,#cd,#70,#c9
	db #70,#d2,#70,#cd,#70,#ca,#70,#d2
	db #70,#cd,#70,#ca,#70,#d2,#70,#cd
	db #70,#ca,#70,#cd,#70,#ca,#70,#c6
	db #70,#c1,#70,#c6,#70,#c1,#70,#be
	db #70,#ba,#70,#be,#70,#ff,#0b,#20
	db #46,#70,#02,#46,#70,#02,#c7,#70
	db #c6,#70,#c4,#70,#c2,#70,#c4,#70
	db #c2,#70,#c1,#70,#c2,#70,#c1,#70
	db #c2,#70,#c1,#70,#bf,#70,#c1,#70
	db #c2,#70,#c4,#70,#c2,#70,#c4,#70
	db #c6,#70,#c4,#70,#c6,#70,#c7,#70
	db #c6,#70,#c7,#70,#c9,#70,#c7,#70
	db #c9,#70,#d0,#70,#cd,#70,#d0,#70
	db #cd,#70,#d0,#70,#d3,#70,#d0,#70
	db #ce,#70,#d0,#70,#cd,#70,#d0,#70
	db #cd,#70,#d0,#70,#d3,#70,#d2,#70
	db #cd,#70,#ca,#70,#cd,#70,#d2,#70
	db #cd,#70,#ca,#70,#cd,#70,#d2,#70
	db #cd,#70,#ca,#70,#cd,#70,#d2,#70
	db #d6,#70,#d2,#70,#cd,#70,#d2,#70
	db #cd,#70,#ff,#4b,#db,#a0,#ba,#70
	db #b6,#70,#b3,#70,#ba,#70,#b6,#70
	db #b3,#70,#ba,#70,#b6,#70,#b3,#70
	db #ba,#70,#b6,#70,#b3,#70,#ba,#70
	db #b6,#70,#b3,#70,#ba,#70,#b6,#70
	db #b3,#70,#ba,#70,#b6,#70,#b3,#70
	db #ba,#70,#b6,#70,#b1,#70,#b6,#70
	db #ba,#70,#b1,#70,#b6,#70,#ba,#70
	db #b1,#70,#b6,#70,#ba,#70,#b1,#70
	db #b6,#70,#ba,#70,#b1,#70,#b6,#70
	db #ba,#70,#b1,#70,#b6,#70,#ba,#70
	db #b1,#70,#b6,#70,#ba,#70,#b1,#70
	db #b6,#70,#ba,#70,#b1,#70,#b6,#70
	db #ba,#70,#b1,#70,#b6,#70,#ba,#70
	db #b6,#70,#ff,#38,#7b,#10,#b5,#70
	db #b1,#70,#b8,#70,#b5,#70,#b1,#70
	db #b8,#70,#b5,#70,#b1,#70,#b8,#70
	db #b5,#70,#b1,#70,#b8,#70,#b5,#70
	db #b1,#70,#b8,#70,#b5,#70,#b1,#70
	db #b8,#70,#b5,#70,#b1,#70,#b8,#70
	db #b5,#70,#b1,#70,#b8,#70,#b5,#70
	db #b1,#70,#b8,#70,#b5,#70,#b1,#70
	db #b8,#70,#b5,#70,#b1,#70,#ba,#70
	db #b5,#70,#b2,#70,#ba,#70,#b5,#70
	db #b2,#70,#ba,#70,#b5,#70,#b2,#70
	db #ba,#70,#b5,#70,#b2,#70,#ba,#70
	db #b5,#70,#b2,#70,#ba,#70,#b5,#70
	db #b2,#70,#ba,#70,#b5,#70,#b2,#70
	db #ba,#70,#b5,#70,#b2,#70,#ba,#70
	db #b5,#70,#b2,#70,#ba,#70,#b5,#70
	db #b2,#70,#b5,#70,#ff,#46,#7b,#20
	db #46,#70,#02,#c7,#70,#c6,#70,#c9
	db #70,#c7,#70,#cb,#70,#c9,#70,#ce
	db #70,#cd,#70,#d0,#70,#ce,#70,#d2
	db #70,#d0,#70,#52,#70,#02,#55,#70
	db #02,#55,#70,#02,#d3,#70,#55,#70
	db #0b,#50,#70,#02,#d0,#70,#ce,#70
	db #cd,#70,#ce,#70,#cd,#70,#c9,#70
	db #cd,#70,#c9,#70,#c7,#70,#49,#70
	db #03,#c9,#70,#c7,#70,#ca,#70,#cd
	db #70,#d0,#70,#d2,#70,#d3,#70,#d2
	db #70,#d0,#70,#ce,#70,#cd,#70,#ce
	db #70,#4a,#70,#04,#ff,#46,#7b,#10
	db #0b,#10,#46,#7b,#10,#0b,#10,#47
	db #7b,#10,#46,#7b,#10,#49,#7b,#10
	db #47,#7b,#11,#4b,#7b,#11,#49,#7b
	db #11,#4e,#7b,#11,#4d,#7b,#11,#50
	db #7b,#11,#4e,#7b,#12,#52,#7b,#12
	db #50,#7b,#12,#52,#7b,#12,#0b,#12
	db #55,#7b,#12,#0b,#13,#55,#7b,#13
	db #0b,#13,#53,#7b,#13,#55,#7b,#13
	db #0b,#13,#0b,#14,#0b,#14,#0b,#14
	db #0b,#14,#0b,#14,#0b,#14,#0b,#15
	db #0b,#15,#0b,#15,#50,#7b,#15,#0b
	db #15,#50,#7b,#15,#4e,#7b,#16,#4d
	db #7b,#16,#4e,#7b,#16,#4d,#7b,#16
	db #49,#7b,#16,#4d,#7b,#16,#49,#7b
	db #17,#47,#7b,#17,#49,#7b,#17,#0b
	db #17,#0b,#17,#49,#7b,#17,#47,#7b
	db #18,#4a,#7b,#18,#4d,#7b,#18,#50
	db #7b,#18,#52,#7b,#18,#53,#7b,#18
	db #52,#7b,#19,#50,#7b,#19,#4e,#7b
	db #19,#4d,#7b,#19,#4e,#7b,#19,#4a
	db #7b,#19,#0b,#1a,#0b,#1a,#0b,#1a
	db #ff,#46,#7b,#1a,#0b,#1a,#46,#7b
	db #1a,#0b,#1a,#47,#7b,#1a,#46,#7b
	db #1a,#49,#7b,#1a,#47,#7b,#1a,#4b
	db #7b,#1a,#49,#7b,#1a,#4e,#7b,#1a
	db #4d,#7b,#1a,#50,#7b,#1b,#4e,#7b
	db #1b,#52,#7b,#1b,#50,#7b,#1b,#52
	db #7b,#1b,#0b,#1b,#55,#7b,#1b,#0b
	db #1b,#55,#7b,#1b,#0b,#1b,#53,#7b
	db #1b,#55,#7b,#1b,#0b,#1c,#0b,#1c
	db #0b,#1c,#0b,#1c,#0b,#1c,#0b,#1c
	db #0b,#1c,#0b,#1c,#0b,#1c,#0b,#1c
	db #50,#7b,#1c,#0b,#1c,#50,#7b,#1d
	db #4e,#7b,#1d,#4d,#7b,#1d,#4e,#7b
	db #1d,#4d,#7b,#1d,#49,#7b,#1d,#4d
	db #7b,#1d,#49,#7b,#1d,#47,#7b,#1d
	db #49,#7b,#1e,#0b,#1e,#0b,#1e,#49
	db #7b,#1e,#47,#7b,#1e,#4a,#7b,#1e
	db #4d,#7b,#1e,#50,#7b,#1e,#52,#7b
	db #1e,#53,#7b,#1e,#52,#7b,#1e,#50
	db #7b,#1f,#4e,#7b,#1f,#4d,#7b,#1f
	db #4e,#7b,#1f,#4a,#7b,#1f,#0b,#1f
	db #0b,#1f,#fe,#01,#ff,#00,#02,#33
	db #70,#02,#34,#60,#02,#b3,#70,#33
	db #70,#03,#33,#70,#02,#34,#60,#02
	db #b3,#70,#2a,#70,#03,#36,#70,#02
	db #34,#60,#02,#b6,#70,#36,#70,#03
	db #36,#70,#02,#34,#60,#02,#b6,#70
	db #31,#70,#03,#31,#70,#02,#34,#60
	db #02,#b1,#70,#31,#70,#03,#31,#70
	db #02,#34,#60,#02,#b1,#70,#2e,#70
	db #03,#2e,#70,#02,#34,#60,#02,#ae
	db #70,#2e,#70,#03,#2e,#70,#02,#34
	db #60,#02,#ae,#70,#ae,#70,#ff,#00
	db #02,#2f,#70,#02,#34,#60,#02,#af
	db #70,#2f,#70,#03,#2f,#70,#02,#34
	db #60,#02,#af,#70,#31,#70,#03,#31
	db #70,#02,#34,#60,#02,#b1,#70,#31
	db #70,#03,#31,#70,#02,#34,#60,#02
	db #b1,#70,#31,#70,#03,#31,#70,#02
	db #34,#60,#02,#b1,#70,#31,#70,#03
	db #31,#70,#02,#34,#60,#02,#b1,#70
	db #2e,#70,#03,#2e,#70,#02,#34,#60
	db #02,#ae,#70,#2e,#70,#03,#2e,#70
	db #02,#34,#60,#02,#ae,#70,#ae,#70
	db #ff,#00,#40,#ff,#0b,#19,#0b,#19
	db #33,#7b,#19,#0b,#19,#34,#6b,#19
	db #0b,#18,#33,#7b,#18,#33,#7b,#18
	db #0b,#18,#0b,#18,#33,#7b,#18,#0b
	db #17,#34,#6b,#17,#0b,#17,#33,#7b
	db #17,#2a,#7b,#17,#0b,#17,#0b,#16
	db #36,#7b,#16,#0b,#16,#34,#6b,#16
	db #0b,#16,#36,#7b,#16,#36,#7b,#16
	db #0b,#15,#0b,#15,#36,#7b,#15,#0b
	db #15,#34,#6b,#15,#0b,#15,#36,#7b
	db #15,#31,#7b,#14,#0b,#14,#0b,#14
	db #31,#7b,#14,#0b,#14,#34,#6b,#14
	db #0b,#14,#31,#7b,#14,#31,#7b,#14
	db #0b,#13,#0b,#13,#31,#7b,#13,#0b
	db #13,#34,#6b,#13,#0b,#13,#31,#7b
	db #13,#2e,#7b,#13,#0b,#12,#0b,#12
	db #2e,#7b,#12,#0b,#12,#34,#6b,#12
	db #0b,#12,#2e,#7b,#12,#2e,#7b,#12
	db #0b,#11,#0b,#11,#2e,#7b,#11,#0b
	db #11,#34,#6b,#11,#0b,#11,#2e,#7b
	db #10,#2e,#7b,#10,#ff,#00,#02,#2e
	db #70,#02,#34,#60,#02,#ae,#70,#2e
	db #70,#03,#2e,#70,#02,#34,#60,#02
	db #ae,#70,#2e,#70,#03,#2e,#70,#02
	db #34,#60,#02,#ae,#70,#2e,#70,#03
	db #2e,#70,#02,#34,#60,#02,#ae,#70
	db #2e,#70,#03,#2e,#70,#02,#34,#60
	db #02,#ae,#70,#2e,#70,#03,#2e,#70
	db #02,#34,#60,#02,#ae,#70,#2e,#70
	db #03,#2e,#70,#02,#34,#60,#02,#ae
	db #70,#2e,#70,#03,#2e,#70,#02,#34
	db #60,#02,#ae,#70,#ae,#70,#ff,#00
	db #02,#33,#70,#02,#34,#60,#02,#b3
	db #70,#33,#70,#03,#33,#70,#02,#34
	db #60,#02,#b3,#70,#2a,#70,#03,#36
	db #70,#02,#34,#60,#02,#b6,#70,#36
	db #70,#03,#36,#70,#02,#34,#60,#02
	db #b6,#70,#31,#70,#03,#31,#70,#02
	db #34,#60,#02,#b1,#70,#31,#70,#03
	db #31,#70,#02,#34,#60,#02,#ae,#70
	db #2e,#70,#03,#2e,#70,#02,#34,#60
	db #02,#ae,#70,#2e,#70,#03,#2e,#70
	db #02,#34,#60,#02,#ae,#70,#ae,#70
	db #ff,#00,#02,#33,#db,#10,#33,#db
	db #11,#33,#db,#12,#33,#db,#13,#33
	db #db,#14,#33,#db,#15,#33,#db,#16
	db #33,#db,#17,#34,#6b,#10,#b4,#e0
	db #b4,#60,#b4,#e0,#b4,#60,#b4,#e0
	db #b4,#60,#b4,#e0,#b4,#60,#b4,#e0
	db #b4,#60,#e4,#e0,#d8,#e0,#cc,#e0
	db #e4,#e0,#d8,#e0,#cc,#e0,#e4,#e0
	db #d8,#e0,#cc,#e0,#e4,#e0,#d8,#e0
	db #cc,#e0,#b4,#60,#b4,#e0,#b4,#60
	db #b4,#e0,#b4,#60,#b4,#e0,#b4,#60
	db #b4,#e0,#b4,#60,#b4,#e0,#b4,#60
	db #b4,#e0,#b4,#60,#b4,#e0,#b4,#60
	db #e4,#e0,#d8,#e0,#cc,#e0,#e4,#e0
	db #d8,#e0,#cc,#e0,#e4,#e0,#d8,#e0
	db #cc,#e0,#e4,#e0,#d8,#e0,#cc,#e0
	db #e4,#e0,#d8,#e0,#cc,#e0,#b4,#e0
	db #ff,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#e4,#e0,#d8,#e0,#cc,#e0,#e4
	db #e0,#d8,#e0,#cc,#e0,#e4,#e0,#d8
	db #e0,#cc,#e0,#e4,#e0,#d8,#e0,#cc
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#b4,#60,#b4,#e0,#b4,#60,#b4
	db #e0,#e4,#e0,#d8,#e0,#cc,#e0,#e4
	db #e0,#d8,#e0,#cc,#e0,#e4,#e0,#e4
	db #e0,#d8,#e0,#d8,#e0,#cc,#e0,#cc
	db #e0,#c0,#e0,#c0,#e0,#b4,#e0,#a8
	db #e0,#ff,#34,#e0,#02,#34,#60,#02
	db #b4,#e0,#b4,#e0,#34,#60,#02,#34
	db #e0,#02,#34,#60,#02,#b4,#e0,#b4
	db #e0,#34,#60,#02,#34,#e0,#02,#34
	db #60,#02,#b4,#e0,#b4,#e0,#34,#60
	db #02,#34,#e0,#02,#34,#60,#02,#b4
	db #e0,#b4,#e0,#34,#60,#02,#34,#e0
	db #02,#34,#60,#02,#b4,#e0,#b4,#e0
	db #34,#60,#02,#34,#e0,#02,#34,#60
	db #02,#b4,#e0,#b4,#e0,#34,#60,#02
	db #34,#e0,#02,#34,#60,#02,#b4,#e0
	db #b4,#e0,#34,#60,#02,#34,#e0,#02
	db #34,#60,#02,#b4,#e0,#b4,#e0,#34
	db #60,#02,#ff,#34,#e0,#02,#34,#60
	db #02,#b4,#e0,#b4,#e0,#34,#60,#02
	db #34,#e0,#02,#34,#60,#02,#b4,#e0
	db #b4,#e0,#34,#60,#02,#34,#e0,#02
	db #34,#60,#02,#b4,#e0,#b4,#e0,#34
	db #60,#02,#34,#e0,#02,#34,#60,#02
	db #b4,#e0,#b4,#e0,#34,#60,#02,#34
	db #e0,#02,#34,#60,#02,#b4,#e0,#b4
	db #e0,#34,#60,#02,#34,#e0,#02,#34
	db #60,#02,#b4,#e0,#b4,#e0,#34,#60
	db #02,#34,#e0,#02,#34,#60,#02,#b4
	db #e0,#b4,#e0,#34,#60,#02,#34,#e0
	db #02,#34,#60,#02,#b4,#60,#b4,#e0
	db #b4,#60,#b4,#e0,#ff,#34,#eb,#10
	db #0b,#10,#34,#6b,#10,#0b,#10,#34
	db #eb,#10,#34,#eb,#10,#34,#6b,#10
	db #0b,#11,#34,#eb,#11,#0b,#11,#34
	db #6b,#11,#0b,#11,#34,#eb,#11,#34
	db #eb,#12,#34,#6b,#12,#0b,#12,#34
	db #eb,#12,#0b,#12,#34,#6b,#12,#0b
	db #13,#34,#eb,#13,#34,#eb,#13,#34
	db #6b,#13,#0b,#13,#34,#eb,#13,#0b
	db #14,#34,#6b,#14,#0b,#14,#34,#eb
	db #14,#34,#eb,#14,#34,#6b,#14,#0b
	db #15,#34,#eb,#15,#0b,#15,#34,#6b
	db #15,#0b,#15,#34,#eb,#15,#34,#eb
	db #16,#34,#6b,#16,#0b,#16,#34,#eb
	db #16,#0b,#16,#34,#6b,#16,#0b,#17
	db #34,#eb,#17,#34,#eb,#17,#34,#6b
	db #17,#0b,#17,#34,#eb,#17,#0b,#18
	db #34,#6b,#18,#0b,#18,#34,#eb,#18
	db #34,#eb,#18,#34,#6b,#18,#0b,#19
	db #34,#eb,#19,#0b,#19,#34,#6b,#19
	db #0b,#19,#34,#eb,#19,#34,#eb,#1a
	db #34,#6b,#1a,#0b,#1a,#ff,#34,#eb
	db #1a,#0b,#1a,#34,#6b,#1a,#0b,#1a
	db #34,#eb,#1a,#34,#eb,#1a,#34,#6b
	db #1a,#0b,#1a,#34,#eb,#1a,#0b,#1a
	db #34,#6b,#1a,#0b,#1a,#34,#eb,#1b
	db #34,#eb,#1b,#34,#6b,#1b,#0b,#1b
	db #34,#eb,#1b,#0b,#1b,#34,#6b,#1b
	db #0b,#1b,#34,#eb,#1b,#34,#eb,#1b
	db #34,#6b,#1b,#0b,#1b,#34,#eb,#1c
	db #0b,#1c,#34,#6b,#1c,#0b,#1c,#34
	db #eb,#1c,#34,#eb,#1c,#34,#6b,#1c
	db #0b,#1c,#34,#eb,#1c,#0b,#1c,#34
	db #6b,#1c,#0b,#1c,#34,#eb,#1d,#34
	db #eb,#1d,#34,#6b,#1d,#0b,#1d,#34
	db #eb,#1d,#0b,#1d,#34,#6b,#1d,#0b
	db #1d,#34,#eb,#1d,#34,#eb,#1e,#34
	db #6b,#1e,#0b,#1e,#34,#eb,#1e,#0b
	db #1e,#34,#6b,#1e,#0b,#1e,#34,#eb
	db #1e,#34,#eb,#1e,#34,#6b,#1e,#0b
	db #1e,#34,#eb,#1f,#0b,#1f,#34,#6b
	db #1f,#0b,#1f,#34,#eb,#1f,#34,#eb
	db #1f,#34,#6b,#1f,#fe,#01,#ff
;
.music_info
	db "Focus - Issue 2 - Music 2 (1998)(Chaos)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
