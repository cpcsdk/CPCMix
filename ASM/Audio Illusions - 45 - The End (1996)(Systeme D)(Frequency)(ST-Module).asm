; Music of Audio Illusions - 45 - The End (1996)(Systeme D)(Frequency)(ST-Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUDIOI45.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l400b
	jp l4093
	jp l4077
	db #66,#04
;
.init_music
.l400b
;
	ld b,#03
	ld ix,l43da
	ld iy,l4306
	ld de,#001c
.l4018
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
	djnz l4018
	ld a,#06
	ld (l40bb),a
	ld a,d
	ld (l40cf),a
	inc a
	ld (l40b6),a
	ld a,#38
	ld (l40c0),a
	ld a,#ff
	ld (l4302),a
	ld (l4303),a
	ld (l4304),a
	ld (l4305),a
	ld a,#0c
	ld c,d
	call l42e4
	ld a,#0d
	ld c,d
	jp l42e4
;
.stop_music
.l4077
;
	ld a,#07
	ld c,#3f
	call l42e4
	ld a,#08
	ld c,#00
	call l42e4
	ld a,#09
	ld c,#00
	call l42e4
	ld a,#0a
	ld c,#00
	jp l42e4
;
.play_music
.l4093
;
	ld hl,l40b6
	dec (hl)
	ld ix,l43da
	ld bc,l43e8
	call l4149
	ld ix,l43f6
	ld bc,l4404
	call l4149
	ld ix,l4412
	ld bc,l4420
	call l4149
.l40b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#00
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#00
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#00
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#00
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#00
	ld hl,l4305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l42e4
.l40fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l41fa
.l4109
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
	jp l42e4
.l4123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l415c
.l4149
	ld a,(l40b6)
	or a
	jp nz,l41fa
	dec (ix+#06)
	jp nz,l41fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l415c
	ld a,(hl)
	or a
	jr z,l40fa
	cp #fe
	jr z,l4109
	cp #ff
	jr z,l4123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l430c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4198
	and #7f
	ld (ix+#06),a
	jr l41eb
.l4198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l41ac
	add a
	add a
	add a
	ld e,a
	ld hl,l4442
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
	jr z,l41eb
	cp #f0
	jp z,l42a0
	cp #d0
	jp z,l42bc
	cp #b0
	jp z,l42c4
	cp #80
	jp nc,l42cc
	cp #10
	jr nz,l41eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l41eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l41fa
	ld a,(ix+#17)
	or a
	jr nz,l420e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l420e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l430c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4239
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
	call l42e4
	ld c,h
	ld a,(ix+#03)
	call l42e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4277
	and #0f
	sub (ix+#0a)
	jr nc,l426d
	xor a
.l426d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l42e4
.l4277
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
	jr z,l4294
	ld b,a
	ld a,c
	ld (l40cf),a
	ld a,b
	sub #40
.l4294
	ld (l429b),a
	ld a,(l40c0)
.l429b equ $ + 1
	bit 0,a
	ld (l40c0),a
	ret
.l42a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l41eb
.l42bc
	inc hl
	ld a,(hl)
	ld (l40bb),a
	jp l41eb
.l42c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l41eb
.l42cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l40ed),a
	inc hl
	ld a,(hl)
	ld (l40de),a
	jp l41eb
.l42e4
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
.l4305 equ $ + 3
.l4304 equ $ + 2
.l4303 equ $ + 1
.l4302
	db #ff,#ff,#ff,#ff
.l4306
	dw l4962,l49fb,l4a94
.l430c
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
.l43da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#62,#45,#a2,#45
	db #c2,#45,#00,#00,#e2,#45,#22,#46
	db #42,#46,#00,#00,#62,#46,#a2,#46
	db #c2,#46,#00,#00,#e2,#46,#22,#47
	db #c2,#46,#18,#08,#42,#47,#22,#47
	db #c2,#46,#18,#08,#82,#47,#c2,#47
	db #c2,#46,#19,#07,#e2,#45,#e2,#47
	db #c2,#46,#00,#00,#e2,#45,#e2,#47
	db #02,#48,#00,#00,#22,#48,#62,#48
	db #c2,#46,#00,#00,#e2,#45,#82,#48
	db #c2,#46,#00,#00,#a2,#48,#e2,#48
	db #c2,#46,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#02,#49,#22,#49
	db #42,#49,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#10,#00,#30,#00
	db #60,#00,#a0,#00,#f0,#00,#50,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0c,#0c
	db #09,#09,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#10,#00,#20,#00
	db #40,#00,#60,#00,#90,#00,#c0,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09,#03,#04,#02
	db #03,#01,#02,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0b,#0e,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fd,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0c
	db #0d,#0c,#0c,#0a,#0b,#0a,#0a,#08
	db #09,#08,#08,#06,#07,#06,#06,#04
	db #05,#04,#04,#02,#03,#02,#02,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0f
	db #0e,#0e,#0d,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#0f,#0e,#0e,#0d
	db #0d,#0e,#0e,#0f,#0e,#0e,#0d,#0d
	db #0e,#0e,#0f,#0e,#0e,#0d,#0d,#0e
	db #0e,#0f,#0e,#0e,#0d,#0d,#0e,#0e
	db #0f,#0e,#0e,#0d,#0f,#0f,#0e,#0d
	db #0d,#0d,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#80,#80,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#01,#00
	db #02,#00,#03,#00,#04,#00,#05,#00
	db #06,#00,#07,#00,#08,#00,#09,#00
	db #0a,#00,#0b,#00,#0c,#00,#0d,#00
	db #0e,#00,#0f,#00,#10,#00,#11,#00
	db #12,#00,#13,#00,#14,#00,#15,#00
	db #16,#00,#17,#00,#18,#00,#19,#00
	db #1a,#00,#1b,#00,#1c,#00,#1d,#00
	db #1e,#00,#1f,#00,#0f,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#fe,#fe,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fb,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4962 equ $ + 4
	db #00,#00,#00,#00,#00,#2d,#4b,#00
	db #47,#4b,#00,#c8,#4b,#00,#47,#4b
	db #00,#48,#4c,#00,#47,#4d,#00,#47
	db #4d,#00,#47,#4b,#00,#c8,#4b,#00
	db #47,#4b,#00,#c7,#4c,#00,#47,#4d
	db #00,#47,#4d,#00,#47,#4b,#00,#c8
	db #4b,#00,#47,#4b,#00,#48,#4c,#00
	db #47,#4d,#00,#47,#4d,#00,#8d,#4d
	db #00,#0e,#4e,#00,#8d,#4d,#00,#8f
	db #4e,#00,#50,#4f,#00,#11,#50,#00
	db #16,#50,#00,#16,#50,#00,#19,#50
	db #00,#1c,#50,#00,#36,#50,#00,#4d
	db #50,#00,#36,#50,#00,#4d,#50,#00
	db #36,#50,#00,#4d,#50,#00,#74,#50
	db #00,#e6,#50,#00,#74,#50,#00,#e6
	db #50,#00,#36,#50,#00,#4d,#50,#00
	db #36,#50,#00,#4d,#50,#00,#74,#50
	db #00,#e6,#50,#00,#74,#50,#00,#e6
	db #50,#00,#1a,#51,#00,#bb,#51,#00
.l49fb equ $ + 5
	db #5c,#52,#80,#62,#49,#00,#b5,#52
	db #00,#e7,#52,#00,#09,#53,#00,#e7
	db #52,#00,#36,#53,#00,#a4,#53,#00
	db #25,#54,#00,#e7,#52,#00,#09,#53
	db #00,#e7,#52,#00,#6d,#53,#00,#a4
	db #53,#00,#25,#54,#00,#e7,#52,#00
	db #09,#53,#00,#e7,#52,#00,#36,#53
	db #00,#a4,#53,#00,#25,#54,#00,#87
	db #54,#00,#08,#55,#00,#87,#54,#00
	db #89,#55,#00,#a3,#55,#00,#b6,#55
	db #00,#bb,#55,#00,#bb,#55,#00,#fe
	db #55,#00,#40,#56,#00,#83,#56,#00
	db #83,#56,#00,#83,#56,#00,#83,#56
	db #00,#83,#56,#00,#83,#56,#00,#83
	db #56,#00,#83,#56,#00,#83,#56,#00
	db #83,#56,#00,#83,#56,#00,#83,#56
	db #00,#83,#56,#00,#83,#56,#00,#83
	db #56,#00,#83,#56,#00,#83,#56,#00
	db #83,#56,#00,#c5,#56,#00,#09,#57
.l4a94 equ $ + 6
	db #00,#ab,#57,#80,#fb,#49,#00,#cf
	db #57,#00,#f0,#57,#00,#61,#58,#00
	db #f0,#57,#00,#d1,#58,#00,#43,#59
	db #00,#b5,#59,#00,#f0,#57,#00,#61
	db #58,#00,#f0,#57,#00,#d1,#58,#00
	db #43,#59,#00,#b5,#59,#00,#f0,#57
	db #00,#61,#58,#00,#f0,#57,#00,#d1
	db #58,#00,#43,#59,#00,#b5,#59,#00
	db #26,#5a,#00,#97,#5a,#00,#17,#5b
	db #00,#76,#5b,#00,#37,#5c,#00,#f8
	db #5c,#00,#00,#5d,#00,#00,#5d,#00
	db #71,#5d,#00,#e1,#5d,#00,#71,#5d
	db #00,#71,#5d,#00,#71,#5d,#00,#71
	db #5d,#00,#71,#5d,#00,#71,#5d,#00
	db #4f,#5e,#00,#c2,#5e,#00,#4f,#5e
	db #00,#c2,#5e,#00,#71,#5d,#00,#71
	db #5d,#00,#71,#5d,#00,#71,#5d,#00
	db #4f,#5e,#00,#c2,#5e,#00,#4f,#5e
	db #00,#c2,#5e,#00,#35,#5f,#00,#a5
	db #5f,#00,#16,#60,#80,#94,#4a,#a1
	db #b4,#04,#a4,#04,#a1,#04,#26,#ad
	db #26,#04,#b4,#03,#26,#04,#b4,#02
	db #26,#06,#b4,#01,#3c,#02,#b6,#02
	db #ff,#32,#02,#f3,#01,#d6,#12,#d6
	db #02,#32,#02,#f3,#01,#d6,#12,#d6
	db #02,#32,#02,#f3,#01,#d6,#12,#d6
	db #02,#30,#02,#f3,#01,#d6,#12,#d6
	db #02,#32,#02,#f3,#01,#d6,#12,#d6
	db #02,#32,#02,#f3,#01,#d6,#12,#d6
	db #02,#32,#02,#f3,#01,#d6,#12,#d6
	db #02,#30,#02,#f3,#01,#d6,#12,#d6
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#2b,#02,#f3,#01,#d8,#12,#d8
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#2d,#02,#f3,#01,#d8,#12,#d8
	db #02,#ff,#2e,#02,#f3,#01,#d9,#12
	db #d9,#02,#2e,#02,#f3,#01,#d9,#12
	db #d9,#02,#2e,#02,#f3,#01,#d9,#12
	db #d9,#02,#2d,#02,#f3,#01,#d9,#12
	db #d9,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#2d,#02,#f3,#01,#d9,#12
	db #d9,#02,#2d,#02,#f3,#01,#d9,#12
	db #d9,#02,#2d,#02,#f3,#01,#d9,#12
	db #d9,#02,#2d,#02,#f3,#01,#30,#02
	db #03,#ff,#2e,#02,#f3,#01,#d9,#12
	db #d9,#02,#2e,#02,#f3,#01,#d9,#12
	db #d9,#02,#2e,#02,#f3,#01,#d9,#12
	db #d9,#02,#2d,#02,#f3,#01,#d9,#12
	db #d9,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#2e,#02,#f3,#01,#d6,#12
	db #d6,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#30,#02,#f3,#01,#d8,#12
	db #d8,#02,#31,#02,#f3,#01,#d9,#12
	db #d9,#02,#31,#02,#f3,#01,#d9,#12
	db #d9,#02,#31,#02,#f3,#01,#d9,#12
	db #d9,#02,#31,#03,#f3,#01,#b1,#03
	db #ff,#2e,#02,#f3,#01,#d9,#12,#d9
	db #02,#2e,#02,#f3,#01,#d9,#12,#d9
	db #02,#2e,#02,#f3,#01,#d9,#12,#d9
	db #02,#2d,#02,#f3,#01,#d9,#12,#d9
	db #02,#2e,#02,#f3,#01,#d6,#12,#d6
	db #02,#2e,#02,#f3,#01,#d6,#12,#d6
	db #02,#2e,#02,#f3,#01,#d6,#12,#d6
	db #02,#2e,#02,#f3,#01,#d6,#12,#d6
	db #02,#30,#02,#f3,#01,#d8,#12,#d8
	db #02,#30,#02,#f3,#01,#d8,#12,#d8
	db #02,#30,#02,#f3,#01,#d8,#12,#d8
	db #02,#30,#02,#f3,#01,#d8,#12,#d8
	db #02,#31,#02,#f3,#01,#d9,#12,#d9
	db #02,#31,#02,#f3,#01,#d9,#12,#d9
	db #02,#31,#02,#f3,#01,#dd,#12,#dd
	db #02,#31,#02,#f3,#01,#5d,#02,#12
	db #ff,#51,#02,#17,#4d,#02,#07,#4a
	db #82,#46,#89,#c5,#07,#46,#82,#48
	db #82,#4a,#82,#4d,#82,#51,#82,#4d
	db #02,#b7,#01,#52,#02,#b7,#02,#4d
	db #02,#b7,#01,#51,#02,#b7,#00,#4d
	db #02,#07,#52,#82,#4d,#82,#54,#82
	db #4d,#82,#52,#82,#4d,#82,#51,#82
	db #4d,#82,#4f,#82,#4c,#82,#4d,#82
	db #4a,#82,#49,#82,#4a,#82,#ff,#ba
	db #07,#b2,#03,#c1,#07,#b9,#03,#c6
	db #07,#be,#03,#cd,#07,#c5,#03,#d2
	db #07,#c8,#03,#d6,#07,#c8,#03,#d2
	db #07,#c1,#03,#ca,#07,#ba,#03,#bc
	db #07,#b4,#03,#c3,#07,#bc,#03,#cc
	db #07,#c3,#03,#d4,#07,#ca,#03,#d8
	db #07,#cd,#03,#db,#07,#cd,#03,#d8
	db #07,#ca,#03,#d4,#07,#c3,#03,#be
	db #07,#b5,#03,#c5,#07,#be,#03,#cd
	db #07,#c5,#03,#d6,#07,#cd,#03,#dd
	db #07,#cd,#03,#d6,#07,#c5,#03,#cd
	db #07,#be,#03,#c5,#07,#b5,#03,#be
	db #07,#b5,#03,#c5,#07,#be,#03,#cd
	db #07,#c5,#03,#d6,#07,#cd,#03,#db
	db #07,#cc,#03,#d4,#07,#c3,#03,#cc
	db #07,#bc,#03,#c3,#07,#b4,#03,#ff
	db #ba,#07,#b2,#03,#c1,#07,#b9,#03
	db #c6,#07,#be,#03,#cd,#07,#c5,#03
	db #d2,#07,#c8,#03,#d6,#07,#c8,#03
	db #d2,#07,#c1,#03,#ca,#07,#ba,#03
	db #bc,#07,#b4,#03,#c3,#07,#bc,#03
	db #cc,#07,#c3,#03,#d4,#07,#ca,#03
	db #d8,#07,#cd,#03,#db,#07,#cd,#03
	db #d8,#07,#ca,#03,#d4,#07,#c3,#03
	db #be,#07,#b5,#03,#c5,#07,#be,#03
	db #cd,#07,#c5,#03,#d6,#07,#cd,#03
	db #dd,#07,#cd,#03,#d6,#07,#c5,#03
	db #cd,#07,#be,#03,#c5,#07,#b5,#03
	db #be,#07,#b5,#03,#c5,#07,#be,#03
	db #cd,#07,#c5,#03,#d6,#07,#cd,#03
	db #db,#07,#cc,#03,#d4,#07,#c3,#03
	db #cc,#07,#bc,#03,#c3,#07,#b4,#03
	db #ff,#ba,#b7,#00,#b2,#b3,#02,#c1
	db #b7,#00,#b9,#b3,#02,#c6,#b7,#00
	db #be,#b3,#02,#cd,#b7,#00,#c5,#b3
	db #02,#d2,#b7,#00,#c8,#b3,#02,#d6
	db #b7,#00,#c8,#b3,#02,#d2,#b7,#00
	db #c1,#b3,#02,#ca,#b7,#00,#ba,#b3
	db #02,#bc,#b7,#00,#b4,#b3,#02,#c3
	db #b7,#00,#bc,#b3,#02,#cc,#b7,#00
	db #c3,#b3,#02,#d4,#b7,#00,#ca,#b3
	db #02,#d8,#b7,#00,#cd,#b3,#02,#db
	db #b7,#00,#cd,#b3,#02,#d8,#b7,#00
	db #ca,#b3,#02,#d4,#b7,#00,#c3,#b3
	db #02,#be,#b7,#00,#b5,#b3,#02,#c5
	db #b7,#00,#be,#b3,#02,#cd,#b7,#00
	db #c5,#b3,#02,#d6,#b7,#00,#cd,#b3
	db #02,#dd,#b7,#00,#cd,#b3,#02,#d6
	db #b7,#00,#c5,#b3,#02,#cd,#b7,#00
	db #be,#b3,#02,#c5,#b7,#00,#b5,#b3
	db #02,#be,#b7,#00,#b5,#b3,#02,#c5
	db #b7,#00,#be,#b3,#02,#cd,#b7,#00
	db #c5,#b3,#02,#d6,#b7,#00,#cd,#b3
	db #02,#db,#b7,#00,#cc,#b3,#02,#d4
	db #b7,#00,#c3,#b3,#02,#cc,#b7,#00
	db #bc,#b3,#02,#c3,#b7,#00,#b4,#b3
	db #02,#ff,#ba,#b7,#01,#b2,#b3,#03
	db #c1,#b7,#01,#b9,#b3,#03,#c6,#b7
	db #01,#be,#b3,#03,#cd,#b7,#01,#c5
	db #b3,#03,#d2,#b7,#01,#c8,#b3,#03
	db #d6,#b7,#01,#c8,#b3,#03,#d2,#b7
	db #01,#c1,#b3,#03,#ca,#b7,#01,#ba
	db #b3,#03,#bc,#b7,#02,#b4,#b3,#04
	db #c3,#b7,#02,#bc,#b3,#04,#cc,#b7
	db #02,#c3,#b3,#04,#d4,#b7,#02,#ca
	db #b3,#04,#d8,#b7,#02,#cd,#b3,#04
	db #db,#b7,#02,#cd,#b3,#04,#d8,#b7
	db #02,#ca,#b3,#04,#d4,#b7,#02,#c3
	db #b3,#04,#be,#b7,#03,#b5,#b3,#05
	db #c5,#b7,#03,#be,#b3,#05,#cd,#b7
	db #03,#c5,#b3,#05,#d6,#b7,#03,#cd
	db #b3,#05,#dd,#b7,#03,#cd,#b3,#05
	db #d6,#b7,#03,#c5,#b3,#05,#cd,#b7
	db #03,#be,#b3,#05,#c5,#b7,#03,#b5
	db #b3,#05,#be,#b7,#04,#b5,#b3,#06
	db #c5,#b7,#04,#be,#b3,#06,#cd,#b7
	db #04,#c5,#b3,#06,#d6,#b7,#04,#cd
	db #b3,#06,#db,#b7,#04,#cc,#b3,#06
	db #d4,#b7,#04,#c3,#b3,#06,#cc,#b7
	db #04,#bc,#b3,#06,#c3,#b7,#04,#b4
	db #b3,#06,#ff,#26,#40,#b4,#07,#ff
	db #00,#40,#ff,#00,#40,#ff,#00,#30
	db #3e,#04,#b9,#02,#3e,#04,#09,#ae
	db #07,#b2,#07,#b5,#07,#ba,#07,#b0
	db #07,#b4,#07,#b7,#07,#bc,#07,#ff
	db #41,#10,#b4,#02,#3e,#10,#04,#40
	db #04,#07,#41,#82,#40,#84,#3e,#82
	db #3c,#84,#39,#10,#b4,#02,#ff,#41
	db #10,#b4,#02,#3e,#10,#04,#40,#04
	db #07,#41,#82,#40,#84,#3e,#82,#3c
	db #84,#3e,#08,#b4,#02,#ae,#07,#b2
	db #07,#b5,#07,#ba,#07,#b0,#07,#b4
	db #07,#b7,#07,#bc,#07,#ff,#c5,#f7
	db #02,#c1,#07,#be,#07,#c1,#07,#c6
	db #07,#c1,#07,#be,#07,#c1,#07,#c5
	db #07,#c1,#07,#be,#07,#c1,#07,#c3
	db #07,#c0,#07,#bc,#07,#c0,#07,#c1
	db #07,#be,#07,#ba,#07,#be,#07,#c3
	db #07,#c0,#07,#bc,#07,#c0,#07,#c1
	db #07,#be,#07,#ba,#07,#be,#07,#c0
	db #07,#bc,#07,#b9,#07,#c0,#07,#c1
	db #07,#be,#07,#ba,#07,#be,#07,#c3
	db #07,#c0,#07,#bc,#07,#c0,#07,#c5
	db #07,#c1,#07,#be,#07,#c1,#07,#c6
	db #07,#c3,#07,#c0,#07,#c5,#07,#3e
	db #04,#f6,#00,#3e,#04,#b4,#02,#3e
	db #04,#b4,#04,#3e,#04,#b4,#06,#ff
	db #3e,#02,#f7,#02,#40,#02,#07,#41
	db #82,#40,#82,#41,#82,#43,#82,#41
	db #82,#40,#82,#41,#82,#40,#84,#3e
	db #88,#40,#82,#45,#82,#39,#82,#43
	db #82,#37,#82,#41,#82,#35,#82,#40
	db #82,#34,#82,#3e,#8a,#28,#04,#13
	db #24,#02,#03,#ff,#be,#b9,#00,#be
	db #09,#be,#b9,#01,#be,#09,#be,#b9
	db #02,#be,#09,#be,#b9,#03,#be,#09
	db #be,#b9,#04,#be,#09,#be,#b9,#05
	db #be,#09,#be,#b9,#06,#be,#09,#be
	db #b9,#07,#be,#09,#ba,#b9,#00,#ba
	db #09,#ba,#b9,#01,#ba,#09,#ba,#b9
	db #02,#ba,#09,#ba,#b9,#03,#ba,#09
	db #ba,#b9,#04,#ba,#09,#ba,#b9,#05
	db #ba,#09,#ba,#b9,#06,#ba,#09,#ba
	db #b9,#07,#ba,#09,#bc,#b9,#00,#bc
	db #09,#bc,#b9,#01,#bc,#09,#bc,#b9
	db #02,#bc,#09,#bc,#b9,#03,#bc,#09
	db #bc,#b9,#04,#bc,#09,#bc,#b9,#05
	db #bc,#09,#bc,#b9,#06,#bc,#09,#bc
	db #b9,#07,#bc,#09,#be,#b9,#00,#be
	db #09,#be,#b9,#01,#be,#09,#be,#b9
	db #02,#be,#09,#be,#b9,#03,#be,#09
	db #be,#b9,#04,#be,#09,#be,#b9,#05
	db #be,#09,#be,#b9,#06,#be,#09,#be
	db #b9,#07,#be,#09,#ff,#ca,#b9,#00
	db #b2,#09,#ca,#b9,#01,#b2,#09,#ca
	db #b9,#02,#b2,#09,#ca,#b9,#03,#b2
	db #09,#ca,#b9,#04,#b2,#09,#ca,#b9
	db #05,#b2,#09,#ca,#b9,#06,#b2,#09
	db #ca,#b9,#07,#b2,#09,#c6,#b9,#00
	db #ae,#09,#c6,#b9,#01,#ae,#09,#c6
	db #b9,#02,#ae,#09,#c6,#b9,#03,#ae
	db #09,#c6,#b9,#04,#ae,#09,#c6,#b9
	db #05,#ae,#09,#c6,#b9,#06,#ae,#09
	db #c6,#b9,#07,#ae,#09,#c8,#b9,#00
	db #b0,#09,#c8,#b9,#01,#b0,#09,#c8
	db #b9,#02,#b0,#09,#c8,#b9,#03,#b0
	db #09,#c8,#b9,#04,#b0,#09,#c8,#b9
	db #05,#b0,#09,#c8,#b9,#06,#b0,#09
	db #c8,#b9,#07,#b0,#09,#ca,#b9,#00
	db #b2,#09,#ca,#b9,#01,#b2,#09,#ca
	db #b9,#02,#b2,#09,#ca,#b9,#03,#b2
	db #09,#ca,#b9,#04,#b2,#09,#ca,#b9
	db #05,#b2,#09,#ca,#b9,#06,#b2,#09
	db #ca,#b9,#07,#b2,#09,#ff,#26,#10
	db #b4,#00,#a6,#b5,#01,#a6,#b4,#02
	db #a6,#b5,#03,#a6,#b4,#04,#a6,#b5
	db #05,#a6,#b4,#06,#a6,#b5,#07,#a6
	db #b4,#08,#a6,#b5,#09,#a6,#b4,#0a
	db #a6,#b5,#0b,#a6,#b4,#0c,#26,#03
	db #b5,#0d,#62,#04,#ab,#00,#53,#03
	db #0b,#4b,#03,#db,#08,#46,#03,#db
	db #08,#42,#03,#db,#08,#3f,#03,#db
	db #08,#3c,#03,#db,#08,#39,#03,#db
	db #08,#37,#03,#db,#08,#35,#03,#db
	db #09,#ee,#17,#ee,#d7,#3f,#ff,#00
	db #03,#6e,#02,#12,#6e,#03,#d2,#08
	db #6e,#04,#d2,#06,#6e,#04,#02,#6e
	db #84,#6e,#84,#6e,#84,#6e,#84,#6e
	db #84,#6e,#84,#6e,#84,#6e,#84,#56
	db #84,#56,#84,#56,#82,#33,#02,#b1
	db #04,#3f,#02,#01,#bf,#01,#bf,#01
	db #ff,#3e,#06,#06,#40,#82,#41,#84
	db #43,#82,#45,#84,#4a,#8a,#4a,#02
	db #f6,#00,#4a,#02,#16,#48,#06,#06
	db #4a,#82,#48,#84,#46,#82,#45,#90
	db #48,#82,#ff,#46,#06,#06,#48,#82
	db #46,#84,#45,#82,#43,#8e,#41,#02
	db #f6,#00,#43,#02,#16,#45,#0a,#06
	db #3c,#82,#41,#82,#3c,#82,#3d,#82
	db #3e,#82,#40,#82,#3d,#82,#45,#02
	db #05,#43,#82,#41,#82,#40,#82,#ff
	db #46,#06,#06,#48,#82,#46,#84,#45
	db #82,#43,#8e,#41,#02,#f6,#00,#43
	db #02,#16,#45,#02,#06,#4d,#82,#4f
	db #82,#51,#84,#48,#82,#4d,#82,#48
	db #82,#49,#82,#4a,#82,#4c,#82,#49
	db #82,#45,#02,#07,#46,#82,#c5,#07
	db #c6,#07,#c5,#07,#c6,#07,#ff,#46
	db #06,#06,#48,#82,#46,#84,#45,#82
	db #43,#8e,#41,#02,#f6,#00,#43,#02
	db #16,#45,#02,#06,#4d,#82,#4f,#82
	db #51,#84,#48,#82,#4d,#82,#48,#82
	db #49,#82,#4a,#82,#4c,#82,#49,#82
	db #51,#02,#07,#52,#82,#d1,#07,#d2
	db #07,#d1,#07,#d2,#07,#ff,#ae,#03
	db #b2,#03,#b5,#03,#b9,#03,#ba,#03
	db #be,#03,#c1,#03,#c5,#03,#c6,#03
	db #c8,#03,#ca,#03,#c8,#03,#c6,#03
	db #c1,#03,#be,#03,#ba,#03,#b0,#03
	db #b4,#03,#b7,#03,#bc,#03,#c0,#03
	db #c3,#03,#c8,#03,#ca,#03,#cc,#03
	db #cd,#03,#cf,#03,#cd,#03,#cc,#03
	db #ca,#03,#c8,#03,#c3,#03,#b2,#03
	db #b5,#03,#b9,#03,#be,#03,#c1,#03
	db #c5,#03,#ca,#03,#cd,#03,#d1,#03
	db #cd,#03,#ca,#03,#c5,#03,#c1,#03
	db #be,#03,#b9,#03,#b5,#03,#b2,#03
	db #b5,#03,#b9,#03,#be,#03,#c1,#03
	db #c5,#03,#ca,#03,#cd,#03,#cf,#03
	db #cc,#03,#c8,#03,#c3,#03,#c0,#03
	db #bc,#03,#b7,#03,#b4,#03,#ff,#ae
	db #03,#b2,#03,#b5,#03,#b9,#03,#ba
	db #03,#be,#03,#c1,#03,#c5,#03,#c6
	db #03,#c8,#03,#ca,#03,#c8,#03,#c6
	db #03,#c1,#03,#be,#03,#ba,#03,#b0
	db #03,#b4,#03,#b7,#03,#bc,#03,#c0
	db #03,#c3,#03,#c8,#03,#ca,#03,#cc
	db #03,#cd,#03,#cf,#03,#cd,#03,#cc
	db #03,#ca,#03,#c8,#03,#c3,#03,#39
	db #02,#07,#35,#82,#3a,#82,#35,#82
	db #3c,#82,#35,#82,#3a,#82,#35,#82
	db #39,#82,#35,#82,#37,#82,#34,#82
	db #35,#82,#32,#82,#31,#82,#2e,#82
	db #ff,#ae,#03,#be,#07,#b5,#03,#c5
	db #07,#ba,#03,#ca,#07,#c1,#03,#d1
	db #07,#c6,#03,#d4,#07,#ca,#03,#d4
	db #07,#c6,#03,#cd,#07,#be,#03,#c6
	db #07,#b0,#03,#c0,#07,#b7,#03,#c8
	db #07,#c0,#03,#cf,#07,#c8,#03,#d6
	db #07,#cc,#03,#d9,#07,#cf,#03,#d9
	db #07,#cc,#03,#d6,#07,#c8,#03,#cf
	db #07,#b2,#03,#c1,#07,#b9,#03,#ca
	db #07,#c1,#03,#d1,#07,#ca,#03,#d9
	db #07,#d1,#03,#d9,#07,#ca,#03,#d1
	db #07,#c1,#03,#ca,#07,#b9,#03,#c1
	db #07,#b2,#03,#c1,#07,#b9,#03,#ca
	db #07,#c1,#03,#d1,#07,#ca,#03,#d9
	db #07,#cf,#03,#d8,#07,#c8,#03,#cf
	db #07,#c0,#03,#c8,#07,#b7,#03,#c0
	db #07,#ff,#ae,#03,#be,#07,#b5,#03
	db #c5,#07,#ba,#03,#ca,#07,#c1,#03
	db #d1,#07,#c6,#03,#d4,#07,#ca,#03
	db #d4,#07,#c6,#03,#cd,#07,#be,#03
	db #c6,#07,#b0,#03,#c0,#07,#b7,#03
	db #c8,#07,#c0,#03,#cf,#07,#c8,#03
	db #d6,#07,#cc,#03,#d9,#07,#cf,#03
	db #d9,#07,#cc,#03,#d6,#07,#c8,#03
	db #cf,#07,#b2,#03,#c1,#07,#b9,#03
	db #ca,#07,#c1,#03,#d1,#07,#ca,#03
	db #d9,#07,#d1,#03,#d9,#07,#ca,#03
	db #d1,#07,#c1,#03,#ca,#07,#b9,#03
	db #c1,#07,#b2,#03,#c1,#07,#b9,#03
	db #ca,#07,#c1,#03,#d1,#07,#ca,#03
	db #d9,#07,#cf,#03,#d8,#07,#c8,#03
	db #cf,#07,#c0,#03,#c8,#07,#b7,#03
	db #c0,#07,#ff,#4a,#0e,#06,#c8,#06
	db #ca,#06,#48,#86,#ca,#06,#cc,#06
	db #4d,#82,#4c,#82,#4a,#82,#43,#82
	db #45,#90,#3e,#90,#ff,#3a,#10,#06
	db #39,#10,#b6,#01,#32,#10,#b6,#02
	db #2e,#08,#b6,#03,#2d,#08,#06,#ff
	db #26,#40,#b6,#04,#ff,#32,#02,#17
	db #39,#02,#07,#32,#82,#39,#82,#32
	db #82,#39,#82,#32,#82,#39,#82,#2e
	db #82,#35,#82,#2e,#82,#35,#82,#2e
	db #82,#35,#82,#2e,#82,#35,#82,#30
	db #82,#37,#82,#30,#82,#37,#82,#30
	db #82,#37,#82,#30,#82,#37,#82,#32
	db #82,#39,#82,#32,#82,#39,#82,#32
	db #82,#39,#82,#32,#82,#39,#82,#ff
	db #32,#02,#08,#39,#82,#32,#82,#39
	db #82,#32,#82,#39,#82,#32,#82,#39
	db #82,#2e,#82,#35,#82,#2e,#82,#35
	db #82,#2e,#82,#35,#82,#2e,#82,#35
	db #82,#30,#82,#37,#82,#30,#82,#37
	db #82,#30,#82,#37,#82,#30,#82,#37
	db #82,#32,#82,#39,#82,#32,#82,#39
	db #82,#2e,#82,#35,#82,#30,#82,#37
	db #82,#ff,#32,#02,#08,#39,#82,#32
	db #82,#39,#82,#32,#82,#39,#82,#32
	db #82,#39,#82,#2e,#82,#35,#82,#2e
	db #82,#35,#82,#2e,#82,#35,#82,#2e
	db #82,#35,#82,#30,#82,#37,#82,#30
	db #82,#37,#82,#30,#82,#37,#82,#30
	db #82,#37,#82,#32,#82,#39,#82,#32
	db #82,#39,#82,#2e,#82,#35,#02,#07
	db #30,#82,#37,#82,#ff,#32,#02,#08
	db #39,#82,#32,#82,#39,#82,#32,#82
	db #39,#82,#32,#82,#39,#82,#2e,#82
	db #35,#82,#2e,#82,#35,#82,#2e,#82
	db #35,#82,#2e,#82,#35,#82,#30,#82
	db #37,#82,#30,#82,#37,#82,#30,#82
	db #37,#82,#30,#82,#37,#82,#32,#82
	db #39,#82,#32,#82,#39,#82,#2e,#82
	db #35,#82,#30,#82,#37,#82,#ff,#32
	db #02,#08,#39,#82,#32,#82,#39,#82
	db #32,#82,#39,#82,#32,#82,#b9,#08
	db #b9,#08,#2e,#82,#35,#82,#2e,#82
	db #35,#82,#2e,#82,#35,#82,#2e,#82
	db #35,#82,#30,#82,#37,#82,#30,#82
	db #37,#82,#30,#82,#37,#82,#30,#82
	db #37,#82,#32,#82,#39,#82,#32,#82
	db #39,#82,#2e,#82,#35,#82,#30,#82
	db #37,#82,#ff,#b2,#b9,#00,#ca,#09
	db #b2,#b9,#01,#ca,#09,#b2,#b9,#02
	db #ca,#09,#b2,#b9,#03,#ca,#09,#b2
	db #b9,#04,#ca,#09,#b2,#b9,#05,#ca
	db #09,#b2,#b9,#06,#ca,#09,#b2,#b9
	db #07,#ca,#09,#ae,#b9,#00,#c6,#09
	db #ae,#b9,#01,#c6,#09,#ae,#b9,#02
	db #c6,#09,#ae,#b9,#03,#c6,#09,#ae
	db #b9,#04,#c6,#09,#ae,#b9,#05,#c6
	db #09,#ae,#b9,#06,#c6,#09,#ae,#b9
	db #07,#c6,#09,#b0,#b9,#00,#c8,#09
	db #b0,#b9,#01,#c8,#09,#b0,#b9,#02
	db #c8,#09,#b0,#b9,#03,#c8,#09,#b0
	db #b9,#04,#c8,#09,#b0,#b9,#05,#c8
	db #09,#b0,#b9,#06,#c8,#09,#b0,#b9
	db #07,#c8,#09,#b2,#b9,#00,#ca,#09
	db #b2,#b9,#01,#ca,#09,#b2,#b9,#02
	db #ca,#09,#b2,#b9,#03,#ca,#09,#b2
	db #b9,#04,#ca,#09,#b2,#b9,#05,#ca
	db #09,#b2,#b9,#06,#ca,#09,#b2,#b9
	db #07,#a6,#a3,#0c,#ff,#ee,#da,#08
	db #26,#0f,#a3,#0c,#6e,#90,#62,#04
	db #ab,#00,#53,#03,#0b,#4b,#83,#46
	db #83,#42,#83,#3f,#83,#3c,#83,#39
	db #83,#37,#83,#35,#82,#6e,#02,#17
	db #ff,#a1,#d3,#0c,#a4,#03,#a1,#03
	db #26,#2d,#b5,#04,#26,#04,#b4,#05
	db #26,#04,#b4,#06,#26,#02,#b4,#07
	db #33,#02,#01,#33,#82,#b3,#01,#b3
	db #01,#ff,#26,#02,#10,#26,#02,#f3
	db #02,#33,#02,#11,#26,#02,#f3,#02
	db #26,#02,#10,#26,#02,#f3,#02,#33
	db #02,#11,#24,#02,#f3,#02,#26,#02
	db #10,#26,#02,#f3,#02,#33,#02,#11
	db #26,#02,#f3,#02,#26,#02,#10,#26
	db #02,#f3,#02,#33,#02,#11,#24,#02
	db #f3,#02,#26,#02,#10,#21,#02,#f3
	db #02,#33,#02,#11,#21,#02,#f3,#02
	db #26,#02,#10,#21,#02,#f3,#02,#33
	db #02,#11,#1f,#02,#f3,#02,#26,#02
	db #10,#21,#02,#f3,#02,#33,#02,#11
	db #21,#02,#f3,#02,#26,#02,#10,#21
	db #02,#f3,#02,#33,#02,#11,#a0,#13
	db #a1,#03,#ff,#26,#02,#10,#22,#02
	db #f3,#02,#33,#02,#11,#22,#02,#f3
	db #02,#26,#02,#10,#22,#02,#f3,#02
	db #33,#02,#11,#21,#02,#f3,#02,#26
	db #02,#10,#22,#02,#f3,#02,#33,#02
	db #11,#22,#02,#f3,#02,#26,#02,#10
	db #22,#02,#f3,#02,#33,#02,#11,#22
	db #02,#f3,#02,#26,#02,#10,#24,#02
	db #f3,#02,#33,#02,#11,#24,#02,#f3
	db #02,#26,#02,#10,#24,#02,#f3,#02
	db #33,#02,#11,#24,#02,#f3,#02,#26
	db #02,#10,#21,#02,#f3,#02,#33,#02
	db #11,#21,#02,#f3,#02,#26,#02,#10
	db #21,#02,#f3,#02,#33,#02,#11,#26
	db #02,#00,#ff,#26,#02,#10,#22,#02
	db #f3,#02,#33,#02,#11,#22,#02,#f3
	db #02,#26,#02,#10,#22,#02,#f3,#02
	db #33,#02,#11,#21,#02,#f3,#02,#26
	db #02,#10,#22,#02,#f3,#02,#33,#02
	db #11,#22,#02,#f3,#02,#26,#02,#10
	db #22,#02,#f3,#02,#33,#02,#11,#22
	db #02,#f3,#02,#26,#02,#10,#24,#02
	db #f3,#02,#33,#02,#11,#24,#02,#f3
	db #02,#26,#02,#10,#24,#02,#f3,#02
	db #33,#02,#11,#24,#02,#f3,#02,#26
	db #02,#10,#25,#02,#f3,#02,#33,#02
	db #11,#25,#02,#f3,#02,#26,#02,#10
	db #25,#02,#f3,#02,#33,#02,#11,#a5
	db #f3,#02,#b3,#11,#ff,#26,#02,#10
	db #22,#02,#f3,#02,#33,#02,#11,#22
	db #02,#f3,#02,#26,#02,#10,#22,#02
	db #f3,#02,#33,#02,#11,#22,#02,#f3
	db #02,#26,#02,#10,#24,#02,#f3,#02
	db #33,#02,#11,#24,#02,#f3,#02,#26
	db #02,#10,#24,#02,#f3,#02,#33,#02
	db #11,#a4,#f3,#02,#a6,#10,#26,#02
	db #00,#26,#02,#f3,#02,#33,#02,#11
	db #26,#02,#f3,#02,#26,#02,#10,#26
	db #02,#f3,#02,#33,#02,#11,#24,#02
	db #f3,#02,#26,#02,#10,#26,#02,#f3
	db #02,#33,#02,#11,#26,#02,#f3,#02
	db #26,#02,#10,#24,#02,#f3,#02,#33
	db #02,#11,#b3,#01,#b3,#01,#ff,#26
	db #02,#10,#22,#02,#f3,#02,#33,#02
	db #11,#22,#02,#f3,#02,#26,#02,#10
	db #22,#02,#f3,#02,#33,#02,#11,#22
	db #02,#f3,#02,#26,#02,#10,#24,#02
	db #f3,#02,#33,#02,#11,#24,#02,#f3
	db #02,#26,#02,#10,#24,#02,#f3,#02
	db #33,#02,#11,#24,#02,#f3,#02,#26
	db #02,#10,#26,#02,#f3,#02,#33,#02
	db #11,#26,#02,#f3,#02,#26,#02,#10
	db #26,#02,#f3,#02,#33,#02,#11,#24
	db #02,#f3,#02,#26,#02,#10,#26,#02
	db #f3,#02,#33,#02,#11,#26,#02,#f3
	db #02,#26,#02,#10,#26,#02,#f3,#02
	db #33,#02,#11,#b3,#01,#b3,#01,#ff
	db #26,#02,#10,#22,#02,#f3,#02,#33
	db #02,#11,#22,#02,#f3,#02,#26,#02
	db #10,#22,#02,#f3,#02,#33,#02,#11
	db #22,#02,#f3,#02,#26,#02,#10,#24
	db #02,#f3,#02,#33,#02,#11,#24,#02
	db #f3,#02,#26,#02,#10,#24,#02,#f3
	db #02,#33,#02,#11,#24,#02,#f3,#02
	db #26,#02,#10,#26,#02,#f3,#02,#33
	db #02,#11,#26,#02,#f3,#02,#26,#02
	db #10,#26,#02,#f3,#02,#33,#02,#11
	db #24,#02,#f3,#02,#26,#02,#10,#26
	db #02,#f3,#02,#33,#02,#11,#26,#02
	db #f3,#02,#26,#02,#10,#26,#02,#f3
	db #02,#33,#02,#11,#b3,#01,#b3,#01
	db #ff,#26,#02,#10,#a2,#f3,#02,#a2
	db #03,#33,#02,#11,#a2,#f3,#02,#a2
	db #03,#26,#02,#10,#a2,#f3,#02,#a2
	db #03,#33,#02,#11,#a2,#f3,#02,#a2
	db #03,#26,#02,#10,#a4,#f3,#02,#a4
	db #03,#33,#02,#11,#a4,#f3,#02,#a4
	db #03,#26,#02,#10,#a4,#f3,#02,#a4
	db #03,#33,#02,#11,#a4,#f3,#02,#a4
	db #03,#26,#02,#10,#a6,#f3,#02,#a6
	db #03,#33,#02,#11,#a6,#f3,#02,#a6
	db #03,#26,#02,#10,#a6,#f3,#02,#a6
	db #03,#33,#02,#11,#a4,#f3,#02,#a4
	db #03,#26,#02,#10,#a6,#f3,#02,#a6
	db #03,#33,#02,#11,#a6,#f3,#02,#a6
	db #03,#26,#02,#10,#a4,#f3,#02,#a4
	db #03,#33,#02,#11,#b3,#01,#b3,#01
	db #ff,#26,#02,#10,#6e,#02,#02,#33
	db #02,#01,#6e,#02,#02,#26,#02,#00
	db #6e,#02,#02,#33,#02,#01,#6e,#02
	db #02,#26,#02,#00,#6e,#02,#02,#33
	db #02,#01,#6e,#02,#02,#26,#02,#00
	db #6e,#02,#02,#33,#02,#01,#a6,#00
	db #a6,#00,#26,#82,#6e,#02,#02,#33
	db #02,#01,#6e,#02,#02,#26,#02,#00
	db #6e,#02,#02,#33,#02,#01,#6e,#02
	db #02,#26,#02,#00,#6e,#02,#02,#33
	db #02,#01,#6e,#02,#02,#b3,#01,#b3
	db #01,#b3,#01,#33,#83,#33,#82,#ff
	db #ae,#b3,#02,#be,#b7,#00,#b5,#b3
	db #02,#c5,#b7,#00,#ba,#b3,#02,#ca
	db #b7,#00,#c1,#b3,#02,#d1,#b7,#00
	db #c6,#b3,#02,#d4,#b7,#00,#ca,#b3
	db #02,#d4,#b7,#00,#c6,#b3,#02,#cd
	db #b7,#00,#be,#b3,#02,#c6,#b7,#00
	db #b0,#b3,#02,#c0,#b7,#00,#b7,#b3
	db #02,#c8,#b7,#00,#c0,#b3,#02,#cf
	db #b7,#00,#c8,#b3,#02,#d6,#b7,#00
	db #cc,#b3,#02,#d9,#b7,#00,#cf,#b3
	db #02,#d9,#b7,#00,#cc,#b3,#02,#d6
	db #b7,#00,#c8,#b3,#02,#cf,#b7,#00
	db #b2,#b3,#02,#c1,#b7,#00,#b9,#b3
	db #02,#ca,#b7,#00,#c1,#b3,#02,#d1
	db #b7,#00,#ca,#b3,#02,#d9,#b7,#00
	db #d1,#b3,#02,#d9,#b7,#00,#ca,#b3
	db #02,#d1,#b7,#00,#c1,#b3,#02,#ca
	db #b7,#00,#b9,#b3,#02,#c1,#b7,#00
	db #b2,#b3,#02,#c1,#b7,#00,#b9,#b3
	db #02,#ca,#b7,#00,#c1,#b3,#02,#d1
	db #b7,#00,#ca,#b3,#02,#d9,#b7,#00
	db #cf,#b3,#02,#d8,#b7,#00,#c8,#b3
	db #02,#cf,#b7,#00,#c0,#b3,#02,#c8
	db #b7,#00,#b7,#b3,#02,#c0,#b7,#00
	db #ff,#ae,#b3,#03,#be,#b7,#01,#b5
	db #b3,#03,#c5,#b7,#01,#ba,#b3,#03
	db #ca,#b7,#01,#c1,#b3,#03,#d1,#b7
	db #01,#c6,#b3,#03,#d4,#b7,#01,#ca
	db #b3,#03,#d4,#b7,#01,#c6,#b3,#03
	db #cd,#b7,#01,#be,#b3,#03,#c6,#b7
	db #01,#b0,#b3,#04,#c0,#b7,#02,#b7
	db #b3,#04,#c8,#b7,#02,#c0,#b3,#04
	db #cf,#b7,#02,#c8,#b3,#04,#d6,#b7
	db #02,#cc,#b3,#04,#d9,#b7,#02,#cf
	db #b3,#04,#d9,#b7,#02,#cc,#b3,#04
	db #d6,#b7,#02,#c8,#b3,#04,#cf,#b7
	db #02,#b2,#b3,#05,#c1,#b7,#03,#b9
	db #b3,#05,#ca,#b7,#03,#c1,#b3,#05
	db #d1,#b7,#03,#ca,#b3,#05,#d9,#b7
	db #03,#d1,#b3,#05,#d9,#b7,#03,#ca
	db #b3,#05,#d1,#b7,#03,#c1,#b3,#05
	db #ca,#b7,#03,#b9,#b3,#05,#c1,#b7
	db #03,#b2,#b3,#06,#c1,#b7,#04,#b9
	db #b3,#06,#ca,#b7,#04,#c1,#b3,#06
	db #d1,#b7,#04,#ca,#b3,#06,#d9,#b7
	db #04,#cf,#b3,#06,#d8,#b7,#04,#c8
	db #b3,#06,#cf,#b7,#04,#c0,#b3,#06
	db #c8,#b7,#04,#b7,#b3,#06,#c0,#b7
	db #04,#ff,#26,#3f,#b5,#07,#ee,#d7
	db #05,#ff,#27,#02,#10,#26,#02,#f3
	db #02,#34,#02,#11,#26,#02,#f3,#02
	db #27,#02,#10,#26,#02,#f3,#02,#34
	db #02,#11,#26,#02,#f3,#02,#27,#02
	db #10,#22,#02,#f3,#02,#34,#02,#11
	db #22,#02,#f3,#02,#27,#02,#10,#22
	db #02,#f3,#02,#34,#02,#11,#22,#02
	db #f3,#02,#27,#02,#10,#24,#02,#f3
	db #02,#34,#02,#11,#24,#02,#f3,#02
	db #27,#02,#10,#24,#02,#f3,#02,#34
	db #02,#11,#24,#02,#f3,#02,#27,#02
	db #10,#26,#02,#f3,#02,#34,#02,#11
	db #26,#02,#f3,#02,#27,#02,#10,#22
	db #02,#f3,#02,#34,#02,#11,#24,#02
	db #f3,#02,#ff,#27,#02,#10,#26,#02
	db #f3,#02,#34,#02,#11,#26,#02,#f3
	db #02,#27,#02,#10,#26,#02,#f3,#02
	db #34,#02,#11,#26,#02,#f3,#02,#27
	db #02,#10,#22,#02,#f3,#02,#34,#02
	db #11,#22,#02,#f3,#02,#27,#02,#10
	db #22,#02,#f3,#02,#34,#02,#11,#22
	db #02,#f3,#02,#27,#02,#10,#24,#02
	db #f3,#02,#34,#02,#11,#24,#02,#f3
	db #02,#27,#02,#10,#24,#02,#f3,#02
	db #34,#02,#11,#24,#02,#f3,#02,#27
	db #02,#10,#26,#02,#f3,#02,#34,#02
	db #11,#26,#02,#f3,#02,#27,#02,#10
	db #22,#02,#f3,#02,#34,#02,#11,#27
	db #02,#00,#ff,#27,#02,#10,#26,#02
	db #f3,#02,#34,#02,#11,#26,#02,#f3
	db #02,#27,#02,#10,#26,#02,#f3,#02
	db #34,#02,#11,#26,#02,#f3,#02,#27
	db #02,#10,#22,#02,#f3,#02,#34,#02
	db #11,#22,#02,#f3,#02,#27,#02,#10
	db #22,#02,#f3,#02,#34,#02,#11,#22
	db #02,#f3,#02,#27,#02,#10,#24,#02
	db #f3,#02,#34,#02,#11,#24,#02,#f3
	db #02,#27,#02,#10,#24,#02,#f3,#02
	db #34,#02,#11,#24,#02,#f3,#02,#27
	db #02,#10,#26,#02,#f3,#02,#34,#02
	db #11,#26,#02,#f3,#02,#27,#02,#10
	db #34,#02,#11,#34,#02,#01,#34,#82
	db #ff,#27,#02,#10,#26,#02,#f3,#02
	db #34,#02,#11,#26,#02,#f3,#02,#27
	db #02,#10,#26,#02,#f3,#02,#34,#02
	db #11,#26,#02,#f3,#02,#27,#02,#10
	db #26,#02,#f3,#02,#34,#02,#11,#26
	db #02,#f3,#02,#27,#02,#10,#a6,#f3
	db #02,#a6,#03,#34,#02,#11,#a6,#f3
	db #02,#a6,#03,#27,#02,#10,#24,#02
	db #f3,#02,#34,#02,#11,#24,#02,#f3
	db #02,#27,#02,#10,#24,#02,#f3,#02
	db #34,#02,#11,#24,#02,#f3,#02,#27
	db #02,#10,#29,#02,#f3,#02,#34,#02
	db #11,#29,#02,#f3,#02,#27,#02,#10
	db #28,#02,#f3,#02,#34,#02,#11,#24
	db #02,#f3,#02,#ff,#27,#02,#10,#26
	db #02,#f3,#02,#34,#02,#11,#26,#02
	db #f3,#02,#27,#02,#10,#26,#02,#f3
	db #02,#34,#02,#11,#26,#02,#f3,#02
	db #27,#02,#10,#26,#02,#f3,#02,#34
	db #02,#11,#26,#02,#f3,#02,#27,#02
	db #10,#a6,#f3,#02,#a6,#03,#34,#02
	db #11,#a6,#f3,#02,#a6,#03,#27,#02
	db #10,#24,#02,#f3,#02,#34,#02,#11
	db #24,#02,#f3,#02,#27,#02,#10,#24
	db #02,#f3,#02,#34,#02,#11,#24,#02
	db #f3,#02,#27,#02,#10,#29,#02,#f3
	db #02,#34,#02,#11,#29,#02,#f3,#02
	db #27,#02,#10,#27,#02,#00,#b4,#01
	db #b4,#01,#b4,#01,#b4,#01,#ff,#27
	db #02,#10,#26,#02,#f3,#02,#27,#02
	db #10,#26,#02,#f3,#02,#34,#02,#11
	db #26,#02,#f3,#02,#27,#02,#10,#26
	db #02,#f3,#02,#27,#02,#10,#22,#02
	db #f3,#02,#27,#02,#10,#22,#02,#f3
	db #02,#34,#02,#11,#22,#02,#f3,#02
	db #27,#02,#10,#22,#02,#f3,#02,#27
	db #02,#10,#24,#02,#f3,#02,#27,#02
	db #10,#24,#02,#f3,#02,#34,#02,#11
	db #24,#02,#f3,#02,#27,#02,#10,#24
	db #02,#f3,#02,#27,#02,#10,#26,#02
	db #f3,#02,#27,#02,#10,#26,#02,#f3
	db #02,#27,#02,#10,#22,#02,#f3,#02
	db #34,#02,#11,#27,#02,#00,#ff,#27
	db #02,#10,#26,#02,#f3,#02,#27,#02
	db #10,#26,#02,#f3,#02,#34,#02,#11
	db #26,#02,#f3,#02,#27,#02,#10,#26
	db #02,#f3,#02,#27,#02,#10,#22,#02
	db #f3,#02,#27,#02,#10,#22,#02,#f3
	db #02,#34,#02,#11,#22,#02,#f3,#02
	db #27,#02,#10,#22,#02,#f3,#02,#27
	db #02,#10,#24,#02,#f3,#02,#27,#02
	db #10,#24,#02,#f3,#02,#34,#02,#11
	db #24,#02,#f3,#02,#27,#02,#10,#24
	db #02,#f3,#02,#27,#02,#10,#26,#02
	db #f3,#02,#27,#02,#10,#26,#02,#f3
	db #02,#27,#02,#10,#22,#02,#f3,#02
	db #34,#02,#11,#24,#02,#f3,#02,#ff
	db #26,#10,#b5,#00,#a6,#b4,#01,#a6
	db #b5,#02,#a6,#b4,#03,#a6,#b5,#04
	db #a6,#b4,#05,#a6,#b5,#06,#a6,#b4
	db #07,#a6,#b5,#08,#a6,#b4,#09,#a6
	db #b5,#0a,#a6,#b4,#0b,#a6,#b5,#0c
	db #26,#05,#b4,#0d,#62,#04,#ab,#00
	db #53,#03,#db,#10,#4b,#03,#db,#10
	db #46,#03,#db,#10,#42,#03,#db,#10
	db #3f,#03,#db,#10,#3c,#03,#db,#10
	db #39,#03,#db,#10,#37,#03,#db,#10
	db #b5,#db,#30,#6e,#02,#17,#ff
;
.music_info
	db "Audio Illusions - 45 - The End (1996)(Systeme D)(Frequency)",0
	db "ST-Module",0

	read "music_end.asm"