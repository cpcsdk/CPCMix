; Music of Only For Your Eyes 2 Megademo - No End (1995)(Ast System)(Eliot)(ST-128 Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFYE2MNE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #69e0

	read "music_header.asm"

	jp l69e9
	jp l6a7d
	jp l6a61
;
.init_music
.l69e9
;
	xor a
	ld hl,l6f94
	call l6a5a
	ld hl,l6fc2
	call l6a5a
	ld hl,l6ff0
	call l6a5a
	ld ix,l6f90
	ld iy,l701a
	ld de,#002e
	ld b,#03
.l6a09
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
	djnz l6a09
	ld hl,l6ea9
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6ea5),hl
	ld (l6ea7),hl
	ld a,#0c
	ld c,d
	call l6e85
	ld a,#0d
	ld c,d
	jp l6e85
.l6a5a
	ld b,#2a
.l6a5c
	ld (hl),a
	inc hl
	djnz l6a5c
	ret
;
.stop_music
.l6a61
;
	ld a,#07
	ld c,#3f
	call l6e85
	ld a,#08
	ld c,#00
	call l6e85
	ld a,#09
	ld c,#00
	call l6e85
	ld a,#0a
	ld c,#00
	jp l6e85
;
.play_music
.l6a7d
;
	ld hl,l6eab
	dec (hl)
	ld ix,l6f90
	ld bc,l6f9e
	call l6b1f
	ld ix,l6fbe
	ld bc,l6fcc
	call l6b1f
	ld ix,l6fec
	ld bc,l6ffa
	call l6b1f
	ld hl,l6ea4
	ld de,l6eab
	ld b,#06
	call l6afc
	ld b,#07
	call l6afc
	ld b,#0b
	call l6afc
	ld b,#0d
	call l6afc
	ld de,l6eab
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6faf
	call l6ad5
	ld hl,l6fdd
	call l6ad5
	ld hl,l700b
