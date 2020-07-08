; Music of Boxon 3 End (2001)(Da Boxon Team)()(ST-128 Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON3EN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #4000

	read "music_header.asm"

	jp l4009
	jp l409d
	jp l4081
;
.init_music
.l4009
;
	xor a
	ld hl,l45b4
	call l407a
	ld hl,l45e2
	call l407a
	ld hl,l4610
	call l407a
	ld ix,l45b0
	ld iy,l463a
	ld de,#002e
	ld b,#03
.l4029
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
	djnz l4029
	ld hl,l44c9
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
	ld (l44c5),hl
	ld (l44c7),hl
	ld a,#0c
	ld c,d
	call l44a5
	ld a,#0d
	ld c,d
	jp l44a5
.l407a
	ld b,#2a
.l407c
	ld (hl),a
	inc hl
	djnz l407c
	ret
;
.stop_music
.l4081
;
	ld a,#07
	ld c,#3f
	call l44a5
	ld a,#08
	ld c,#00
	call l44a5
	ld a,#09
	ld c,#00
	call l44a5
	ld a,#0a
	ld c,#00
	jp l44a5
;
.play_music
.l409d
;
	ld hl,l44cb
	dec (hl)
	ld ix,l45b0
	ld bc,l45be
	call l413f
	ld ix,l45de
	ld bc,l45ec
	call l413f
	ld ix,l460c
	ld bc,l461a
	call l413f
	ld hl,l44c4
	ld de,l44cb
	ld b,#06
	call l411c
	ld b,#07
	call l411c
	ld b,#0b
	call l411c
	ld b,#0d
	call l411c
	ld de,l44cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l45cf
	call l40f5
	ld hl,l45fd
	call l40f5
	ld hl,l462b
.l40f5
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
	jr nz,l410a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l410a
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
.l411c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l44a5
.l4127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l44a5
.l413f
	ld a,(l44cb)
	or a
	jp nz,l41f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l41f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4127
	or a
	jp z,l41ec
	ld r,a
	and #7f
	cp #10
	jr c,l41c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l433f
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
	jr z,l41a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l41a0
	rrca
	ld c,a
	ld hl,l4640
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
	jr z,l41bf
	ld (ix+#1e),b
.l41bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l41e0
.l41c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l44d0
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
.l41e0
	ld a,d
	or a
	jr nz,l41ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l41ee
.l41ec
	ld a,(hl)
	inc hl
.l41ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l41f7
	ld a,(ix+#17)
	or a
	jr nz,l420d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l420d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4223
	ld a,(ix+#0d)
	or a
	jr z,l4231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l424f
.l4231
	ld a,(ix+#1a)
	or a
	jp z,l4256
	ld c,a
	cp #03
	jr nz,l423e
	xor a
.l423e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l424f
	ld a,(ix+#18)
	dec c
	jr z,l424f
	ld a,(ix+#19)
.l424f
	add (ix+#07)
	ld b,d
	call l433f
.l4256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l427e
	dec (ix+#1b)
	jr nz,l427e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l42b6
.l427e
	ld a,(ix+#29)
	or a
	jr z,l42b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l42ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l42a4
	ld (ix+#29),#ff
	jr l42ad
.l42a4
	cp (ix+#2b)
	jr nz,l42ad
	ld (ix+#29),#01
.l42ad
	ld b,d
	or a
	jp p,l42b3
	dec b
.l42b3
	ld c,a
	jr l42c1
.l42b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l42c1
	pop hl
	bit 7,(ix+#14)
	jr z,l42ca
	ld h,d
	ld l,d
.l42ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l44a5
	ld c,h
	ld a,(ix+#02)
	call l44a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l431d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l430c
	dec (ix+#09)
	jr nz,l430c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4304
	xor a
	jr l4309
.l4304
	cp #10
	jr nz,l4309
	dec a
.l4309
	ld (ix+#1e),a
.l430c
	ld a,b
	sub (ix+#1e)
	jr nc,l4313
	xor a
.l4313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l44a5
.l431d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l44cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l433b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l433b
	ld (l44cc),hl
	ret
.l433f
	ld hl,l44ee
	cp #61
	jr nc,l4349
	add a
	ld c,a
	add hl,bc
.l4349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4478
	ld (ix+#1e),a
	jp l41e0
.l4365
	dec b
.l4366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4371
	neg
.l4371
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
	jp l41e0
.l4387
	dec b
	jr l438b
.l438a
	inc b
.l438b
	call l4478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l41e0
.l439a
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
	jp l445d
.l43ab
	ld a,(hl)
	inc hl
	or a
	jr z,l43cd
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
.l43cd
	ld (ix+#29),a
	jp l41e0
.l43d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l44cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l44ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l41e0
.l43ed
	ld a,(hl)
	or a
	jr z,l43fe
	call l447a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l41e0
.l43fe
	ld hl,#0101
	ld (l44ca),hl
	jp l41e0
.l4407
	call l4478
	ld (ix+#1e),a
	jp l41e0
.l4410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l41e0
.l4432
	ld a,(hl)
	inc hl
	ld (l44c9),a
	jp l41e0
.l443a
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
	jp l41e0
.l4459
	call l4478
	add a
.l445d
	ld b,#00
	ld c,a
	push hl
	ld hl,l46c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l41e0
.l4478
	ld a,(hl)
	inc hl
.l447a
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
.l4489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l44a5
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
.l44c4
	ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
	db #38,#00,#00
.l44d0
	dw l4353,l4366,l4365,l438a
	dw l4387,l439a,l43ab,l43d3
	dw l43ed,l43d3,l4407,l4410
	dw l4432,l443a,l4459
.l44ee
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
.l45b0 equ $ + 2
	dw #000f,#0008
.l45b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l45be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l45e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 6
.l460c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4640 equ $ + 6
.l463a
	db #40,#49,#6a,#49,#94,#49,#d2,#ff
	db #b2,#47,#b2,#48,#40,#47,#e0,#46
	db #20,#47,#40,#47,#10,#10,#60,#47
	db #a0,#47,#c0,#47,#00,#00,#a5,#ff
	db #a5,#ff,#77,#ff,#a4,#ff,#e0,#47
	db #20,#48,#40,#48,#08,#00,#60,#48
	db #a0,#48,#c0,#48,#00,#00,#e0,#47
	db #e0,#48,#40,#47,#00,#00,#a5,#ff
	db #77,#ff,#77,#ff,#a4,#ff,#a4,#ff
	db #76,#ff,#a5,#ff,#d3,#ff,#d3,#ff
	db #a5,#ff,#a4,#ff,#d2,#ff,#d2,#ff
	db #d2,#48,#a5,#ff,#20,#49,#a5,#ff
	db #a5,#ff,#a4,#ff,#d2,#ff,#a4,#ff
	db #a4,#ff,#a5,#ff,#d3,#ff,#a5,#ff
	db #a5,#ff,#a4,#ff,#d2,#ff,#a4,#ff
	db #d3,#ff,#d3,#ff,#01,#00,#d3,#ff
.l46c0 equ $ + 6
	db #d2,#ff,#d2,#ff,#00,#00,#00,#49
	db #d3,#ff,#20,#49,#d3,#ff,#d3,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d3,#ff,#d3,#ff,#d3,#ff,#d3,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0d
	db #0d,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0d,#0c,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#06,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#00,#00,#00,#05,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#be
	db #49,#00,#d4,#49,#00,#be,#49,#00
	db #f0,#49,#00,#14,#4a,#00,#14,#4a
	db #00,#14,#4a,#00,#a6,#4a,#00,#a6
	db #4a,#00,#a6,#4a,#00,#38,#4b,#00
	db #38,#4b,#00,#90,#4b,#80,#4c,#49
	db #00,#cc,#4b,#00,#2d,#4c,#00,#cc
	db #4b,#00,#8e,#4c,#00,#ef,#4c,#00
	db #ef,#4c,#00,#ef,#4c,#00,#50,#4d
	db #00,#50,#4d,#00,#50,#4d,#00,#50
	db #4d,#00,#50,#4d,#00,#50,#4d,#80
	db #76,#49,#00,#b1,#4d,#00,#b1,#4d
	db #00,#b1,#4d,#00,#d8,#4d,#00,#35
	db #4e,#00,#05,#4e,#00,#35,#4e,#00
	db #6b,#4e,#00,#8f,#4e,#00,#8f,#4e
	db #00,#b9,#4e,#00,#b9,#4e,#00,#be
	db #4e,#80,#a0,#49,#28,#1b,#c2,#28
	db #10,#04,#2b,#10,#0c,#2b,#10,#04
	db #2a,#10,#0c,#2a,#10,#04,#28,#10
	db #10,#ff,#28,#1b,#c2,#28,#10,#04
	db #2d,#10,#0c,#2d,#10,#04,#2b,#10
	db #0c,#2b,#10,#04,#2a,#10,#0c,#2b
	db #10,#02,#2a,#10,#02,#ff,#28,#1b
	db #c2,#28,#10,#04,#2d,#10,#0c,#2d
	db #10,#04,#2b,#10,#0c,#2b,#10,#04
	db #2a,#10,#08,#b6,#20,#36,#50,#02
	db #b6,#20,#36,#50,#02,#b6,#20,#b6
	db #50,#ff,#34,#2b,#10,#a8,#40,#c0
	db #68,#1e,#28,#4f,#10,#b4,#50,#a8
	db #40,#b4,#40,#a8,#40,#b4,#20,#a8
	db #40,#c0,#68,#1e,#28,#4f,#10,#b4
	db #50,#a8,#40,#b4,#40,#a8,#40,#b9
	db #20,#ad,#40,#c5,#68,#16,#2d,#4f
	db #10,#b9,#50,#ad,#40,#b9,#40,#ad
	db #40,#b9,#20,#ad,#40,#c5,#68,#16
	db #2d,#4f,#10,#b9,#50,#ad,#40,#b9
	db #50,#ad,#50,#b7,#20,#ab,#40,#c3
	db #68,#19,#2b,#4f,#10,#b7,#50,#ab
	db #40,#b7,#40,#ab,#40,#b7,#20,#ab
	db #40,#c3,#68,#19,#2b,#4f,#10,#b7
	db #50,#ab,#40,#b7,#40,#ab,#40,#b6
	db #20,#aa,#40,#c2,#68,#1b,#2a,#4f
	db #10,#b6,#50,#aa,#40,#b6,#40,#aa
	db #40,#b6,#20,#aa,#40,#c2,#68,#1b
	db #2a,#5f,#10,#b6,#50,#aa,#40,#b6
	db #50,#aa,#40,#ff,#34,#2b,#10,#a8
	db #40,#c0,#68,#1e,#28,#4f,#10,#b4
	db #50,#a8,#40,#b4,#40,#a8,#40,#b4
	db #20,#a8,#40,#c0,#68,#1e,#28,#4f
	db #10,#b4,#50,#a8,#40,#b4,#40,#a8
	db #40,#b2,#20,#a6,#40,#b2,#68,#11
	db #26,#4f,#10,#b2,#50,#a6,#40,#b2
	db #40,#a6,#40,#b2,#20,#a6,#40,#b2
	db #68,#11,#26,#4f,#10,#b2,#50,#a6
	db #40,#b2,#50,#a6,#50,#ad,#20,#a1
	db #40,#ad,#68,#16,#21,#4f,#10,#ad
	db #50,#a1,#40,#ad,#40,#a1,#40,#ad
	db #20,#a1,#40,#ad,#68,#16,#21,#4f
	db #10,#ad,#50,#a1,#40,#ad,#40,#a1
	db #40,#b0,#20,#a4,#40,#b0,#68,#13
	db #24,#4f,#10,#b0,#50,#a4,#40,#b0
	db #40,#a4,#40,#b0,#20,#a4,#40,#b0
	db #68,#13,#24,#5f,#10,#b0,#50,#a4
	db #40,#b0,#50,#a4,#40,#ff,#00,#04
	db #40,#1b,#40,#42,#1f,#20,#43,#1b
	db #20,#42,#1b,#23,#47,#1b,#20,#43
	db #1b,#23,#45,#1b,#23,#43,#1b,#25
	db #47,#1b,#25,#43,#10,#02,#45,#10
	db #02,#43,#10,#02,#47,#10,#02,#43
	db #10,#02,#45,#10,#02,#40,#1b,#40
	db #42,#10,#02,#43,#10,#02,#42,#1b
	db #23,#4a,#1b,#20,#42,#1b,#23,#4a
	db #1b,#23,#48,#1b,#20,#47,#1b,#20
	db #c8,#10,#0b,#13,#47,#10,#02,#48
	db #1b,#20,#47,#10,#02,#ff,#00,#04
	db #40,#10,#04,#42,#1f,#20,#43,#10
	db #04,#47,#10,#06,#45,#10,#02,#43
	db #10,#02,#45,#10,#02,#47,#10,#02
	db #48,#10,#02,#47,#10,#06,#40,#10
	db #04,#42,#10,#02,#43,#10,#04,#4a
	db #10,#06,#48,#10,#02,#47,#10,#02
	db #4c,#10,#02,#4e,#10,#04,#4f,#10
	db #02,#ff,#4c,#1b,#22,#47,#10,#02
	db #4c,#10,#02,#47,#10,#02,#4c,#10
	db #02,#47,#10,#02,#4c,#10,#02,#47
	db #10,#02,#4c,#10,#02,#48,#10,#02
	db #4c,#10,#02,#48,#10,#02,#4c,#10
	db #02,#48,#10,#02,#4c,#10,#02,#48
	db #10,#02,#4a,#10,#02,#45,#10,#02
	db #4a,#10,#02,#45,#10,#02,#4a,#10
	db #02,#45,#10,#02,#4a,#10,#02,#45
	db #10,#02,#4c,#10,#02,#47,#10,#02
	db #4c,#10,#02,#47,#10,#02,#4c,#10
	db #02,#47,#10,#02,#4c,#10,#02,#47
	db #10,#02,#ff,#4c,#1b,#22,#47,#10
	db #02,#4c,#10,#02,#47,#10,#02,#4c
	db #10,#02,#47,#10,#02,#4c,#10,#02
	db #47,#10,#02,#4c,#10,#02,#48,#10
	db #02,#4c,#10,#02,#48,#10,#02,#4c
	db #10,#02,#48,#10,#02,#4c,#10,#02
	db #48,#10,#02,#4f,#10,#02,#47,#10
	db #02,#4f,#10,#02,#47,#10,#02,#4f
	db #10,#02,#47,#10,#02,#4f,#10,#02
	db #47,#10,#02,#4e,#10,#02,#45,#10
	db #02,#4e,#10,#02,#45,#10,#02,#4e
	db #10,#02,#45,#10,#02,#4e,#10,#02
	db #45,#10,#02,#ff,#4c,#1f,#22,#47
	db #1b,#22,#4c,#10,#02,#47,#10,#02
	db #4c,#10,#02,#47,#10,#02,#4c,#10
	db #02,#47,#10,#02,#4c,#10,#02,#48
	db #10,#02,#4c,#10,#02,#48,#10,#02
	db #4c,#10,#02,#48,#10,#02,#4c,#10
	db #02,#48,#10,#02,#4f,#10,#02,#47
	db #10,#02,#4f,#10,#02,#47,#10,#02
	db #4f,#10,#02,#47,#10,#02,#4f,#10
	db #02,#47,#10,#02,#4e,#10,#02,#45
	db #10,#02,#4e,#10,#02,#45,#10,#02
	db #4e,#10,#02,#45,#10,#02,#4e,#10
	db #02,#45,#10,#02,#ff,#4c,#1f,#22
	db #47,#10,#02,#4c,#10,#02,#47,#10
	db #02,#4c,#10,#02,#47,#10,#02,#4c
	db #10,#02,#47,#10,#02,#4c,#10,#02
	db #48,#10,#02,#4c,#10,#02,#48,#10
	db #02,#4c,#10,#02,#48,#10,#02,#4c
	db #10,#02,#48,#10,#02,#4f,#10,#02
	db #47,#10,#02,#4f,#10,#02,#47,#10
	db #02,#4f,#10,#02,#47,#10,#02,#4f
	db #10,#02,#47,#10,#02,#4e,#10,#02
	db #45,#10,#02,#4e,#10,#02,#45,#10
	db #02,#4e,#10,#02,#45,#10,#02,#4e
	db #10,#02,#45,#10,#02,#ff,#4c,#1f
	db #22,#47,#10,#02,#4c,#10,#02,#47
	db #10,#02,#4c,#10,#02,#47,#10,#02
	db #4c,#10,#02,#47,#10,#02,#4a,#10
	db #02,#42,#10,#02,#4a,#10,#02,#42
	db #10,#02,#4a,#10,#02,#42,#10,#02
	db #4a,#10,#02,#42,#10,#02,#48,#10
	db #02,#43,#10,#02,#48,#10,#02,#43
	db #10,#02,#48,#10,#02,#43,#10,#02
	db #48,#10,#02,#43,#10,#02,#45,#10
	db #02,#40,#10,#02,#45,#10,#02,#40
	db #10,#02,#45,#10,#02,#40,#10,#02
	db #45,#10,#02,#40,#10,#02,#ff,#00
	db #04,#4c,#1b,#42,#4c,#10,#02,#53
	db #10,#04,#4f,#10,#1a,#4e,#10,#02
	db #4f,#10,#02,#51,#10,#02,#4e,#10
	db #06,#4f,#10,#02,#4e,#10,#04,#4a
	db #10,#04,#4c,#10,#02,#ff,#00,#04
	db #4c,#1b,#42,#4c,#10,#02,#53,#10
	db #04,#56,#10,#10,#51,#1b,#21,#53
	db #10,#04,#51,#10,#02,#56,#10,#08
	db #51,#10,#02,#5b,#10,#04,#5a,#10
	db #04,#58,#10,#02,#56,#10,#04,#58
	db #10,#02,#ff,#00,#04,#4c,#10,#02
	db #4a,#10,#02,#4c,#10,#02,#53,#10
	db #04,#56,#10,#10,#51,#10,#02,#53
	db #10,#04,#51,#10,#02,#56,#10,#08
	db #51,#10,#02,#5b,#10,#04,#5a,#10
	db #04,#58,#10,#02,#56,#10,#04,#53
	db #10,#02,#ff,#00,#04,#4c,#10,#04
	db #4c,#10,#02,#53,#10,#04,#4f,#10
	db #0c,#51,#10,#02,#53,#10,#02,#4f
	db #10,#0a,#4e,#10,#02,#4f,#10,#02
	db #51,#10,#02,#4e,#10,#06,#4f,#10
	db #02,#4e,#10,#04,#4a,#10,#02,#03
	db #11,#01,#03,#11,#01,#4c,#10,#02
	db #ff,#00,#04,#4c,#10,#02,#4a,#10
	db #02,#4c,#10,#02,#53,#10,#04,#4f
	db #10,#0c,#51,#10,#02,#53,#10,#02
	db #4f,#10,#0c,#51,#10,#04,#4c,#10
	db #0c,#4a,#10,#06,#ff,#00,#04,#4c
	db #10,#04,#4c,#10,#02,#4a,#10,#04
	db #47,#10,#12,#48,#10,#10,#43,#10
	db #09,#03,#11,#01,#03,#11,#01,#03
	db #11,#01,#03,#11,#01,#03,#11,#01
	db #03,#11,#01,#03,#11,#01,#ff,#28
	db #18,#78,#40,#ff,#00,#08,#4f,#11
	db #60,#4e,#10,#1a,#4f,#10,#06,#4e
	db #10,#12,#ff
;
.music_info
	db "Boxon 3 End (2001)(Da Boxon Team)()",0
	db "ST-128 Module",0

	read "music_end.asm"
