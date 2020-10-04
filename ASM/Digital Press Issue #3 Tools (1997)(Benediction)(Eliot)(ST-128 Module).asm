; Music of Digital Press Issue #3 Tools (1997)(Benediction)(Eliot)(ST-128 Module)
; Ripped by Megachur the 01/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGPI3TO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 12
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
	db #a0,#4a,#ee,#4a,#3c,#4b,#e0,#46
	db #20,#47,#40,#47,#00,#00,#60,#47
	db #a0,#47,#c0,#47,#00,#00,#d0,#fe
	db #d0,#fe,#ea,#17,#20,#30,#f2,#ff
	db #c2,#d0,#b2,#e0,#20,#00,#e0,#47
	db #20,#48,#40,#48,#00,#00,#60,#48
	db #a0,#48,#c0,#48,#14,#0c,#d2,#ff
	db #d2,#01,#d2,#ff,#00,#00,#e0,#48
	db #20,#49,#40,#48,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#e8,#c0,#9a,#c8
	db #d2,#ff,#d2,#ff,#00,#00,#e0,#48
	db #40,#49,#60,#49,#00,#00,#80,#49
	db #c0,#49,#c0,#48,#58,#08,#d2,#ff
	db #f2,#ff,#f2,#ff,#20,#80,#60,#48
	db #e0,#49,#c0,#48,#14,#0c,#60,#48