.l6ad5
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
	jr nz,l6aea
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6aea
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
.l6afc
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6e85
.l6b07
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6e85
.l6b1f
	ld a,(l6eab)
	or a
	jp nz,l6bd7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6bd7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6b07
	or a
	jp z,l6bcc
	ld r,a
	and #7f
	cp #10
	jr c,l6ba7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6d1f
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
	jr z,l6b80
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6b80
	rrca
	ld c,a
	ld hl,l7020
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
	jr z,l6b9f
	ld (ix+#1e),b
.l6b9f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6bc0
.l6ba7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6eb0
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
.l6bc0
	ld a,d
	or a
	jr nz,l6bce
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6bce
.l6bcc
	ld a,(hl)
	inc hl
.l6bce
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6bd7
	ld a,(ix+#17)
	or a
	jr nz,l6bed
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6bed
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6c03
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6c03
	ld a,(ix+#0d)
	or a
	jr z,l6c11
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6c2f
.l6c11
	ld a,(ix+#1a)
	or a
	jp z,l6c36
	ld c,a
	cp #03
	jr nz,l6c1e
	xor a
.l6c1e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6c2f
	ld a,(ix+#18)
	dec c
	jr z,l6c2f
	ld a,(ix+#19)
.l6c2f
	add (ix+#07)
	ld b,d
	call l6d1f
.l6c36
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6c5e
	dec (ix+#1b)
	jr nz,l6c5e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6c96
.l6c5e
	ld a,(ix+#29)
	or a
	jr z,l6c96
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6c8d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6c84
	ld (ix+#29),#ff
	jr l6c8d
.l6c84
	cp (ix+#2b)
	jr nz,l6c8d
	ld (ix+#29),#01
.l6c8d
	ld b,d
	or a
	jp p,l6c93
	dec b
.l6c93
	ld c,a
	jr l6ca1
.l6c96
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6ca1
	pop hl
	bit 7,(ix+#14)
	jr z,l6caa
	ld h,d
	ld l,d
.l6caa
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6e85
	ld c,h
	ld a,(ix+#02)
	call l6e85
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6cfd
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6cec
	dec (ix+#09)
	jr nz,l6cec
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6ce4
	xor a
	jr l6ce9
.l6ce4
	cp #10
	jr nz,l6ce9
	dec a
.l6ce9
	ld (ix+#1e),a
.l6cec
	ld a,b
	sub (ix+#1e)
	jr nc,l6cf3
	xor a
.l6cf3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6e85
.l6cfd
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6eac)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6d1b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6d1b
	ld (l6eac),hl
	ret
.l6d1f
	ld hl,l6ece
	cp #61
	jr nc,l6d29
	add a
	ld c,a
	add hl,bc
.l6d29
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6e58
	ld (ix+#1e),a
	jp l6bc0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6d51
	neg
.l6d51
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
	jp l6bc0
	dec b
	jr l6d6b
	inc b
.l6d6b
	call l6e58
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6bc0
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
	jp l6e3d
	ld a,(hl)
	inc hl
	or a
	jr z,l6dad
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
.l6dad
	ld (ix+#29),a
	jp l6bc0
	dec hl
	ld a,(hl)
	and #0f
	ld (l6eaf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6eae),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6bc0
	ld a,(hl)
	or a
	jr z,l6dde
	call l6e5a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6bc0
.l6dde
	ld hl,#0101
	ld (l6eaa),hl
	jp l6bc0
	call l6e58
	ld (ix+#1e),a
	jp l6bc0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6e69
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6e69
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6bc0
	ld a,(hl)
	inc hl
	ld (l6ea9),a
	jp l6bc0
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
	jp l6bc0
	call l6e58
	add a
.l6e3d
	ld b,#00
	ld c,a
	push hl
	ld hl,l70a0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6bc0
.l6e58
	ld a,(hl)
	inc hl
.l6e5a
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
.l6e69
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7020
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
.l6e85
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
.l6ea4
	ret
.l6eac equ $ + 7
.l6eab equ $ + 6
.l6eaa equ $ + 5
.l6ea9 equ $ + 4
.l6ea7 equ $ + 2
.l6ea5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6eaf equ $ + 2
.l6eae equ $ + 1
	db #38,#00,#00
.l6eb0
	db #33,#6d,#46,#6d,#45,#6d,#6a,#6d
	db #67,#6d,#7a,#6d,#8b,#6d,#b3,#6d
	db #cd,#6d,#b3,#6d,#e7,#6d,#f0,#6d
	db #12,#6e,#1a,#6e,#39,#6e
.l6ece
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
.l6f94 equ $ + 4
.l6f90
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6f9e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6faf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fbe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6fc2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6fcc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fdd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fec equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6ff0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ffa equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l700b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l701a equ $ + 2
	db #00,#00,#00,#75,#45,#75,#8a,#75
.l7020
	db #c0,#70,#00,#71,#20,#71,#07,#00
	db #40,#71,#80,#71,#a0,#71,#1a,#00
	db #c0,#71,#00,#72,#20,#72,#08,#18
	db #40,#72,#80,#72,#20,#72,#14,#0c
	db #a0,#72,#e0,#72,#20,#72,#48,#00
	db #00,#73,#40,#73,#60,#73,#09,#00
	db #b2,#29,#b2,#29,#b2,#29,#00,#00
	db #00,#73,#80,#73,#20,#72,#00,#00
	db #b2,#29,#b2,#29,#b2,#29,#00,#00
	db #a0,#73,#e0,#73,#00,#74,#00,#00
	db #20,#74,#60,#74,#20,#72,#16,#0a
	db #00,#73,#80,#74,#20,#72,#14,#09
	db #a0,#74,#e0,#74,#20,#72,#00,#00
	db #b2,#29,#b2,#29,#b2,#29,#00,#00
	db #b2,#29,#b2,#29,#b2,#29,#00,#00
	db #b2,#29,#b2,#29,#b2,#29,#00,#00
.l70a0
	db #b2,#29,#b2,#29,#b2,#29,#b2,#29
	db #b2,#29,#b2,#29,#b2,#29,#b2,#29
	db #b2,#29,#b2,#29,#b2,#29,#b2,#29
	db #b2,#29,#b2,#29,#b2,#29,#b2,#29
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #11,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #04,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #09,#09,#0a,#0a,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#b0,#00,#e0,#00,#10,#01
	db #40,#01,#70,#01,#a0,#01,#d0,#01
	db #00,#02,#00,#02,#30,#02,#60,#02
	db #70,#02,#80,#02,#90,#02,#a0,#02
	db #b0,#02,#b0,#02,#c0,#02,#e0,#02
	db #e0,#02,#e0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#01,#00,#00
	db #01,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#66,#76,#00,#29,#76,#00,#a5
	db #76,#00,#e7,#76,#00,#3e,#77,#00
	db #cf,#75,#00,#cf,#75,#00,#04,#76
	db #00,#cf,#75,#00,#cf,#75,#00,#04
	db #76,#00,#85,#77,#00,#b9,#77,#00
	db #fb,#77,#00,#b9,#77,#00,#fb,#77
	db #00,#cf,#75,#00,#cf,#75,#00,#04
	db #76,#00,#cf,#75,#00,#cf,#75,#00
	db #04,#76,#80,#00,#75,#00,#2b,#79
	db #00,#ca,#78,#00,#8c,#79,#00,#ed
	db #79,#00,#4e,#7a,#00,#49,#78,#00
	db #49,#78,#00,#49,#78,#00,#49,#78
	db #00,#49,#78,#00,#49,#78,#00,#af
	db #7a,#00,#10,#7b,#00,#71,#7b,#00
	db #10,#7b,#00,#71,#7b,#00,#49,#78
	db #00,#49,#78,#00,#49,#78,#00,#49
	db #78,#00,#49,#78,#00,#49,#78,#80
	db #45,#75,#00,#6a,#7c,#00,#33,#7c
	db #00,#9b,#7c,#00,#9b,#7c,#00,#9b
	db #7c,#00,#d2,#7b,#00,#d2,#7b,#00
	db #d2,#7b,#00,#d2,#7b,#00,#d2,#7b
	db #00,#d2,#7b,#00,#9b,#7c,#00,#9b
	db #7c,#00,#9b,#7c,#00,#9b,#7c,#00
	db #9b,#7c,#00,#d2,#7b,#00,#d2,#7b
	db #00,#d2,#7b,#00,#d2,#7b,#00,#d2
	db #7b,#00,#d2,#7b,#80,#8a,#75,#51
	db #30,#0a,#4f,#30,#02,#51,#30,#02
	db #4f,#30,#02,#53,#30,#0a,#53,#30
	db #08,#51,#30,#04,#4f,#30,#02,#51
	db #30,#06,#4c,#30,#02,#4f,#30,#02
	db #cc,#30,#4e,#30,#03,#4c,#30,#02
	db #4f,#30,#02,#cc,#30,#4e,#30,#03
	db #4c,#30,#02,#ff,#53,#30,#02,#51
	db #30,#04,#4f,#30,#02,#51,#30,#02
	db #4f,#30,#02,#53,#30,#14,#53,#30
	db #02,#51,#30,#04,#4f,#30,#02,#51
	db #30,#02,#4f,#30,#02,#53,#30,#14
	db #ff,#47,#3b,#23,#4b,#3b,#23,#4c
	db #3b,#43,#4b,#3b,#23,#4c,#3b,#43
	db #4b,#3b,#43,#44,#3b,#23,#45,#3b
	db #43,#4b,#3b,#23,#4c,#3b,#43,#4b
	db #3b,#43,#53,#ab,#23,#53,#ab,#23
	db #53,#ab,#23,#53,#ab,#23,#53,#ab
	db #23,#53,#ab,#23,#51,#ab,#23,#51
	db #ab,#43,#51,#ab,#c3,#ff,#00,#02
	db #4b,#3b,#23,#4c,#3b,#43,#4b,#3b
	db #23,#4c,#3b,#43,#4b,#3b,#63,#4b
	db #3b,#23,#4c,#3b,#43,#4e,#3b,#23
	db #4b,#3b,#23,#45,#3b,#43,#4b,#3b
	db #23,#4c,#3b,#43,#4b,#3b,#23,#4c
	db #3b,#43,#4b,#3b,#63,#4b,#3b,#23
	db #4c,#3b,#43,#4e,#3b,#23,#4b,#3b
	db #23,#45,#3b,#23,#ff,#00,#02,#4a
	db #30,#02,#4e,#30,#02,#4c,#30,#02
	db #4e,#30,#02,#4a,#30,#02,#4e,#30
	db #02,#4c,#30,#02,#51,#30,#12,#53
	db #70,#02,#53,#70,#02,#53,#70,#02
	db #53,#70,#02,#53,#70,#02,#53,#70
	db #02,#53,#70,#02,#53,#70,#02,#51
	db #70,#02,#51,#70,#02,#51,#70,#04
	db #53,#70,#02,#53,#70,#04,#ff,#00
	db #02,#4a,#b0,#02,#4f,#b0,#02,#4e
	db #b0,#02,#4f,#b0,#02,#4c,#b0,#02
	db #4f,#b0,#02,#4c,#b0,#02,#53,#b0
	db #02,#51,#b0,#04,#4f,#b0,#02,#51
	db #b0,#02,#4f,#b0,#02,#51,#b0,#02
	db #4f,#b0,#04,#4a,#b0,#02,#4f,#b0
	db #02,#4e,#b0,#02,#4f,#b0,#02,#4c
	db #b0,#02,#4f,#b0,#02,#4c,#b0,#02
	db #53,#b0,#02,#51,#b0,#04,#4f,#b0
	db #02,#51,#b0,#02,#4f,#b0,#02,#51
	db #b0,#02,#4f,#b0,#02,#ff,#53,#a0
	db #0a,#53,#a0,#02,#53,#a0,#02,#53
	db #a0,#04,#51,#a0,#04,#4f,#a0,#02
	db #51,#a0,#06,#4c,#a0,#02,#4c,#30
	db #02,#cc,#30,#4f,#30,#03,#4c,#30
	db #02,#4f,#30,#02,#4c,#30,#02,#4f
	db #30,#02,#51,#30,#02,#4c,#30,#02
	db #cc,#30,#4f,#30,#03,#4c,#30,#02
	db #4f,#30,#02,#4c,#30,#02,#4f,#30
	db #02,#51,#30,#02,#ff,#4f,#c0,#0a
	db #4e,#c0,#02,#4f,#c0,#02,#51,#c0
	db #04,#4e,#c0,#02,#4e,#c0,#02,#4e
	db #c0,#02,#4e,#c0,#02,#4c,#c0,#02
	db #4e,#c0,#02,#4f,#c0,#0c,#4e,#70
	db #02,#50,#70,#02,#51,#70,#0c,#4e
	db #70,#02,#50,#70,#02,#51,#70,#02
	db #ff,#00,#02,#4e,#c0,#04,#4e,#c0
	db #02,#4e,#c0,#02,#4c,#c0,#02,#4e
	db #c0,#02,#4f,#c0,#0c,#4e,#c0,#02
	db #4f,#c0,#02,#51,#c0,#04,#4e,#c0
	db #04,#4e,#c0,#02,#4e,#c0,#02,#4c
	db #c0,#02,#4e,#c0,#02,#53,#c0,#04
	db #4e,#c0,#04,#4e,#c0,#02,#4e,#c0
	db #02,#4c,#c0,#02,#4e,#c0,#02,#53
	db #c0,#02,#ff,#00,#02,#51,#c0,#02
	db #4f,#c0,#06,#4e,#c0,#02,#4f,#c0
	db #02,#51,#c0,#04,#4e,#c0,#04,#4e
	db #c0,#02,#4e,#c0,#02,#4c,#c0,#02
	db #4e,#c0,#02,#4f,#c0,#02,#51,#70
	db #02,#4e,#70,#04,#4e,#70,#02,#4e
	db #70,#02,#4c,#70,#02,#4e,#70,#02
	db #4f,#70,#02,#51,#70,#02,#4e,#70
	db #04,#4e,#70,#02,#4e,#70,#02,#4c
	db #70,#02,#4e,#70,#02,#4f,#70,#02
	db #ff,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#ab,#c0,#ab,#c0,#b7,#c0,#b7
	db #c0,#ab,#c0,#ab,#c0,#b7,#c0,#b7
	db #c0,#ab,#c0,#ab,#c0,#b7,#c0,#b7
	db #c0,#ab,#c0,#ab,#c0,#b7,#c0,#b7
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#b2,#c0,#b2,#c0,#be,#c0,#be
	db #c0,#af,#c0,#af,#c0,#bb,#c0,#bb
	db #c0,#af,#c0,#af,#c0,#bb,#c0,#bb
	db #c0,#af,#c0,#af,#c0,#bb,#c0,#bb
	db #c0,#af,#c0,#af,#c0,#bb,#c0,#bb
	db #c0,#ff,#2f,#20,#02,#3b,#20,#02
	db #2f,#20,#02,#3b,#20,#02,#2f,#20
	db #02,#3b,#20,#02,#2f,#20,#02,#3b
	db #20,#02,#32,#20,#02,#3e,#20,#02
	db #32,#20,#02,#3e,#20,#02,#32,#20
	db #02,#3e,#20,#02,#32,#20,#02,#3e
	db #20,#02,#2b,#20,#02,#37,#20,#02
	db #2b,#20,#02,#37,#20,#02,#2b,#20
	db #02,#37,#20,#02,#2b,#20,#02,#37
	db #20,#02,#32,#20,#02,#3e,#20,#02
	db #32,#20,#02,#3e,#20,#02,#32,#20
	db #02,#3e,#20,#02,#32,#20,#02,#3e
	db #20,#02,#ff,#2b,#20,#02,#37,#20
	db #02,#2b,#20,#02,#37,#20,#02,#2b
	db #20,#02,#37,#20,#02,#2b,#20,#02
	db #37,#20,#02,#32,#20,#02,#3e,#20
	db #02,#32,#20,#02,#3e,#20,#02,#32
	db #20,#02,#3e,#20,#02,#32,#20,#02
	db #3e,#20,#02,#2b,#20,#02,#37,#20
	db #02,#2b,#20,#02,#37,#20,#02,#2b
	db #20,#02,#37,#20,#02,#2b,#20,#02
	db #37,#20,#02,#32,#20,#02,#3e,#20
	db #02,#32,#20,#02,#3e,#20,#02,#32
	db #20,#02,#3e,#20,#02,#32,#20,#02
	db #3e,#20,#02,#ff,#2f,#40,#02,#3b
	db #40,#02,#2f,#40,#02,#3b,#40,#02
	db #2f,#40,#02,#3b,#40,#02,#2f,#40
	db #02,#3b,#40,#02,#32,#40,#02,#3e
	db #40,#02,#32,#40,#02,#3e,#40,#02
	db #32,#40,#02,#3e,#40,#02,#32,#40
	db #02,#3e,#40,#02,#2b,#40,#02,#37
	db #40,#02,#2b,#40,#02,#37,#40,#02
	db #2b,#40,#02,#37,#40,#02,#2b,#40
	db #02,#37,#40,#02,#32,#40,#02,#3e
	db #40,#02,#32,#40,#02,#3e,#40,#02
	db #32,#40,#02,#3e,#40,#02,#32,#40
	db #02,#3e,#40,#02,#ff,#2f,#40,#02
	db #3b,#40,#02,#2f,#40,#02,#3b,#40
	db #02,#2f,#40,#02,#3b,#40,#02,#2f
	db #40,#02,#3b,#40,#02,#32,#40,#02
	db #3e,#40,#02,#32,#40,#02,#3e,#40
	db #02,#32,#40,#02,#3e,#40,#02,#32
	db #40,#02,#3e,#40,#02,#2f,#40,#02
	db #3b,#40,#02,#2f,#40,#02,#3b,#40
	db #02,#2f,#40,#02,#3b,#40,#02,#2f
	db #40,#02,#3b,#40,#02,#32,#40,#02
	db #3e,#40,#02,#32,#40,#02,#3e,#40
	db #02,#32,#40,#02,#3e,#40,#02,#32
	db #40,#02,#3e,#40,#02,#ff,#2b,#c0
	db #02,#37,#c0,#02,#2b,#c0,#02,#37
	db #c0,#02,#2b,#c0,#02,#37,#c0,#02
	db #2b,#c0,#02,#37,#c0,#02,#32,#c0
	db #02,#3e,#c0,#02,#32,#c0,#02,#3e
	db #c0,#02,#32,#c0,#02,#3e,#c0,#02
	db #32,#c0,#02,#3e,#c0,#02,#2f,#c0
	db #02,#3b,#c0,#02,#2f,#c0,#02,#3b
	db #c0,#02,#2f,#c0,#02,#3b,#c0,#02
	db #2f,#c0,#02,#3b,#c0,#02,#2f,#c0
	db #02,#3b,#c0,#02,#2f,#c0,#02,#3b
	db #c0,#02,#2f,#c0,#02,#3b,#c0,#02
	db #2f,#c0,#02,#3b,#c0,#02,#ff,#2b
	db #40,#02,#37,#40,#02,#2b,#40,#02
	db #37,#40,#02,#2b,#40,#02,#37,#40
	db #02,#2b,#40,#02,#37,#40,#02,#32
	db #40,#02,#3e,#40,#02,#32,#40,#02
	db #3e,#40,#02,#32,#40,#02,#3e,#40
	db #02,#32,#40,#02,#3e,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#ff
	db #32,#40,#02,#3e,#40,#02,#32,#40
	db #02,#3e,#40,#02,#32,#40,#02,#3e
	db #40,#02,#32,#40,#02,#3e,#40,#02
	db #2b,#40,#02,#37,#40,#02,#2b,#40
	db #02,#37,#40,#02,#2b,#40,#02,#37
	db #40,#02,#2b,#40,#02,#37,#40,#02
	db #32,#40,#02,#3e,#40,#02,#32,#40
	db #02,#3e,#40,#02,#32,#40,#02,#3e
	db #40,#02,#32,#40,#02,#3e,#40,#02
	db #32,#40,#02,#3e,#40,#02,#32,#40
	db #02,#3e,#40,#02,#32,#40,#02,#3e
	db #40,#02,#32,#40,#02,#3e,#40,#02
	db #ff,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#28,#40,#02,#34,#40
	db #02,#32,#40,#02,#3e,#40,#02,#32
	db #40,#02,#3e,#40,#02,#32,#40,#02
	db #3e,#40,#02,#32,#40,#02,#3e,#40
	db #02,#32,#40,#02,#3e,#40,#02,#32
	db #40,#02,#3e,#40,#02,#32,#40,#02
	db #3e,#40,#02,#32,#40,#02,#3e,#40
	db #02,#32,#40,#02,#3e,#40,#02,#32
	db #40,#02,#3e,#40,#02,#32,#40,#02
	db #3e,#40,#02,#32,#40,#02,#3e,#40
	db #02,#ff,#1c,#9b,#23,#32,#1b,#27
	db #74,#5b,#23,#32,#1b,#25,#1c,#9b
	db #23,#32,#1b,#27,#74,#5b,#23,#32
	db #1b,#25,#1c,#9b,#23,#32,#1b,#27
	db #74,#5b,#23,#32,#1b,#25,#1c,#9b
	db #23,#32,#1b,#27,#74,#5b,#23,#32
	db #1b,#25,#1c,#9b,#23,#32,#1b,#27
	db #74,#5b,#23,#32,#1b,#25,#1c,#9b
	db #23,#32,#1b,#27,#74,#5b,#23,#32
	db #1b,#25,#1c,#9b,#23,#32,#1b,#27
	db #74,#5b,#23,#32,#1b,#25,#1c,#9b
	db #23,#32,#1b,#27,#74,#5b,#23,#32
	db #1b,#25,#ff,#40,#0b,#43,#74,#5b
	db #43,#40,#0b,#43,#74,#5b,#43,#40
	db #0b,#43,#74,#5b,#43,#40,#0b,#43
	db #74,#5b,#43,#40,#0b,#43,#74,#5b
	db #43,#40,#0b,#43,#74,#5b,#23,#47
	db #2b,#24,#40,#0b,#23,#45,#2b,#24
	db #74,#5b,#43,#40,#0b,#43,#74,#5b
	db #43,#ff,#40,#0b,#43,#74,#5b,#43
	db #40,#0b,#43,#74,#5b,#43,#40,#0b
	db #43,#74,#5b,#43,#40,#0b,#43,#74
	db #5b,#43,#40,#0b,#43,#74,#5b,#43
	db #40,#0b,#43,#74,#5b,#43,#40,#0b
	db #43,#74,#5b,#43,#40,#0b,#43,#74
	db #5b,#43,#ff,#40,#00,#04,#74,#50
	db #04,#40,#00,#04,#74,#50,#04,#40
	db #00,#04,#74,#50,#04,#40,#00,#04
	db #74,#50,#04,#40,#00,#04,#74,#50
	db #04,#40,#00,#04,#74,#50,#04,#40
	db #00,#04,#74,#50,#04,#40,#00,#04
	db #74,#50,#04,#ff
;
.music_info
	db "Only For Your Eyes 2 Megademo - No End (1995)(Ast System)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
