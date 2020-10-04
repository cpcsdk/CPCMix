; Music of 6am Eternal Intro (1993)(Public Domain)(Crown of Beng)(ST-Module)
; Ripped by Megachur the 20/03/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "6AMETERI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #6812

	read "music_header.asm"

	jp l681d
	jp l68a5
	jp l6889

	ld h,(hl)
	inc b
;
.init_music
.l681d
;
	ld b,#03
	ld ix,l6bec
	ld iy,l6b18
	ld de,#001c
.l682a
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
	djnz l682a
	ld a,#04
	ld (l68cd),a
	ld a,d
	ld (l68e1),a
	inc a
	ld (l68c8),a
	ld a,#38
	ld (l68d2),a
	ld a,#ff
	ld (l6b14),a
	ld (l6b15),a
	ld (l6b16),a
	ld (l6b17),a
	ld a,#0c
	ld c,d
	call l6af6
	ld a,#0d
	ld c,d
	jp l6af6
;
.stop_music
.l6889
;
	ld a,#07
	ld c,#3f
	call l6af6
	ld a,#08
	ld c,#00
	call l6af6
	ld a,#09
	ld c,#00
	call l6af6
	ld a,#0a
	ld c,#00
	jp l6af6
;
.play_music
.l68a5
;
	ld hl,l68c8
	dec (hl)
	ld ix,l6bec
	ld bc,l6bfa
	call l695b
	ld ix,l6c08
	ld bc,l6c16
	call l695b
	ld ix,l6c24
	ld bc,l6c32
	call l695b
.l68c8 equ $ + 1
	ld a,#01
	or a
	jr nz,l68d1
.l68cd equ $ + 1
	ld a,#04
	ld (l68c8),a
.l68d2 equ $ + 1
.l68d1
	ld a,#38
	ld hl,l6b15
	cp (hl)
	jr z,l68e0
	ld (hl),a
	ld c,a
	ld a,#07
	call l6af6
.l68e1 equ $ + 1
.l68e0
	ld a,#00
	ld hl,l6b14
	cp (hl)
	jr z,l68ef
	ld (hl),a
	ld c,a
	ld a,#06
	call l6af6
.l68f0 equ $ + 1
.l68ef
	ld a,#00
	ld hl,l6b16
	cp (hl)
	jr z,l68fe
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6af6
.l68ff equ $ + 1
.l68fe
	ld a,#00
	ld hl,l6b17
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6af6
.l690c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l6a0c
.l691b
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
	jp l6af6