.l46c0 equ $ + 6
	db #00,#4a,#c0,#48,#14,#0c,#20,#4a
	db #40,#4a,#c6,#f4,#c6,#f4,#86,#b4
	db #60,#4a,#9c,#ca,#9c,#da,#d1,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#80,#4a
	db #f2,#ff,#d2,#ff,#d2,#ff,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #0b,#0b,#0a,#07,#01,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0c,#0b,#0b,#0a,#09,#08,#08
	db #07,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #02,#03,#04,#03,#02,#01,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0f,#0d
	db #0b,#08,#06,#04,#0c,#0b,#0a,#09
	db #08,#07,#06,#04,#05,#06,#07,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #03,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0e,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#00,#00,#00,#0a,#08
	db #06,#05,#04,#03,#03,#02,#02,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#03,#01,#01,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#0e,#0e
	db #0e,#0f,#0f,#0e,#0e,#0d,#0d,#0e
	db #0e,#0f,#0f,#0e,#0e,#0d,#0d,#0e
	db #0e,#0f,#0f,#0e,#0e,#0d,#0d,#0e
	db #0e,#0f,#0f,#0e,#0e,#0e,#0c,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#08,#08,#08
	db #08,#09,#09,#09,#09,#09,#09,#08
	db #08,#08,#08,#08,#08,#08,#0a,#0a
	db #0a,#09,#09,#08,#08,#08,#08,#07
	db #07,#07,#07,#06,#06,#06,#06,#06
	db #06,#07,#07,#07,#07,#07,#07,#06
	db #06,#06,#06,#06,#06,#06,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#f4
	db #4c,#00,#a8,#4d,#00,#f7,#4c,#00
	db #8a,#4b,#00,#8a,#4b,#00,#8a,#4b
	db #00,#3b,#4c,#00,#3b,#4c,#00,#3b
	db #4c,#00,#ab,#4d,#00,#3b,#4c,#00
	db #ab,#4d,#00,#6c,#4e,#00,#7c,#4e
	db #fd,#7c,#4e,#00,#7c,#4e,#00,#7c
	db #4e,#00,#7c,#4e,#00,#7c,#4e,#00
	db #7c,#4e,#00,#7c,#4e,#00,#fe,#4e
	db #00,#f4,#4c,#00,#f4,#4c,#00,#f4
	db #4c,#80,#a0,#4a,#00,#8e,#50,#00
	db #8e,#50,#00,#8e,#50,#00,#8e,#50
	db #00,#8e,#50,#00,#bf,#4f,#00,#53
	db #51,#00,#c9,#51,#00,#51,#50,#00
	db #32,#51,#00,#c9,#51,#00,#32,#51
	db #00,#13,#52,#00,#61,#52,#fd,#61
	db #52,#00,#61,#52,#00,#b2,#52,#00
	db #c9,#51,#00,#b2,#52,#00,#e0,#52
	db #00,#e0,#52,#00,#e0,#52,#00,#e0
	db #52,#00,#01,#53,#00,#f4,#4c,#80
	db #ee,#4a,#00,#f4,#4c,#00,#54,#54
	db #00,#54,#54,#00,#54,#54,#00,#54
	db #54,#00,#4f,#53,#00,#d1,#53,#00
	db #d1,#53,#00,#d1,#53,#00,#5f,#54
	db #00,#d1,#53,#00,#5f,#54,#00,#5f
	db #54,#00,#5f,#54,#fd,#5f,#54,#00
	db #5f,#54,#00,#e0,#54,#00,#e0,#54
	db #00,#e0,#54,#00,#e0,#54,#00,#e0
	db #54,#00,#7c,#4e,#00,#7c,#4e,#00
	db #61,#55,#00,#61,#55,#80,#3c,#4b
	db #c4,#46,#53,#44,#0b,#13,#b8,#46
	db #53,#c4,#40,#c4,#40,#44,#0b,#13
	db #d0,#46,#53,#44,#1b,#13,#c4,#46
	db #53,#44,#0b,#13,#b8,#46,#53,#c4
	db #40,#c4,#40,#44,#0b,#13,#d0,#46
	db #53,#44,#1b,#13,#c4,#46,#53,#44
	db #0b,#13,#b8,#46,#53,#c4,#40,#c4
	db #40,#44,#0b,#13,#d0,#46,#53,#44
	db #1b,#13,#c4,#46,#53,#44,#0b,#13
	db #b8,#46,#53,#c4,#40,#c4,#40,#44
	db #0b,#13,#d0,#46,#53,#44,#1b,#13
	db #c7,#46,#53,#44,#0b,#13,#bb,#46
	db #53,#c7,#40,#c7,#40,#44,#0b,#13
	db #d3,#46,#53,#44,#1b,#13,#c7,#46
	db #53,#44,#0b,#13,#bb,#46,#53,#c7
	db #40,#c7,#40,#44,#0b,#13,#d3,#46
	db #53,#44,#1b,#13,#c9,#46,#53,#44
	db #0b,#13,#bd,#46,#53,#c9,#40,#c9
	db #40,#44,#0b,#13,#d5,#46,#53,#44
	db #1b,#13,#c9,#46,#53,#44,#0b,#13
	db #bd,#46,#53,#c9,#40,#c9,#40,#44
	db #0b,#13,#d5,#46,#53,#44,#1b,#13
	db #ff,#c4,#46,#53,#44,#0b,#13,#b8
	db #46,#53,#38,#b1,#10,#c4,#40,#44
	db #01,#1c,#d0,#46,#53,#44,#1b,#13
	db #c4,#46,#53,#44,#0b,#13,#b8,#46
	db #53,#38,#b1,#10,#c4,#40,#44,#01
	db #1c,#d0,#46,#53,#44,#1b,#13,#c4
	db #46,#53,#44,#0b,#13,#b8,#46,#53
	db #38,#b1,#10,#c4,#40,#44,#01,#1c
	db #d0,#46,#53,#44,#1b,#13,#c9,#46
	db #53,#44,#0b,#13,#bd,#46,#53,#38
	db #b1,#10,#c9,#40,#44,#01,#1c,#d5
	db #46,#53,#44,#1b,#13,#c9,#46,#53
	db #44,#0b,#13,#bd,#46,#53,#38,#b1
	db #10,#c9,#40,#44,#01,#1c,#d5,#46
	db #53,#44,#1b,#13,#c9,#46,#53,#44
	db #0b,#13,#bd,#46,#53,#38,#b1,#10
	db #c9,#40,#44,#01,#1c,#d5,#46,#53
	db #44,#1b,#13,#c9,#46,#53,#44,#0b
	db #13,#bd,#46,#53,#38,#b1,#10,#c9
	db #40,#44,#01,#1c,#d5,#46,#53,#44
	db #1b,#13,#c9,#46,#53,#44,#0b,#13
	db #bd,#46,#53,#38,#b1,#10,#c9,#40
	db #44,#01,#1c,#d5,#46,#53,#44,#1b
	db #13,#ff,#fe,#40,#ff,#c4,#46,#53
	db #44,#0b,#13,#c4,#46,#53,#c4,#40
	db #c4,#40,#44,#0b,#13,#c4,#46,#53
	db #44,#1b,#13,#c4,#46,#53,#44,#0b
	db #13,#c4,#46,#53,#c4,#40,#c4,#40
	db #44,#0b,#13,#c4,#46,#53,#44,#1b
	db #13,#c4,#46,#53,#44,#0b,#13,#c4
	db #46,#53,#c4,#40,#c4,#40,#44,#0b
	db #13,#c4,#46,#53,#44,#1b,#13,#c4
	db #46,#53,#44,#0b,#13,#c4,#46,#53
	db #c4,#40,#c4,#40,#44,#0b,#13,#c4
	db #46,#53,#44,#1b,#13,#c7,#46,#53
	db #44,#0b,#13,#c7,#46,#53,#c7,#40
	db #c7,#40,#44,#0b,#13,#c7,#46,#53
	db #44,#1b,#13,#c7,#46,#53,#44,#0b
	db #13,#c7,#46,#53,#c7,#40,#c7,#40
	db #44,#0b,#13,#c7,#46,#53,#44,#1b
	db #13,#c9,#46,#53,#44,#0b,#13,#c9
	db #46,#53,#c9,#40,#c9,#40,#44,#0b
	db #13,#c9,#46,#53,#44,#1b,#13,#c9
	db #46,#53,#44,#0b,#13,#c9,#46,#53
	db #c9,#40,#c9,#40,#44,#0b,#13,#c9
	db #46,#53,#44,#1b,#13,#ff,#00,#40
	db #ff,#c9,#46,#53,#44,#0b,#13,#bd
	db #46,#53,#38,#b1,#10,#49,#4b,#10
	db #44,#01,#1c,#d5,#46,#53,#44,#1b
	db #13,#c9,#46,#53,#44,#0b,#13,#bd
	db #46,#53,#38,#b1,#10,#49,#4b,#10
	db #44,#01,#1c,#d5,#46,#53,#44,#1b
	db #13,#c9,#46,#53,#44,#0b,#13,#bd
	db #46,#53,#38,#b1,#10,#49,#4b,#10
	db #44,#01,#1c,#d5,#46,#53,#44,#1b
	db #13,#c9,#46,#53,#44,#0b,#13,#bd
	db #46,#53,#38,#b1,#10,#49,#4b,#10
	db #44,#01,#1c,#d5,#46,#53,#44,#1b
	db #13,#c9,#46,#53,#44,#0b,#14,#bd
	db #46,#54,#38,#b1,#10,#49,#4b,#11
	db #44,#01,#1b,#d5,#46,#54,#44,#1b
	db #14,#c9,#46,#55,#44,#0b,#15,#bd
	db #46,#55,#38,#b1,#10,#49,#4b,#15
	db #44,#01,#1a,#d5,#46,#55,#44,#1b
	db #15,#c9,#46,#56,#44,#0b,#16,#bd
	db #46,#56,#38,#b1,#10,#49,#4b,#14
	db #44,#01,#19,#d5,#46,#56,#44,#1b
	db #16,#c9,#46,#57,#44,#0b,#17,#bd
	db #46,#57,#38,#b1,#10,#49,#4b,#15
	db #44,#01,#18,#d5,#46,#57,#44,#1b
	db #17,#ff,#fe,#38,#44,#00,#02,#44
	db #00,#02,#44,#00,#02,#c4,#00,#c4
	db #00,#ff,#3d,#71,#10,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#bd,#70,#bd,#40,#bd
	db #70,#bd,#40,#bf,#70,#bd,#40,#c0
	db #70,#bd,#40,#ff,#40,#0b,#10,#31
	db #4b,#10,#31,#7b,#10,#40,#0b,#10
	db #40,#0b,#11,#40,#0b,#11,#34,#7b
	db #11,#31,#4b,#11,#40,#0b,#12,#31
	db #4b,#12,#31,#7b,#12,#40,#0b,#12
	db #40,#0b,#13,#40,#0b,#13,#34,#7b
	db #13,#31,#4b,#13,#40,#0b,#14,#31
	db #4b,#14,#31,#7b,#14,#40,#0b,#14
	db #40,#0b,#15,#40,#0b,#15,#34,#7b
	db #15,#31,#4b,#15,#40,#0b,#16,#31
	db #4b,#16,#31,#7b,#16,#40,#0b,#16
	db #40,#0b,#17,#40,#0b,#17,#34,#7b
	db #17,#31,#4b,#17,#40,#0b,#18,#31
	db #4b,#18,#31,#7b,#18,#40,#0b,#18
	db #40,#0b,#19,#40,#0b,#19,#34,#7b
	db #19,#31,#4b,#19,#40,#0b,#1a,#31
	db #4b,#1a,#31,#7b,#1a,#40,#0b,#1a
	db #40,#0b,#1b,#40,#0b,#1b,#34,#7b
	db #1b,#31,#4b,#1b,#40,#0b,#1c,#31
	db #4b,#1c,#31,#7b,#1c,#40,#0b,#1c
	db #40,#0b,#1d,#40,#0b,#1d,#34,#7b
	db #1d,#31,#4b,#1d,#40,#0b,#1e,#31
	db #4b,#1e,#31,#7b,#1e,#40,#0b,#1e
	db #40,#0b,#1e,#40,#0b,#1e,#34,#7b
	db #1e,#31,#4b,#1e,#ff,#d0,#76,#10
	db #dc,#76,#10,#e8,#76,#11,#d0,#76
	db #12,#dc,#76,#13,#e8,#76,#14,#d0
	db #76,#15,#dc,#76,#16,#e8,#76,#17
	db #d0,#76,#18,#dc,#76,#19,#e8,#76
	db #1a,#d0,#76,#1b,#dc,#76,#1c,#e8
	db #76,#1d,#50,#76,#1e,#11,#d3,#76
	db #10,#df,#76,#10,#eb,#76,#11,#d3
	db #76,#12,#df,#76,#13,#eb,#76,#14
	db #d3,#76,#15,#df,#76,#16,#eb,#76
	db #17,#d3,#76,#18,#df,#76,#19,#eb
	db #76,#1a,#d3,#76,#1b,#df,#76,#1c
	db #eb,#76,#1d,#d3,#76,#1e,#d5,#76
	db #10,#e1,#76,#10,#ed,#76,#11,#d5
	db #76,#12,#e1,#76,#13,#ed,#76,#14
	db #d5,#76,#15,#e1,#76,#16,#ed,#76
	db #17,#d5,#76,#18,#e1,#76,#19,#ed
	db #76,#1a,#d5,#76,#1b,#e1,#76,#1c
	db #ed,#76,#1d,#d5,#76,#1e,#ff,#fe
	db #08,#44,#e0,#03,#02,#22,#01,#cb
	db #e0,#03,#21,#01,#c9,#e0,#03,#21
	db #01,#c7,#e0,#03,#21,#01,#c2,#e0
	db #03,#21,#01,#44,#e0,#0c,#49,#e0
	db #03,#02,#22,#01,#d0,#e0,#03,#21
	db #01,#ce,#e0,#03,#21,#01,#cc,#e0
	db #03,#21,#01,#c7,#e0,#03,#21,#01
	db #49,#e0,#14,#ff,#44,#cf,#10,#2c
	db #41,#10,#38,#41,#10,#ac,#40,#ac
	db #40,#b8,#40,#4b,#cf,#10,#2c,#41
	db #10,#49,#cf,#10,#2c,#41,#10,#47
	db #cf,#10,#2c,#41,#10,#44,#cf,#10
	db #2c,#41,#10,#ac,#40,#b8,#40,#42
	db #cf,#10,#2c,#41,#10,#44,#cf,#10
	db #2c,#41,#10,#ac,#40,#b8,#40,#ac
	db #40,#ac,#40,#ac,#40,#ac,#40,#b8
	db #40,#ac,#40,#ac,#40,#ac,#40,#b8
	db #40,#ac,#40,#47,#cf,#10,#2f,#41
	db #10,#49,#cf,#10,#2f,#41,#10,#bb
	db #40,#af,#40,#af,#40,#bb,#40,#49
	db #cf,#10,#2f,#41,#10,#47,#cf,#10
	db #2f,#41,#10,#4c,#cf,#10,#2f,#41
	db #10,#47,#cf,#10,#2f,#41,#10,#49
	db #cf,#10,#31,#41,#10,#b1,#40,#bd
	db #40,#50,#cf,#10,#31,#41,#10,#b1
	db #40,#bd,#40,#47,#cf,#10,#31,#41
	db #10,#49,#cf,#10,#31,#41,#10,#b1
	db #40,#b1,#40,#bd,#40,#b1,#40,#ff
	db #fe,#08,#3d,#e0,#06,#49,#e0,#08
	db #49,#e0,#03,#44,#e0,#02,#42,#e0
	db #03,#40,#e0,#03,#42,#e0,#02,#47
	db #e0,#03,#49,#e0,#0a,#49,#f0,#10
	db #ff,#d0,#76,#10,#dc,#76,#10,#e8
	db #76,#11,#d0,#76,#12,#dc,#76,#13
	db #e8,#76,#14,#d0,#76,#15,#dc,#76
	db #16,#e8,#76,#17,#d0,#76,#18,#dc
	db #76,#19,#e8,#76,#1a,#d0,#76,#1b
	db #dc,#76,#1c,#68,#76,#1d,#02,#44
	db #e1,#80,#49,#e0,#02,#4b,#e0,#02
	db #49,#e0,#02,#cc,#e0,#4b,#e0,#02
	db #47,#e0,#03,#49,#e0,#0c,#c9,#f2
	db #11,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#ff,#fe
	db #10,#44,#e1,#80,#49,#e0,#02,#4b
	db #e0,#02,#49,#e0,#02,#cc,#e0,#4b
	db #e0,#02,#47,#e0,#03,#49,#e0,#0c
	db #c9,#f2,#11,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #ff,#fe,#08,#3d,#e0,#06,#49,#e0
	db #08,#49,#e0,#03,#44,#e0,#02,#42
	db #e0,#03,#40,#e0,#03,#42,#e0,#02
	db #47,#e0,#03,#49,#e0,#0a,#c9,#f2
	db #11,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#ff,#40
	db #00,#03,#c0,#00,#c0,#00,#40,#00
	db #03,#40,#00,#03,#c0,#00,#c0,#00
	db #40,#00,#03,#40,#00,#03,#c0,#00
	db #c0,#00,#40,#00,#03,#40,#00,#03
	db #c0,#00,#c0,#00,#40,#00,#03,#40
	db #00,#03,#c0,#00,#c0,#00,#40,#00
	db #03,#40,#00,#03,#c0,#00,#c0,#00
	db #40,#00,#03,#40,#00,#03,#c0,#00
	db #c0,#00,#40,#00,#03,#40,#00,#03
	db #c0,#00,#c0,#00,#40,#00,#03,#ff
	db #49,#ef,#4c,#4b,#e0,#02,#4c,#e0
	db #06,#4b,#e0,#02,#4c,#e0,#06,#4b
	db #e0,#02,#4c,#e0,#06,#4b,#e0,#02
	db #4c,#e0,#06,#4e,#e0,#02,#4b,#e0
	db #02,#4c,#e0,#08,#49,#f1,#20,#50
	db #f0,#02,#55,#f0,#0c,#ff,#fe,#08
	db #3d,#e1,#60,#49,#e0,#08,#49,#e0
	db #03,#44,#e0,#02,#42,#e0,#03,#40
	db #e0,#03,#42,#e0,#02,#47,#e0,#03
	db #49,#e0,#09,#49,#f0,#11,#ff,#fe
	db #08,#3d,#e1,#60,#49,#e0,#08,#49
	db #e0,#03,#44,#e0,#02,#42,#e0,#03
	db #40,#e0,#03,#42,#e0,#02,#47,#e0
	db #03,#49,#e0,#0a,#c9,#f2,#11,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#ff,#2c,#41,#10
	db #b8,#40,#ac,#40,#ac,#40,#ac,#40
	db #b8,#40,#ac,#40,#ac,#40,#ac,#40
	db #ac,#40,#b8,#40,#ac,#40,#ac,#40
	db #ac,#40,#b8,#40,#ac,#40,#ac,#40
	db #b8,#40,#ac,#40,#ac,#40,#ac,#40
	db #b8,#40,#ac,#40,#ac,#40,#ac,#40
	db #ac,#40,#b8,#40,#ac,#40,#ac,#40
	db #ac,#40,#b8,#40,#ac,#40,#af,#40
	db #bb,#40,#af,#40,#af,#40,#af,#40
	db #bb,#40,#af,#40,#af,#40,#af,#40
	db #af,#40,#bb,#40,#af,#40,#af,#40
	db #af,#40,#bb,#40,#af,#40,#b1,#40
	db #bd,#40,#b1,#40,#b1,#40,#b1,#40
	db #bd,#40,#b1,#40,#b1,#40,#b1,#40
	db #b1,#40,#bd,#40,#b1,#40,#b1,#40
	db #b1,#40,#bd,#40,#b1,#40,#ff,#2c
	db #71,#10,#ac,#40,#ac,#70,#ac,#40
	db #ad,#70,#ac,#40,#af,#70,#ac,#40
	db #2c,#71,#10,#ac,#40,#ac,#70,#ac
	db #40,#ad,#70,#ac,#40,#af,#70,#ac
	db #40,#ac,#70,#ac,#40,#ac,#70,#ac
	db #40,#ad,#70,#ac,#40,#af,#70,#ac
	db #40,#b1,#70,#b1,#40,#b1,#70,#b1
	db #40,#b3,#70,#b1,#40,#b4,#70,#b1
	db #40,#b1,#70,#b1,#40,#b1,#70,#b1
	db #40,#b3,#70,#b1,#40,#b4,#70,#b1
	db #40,#b1,#70,#b1,#40,#b1,#70,#b1
	db #40,#b3,#70,#b1,#40,#b4,#70,#b1
	db #40,#b1,#70,#b1,#40,#b1,#70,#b1
	db #40,#b3,#70,#b1,#40,#b4,#70,#b1
	db #40,#b1,#70,#b1,#40,#b1,#70,#b1
	db #40,#b3,#70,#b1,#40,#b4,#70,#b1
	db #40,#ff,#44,#5f,#00,#20,#47,#50
	db #10,#49,#50,#10,#ff,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#b1,#70,#b1
	db #40,#b1,#70,#b1,#40,#b3,#70,#b1
	db #40,#b4,#70,#b1,#40,#ff,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#c0,#00
	db #b1,#40,#b1,#70,#c0,#00,#c0,#00
	db #c0,#00,#b4,#70,#b1,#40,#ff,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#3d
	db #7b,#11,#3d,#4b,#12,#3d,#7b,#13
	db #3d,#4b,#14,#3f,#7b,#15,#3d,#4b
	db #16,#40,#7b,#17,#3d,#4b,#18,#ff
;
.music_info
	db "Digital Press Issue #3 Tools (1997)(Benediction)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
