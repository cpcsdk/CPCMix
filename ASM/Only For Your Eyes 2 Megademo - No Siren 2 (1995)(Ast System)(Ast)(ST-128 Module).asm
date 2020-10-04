; Music of Only For Your Eyes 2 Megademo - No Siren 2 (1995)(Ast System)(Ast)(ST-128 Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFYE2MN2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6682

	read "music_header.asm"

	jp l668b
	jp l671f
	jp l6703
;
.init_music
.l668b
;
	xor a
	ld hl,l6c36
	call l66fc
	ld hl,l6c64
	call l66fc
	ld hl,l6c92
	call l66fc
	ld ix,l6c32
	ld iy,l6cbc
	ld de,#002e
	ld b,#03
.l66ab
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
	djnz l66ab
	ld hl,l6b4b
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
	ld (l6b47),hl
	ld (l6b49),hl
	ld a,#0c
	ld c,d
	call l6b27
	ld a,#0d
	ld c,d
	jp l6b27
.l66fc
	ld b,#2a
.l66fe
	ld (hl),a
	inc hl
	djnz l66fe
	ret
;
.stop_music
.l6703
;
	ld a,#07
	ld c,#3f
	call l6b27
	ld a,#08
	ld c,#00
	call l6b27
	ld a,#09
	ld c,#00
	call l6b27
	ld a,#0a
	ld c,#00
	jp l6b27
;
.play_music
.l671f
;
	ld hl,l6b4d
	dec (hl)
	ld ix,l6c32
	ld bc,l6c40
	call l67c1
	ld ix,l6c60
	ld bc,l6c6e
	call l67c1
	ld ix,l6c8e
	ld bc,l6c9c
	call l67c1
	ld hl,l6b46
	ld de,l6b4d
	ld b,#06
	call l679e
	ld b,#07
	call l679e
	ld b,#0b
	call l679e
	ld b,#0d
	call l679e
	ld de,l6b4d
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6c51
	call l6777
	ld hl,l6c7f
	call l6777
	ld hl,l6cad
.l6777
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
	jr nz,l678c
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l678c
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
.l679e
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6b27
.l67a9
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6b27
.l67c1
	ld a,(l6b4d)
	or a
	jp nz,l6879
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6879
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l67a9
	or a
	jp z,l686e
	ld r,a
	and #7f
	cp #10
	jr c,l6849
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l69c1
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
	jr z,l6822
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6822
	rrca
	ld c,a
	ld hl,l6cc2
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
	jr z,l6841
	ld (ix+#1e),b
.l6841
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6862
.l6849
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6b52
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
.l6862
	ld a,d
	or a
	jr nz,l6870
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6870
.l686e
	ld a,(hl)
	inc hl
.l6870
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6879
	ld a,(ix+#17)
	or a
	jr nz,l688f
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l688f
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l68a5
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l68a5
	ld a,(ix+#0d)
	or a
	jr z,l68b3
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l68d1
.l68b3
	ld a,(ix+#1a)
	or a
	jp z,l68d8
	ld c,a
	cp #03
	jr nz,l68c0
	xor a
.l68c0
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l68d1
	ld a,(ix+#18)
	dec c
	jr z,l68d1
	ld a,(ix+#19)
.l68d1
	add (ix+#07)
	ld b,d
	call l69c1
.l68d8
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6900
	dec (ix+#1b)
	jr nz,l6900
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6938
.l6900
	ld a,(ix+#29)
	or a
	jr z,l6938
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l692f
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6926
	ld (ix+#29),#ff
	jr l692f
.l6926
	cp (ix+#2b)
	jr nz,l692f
	ld (ix+#29),#01
.l692f
	ld b,d
	or a
	jp p,l6935
	dec b
.l6935
	ld c,a
	jr l6943
.l6938
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6943
	pop hl
	bit 7,(ix+#14)
	jr z,l694c
	ld h,d
	ld l,d
.l694c
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6b27
	ld c,h
	ld a,(ix+#02)
	call l6b27
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l699f
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l698e
	dec (ix+#09)
	jr nz,l698e
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6986
	xor a
	jr l698b
.l6986
	cp #10
	jr nz,l698b
	dec a
.l698b
	ld (ix+#1e),a
.l698e
	ld a,b
	sub (ix+#1e)
	jr nc,l6995
	xor a
.l6995
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6b27
.l699f
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6b4e)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l69bd
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l69bd
	ld (l6b4e),hl
	ret
.l69c1
	ld hl,l6b70
	cp #61
	jr nc,l69cb
	add a
	ld c,a
	add hl,bc
.l69cb
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l69d5
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6afa
	ld (ix+#1e),a
	jp l6862
.l69e7
	dec b
.l69e8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l69f3
	neg
.l69f3
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
	jp l6862
.l6a09
	dec b
	jr l6a0d
.l6a0c
	inc b
.l6a0d
	call l6afa
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6862
.l6a1c
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
	jp l6adf
.l6a2d
	ld a,(hl)
	inc hl
	or a
	jr z,l6a4f
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
.l6a4f
	ld (ix+#29),a
	jp l6862
.l6a55
	dec hl
	ld a,(hl)
	and #0f
	ld (l6b51),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6b50),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6862
.l6a6f
	ld a,(hl)
	or a
	jr z,l6a80
	call l6afc
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6862
.l6a80
	ld hl,#0101
	ld (l6b4c),hl
	jp l6862
.l6a89
	call l6afa
	ld (ix+#1e),a
	jp l6862
.l6a92
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6b0b
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6b0b
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6862
.l6ab4
	ld a,(hl)
	inc hl
	ld (l6b4b),a
	jp l6862
.l6abc
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
	jp l6862
.l6adb
	call l6afa
	add a
.l6adf
	ld b,#00
	ld c,a
	push hl
	ld hl,l6d42
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6862
.l6afa
	ld a,(hl)
	inc hl
.l6afc
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
.l6b0b
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6cc2
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret

	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34

.l6b27
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
.l6b46
	ret
.l6b4e equ $ + 7
.l6b4d equ $ + 6
.l6b4c equ $ + 5
.l6b4b equ $ + 4
.l6b49 equ $ + 2
.l6b47
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b51 equ $ + 2
.l6b50 equ $ + 1
	db #38,#00,#00
.l6b52
	dw l69d5,l69e8,l69e7,l6a0c
	dw l6a09,l6a1c,l6a2d,l6a55
	dw l6a6f,l6a55,l6a89,l6a92
	dw l6ab4,l6abc,l6adb
.l6b72 equ $ + 2
.l6b70
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
.l6c36 equ $ + 4
.l6c32
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6c40 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c51 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c60 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6c64 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6c6e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c7f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c8e equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6c92
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c9c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cad equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cbc equ $ + 2
	db #00,#00,#02,#70,#23,#70,#44,#70
.l6cc2
	db #62,#6d,#a2,#6d,#c2,#6d,#00,#00
	db #e2,#6d,#22,#6e,#42,#6e,#00,#00
	db #62,#6e,#a2,#6e,#c2,#6e,#9a,#06
	db #62,#6d,#e2,#6e,#c2,#6d,#00,#00
	db #02,#6f,#42,#6f,#62,#6f,#c0,#00
	db #82,#6f,#c2,#6f,#c2,#6d,#08,#18
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
	db #54,#26,#54,#26,#54,#26,#00,#00
.l6d42
	db #e2,#6f,#54,#26,#54,#26,#54,#26
	db #54,#26,#54,#26,#54,#26,#54,#26
	db #54,#26,#54,#26,#54,#26,#54,#26
	db #54,#26,#54,#26,#54,#26,#54,#26
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
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
	db #09,#0a,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #00,#65,#70,#00,#25,#71,#00,#25
	db #71,#00,#25,#71,#00,#86,#71,#00
	db #86,#71,#00,#e7,#71,#00,#e7,#71
	db #00,#86,#71,#00,#86,#71,#80,#02
	db #70,#00,#65,#70,#00,#48,#72,#00
	db #48,#72,#00,#48,#72,#00,#08,#73
	db #00,#08,#73,#00,#c8,#73,#00,#c8
	db #73,#00,#08,#73,#00,#08,#73,#80
	db #23,#70,#00,#65,#70,#00,#48,#72
	db #00,#88,#74,#00,#88,#74,#00,#e8
	db #74,#00,#e8,#74,#00,#9e,#75,#00
	db #48,#75,#00,#e8,#74,#00,#e8,#74
	db #80,#44,#70,#37,#31,#10,#0b,#13
	db #37,#3b,#13,#43,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#37,#3b,#13,#43
	db #3b,#13,#35,#3b,#13,#31,#2b,#10
	db #41,#3b,#13,#41,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#35,#3b,#13,#41
	db #3b,#13,#32,#3b,#13,#31,#2b,#10
	db #3e,#3b,#13,#3e,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#32,#3b,#13,#3e
	db #3b,#13,#33,#3b,#13,#31,#2b,#10
	db #3f,#3b,#13,#3f,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#33,#3b,#13,#3f
	db #3b,#13,#37,#3b,#13,#31,#2b,#10
	db #43,#3b,#13,#43,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#37,#3b,#13,#43
	db #3b,#13,#35,#3b,#13,#31,#2b,#10
	db #41,#3b,#13,#41,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#35,#3b,#13,#41
	db #3b,#13,#32,#3b,#13,#31,#2b,#10
	db #3e,#3b,#13,#3e,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#32,#3b,#13,#3e
	db #3b,#13,#33,#3b,#13,#31,#2b,#10
	db #3f,#3b,#13,#3f,#3b,#13,#31,#4b
	db #10,#31,#2b,#10,#33,#3b,#13,#3f
	db #3b,#13,#ff,#28,#11,#20,#43,#0f
	db #20,#43,#0f,#20,#43,#0f,#20,#28
	db #11,#20,#41,#0f,#20,#41,#0f,#20
	db #41,#0f,#20,#28,#11,#20,#3e,#0f
	db #20,#3e,#0f,#20,#3e,#0f,#20,#28
	db #11,#20,#3f,#0f,#20,#3f,#0f,#20
	db #3f,#0f,#20,#28,#11,#20,#43,#0f
	db #20,#43,#0f,#20,#43,#0f,#20,#28
	db #11,#20,#41,#0f,#20,#41,#0f,#20
	db #41,#0f,#20,#28,#11,#20,#3e,#0f
	db #20,#3e,#0f,#20,#3e,#0f,#20,#28
	db #11,#20,#3f,#0f,#20,#3f,#0f,#20
	db #3f,#0f,#20,#ff,#28,#11,#20,#45
	db #0f,#20,#45,#0f,#20,#45,#0f,#20
	db #28,#11,#20,#43,#0f,#20,#43,#0f
	db #20,#43,#0f,#20,#28,#11,#20,#40
	db #0f,#20,#40,#0f,#20,#40,#0f,#20
	db #28,#11,#20,#41,#0f,#20,#41,#0f
	db #20,#41,#0f,#20,#28,#11,#20,#45
	db #0f,#20,#45,#0f,#20,#45,#0f,#20
	db #28,#11,#20,#43,#0f,#20,#43,#0f
	db #20,#43,#0f,#20,#28,#11,#20,#40
	db #0f,#20,#40,#0f,#20,#40,#0f,#20
	db #28,#11,#20,#41,#0f,#20,#41,#0f
	db #20,#41,#0f,#20,#ff,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#28,#11,#20
	db #41,#0f,#20,#41,#0f,#20,#41,#0f
	db #20,#28,#11,#20,#43,#0f,#20,#43
	db #0f,#20,#43,#0f,#20,#ff,#37,#3b
	db #13,#0b,#13,#37,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#32,#3b,#13
	db #31,#2b,#10,#3e,#3b,#13,#3e,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#32
	db #3b,#13,#3e,#3b,#13,#33,#3b,#13
	db #31,#2b,#10,#3f,#3b,#13,#3f,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#33
	db #3b,#13,#3f,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#32,#3b,#13
	db #31,#2b,#10,#3e,#3b,#13,#3e,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#32
	db #3b,#13,#3e,#3b,#13,#33,#3b,#13
	db #31,#2b,#10,#3f,#3b,#13,#3f,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#33
	db #3b,#13,#3f,#3b,#13,#ff,#39,#3b
	db #13,#0b,#13,#39,#3b,#13,#45,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#39
	db #3b,#13,#45,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#34,#3b,#13
	db #31,#2b,#10,#40,#3b,#13,#40,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#34
	db #3b,#13,#34,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#39,#3b,#13
	db #31,#2b,#10,#45,#3b,#13,#45,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#39
	db #3b,#13,#45,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#34,#3b,#13
	db #31,#2b,#10,#40,#3b,#13,#40,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#34
	db #3b,#13,#40,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#ff,#35,#3b
	db #13,#0b,#13,#35,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#41,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#35,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#37,#3b,#13
	db #31,#2b,#10,#43,#3b,#13,#43,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#37
	db #3b,#13,#43,#3b,#13,#35,#3b,#13
	db #31,#2b,#10,#35,#3b,#13,#41,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#35
	db #3b,#13,#41,#3b,#13,#3b,#3b,#13
	db #31,#2b,#10,#47,#3b,#13,#47,#3b
	db #13,#31,#4b,#10,#31,#2b,#10,#3b
	db #3b,#13,#47,#3b,#13,#ff,#46,#5b
	db #60,#46,#5b,#10,#b1,#20,#43,#5b
	db #10,#45,#5b,#10,#43,#5b,#10,#b1
	db #20,#41,#5b,#10,#b1,#20,#40,#5b
	db #10,#41,#5b,#70,#3e,#5b,#10,#b1
	db #20,#3f,#5b,#10,#41,#5b,#10,#41
	db #5b,#10,#43,#5b,#50,#45,#5b,#10
	db #46,#5b,#50,#46,#5b,#10,#b1,#20
	db #46,#5b,#10,#48,#5b,#10,#45,#5b
	db #10,#b1,#20,#43,#5b,#10,#b1,#20
	db #40,#5b,#10,#41,#5b,#90,#43,#5b
	db #40,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#ff,#48,#5b
	db #60,#48,#5b,#10,#b1,#20,#45,#5b
	db #10,#47,#5b,#10,#45,#5b,#10,#b1
	db #20,#43,#5b,#10,#b1,#20,#42,#5b
	db #10,#43,#5b,#70,#40,#5b,#10,#b1
	db #20,#41,#5b,#10,#43,#5b,#10,#43
	db #5b,#10,#45,#5b,#50,#47,#5b,#10
	db #48,#5b,#50,#48,#5b,#10,#b1,#20
	db #48,#5b,#10,#4a,#5b,#10,#47,#5b
	db #10,#b1,#20,#45,#5b,#10,#b1,#20
	db #42,#5b,#10,#43,#5b,#90,#45,#5b
	db #40,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#ff,#3c,#5b
	db #30,#40,#5b,#30,#41,#5b,#20,#41
	db #5b,#10,#43,#5b,#20,#45,#5b,#10
	db #47,#5b,#10,#43,#5b,#20,#43,#5b
	db #10,#45,#5b,#60,#43,#5b,#20,#47
	db #5b,#60,#47,#5b,#20,#48,#5b,#40
	db #47,#5b,#10,#b1,#20,#45,#5b,#10
	db #b1,#20,#45,#5b,#10,#47,#5b,#30
	db #43,#5b,#40,#41,#5b,#40,#45,#5b
	db #40,#45,#5b,#10,#47,#5b,#10,#44
	db #5b,#20,#43,#5b,#10,#45,#5b,#10
	db #47,#5b,#20,#ff,#3c,#5b,#30,#40
	db #5b,#30,#41,#5b,#20,#41,#5b,#10
	db #43,#5b,#20,#45,#5b,#10,#47,#5b
	db #10,#43,#5b,#20,#43,#5b,#10,#45
	db #5b,#60,#43,#5b,#20,#47,#5b,#60
	db #47,#5b,#20,#48,#5b,#40,#47,#5b
	db #10,#b1,#20,#45,#5b,#10,#b1,#20
	db #45,#5b,#10,#47,#5b,#30,#43,#5b
	db #40,#40,#5b,#10,#41,#5b,#30,#40
	db #5b,#10,#b1,#20,#3c,#5b,#10,#b1
	db #20,#3c,#5b,#10,#3e,#5b,#30,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #02,#12,#01,#ff
;
.music_info
	db "Only For Your Eyes 2 Megademo - No Siren 2 (1995)(Ast System)(Ast)",0
	db "ST-128 Module",0

	read "music_end.asm"