.l6935
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l694a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l694a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l696e
.l695b
	ld a,(l68c8)
	or a
	jp nz,l6a0c
	dec (ix+#06)
	jp nz,l6a0c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l696e
	ld a,(hl)
	or a
	jr z,l690c
	cp #fe
	jr z,l691b
	cp #ff
	jr z,l6935
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6b1e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l69aa
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l69aa
	and #7f
	ld (ix+#06),a
	jr l69fd
.l69aa
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l69be
	ld (ix+#05),a
	ld (ix+#0a),d
.l69be
	add a
	add a
	add a
	ld e,a
	ld hl,l6c54
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
	jr z,l69fd
	cp #f0
	jp z,l6ab2
	cp #d0
	jp z,l6ace
	cp #b0
	jp z,l6ad6
	cp #80
	jp nc,l6ade
	cp #10
	jr nz,l69fd
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l69fd
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l6a0c
	ld a,(ix+#17)
	or a
	jr nz,l6a20
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6a20
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6a4b
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6b1e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6a4b
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
	call l6af6
	ld c,h
	ld a,(ix+#03)
	call l6af6
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6a89
	and #0f
	sub (ix+#0a)
	jr nc,l6a7f
	xor a
.l6a7f
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6af6
.l6a89
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
	jr z,l6aa6
	ld b,a
	ld a,c
	ld (l68e1),a
	ld a,b
	sub #40
.l6aa6
	ld (l6aad),a
	ld a,(l68d2)
.l6aad equ $ + 1
	set 4,a
	ld (l68d2),a
	ret
.l6ab2
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6cd4
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l69fd
.l6ace
	inc hl
	ld a,(hl)
	ld (l68cd),a
	jp l69fd
.l6ad6
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l69fd
.l6ade
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l68ff),a
	inc hl
	ld a,(hl)
	ld (l68f0),a
	jp l69fd
.l6af6
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
.l6b17 equ $ + 3
.l6b16 equ $ + 2
.l6b15 equ $ + 1
.l6b14
	db #ff,#ff,#ff,#ff
.l6b18
	dw l7034,l70a3,l7112
.l6b1e
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
.l6bec equ $ + 4
	db #00,#00,#00,#00,#fe,#77,#00,#01
	db #08,#10,#01,#17,#00,#00,#06,#df
.l6bfa equ $ + 2
	db #37,#70,#f4,#6c,#34,#6f,#54,#6d
	db #00,#20,#15,#0b,#f4,#03,#00,#00
.l6c08
	db #b5,#7d,#02,#03,#09,#10,#01,#34
.l6c16 equ $ + 6
	db #00,#00,#03,#e7,#a6,#70,#54,#6f
	db #94,#6f,#54,#6d,#00,#20,#05,#1b
.l6c24 equ $ + 4
	db #be,#00,#00,#00,#e8,#7f,#04,#05
	db #0a,#10,#01,#00,#00,#00,#00,#ef
.l6c32 equ $ + 2
	db #15,#71,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6c54 equ $ + 4
	db #75,#6c,#65,#2e,#f4,#6c,#34,#6d
	db #54,#6d,#00,#00,#f4,#6c,#74,#6d
	db #54,#6d,#00,#00,#37,#ba,#33,#1b
	db #0e,#69,#00,#ff,#ed,#66,#0f,#f9
	db #5e,#c5,#23,#56,#94,#6d,#d4,#6d
	db #f4,#6d,#00,#00,#14,#6e,#54,#6e
	db #74,#6e,#00,#00,#f4,#6c,#94,#6e
	db #b4,#6e,#02,#00,#f4,#6c,#d4,#6e
	db #f4,#6e,#00,#00,#f4,#6c,#14,#6f
	db #54,#6d,#00,#00,#f4,#6c,#34,#6f
	db #54,#6d,#00,#20,#54,#6f,#94,#6f
	db #54,#6d,#00,#20,#54,#6f,#b4,#6f
	db #54,#6d,#00,#20,#ee,#66,#ee,#66
	db #ee,#66,#00,#00,#ee,#66,#ee,#66
	db #ee,#66,#00,#00,#ee,#66,#ee,#66
	db #ee,#66,#00,#00,#ee,#66,#ee,#66
.l6cd4 equ $ + 4
	db #ee,#66,#00,#00,#ee,#66,#d4,#6f
	db #f4,#6f,#14,#70,#ee,#66,#ee,#66
	db #ee,#66,#ee,#66,#ee,#66,#ee,#66
	db #ee,#66,#ee,#66,#ee,#66,#ee,#66
	db #ee,#66,#ee,#66,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#0c,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0d,#0a
	db #07,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#08,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#06
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #90,#06,#d0,#07,#a0,#09,#c0,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #90,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0a,#09
	db #07,#05,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#05,#07,#00
	db #05,#07,#00,#05,#07,#00,#05,#07
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #07,#00,#05,#07,#00,#05,#07,#00
.l7034 equ $ + 4
	db #05,#07,#00,#05,#00,#fe,#77,#00
	db #03,#78,#00,#72,#78,#00,#81,#71
	db #00,#81,#71,#00,#f2,#71,#00,#81
	db #71,#00,#81,#71,#00,#81,#71,#00
	db #81,#71,#00,#81,#71,#00,#63,#72
	db #00,#d4,#72,#00,#d4,#72,#00,#45
	db #73,#00,#b6,#73,#00,#81,#71,#00
	db #81,#71,#00,#81,#71,#00,#27,#74
	db #00,#a8,#74,#00,#29,#75,#00,#aa
	db #75,#00,#2b,#76,#00,#f2,#71,#00
	db #81,#71,#00,#81,#71,#00,#81,#71
	db #00,#ac,#76,#00,#1d,#77,#00,#81
	db #71,#00,#8e,#77,#00,#72,#78,#00
	db #8e,#77,#00,#8e,#77,#00,#8e,#77
.l70a3 equ $ + 3
	db #80,#34,#70,#00,#b5,#7d,#00,#fb
	db #7d,#00,#41,#7e,#00,#e1,#78,#00
	db #e1,#78,#00,#2c,#79,#00,#53,#79
	db #00,#94,#79,#00,#da,#79,#00,#e1
	db #78,#00,#e1,#78,#00,#26,#7a,#00
	db #7e,#7a,#00,#7e,#7a,#00,#cd,#7a
	db #00,#d8,#7a,#00,#e1,#78,#00,#94
	db #79,#00,#da,#79,#00,#19,#7b,#00
	db #7b,#7b,#00,#87,#7b,#00,#a8,#7b
	db #00,#29,#7c,#00,#8e,#7c,#00,#e1
	db #78,#00,#e1,#78,#00,#e1,#78,#00
	db #ec,#7c,#00,#37,#7d,#00,#e1,#78
	db #00,#82,#7d,#00,#41,#7e,#00,#8b
	db #7d,#00,#8b,#7d,#00,#aa,#7d,#80
.l7112 equ $ + 2
	db #a3,#70,#00,#e8,#7f,#00,#eb,#7f
	db #00,#ee,#7f,#00,#89,#7e,#00,#89
	db #7e,#00,#ea,#7e,#00,#89,#7e,#00
	db #89,#7e,#00,#89,#7e,#00,#89,#7e
	db #00,#89,#7e,#00,#89,#7e,#00,#89
	db #7e,#00,#89,#7e,#00,#89,#7e,#00
	db #89,#7e,#00,#89,#7e,#00,#89,#7e
	db #00,#89,#7e,#00,#89,#7e,#00,#89
	db #7e,#00,#4b,#7f,#00,#89,#7e,#00
	db #89,#7e,#00,#89,#7e,#00,#89,#7e
	db #00,#89,#7e,#00,#89,#7e,#00,#89
	db #7e,#00,#89,#7e,#00,#89,#7e,#00
	db #ab,#7f,#00,#ee,#7f,#00,#ea,#7e
	db #00,#ea,#7e,#00,#c4,#7f,#80,#12
	db #71,#21,#02,#b8,#00,#21,#02,#b8
	db #05,#21,#02,#b8,#00,#21,#82,#21
	db #02,#b8,#05,#21,#02,#b8,#00,#21
	db #82,#21,#02,#b8,#05,#21,#02,#b8
	db #00,#21,#02,#b8,#05,#24,#02,#b8
	db #00,#24,#82,#24,#02,#b8,#05,#24
	db #02,#b8,#00,#24,#82,#24,#02,#b8
	db #05,#24,#02,#b8,#00,#24,#02,#b8
	db #05,#1f,#02,#b8,#00,#1f,#82,#1f
	db #02,#b8,#05,#1f,#02,#b8,#00,#1f
	db #82,#1f,#02,#b8,#05,#1f,#02,#b8
	db #00,#1f,#02,#b8,#05,#21,#02,#b8
	db #00,#21,#82,#21,#02,#b8,#05,#21
	db #02,#b8,#00,#21,#82,#21,#02,#b8
	db #05,#ff,#21,#02,#b8,#00,#21,#02
	db #b8,#05,#21,#02,#b8,#00,#21,#82
	db #21,#02,#b8,#05,#21,#02,#b8,#00
	db #21,#82,#21,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#02,#b8,#05,#24,#02
	db #b8,#00,#24,#82,#24,#02,#b8,#05
	db #24,#02,#b8,#00,#24,#82,#24,#02
	db #b8,#05,#24,#02,#b8,#00,#24,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#82
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#82,#1f,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#82,#21,#02,#b8,#05
	db #21,#02,#b8,#00,#21,#82,#21,#02
	db #b8,#05,#ff,#21,#02,#b8,#00,#21
	db #02,#b8,#05,#21,#02,#b8,#00,#21
	db #82,#21,#02,#b8,#05,#21,#02,#b8
	db #00,#21,#82,#21,#02,#b8,#05,#28
	db #02,#b8,#00,#28,#02,#b8,#05,#28
	db #02,#b8,#00,#28,#82,#28,#02,#b8
	db #05,#28,#02,#b8,#00,#28,#82,#28
	db #02,#b8,#05,#23,#02,#b8,#00,#23
	db #02,#b8,#05,#23,#02,#b8,#00,#23
	db #82,#23,#02,#b8,#05,#23,#02,#b8
	db #00,#23,#82,#23,#02,#b8,#05,#23
	db #02,#b8,#00,#23,#02,#b8,#05,#23
	db #02,#b8,#00,#23,#82,#23,#02,#b8
	db #05,#23,#02,#b8,#00,#23,#82,#23
	db #02,#b8,#05,#ff,#21,#02,#b8,#00
	db #21,#02,#b8,#05,#21,#02,#b8,#00
	db #21,#82,#21,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#82,#21,#02,#b8,#05
	db #28,#02,#b8,#00,#28,#02,#b8,#05
	db #28,#02,#b8,#00,#28,#82,#28,#02
	db #b8,#05,#28,#02,#b8,#00,#28,#82
	db #28,#02,#b8,#05,#23,#02,#b8,#00
	db #23,#02,#b8,#05,#23,#02,#b8,#00
	db #23,#82,#23,#02,#b8,#05,#23,#02
	db #b8,#00,#23,#82,#23,#02,#b8,#05
	db #23,#02,#b8,#00,#23,#02,#b8,#05
	db #23,#02,#b8,#00,#23,#82,#23,#02
	db #b8,#05,#23,#02,#b8,#00,#23,#82
	db #23,#02,#b8,#05,#ff,#26,#02,#b8
	db #00,#26,#02,#b8,#05,#26,#02,#b8
	db #00,#26,#82,#26,#02,#b8,#05,#26
	db #02,#b8,#00,#26,#82,#26,#02,#b8
	db #05,#26,#02,#b8,#00,#26,#02,#b8
	db #05,#26,#02,#b8,#00,#26,#82,#26
	db #02,#b8,#05,#26,#02,#b8,#00,#26
	db #82,#26,#02,#b8,#05,#28,#02,#b8
	db #00,#28,#02,#b8,#05,#28,#02,#b8
	db #00,#28,#82,#28,#02,#b8,#05,#28
	db #02,#b8,#00,#28,#82,#28,#02,#b8
	db #05,#28,#02,#b8,#00,#28,#02,#b8
	db #05,#28,#02,#b8,#00,#28,#82,#28
	db #02,#b8,#05,#28,#02,#b8,#00,#28
	db #82,#28,#02,#b8,#05,#ff,#26,#02
	db #b8,#00,#26,#02,#b8,#05,#26,#02
	db #b8,#00,#26,#82,#26,#02,#b8,#05
	db #26,#02,#b8,#00,#26,#82,#26,#02
	db #b8,#05,#26,#02,#b8,#00,#26,#02
	db #b8,#05,#26,#02,#b8,#00,#26,#82
	db #26,#02,#b8,#05,#26,#02,#b8,#00
	db #26,#82,#26,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#82,#21,#02,#b8,#05
	db #21,#02,#b8,#00,#21,#82,#21,#02
	db #b8,#05,#21,#02,#b8,#00,#21,#02
	db #b8,#05,#21,#02,#b8,#00,#21,#82
	db #21,#02,#b8,#05,#21,#02,#b8,#00
	db #21,#82,#21,#02,#b8,#05,#ff,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#21
	db #02,#b8,#00,#21,#02,#b8,#07,#ff
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #29,#02,#b8,#00,#29,#02,#b8,#07
	db #ff,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#26,#02,#b8,#00,#26,#02,#b8
	db #07,#ff,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#28,#02,#b8,#00,#28,#02
	db #b8,#07,#26,#02,#b8,#00,#26,#02
	db #b8,#07,#26,#02,#b8,#00,#26,#02
	db #b8,#07,#26,#02,#b8,#00,#26,#02
	db #b8,#07,#26,#02,#b8,#00,#26,#02
	db #b8,#07,#24,#02,#b8,#00,#24,#02
	db #b8,#07,#24,#02,#b8,#00,#24,#02
	db #b8,#07,#23,#02,#b8,#00,#23,#02
	db #b8,#07,#23,#02,#b8,#00,#23,#02
	db #b8,#07,#ff,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#28,#02,#b8,#00,#28
	db #02,#b8,#07,#26,#02,#b8,#00,#26
	db #02,#b8,#07,#26,#02,#b8,#00,#26
	db #02,#b8,#07,#26,#02,#b8,#00,#26
	db #02,#b8,#07,#26,#02,#b8,#00,#26
	db #02,#b8,#07,#24,#02,#b8,#00,#24
	db #02,#b8,#07,#24,#02,#b8,#00,#24
	db #02,#b8,#07,#23,#02,#b8,#00,#23
	db #02,#b8,#07,#23,#02,#b8,#00,#23
	db #02,#b8,#07,#ff,#1e,#02,#b8,#00
	db #1e,#02,#b8,#05,#1e,#02,#b8,#00
	db #1e,#82,#1e,#02,#b8,#05,#1e,#02
	db #b8,#00,#1e,#82,#1e,#02,#b8,#05
	db #1e,#02,#b8,#00,#1e,#02,#b8,#05
	db #1e,#02,#b8,#00,#1e,#82,#1e,#02
	db #b8,#05,#1e,#02,#b8,#00,#1e,#82
	db #1e,#02,#b8,#05,#1e,#02,#b8,#00
	db #1e,#02,#b8,#05,#1e,#02,#b8,#00
	db #1e,#82,#1e,#02,#b8,#05,#1e,#02
	db #b8,#00,#1e,#82,#1e,#02,#b8,#05
	db #1e,#02,#b8,#00,#1e,#02,#b8,#05
	db #1e,#02,#b8,#00,#1e,#82,#1e,#02
	db #b8,#05,#1e,#02,#b8,#00,#1e,#82
	db #1e,#02,#b8,#05,#ff,#1d,#02,#b8
	db #00,#1d,#02,#b8,#05,#1d,#02,#b8
	db #00,#1d,#82,#1d,#02,#b8,#05,#1d
	db #02,#b8,#00,#1d,#82,#1d,#02,#b8
	db #05,#1d,#02,#b8,#00,#1d,#02,#b8
	db #05,#1d,#02,#b8,#00,#1d,#82,#1d
	db #02,#b8,#05,#1d,#02,#b8,#00,#1d
	db #82,#1d,#02,#b8,#05,#1d,#02,#b8
	db #00,#1d,#02,#b8,#05,#1d,#02,#b8
	db #00,#1d,#82,#1d,#02,#b8,#05,#1d
	db #02,#b8,#00,#1d,#82,#1d,#02,#b8
	db #05,#1d,#02,#b8,#00,#1d,#02,#b8
	db #05,#1d,#02,#b8,#00,#1d,#82,#1d
	db #02,#b8,#05,#1d,#02,#b8,#00,#1d
	db #82,#1d,#02,#b8,#05,#ff,#21,#02
	db #b8,#00,#21,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#82,#21,#02,#b8,#05
	db #21,#02,#b8,#00,#21,#82,#21,#02
	db #b8,#05,#21,#02,#b8,#00,#21,#02
	db #b8,#05,#24,#02,#b8,#00,#24,#82
	db #24,#02,#b8,#05,#24,#02,#b8,#00
	db #24,#82,#24,#02,#b8,#05,#24,#02
	db #b8,#00,#24,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#82,#1f,#02,#b8,#05
	db #1f,#02,#b8,#00,#1f,#82,#1f,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#02
	db #b8,#05,#21,#02,#b8,#00,#21,#82
	db #21,#02,#b8,#05,#21,#02,#b8,#00
	db #21,#02,#08,#1f,#82,#ff,#21,#40
	db #b9,#06,#ff,#21,#02,#b8,#00,#21
	db #02,#b8,#05,#21,#02,#b8,#00,#21
	db #82,#21,#02,#b8,#05,#21,#02,#b8
	db #00,#21,#82,#21,#02,#b8,#05,#21
	db #02,#b8,#00,#21,#02,#b8,#05,#24
	db #02,#b8,#00,#24,#82,#24,#02,#b8
	db #05,#24,#02,#b8,#00,#24,#82,#24
	db #02,#b8,#05,#24,#02,#b8,#00,#24
	db #02,#b8,#05,#1f,#02,#b8,#00,#1f
	db #82,#1f,#02,#b8,#05,#1f,#02,#b8
	db #00,#1f,#82,#1f,#02,#b8,#05,#1f
	db #02,#b8,#00,#1f,#02,#b8,#05,#21
	db #02,#b8,#00,#21,#82,#21,#02,#b8
	db #05,#21,#02,#b8,#00,#21,#82,#1f
	db #82,#ff,#21,#02,#b8,#00,#21,#02
	db #b8,#05,#21,#02,#b8,#00,#21,#82
	db #21,#02,#b8,#05,#21,#02,#b8,#00
	db #21,#82,#21,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#02,#b8,#05,#24,#02
	db #b8,#00,#24,#82,#24,#02,#b8,#05
	db #24,#02,#b8,#00,#24,#82,#24,#02
	db #b8,#05,#24,#02,#b8,#00,#24,#02
	db #b8,#05,#1f,#02,#b8,#00,#1f,#82
	db #1f,#02,#b8,#05,#1f,#02,#b8,#00
	db #1f,#82,#1f,#02,#b8,#05,#1f,#02
	db #b8,#00,#1f,#02,#b8,#05,#21,#02
	db #b8,#00,#21,#82,#21,#02,#b8,#05
	db #21,#02,#b8,#00,#21,#82,#1f,#82
	db #ff,#39,#04,#f0,#03,#39,#02,#01
	db #39,#04,#00,#39,#02,#01,#39,#04
	db #00,#39,#02,#01,#39,#04,#f0,#01
	db #39,#02,#f1,#03,#39,#03,#f0,#01
	db #b9,#01,#39,#03,#00,#b9,#01,#37
	db #04,#f0,#02,#37,#02,#01,#37,#04
	db #00,#37,#02,#01,#37,#04,#00,#37
	db #02,#01,#39,#04,#f0,#01,#39,#02
	db #01,#39,#03,#00,#b9,#01,#39,#03
	db #00,#b9,#01,#ff,#2d,#10,#1b,#34
	db #10,#0b,#39,#82,#37,#82,#34,#82
	db #39,#82,#37,#82,#34,#82,#39,#82
	db #37,#82,#34,#82,#39,#82,#37,#82
	db #34,#82,#32,#82,#34,#82,#37,#82
	db #2b,#82,#ff,#2d,#08,#bb,#00,#2d
	db #02,#bb,#01,#2d,#02,#bb,#02,#2d
	db #02,#bb,#03,#2d,#02,#bb,#04,#2d
	db #02,#bb,#05,#2d,#02,#bb,#06,#2d
	db #02,#bb,#07,#2d,#02,#bb,#08,#2d
	db #02,#bb,#09,#2d,#02,#bb,#0a,#2d
	db #02,#bb,#0b,#2d,#02,#bb,#0c,#2d
	db #02,#bb,#0d,#2d,#02,#bb,#0e,#2d
	db #1c,#bb,#0f,#ff,#c8,#1a,#c8,#ba
	db #05,#c8,#ba,#00,#c8,#ba,#05,#47
	db #02,#ba,#00,#47,#02,#ba,#05,#45
	db #02,#ba,#00,#45,#02,#ba,#05,#43
	db #02,#ba,#00,#45,#84,#43,#02,#ba
	db #03,#45,#84,#43,#02,#ba,#05,#45
	db #86,#37,#0c,#0b,#39,#88,#34,#84
	db #b2,#bb,#02,#b0,#0b,#ad,#0b,#ab
	db #0b,#b2,#0b,#b0,#0b,#ab,#0b,#ad
	db #0b,#ff,#c8,#ba,#00,#c8,#ba,#05
	db #c8,#ba,#00,#c8,#ba,#05,#47,#02
	db #ba,#00,#47,#02,#ba,#05,#45,#02
	db #ba,#00,#45,#02,#ba,#05,#43,#02
	db #ba,#00,#45,#84,#43,#02,#ba,#03
	db #45,#84,#43,#02,#ba,#05,#45,#84
	db #b2,#0b,#b3,#0b,#34,#8c,#37,#88
	db #32,#82,#34,#82,#b9,#bb,#02,#b7
	db #0b,#b4,#0b,#b2,#0b,#b4,#0b,#b2
	db #0b,#b0,#0b,#ad,#0b,#ff,#39,#02
	db #1b,#39,#02,#bb,#05,#39,#02,#bb
	db #00,#39,#02,#bb,#05,#39,#02,#bb
	db #00,#39,#02,#bb,#05,#38,#02,#bb
	db #00,#38,#06,#bb,#05,#40,#05,#f0
	db #02,#40,#03,#b0,#05,#33,#02,#1b
	db #34,#02,#0b,#36,#82,#36,#04,#bb
	db #05,#36,#02,#bb,#07,#36,#02,#bb
	db #05,#36,#02,#bb,#03,#38,#02,#bb
	db #00,#38,#02,#bb,#05,#36,#02,#bb
	db #00,#36,#06,#bb,#05,#2f,#02,#bb
	db #00,#2f,#06,#bb,#05,#ff,#39,#02
	db #bb,#00,#39,#02,#bb,#05,#39,#02
	db #bb,#00,#39,#02,#bb,#05,#39,#02
	db #bb,#00,#39,#02,#bb,#05,#3b,#02
	db #bb,#00,#3b,#06,#bb,#05,#40,#04
	db #f0,#02,#40,#04,#b0,#05,#33,#02
	db #1b,#34,#02,#0b,#36,#82,#36,#06
	db #bb,#05,#3b,#04,#f0,#02,#3b,#04
	db #b0,#05,#3b,#02,#1b,#39,#02,#0b
	db #38,#82,#39,#82,#38,#82,#34,#82
	db #33,#82,#34,#82,#ff,#00,#1e,#34
	db #02,#bb,#02,#38,#20,#bb,#00,#ff
	db #b8,#bb,#00,#b8,#bb,#00,#b8,#bb
	db #01,#b8,#bb,#01,#b8,#bb,#02,#b8
	db #bb,#02,#b8,#bb,#03,#b8,#bb,#03
	db #b8,#bb,#04,#b8,#bb,#04,#b8,#bb
	db #05,#b8,#bb,#06,#b8,#bb,#07,#b8
	db #bb,#08,#b8,#bb,#09,#b8,#bb,#0a
	db #b8,#bb,#0b,#b8,#bb,#0c,#b8,#bb
	db #0d,#b8,#bb,#0e,#38,#2c,#bb,#0f
	db #ff,#00,#20,#ad,#bb,#02,#ad,#bb
	db #02,#ad,#bb,#02,#ad,#bb,#03,#ad
	db #bb,#03,#ad,#bb,#03,#ad,#bb,#04
	db #ad,#bb,#04,#ad,#bb,#04,#ad,#bb
	db #05,#ad,#bb,#05,#ad,#bb,#05,#ad
	db #bb,#06,#ad,#bb,#06,#ad,#bb,#07
	db #ad,#bb,#07,#ad,#bb,#08,#ad,#bb
	db #08,#ad,#bb,#09,#ad,#bb,#09,#ad
	db #bb,#0a,#ad,#bb,#0a,#ad,#bb,#0b
	db #ad,#bb,#0b,#ad,#bb,#0c,#ad,#bb
	db #0c,#ad,#bb,#0d,#ad,#bb,#0d,#ad
	db #bb,#0e,#ad,#bb,#0e,#ad,#bb,#0f
	db #fe,#01,#ff,#00,#18,#39,#08,#0b
	db #3c,#8c,#3e,#8c,#3c,#88,#ff,#bb
	db #0b,#bc,#0b,#3c,#8e,#39,#90,#3c
	db #84,#39,#84,#3e,#84,#39,#84,#3c
	db #82,#39,#82,#3e,#82,#39,#82,#3c
	db #82,#39,#82,#3e,#82,#39,#82,#ff
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #bc,#0b,#be,#0b,#bf,#0b,#c0,#0b
	db #c5,#0b,#c3,#0b,#c0,#0b,#be,#0b
	db #bc,#0b,#be,#0b,#c0,#0b,#c3,#0b
	db #c0,#0b,#be,#0b,#c0,#0b,#bc,#0b
	db #be,#0b,#c0,#0b,#c3,#0b,#c5,#0b
	db #c3,#0b,#c8,#0b,#c5,#0b,#ca,#0b
	db #c8,#0b,#c5,#0b,#ca,#0b,#c5,#0b
	db #c8,#0b,#c5,#0b,#ca,#0b,#c5,#0b
	db #c8,#0b,#c5,#0b,#ca,#0b,#c5,#0b
	db #c8,#0b,#c5,#0b,#ca,#0b,#c5,#0b
	db #ff,#cb,#0b,#4c,#8f,#cc,#0b,#ca
	db #0b,#c8,#0b,#c5,#0b,#ca,#0b,#c8
	db #0b,#c5,#0b,#c3,#0b,#c5,#0b,#c8
	db #0b,#ca,#0b,#c5,#0b,#c8,#0b,#c5
	db #0b,#c3,#0b,#c5,#0b,#c8,#0b,#c5
	db #0b,#ca,#0b,#c5,#0b,#c8,#0b,#c5
	db #0b,#ca,#0b,#c5,#0b,#c8,#0b,#c5
	db #0b,#ca,#0b,#c5,#0b,#c8,#0b,#c5
	db #0b,#ca,#0b,#c5,#0b,#c8,#0b,#c5
	db #0b,#c3,#0b,#c0,#0b,#be,#0b,#c0
	db #0b,#c3,#0b,#c5,#0b,#c3,#0b,#c0
	db #0b,#be,#0b,#bc,#0b,#b9,#0b,#bc
	db #0b,#be,#0b,#c0,#0b,#ff,#c0,#bb
	db #00,#c0,#bb,#00,#c0,#bb,#00,#c0
	db #bb,#01,#c0,#bb,#01,#bf,#bb,#02
	db #bf,#bb,#02,#c0,#bb,#00,#c0,#bb
	db #00,#c0,#bb,#01,#c0,#bb,#01,#c0
	db #bb,#02,#c0,#bb,#02,#c0,#bb,#03
	db #c0,#bb,#03,#c0,#bb,#04,#c0,#bb
	db #04,#c0,#bb,#05,#c0,#bb,#05,#c0
	db #bb,#06,#c0,#bb,#06,#c0,#bb,#07
	db #c0,#bb,#07,#c0,#bb,#08,#c0,#bb
	db #09,#c0,#bb,#0a,#c0,#bb,#0b,#c0
	db #bb,#0c,#c0,#bb,#0d,#c0,#bb,#0e
	db #40,#22,#0b,#ff,#39,#04,#f0,#03
	db #39,#02,#01,#39,#04,#00,#39,#02
	db #01,#39,#04,#00,#39,#02,#01,#39
	db #04,#f0,#01,#39,#02,#f1,#03,#39
	db #03,#f0,#01,#b9,#01,#39,#03,#00
	db #b9,#01,#37,#04,#f0,#02,#37,#02
	db #01,#37,#04,#00,#37,#02,#01,#37
	db #04,#00,#37,#02,#01,#39,#04,#f0
	db #01,#39,#02,#01,#39,#03,#00,#b9
	db #01,#39,#03,#00,#b9,#01,#ff,#39
	db #04,#f0,#03,#39,#02,#01,#39,#04
	db #00,#39,#02,#01,#39,#04,#00,#39
	db #02,#01,#39,#04,#f0,#01,#39,#02
	db #f1,#03,#39,#03,#f0,#01,#b9,#01
	db #39,#03,#00,#b9,#01,#37,#04,#f0
	db #02,#37,#02,#01,#37,#04,#00,#37
	db #02,#01,#37,#04,#00,#37,#02,#01
	db #35,#04,#00,#35,#02,#01,#35,#03
	db #00,#b5,#01,#35,#03,#f0,#01,#b5
	db #01,#ff,#00,#3c,#6e,#02,#16,#6e
	db #02,#07,#ff,#fe,#06,#ee,#04,#ee
	db #04,#ee,#04,#6e,#8d,#ee,#04,#ee
	db #04,#6e,#9e,#6e,#82,#6e,#82,#6e
	db #82,#ee,#04,#ee,#04,#ee,#04,#ee
	db #04,#ff,#00,#3a,#ee,#04,#ee,#04
	db #6e,#82,#6e,#82,#ff,#45,#02,#ba
	db #03,#39,#02,#0a,#40,#82,#39,#82
	db #45,#82,#39,#82,#40,#82,#39,#82
	db #45,#82,#39,#82,#40,#82,#39,#82
	db #45,#82,#39,#82,#40,#82,#39,#82
	db #43,#82,#39,#82,#3e,#82,#39,#82
	db #43,#82,#39,#82,#3e,#82,#39,#82
	db #43,#82,#39,#82,#3e,#82,#39,#82
	db #43,#82,#39,#82,#3e,#82,#6e,#02
	db #b4,#07,#ff,#45,#02,#ba,#02,#39
	db #02,#0a,#40,#82,#39,#82,#45,#82
	db #39,#82,#40,#82,#39,#82,#45,#82
	db #39,#82,#40,#82,#39,#82,#45,#82
	db #39,#82,#40,#82,#39,#82,#43,#82
	db #39,#82,#3e,#82,#39,#82,#43,#82
	db #39,#82,#3e,#82,#39,#82,#43,#82
	db #39,#82,#3e,#82,#39,#82,#43,#82
	db #39,#82,#3e,#82,#6e,#02,#b4,#07
	db #ff,#45,#02,#ba,#01,#39,#02,#0a
	db #40,#82,#39,#82,#45,#82,#39,#82
	db #40,#82,#39,#82,#45,#82,#39,#82
	db #40,#82,#39,#82,#45,#82,#39,#82
	db #40,#82,#39,#82,#43,#82,#39,#82
	db #3e,#82,#39,#82,#43,#82,#39,#82
	db #3e,#82,#39,#82,#43,#82,#39,#82
	db #3e,#82,#39,#82,#43,#02,#bb,#04
	db #39,#02,#bb,#02,#3e,#04,#bb,#00
	db #ff,#6e,#02,#04,#6e,#02,#06,#6e
	db #02,#07,#6e,#02,#06,#6e,#02,#05
	db #6e,#02,#06,#6e,#02,#07,#6e,#02
	db #06,#6e,#02,#04,#6e,#02,#06,#6e
	db #02,#07,#6e,#02,#06,#6e,#02,#05
	db #6e,#02,#06,#6e,#02,#07,#6e,#02
	db #06,#6e,#02,#04,#6e,#02,#06,#6e
	db #02,#07,#6e,#02,#06,#6e,#02,#05
	db #6e,#02,#06,#6e,#02,#07,#6e,#02
	db #06,#6e,#02,#04,#6e,#02,#06,#6e
	db #02,#07,#6e,#02,#06,#6e,#02,#05
	db #6e,#02,#06,#6e,#02,#07,#6e,#02
	db #06,#ff,#6e,#02,#04,#6e,#02,#06
	db #6e,#02,#07,#6e,#02,#06,#6e,#02
	db #05,#6e,#02,#06,#6e,#02,#07,#6e
	db #02,#06,#6e,#02,#04,#6e,#02,#06
	db #6e,#02,#07,#6e,#02,#06,#6e,#02
	db #05,#6e,#02,#06,#6e,#02,#07,#6e
	db #02,#06,#6e,#02,#04,#6e,#02,#06
	db #6e,#02,#07,#6e,#02,#06,#6e,#02
	db #05,#6e,#02,#06,#6e,#02,#07,#6e
	db #02,#06,#6e,#02,#04,#6e,#02,#06
	db #6e,#02,#07,#6e,#02,#06,#6e,#02
	db #05,#6e,#02,#06,#6e,#02,#07,#6e
	db #02,#06,#ff,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#05,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#05,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#05,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#05,#ee,#05,#ee,#05,#6e,#82
	db #6e,#82,#ff,#6e,#08,#04,#6e,#88
	db #6e,#88,#6e,#88,#6e,#88,#6e,#88
	db #6e,#88,#6e,#82,#6e,#02,#05,#6e
	db #82,#6e,#82,#ff,#6e,#08,#b4,#00
	db #6e,#08,#b7,#01,#6e,#08,#b4,#00
	db #6e,#08,#b7,#01,#6e,#08,#b4,#00
	db #6e,#08,#b7,#01,#6e,#08,#b4,#00
	db #6e,#06,#b7,#01,#6e,#02,#07,#ff
	db #00,#40,#ff,#00,#40,#ff,#6e,#02
	db #d4,#04,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#04,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#04,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#6e,#02,#04,#6e,#02
	db #06,#6e,#02,#07,#6e,#02,#06,#6e
	db #02,#04,#6e,#02,#06,#6e,#02,#07
	db #6e,#02,#06,#ee,#05,#ee,#05,#6e
	db #82,#ee,#05,#ee,#05,#ee,#05,#ee
	db #05,#ff
;
.music_info
	db "6am Eternal Intro (1993)(Public Domain)(Crown of Beng)",0
	db "ST-Module",0

	read "music_end.asm"