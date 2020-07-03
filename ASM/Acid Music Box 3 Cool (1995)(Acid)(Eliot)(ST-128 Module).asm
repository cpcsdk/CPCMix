; Music of Acid Music Box 3 Cool (1995)(Acid)(Eliot)(ST-128 Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ACIMB3CO.BIN"
	ENDIF

music_date_rip_day		equ 01
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &4000

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
	db #40,#4a,#91,#4a,#e2,#4a,#e0,#46
	db #20,#47,#40,#47,#54,#05,#e0,#46
	db #20,#47,#40,#47,#18,#08,#60,#47
	db #a0,#47,#c0,#47,#80,#00,#e0,#47
	db #20,#48,#40,#48,#c0,#00,#60,#48
	db #a0,#48,#40,#47,#00,#00,#a2,#ff
	db #75,#ff,#76,#ff,#a5,#ff,#60,#48
	db #c0,#48,#40,#47,#1a,#06,#a2,#ff
	db #75,#ff,#76,#ff,#a5,#ff,#60,#48
	db #e0,#48,#40,#47,#00,#00,#e8,#09
	db #24,#02,#74,#02,#f2,#02,#00,#49
	db #40,#49,#40,#47,#40,#00,#60,#49
	db #a0,#49,#40,#47,#00,#00,#a4,#ff
	db #a4,#ff,#b2,#4a,#00,#4b,#a4,#ff
	db #a4,#ff,#a4,#ff,#d2,#ff,#a4,#ff
	db #62,#01,#b2,#01,#30,#02,#52,#02
.l46c0 equ $ + 6
	db #a2,#02,#f2,#02,#00,#00,#c0,#49
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#e0,#49,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#4a,#d2,#ff,#20,#4a,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#01
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
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0e,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0e
	db #0d,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0c,#0e
	db #0f,#0f,#0e,#0f,#0f,#0e,#0f,#0f
	db #0e,#0f,#0f,#0e,#0f,#0f,#0e,#0f
	db #0f,#0e,#0f,#0f,#0f,#0f,#0f,#0e
	db #0e,#0d,#0c,#09,#05,#00,#01,#00
	db #02,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0f,#0e,#0f,#0f,#0e,#0f,#0f,#0e
	db #0f,#0f,#0e,#0f,#0f,#0e,#0f,#0f
	db #0e,#0f,#0f,#0e,#0f,#0d,#0e,#0e
	db #0d,#0c,#0b,#09,#07,#05,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0e
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0d,#0b
	db #09,#08,#06,#04,#01,#00,#0c,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#0c,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#0c,#00,#00,#02
	db #04,#07,#00,#02,#04,#07,#00,#02
	db #04,#07,#00,#02,#04,#07,#00,#02
	db #04,#07,#00,#02,#04,#07,#00,#02
	db #04,#07,#00,#02,#04,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #07,#07,#04,#04,#00,#07,#07,#00
	db #04,#04,#00,#07,#07,#04,#04,#07
	db #00,#00,#07,#04,#00,#07,#00,#04
	db #04,#07,#04,#07,#04,#00,#00,#33
	db #4b,#00,#33,#4b,#00,#d8,#4b,#00
	db #99,#4c,#00,#d8,#4b,#00,#d8,#4b
	db #00,#d8,#4b,#00,#d8,#4b,#00,#d8
	db #4b,#00,#d8,#4b,#00,#d8,#4b,#00
	db #d8,#4b,#00,#99,#4c,#00,#d8,#4b
	db #00,#99,#4c,#00,#6f,#4d,#00,#30
	db #4e,#00,#5a,#4d,#00,#5a,#4d,#00
	db #30,#4e,#00,#30,#4e,#00,#30,#4e
	db #00,#30,#4e,#00,#0b,#4f,#00,#4a
	db #4e,#00,#4a,#4e,#80,#46,#4a,#00
	db #cc,#4f,#00,#cc,#4f,#00,#cf,#4f
	db #00,#77,#50,#00,#e2,#4f,#00,#e2
	db #4f,#00,#cf,#4f,#00,#7a,#50,#00
	db #7a,#50,#00,#cf,#4f,#00,#e2,#4f
	db #00,#eb,#50,#00,#1f,#51,#00,#eb
	db #50,#00,#1f,#51,#00,#cf,#4f,#00
	db #e1,#51,#00,#50,#51,#00,#50,#51
	db #00,#e1,#51,#00,#e1,#51,#00,#e1
	db #51,#00,#e1,#51,#00,#68,#52,#00
	db #f5,#51,#00,#f5,#51,#80,#97,#4a
	db #00,#cc,#4f,#00,#cc,#4f,#00,#6c
	db #52,#00,#35,#53,#00,#cb,#52,#00
	db #cb,#52,#00,#6c,#52,#00,#cb,#52
	db #00,#cb,#52,#00,#6c,#52,#00,#cb
	db #52,#00,#9f,#53,#00,#09,#54,#00
	db #9f,#53,#00,#09,#54,#00,#dd,#54
	db #00,#4a,#55,#00,#73,#54,#00,#73
	db #54,#00,#4a,#55,#00,#4a,#55,#00
	db #4a,#55,#00,#4a,#55,#00,#ce,#55
	db #00,#64,#55,#00,#64,#55,#80,#e8
	db #4a,#b1,#0a,#0c,#a5,#0a,#0c,#40
	db #31,#20,#b1,#0a,#0c,#a5,#0a,#0c
	db #40,#31,#20,#b1,#0a,#0c,#a5,#0a
	db #0c,#40,#31,#20,#b1,#0a,#0c,#a5
	db #0a,#0c,#40,#31,#20,#b1,#0a,#0c
	db #a5,#0a,#0c,#40,#31,#20,#b1,#0a
	db #0c,#a5,#0a,#0c,#40,#31,#20,#b1
	db #0a,#0c,#a5,#0a,#0c,#40,#31,#10
	db #ac,#0a,#1e,#b1,#0a,#0c,#28,#21
	db #10,#af,#30,#af,#30,#b1,#0a,#0c
	db #a5,#0a,#0c,#40,#31,#10,#ac,#0a
	db #1e,#b1,#0a,#0c,#28,#21,#10,#af
	db #30,#af,#30,#b1,#0a,#0c,#a5,#0a
	db #0c,#40,#31,#10,#ac,#0a,#1e,#b1
	db #0a,#0c,#28,#21,#10,#af,#30,#af
	db #30,#b1,#0a,#0c,#a5,#0a,#0c,#40
	db #31,#10,#ac,#0a,#1e,#b1,#0a,#0c
	db #28,#21,#10,#af,#30,#af,#30,#b1
	db #0a,#0c,#a5,#0a,#0c,#40,#31,#10
	db #ac,#0a,#1e,#b1,#0a,#0c,#28,#21
	db #10,#af,#30,#af,#30,#ff,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#b1,#0a
	db #12,#a5,#0a,#12,#1c,#21,#10,#b1
	db #0a,#12,#a5,#0a,#12,#20,#21,#10
	db #b1,#0a,#12,#1c,#31,#10,#ff,#b1
	db #0a,#12,#a5,#0a,#12,#1c,#21,#10
	db #b1,#0a,#12,#a5,#0a,#12,#20,#21
	db #10,#b1,#0a,#12,#1c,#31,#10,#b1
	db #0a,#12,#a5,#0a,#12,#1c,#21,#10
	db #b1,#0a,#12,#a5,#0a,#12,#20,#21
	db #10,#b1,#0a,#12,#1c,#31,#10,#b1
	db #0a,#12,#a5,#0a,#12,#1c,#21,#10
	db #b1,#0a,#12,#a5,#0a,#12,#20,#21
	db #10,#b1,#0a,#12,#1c,#31,#10,#b1
	db #0a,#12,#a5,#0a,#12,#1c,#21,#10
	db #b1,#0a,#12,#a5,#0a,#12,#20,#21
	db #10,#b1,#0a,#12,#1c,#31,#10,#ac
	db #0a,#0c,#a0,#0a,#0c,#1c,#21,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#20,#21
	db #10,#ac,#0a,#0c,#1c,#31,#10,#ac
	db #0a,#0c,#a0,#0a,#0c,#1c,#21,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#20,#21
	db #10,#ac,#0a,#0c,#1c,#31,#10,#ac
	db #0a,#0c,#a0,#0a,#0c,#1c,#21,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#20,#21
	db #10,#ac,#0a,#0c,#1c,#31,#10,#ac
	db #0a,#0c,#a0,#0a,#0c,#1c,#21,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#20,#21
	db #10,#ac,#0a,#0c,#1c,#31,#10,#ff
	db #01,#00,#38,#44,#31,#10,#c4,#30
	db #c4,#30,#c4,#30,#c4,#30,#c4,#30
	db #c4,#30,#c4,#30,#ff,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ac,#0a,#0c
	db #a0,#0a,#0c,#1c,#21,#10,#ac,#0a
	db #0c,#a0,#0a,#0c,#20,#21,#10,#ac
	db #0a,#0c,#1c,#31,#10,#ff,#ac,#0a
	db #0c,#a0,#0a,#0c,#1c,#21,#10,#ac
	db #0a,#0c,#a0,#0a,#0c,#20,#21,#10
	db #ac,#0a,#0c,#1c,#31,#00,#39,#ff
	db #b1,#0a,#12,#a5,#0a,#12,#1c,#21
	db #10,#b1,#0a,#12,#a5,#0a,#12,#20
	db #21,#10,#b1,#0a,#12,#1c,#31,#10
	db #b1,#0a,#12,#a5,#0a,#12,#1c,#21
	db #10,#b1,#0a,#12,#a5,#0a,#12,#20
	db #21,#10,#b1,#0a,#12,#1c,#31,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#1c,#21
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#20
	db #21,#10,#ac,#0a,#0c,#1c,#31,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#1c,#21
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#20
	db #21,#10,#ac,#0a,#0c,#1c,#31,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#1c,#21
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#20
	db #21,#10,#ac,#0a,#0c,#1c,#31,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#1c,#21
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#20
	db #21,#10,#ac,#0a,#0c,#1c,#31,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#1c,#21
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#20
	db #21,#10,#ac,#0a,#0c,#1c,#31,#10
	db #ac,#0a,#0c,#a0,#0a,#0c,#1c,#21
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#20
	db #21,#10,#ac,#0a,#0c,#1c,#31,#10
	db #ff,#ac,#0a,#0c,#a0,#0a,#0c,#1c
	db #21,#10,#ac,#0a,#0c,#a0,#0a,#0c
	db #20,#21,#10,#ac,#0a,#0c,#1c,#31
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#1c
	db #21,#10,#ac,#0a,#0c,#a0,#0a,#0c
	db #20,#21,#10,#ac,#0a,#0c,#1c,#31
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#1c
	db #21,#10,#ac,#0a,#0c,#a0,#0a,#0c
	db #20,#21,#10,#ac,#0a,#0c,#1c,#31
	db #10,#ac,#0a,#0c,#a0,#0a,#0c,#1c
	db #21,#10,#ac,#0a,#0c,#a0,#0a,#0c
	db #20,#21,#10,#ac,#0a,#0c,#1c,#31
	db #10,#b1,#0a,#12,#a5,#0a,#12,#1c
	db #21,#10,#b1,#0a,#12,#a5,#0a,#12
	db #20,#21,#10,#b1,#0a,#12,#1c,#31
	db #10,#b1,#0a,#12,#a5,#0a,#12,#1c
	db #21,#10,#b1,#0a,#12,#a5,#0a,#12
	db #20,#21,#10,#b1,#0a,#12,#1c,#31
	db #10,#b1,#0a,#12,#a5,#0a,#12,#1c
	db #21,#10,#b1,#0a,#12,#a5,#0a,#12
	db #20,#21,#10,#b1,#0a,#12,#1c,#31
	db #10,#b1,#0a,#12,#a5,#0a,#12,#1c
	db #21,#10,#b1,#0a,#12,#a5,#0a,#12
	db #20,#21,#10,#b1,#0a,#12,#1c,#31
	db #10,#ff,#fe,#40,#ff,#44,#31,#10
	db #c4,#30,#c4,#30,#c4,#30,#c4,#30
	db #c4,#30,#c4,#30,#44,#30,#39,#ff
	db #49,#66,#01,#04,#49,#60,#02,#49
	db #60,#02,#44,#60,#04,#49,#60,#02
	db #4b,#60,#02,#ce,#60,#cc,#60,#cb
	db #60,#ce,#60,#cc,#60,#cb,#60,#ce
	db #60,#cc,#60,#cb,#60,#ce,#60,#cc
	db #60,#cb,#60,#ce,#60,#cc,#60,#cb
	db #60,#c9,#66,#01,#06,#01,#01,#06
	db #01,#01,#06,#01,#01,#06,#01,#01
	db #c9,#66,#02,#06,#02,#01,#06,#02
	db #01,#06,#02,#01,#c9,#66,#03,#06
	db #03,#01,#06,#03,#01,#06,#03,#01
	db #c9,#66,#04,#06,#04,#01,#06,#04
	db #01,#06,#04,#01,#c9,#66,#05,#06
	db #05,#01,#06,#05,#01,#06,#05,#01
	db #c9,#66,#06,#06,#06,#01,#06,#06
	db #01,#06,#06,#01,#c9,#66,#07,#06
	db #07,#01,#06,#07,#01,#06,#07,#01
	db #c9,#66,#08,#06,#08,#01,#06,#08
	db #01,#06,#08,#01,#ff,#00,#40,#ff
	db #55,#4f,#2f,#fe,#01,#55,#40,#02
	db #fe,#01,#d5,#40,#fe,#01,#55,#40
	db #02,#fe,#01,#55,#40,#02,#fe,#01
	db #d5,#40,#fe,#01,#51,#40,#02,#fe
	db #01,#51,#40,#02,#fe,#01,#d1,#40
	db #fe,#01,#53,#40,#02,#fe,#01,#53
	db #40,#02,#fe,#01,#d3,#40,#fe,#01
	db #55,#4f,#2f,#fe,#01,#55,#40,#02
	db #fe,#01,#d5,#40,#fe,#01,#55,#40
	db #02,#fe,#01,#55,#40,#02,#fe,#01
	db #d5,#40,#fe,#01,#51,#40,#02,#fe
	db #01,#51,#40,#02,#fe,#01,#d1,#40
	db #fe,#01,#53,#40,#02,#fe,#01,#53
	db #40,#02,#fe,#01,#d3,#40,#fe,#01
	db #ff,#01,#80,#c9,#87,#12,#49,#a7
	db #12,#02,#c9,#87,#12,#49,#a7,#12
	db #02,#c9,#87,#12,#c9,#a7,#12,#c4
	db #a7,#12,#44,#a7,#12,#07,#42,#a7
	db #12,#03,#47,#a0,#03,#4b,#a0,#02
	db #4c,#a0,#03,#4b,#a0,#03,#47,#a0
	db #02,#49,#a0,#18,#ff,#00,#10,#c9
	db #87,#12,#49,#a7,#12,#02,#c9,#87
	db #12,#49,#a7,#12,#02,#c9,#87,#12
	db #c9,#a7,#12,#c4,#a7,#12,#44,#a7
	db #12,#07,#40,#a7,#12,#03,#44,#a0
	db #02,#49,#a0,#03,#47,#a0,#03,#49
	db #a0,#02,#44,#a0,#13,#ff,#50,#bf
	db #2f,#1c,#21,#1f,#50,#bf,#2f,#20
	db #21,#1f,#50,#bf,#1f,#1c,#31,#1f
	db #50,#bf,#2f,#1c,#21,#1f,#50,#bf
	db #2f,#1c,#21,#1f,#50,#bf,#1f,#1c
	db #31,#1f,#50,#bf,#2f,#1c,#21,#1f
	db #50,#bf,#2f,#1c,#21,#1f,#50,#bf
	db #1f,#1c,#31,#1f,#50,#bf,#2f,#1c
	db #21,#1f,#50,#bf,#2f,#1c,#21,#1f
	db #50,#bf,#1f,#1c,#31,#1f,#4c,#bf
	db #2f,#1c,#21,#1f,#4c,#bf,#2f,#1c
	db #21,#1f,#4c,#bf,#1f,#1c,#31,#1f
	db #4c,#bf,#2f,#1c,#21,#1f,#4c,#bf
	db #2f,#1c,#21,#1f,#4c,#bf,#1f,#1c
	db #31,#1f,#4e,#bf,#2f,#1c,#21,#1f
	db #4e,#bf,#2f,#1c,#21,#1f,#4e,#bf
	db #1f,#1c,#31,#1f,#4e,#bf,#2f,#1c
	db #21,#1f,#4e,#bf,#2f,#1c,#21,#1f
	db #4e,#bf,#1f,#1c,#31,#1f,#ff,#44
	db #31,#10,#c4,#30,#c4,#30,#c4,#30
	db #c4,#30,#c4,#30,#c4,#30,#44,#39
	db #00,#39,#ff,#c9,#a6,#d3,#49,#a6
	db #d0,#02,#c9,#a6,#d3,#49,#a6,#d0
	db #02,#c9,#a6,#d3,#c9,#a6,#d0,#c4
	db #a6,#d3,#44,#a6,#d0,#07,#c0,#a6
	db #d3,#40,#a6,#d0,#02,#c4,#a6,#d3
	db #c4,#a6,#d0,#c9,#a6,#d3,#49,#a6
	db #d0,#02,#c7,#a6,#d3,#47,#a6,#d0
	db #02,#c9,#a6,#d3,#c9,#a6,#d0,#c4
	db #a6,#d3,#44,#a6,#d0,#0a,#c2,#a6
	db #d3,#42,#a6,#d0,#02,#c7,#a6,#d3
	db #47,#a6,#d0,#02,#cb,#a6,#d3,#cb
	db #a6,#d0,#cc,#a6,#d3,#4c,#a6,#d0
	db #02,#cb,#a6,#d3,#4b,#a6,#d0,#02
	db #c7,#a6,#d3,#c7,#a6,#d0,#c9,#a6
	db #d3,#49,#a6,#d0,#07,#ff,#01,#00
	db #40,#ff,#fe,#08,#31,#1f,#10,#31
	db #10,#02,#b1,#10,#31,#10,#02,#31
	db #10,#02,#b1,#10,#31,#10,#02,#b1
	db #10,#31,#10,#02,#31,#10,#02,#b1
	db #10,#31,#10,#02,#b1,#10,#31,#10
	db #02,#31,#10,#02,#b1,#10,#31,#10
	db #02,#b1,#10,#31,#10,#02,#31,#10
	db #02,#b1,#10,#31,#10,#02,#b1,#10
	db #31,#10,#02,#31,#10,#02,#b1,#10
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #b1,#10,#31,#10,#02,#31,#10,#02
	db #ff,#31,#1f,#10,#31,#10,#02,#b1
	db #10,#31,#10,#02,#31,#10,#02,#b1
	db #10,#31,#10,#02,#b1,#10,#31,#10
	db #02,#31,#10,#02,#b1,#10,#31,#10
	db #02,#b1,#10,#31,#10,#02,#31,#10
	db #02,#b1,#10,#31,#10,#02,#b1,#10
	db #31,#10,#02,#31,#10,#02,#b1,#10
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #b1,#10,#31,#10,#02,#31,#10,#02
	db #b1,#10,#31,#10,#02,#b1,#10,#31
	db #10,#02,#31,#10,#02,#b1,#10,#31
	db #10,#02,#b1,#10,#31,#10,#02,#31
	db #10,#02,#ff,#31,#1f,#10,#31,#10
	db #02,#b1,#10,#31,#10,#02,#31,#10
	db #02,#b1,#10,#31,#10,#02,#b1,#10
	db #31,#10,#02,#31,#10,#02,#b1,#10
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #b1,#10,#31,#10,#02,#31,#10,#02
	db #ac,#10,#2c,#10,#02,#ac,#10,#2c
	db #10,#02,#2c,#10,#02,#ac,#10,#2c
	db #10,#02,#ac,#10,#2c,#10,#02,#2c
	db #10,#02,#ac,#10,#2c,#10,#02,#ac
	db #10,#2c,#10,#02,#2c,#10,#02,#ac
	db #10,#2c,#10,#02,#ac,#10,#2c,#10
	db #02,#2c,#10,#02,#ff,#31,#1f,#10
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #b1,#10,#31,#10,#02,#31,#10,#02
	db #b1,#10,#31,#10,#02,#b1,#10,#31
	db #10,#02,#31,#10,#02,#b1,#10,#31
	db #10,#02,#b1,#10,#31,#10,#02,#31
	db #10,#02,#b1,#10,#31,#10,#02,#b1
	db #10,#31,#10,#02,#31,#10,#02,#b1
	db #10,#31,#10,#02,#b1,#10,#31,#10
	db #02,#31,#10,#02,#bd,#10,#3d,#10
	db #02,#bd,#10,#3d,#10,#02,#3d,#10
	db #02,#bd,#10,#3d,#10,#02,#bd,#10
	db #3d,#10,#02,#3d,#10,#02,#ff,#31
	db #1f,#10,#31,#10,#02,#b1,#10,#31
	db #10,#02,#31,#10,#02,#b1,#10,#31
	db #10,#02,#b1,#10,#31,#10,#02,#31
	db #10,#02,#b1,#10,#31,#10,#02,#b1
	db #10,#31,#10,#02,#31,#10,#02,#b1
	db #10,#31,#10,#02,#b1,#10,#31,#10
	db #02,#31,#10,#02,#ac,#10,#2c,#10
	db #02,#ac,#10,#2c,#10,#02,#2c,#10
	db #02,#ac,#10,#2c,#10,#02,#ac,#10
	db #2c,#10,#02,#2c,#10,#02,#b8,#10
	db #38,#10,#02,#b8,#10,#38,#10,#02
	db #38,#10,#02,#b8,#10,#38,#10,#02
	db #b8,#10,#38,#10,#02,#38,#10,#02
	db #ff,#44,#1f,#10,#44,#10,#02,#c4
	db #10,#44,#10,#02,#44,#10,#02,#c4
	db #10,#44,#10,#02,#c4,#10,#44,#10
	db #02,#44,#10,#02,#c4,#10,#44,#10
	db #02,#c4,#10,#44,#10,#02,#44,#10
	db #02,#c4,#10,#44,#10,#02,#c4,#10
	db #44,#10,#02,#44,#10,#02,#c0,#10
	db #40,#10,#02,#c0,#10,#40,#10,#02
	db #40,#10,#02,#c0,#10,#40,#10,#02
	db #c0,#10,#40,#10,#02,#40,#10,#02
	db #c2,#10,#42,#10,#02,#c2,#10,#42
	db #10,#02,#42,#10,#02,#c2,#10,#42
	db #10,#02,#c2,#10,#42,#10,#02,#42
	db #10,#02,#ff,#38,#1f,#10,#38,#10
	db #02,#b8,#10,#38,#10,#02,#38,#10
	db #02,#38,#1f,#10,#38,#10,#02,#b8
	db #10,#38,#10,#02,#38,#10,#02,#b8
	db #10,#38,#10,#02,#b8,#10,#38,#10
	db #02,#38,#10,#02,#b8,#10,#38,#10
	db #02,#b8,#10,#38,#10,#02,#38,#10
	db #02,#38,#1f,#10,#38,#10,#02,#b8
	db #10,#38,#10,#02,#38,#10,#02,#b8
	db #10,#38,#10,#02,#b8,#10,#38,#10
	db #02,#38,#10,#02,#b8,#10,#38,#10
	db #02,#b8,#10,#38,#10,#02,#38,#10
	db #02,#38,#1f,#10,#38,#10,#02,#b8
	db #10,#38,#10,#02,#38,#10,#02,#ff
	db #d0,#a6,#65,#d0,#a6,#65,#d0,#a6
	db #64,#d0,#a6,#64,#d0,#a6,#63,#d0
	db #a6,#62,#d0,#a6,#61,#50,#a6,#60
	db #39,#ff,#31,#1f,#10,#31,#10,#02
	db #b1,#10,#31,#10,#02,#31,#10,#02
	db #b1,#10,#31,#10,#02,#b1,#10,#31
	db #10,#02,#31,#10,#02,#ac,#10,#2c
	db #10,#02,#ac,#10,#2c,#10,#02,#2c
	db #10,#02,#ac,#10,#2c,#10,#02,#ac
	db #10,#2c,#10,#02,#2c,#10,#02,#ac
	db #10,#2c,#10,#02,#ac,#10,#2c,#10
	db #02,#2c,#10,#02,#ac,#10,#2c,#10
	db #02,#ac,#10,#2c,#10,#02,#2c,#10
	db #02,#ac,#10,#2c,#10,#02,#ac,#10
	db #2c,#10,#02,#2c,#10,#02,#ac,#10
	db #2c,#10,#02,#ac,#10,#2c,#10,#02
	db #2c,#10,#02,#ff,#38,#1f,#10,#38
	db #10,#02,#b8,#10,#38,#10,#02,#38
	db #10,#02,#38,#1f,#10,#38,#10,#02
	db #b8,#10,#38,#10,#02,#38,#10,#02
	db #b8,#10,#38,#10,#02,#b8,#10,#38
	db #10,#02,#38,#10,#02,#b8,#10,#38
	db #10,#02,#b8,#10,#38,#10,#02,#38
	db #10,#02,#3d,#1f,#10,#3d,#10,#02
	db #bd,#10,#3d,#10,#02,#3d,#10,#02
	db #bd,#10,#3d,#10,#02,#bd,#10,#3d
	db #10,#02,#3d,#10,#02,#bd,#10,#3d
	db #10,#02,#bd,#10,#3d,#10,#02,#3d
	db #10,#02,#3d,#1f,#10,#3d,#10,#02
	db #bd,#10,#3d,#10,#02,#3d,#10,#02
	db #ff,#49,#2f,#10,#aa,#08,#35,#af
	db #08,#28,#a3,#08,#28,#49,#2f,#10
	db #af,#08,#28,#49,#2f,#10,#23,#08
	db #28,#03,#ff,#47,#2f,#10,#b1,#08
	db #24,#a5,#08,#24,#47,#2f,#10,#47
	db #3f,#10,#b1,#08,#24,#47,#2f,#10
	db #a5,#08,#24,#31,#08,#24,#02,#47
	db #2f,#10,#b1,#08,#24,#47,#3f,#10
	db #a5,#08,#24,#b1,#08,#24,#47,#3f
	db #10,#47,#2f,#10,#ad,#08,#2d,#a1
	db #08,#2d,#2d,#2f,#10,#47,#3f,#10
	db #ad,#08,#2d,#47,#2f,#10,#ad,#08
	db #2d,#af,#08,#28,#a3,#08,#28,#47
	db #2f,#10,#a3,#08,#28,#47,#2f,#10
	db #a3,#08,#28,#2f,#08,#28,#02,#38
	db #2f,#10,#a8,#08,#3c,#b4,#08,#3c
	db #36,#2f,#10,#21,#3f,#10,#a8,#08
	db #3c,#31,#2f,#10,#b4,#08,#3c,#28
	db #08,#3c,#02,#2f,#2f,#1e,#a8,#08
	db #3c,#2d,#2f,#1e,#b4,#08,#3c,#a8
	db #08,#3c,#21,#3f,#10,#2a,#2f,#10
	db #b4,#08,#3c,#aa,#08,#35,#28,#2f
	db #10,#21,#3f,#10,#aa,#08,#35,#27
	db #2f,#10,#9e,#08,#35,#2a,#08,#35
	db #02,#23,#2f,#10,#9e,#08,#35,#21
	db #3f,#10,#9e,#08,#35,#aa,#08,#35
	db #fe,#01,#ff,#2f,#2f,#10,#a5,#08
	db #24,#b1,#08,#24,#2f,#2f,#10,#2f
	db #3f,#10,#b1,#08,#24,#2f,#2f,#10
	db #a5,#08,#24,#31,#08,#24,#02,#2f
	db #2f,#10,#b1,#08,#24,#2f,#3f,#10
	db #a5,#08,#24,#b1,#08,#24,#2f,#3f
	db #10,#2f,#2f,#10,#ad,#08,#2d,#a1
	db #08,#2d,#2f,#2f,#10,#2f,#3f,#10
	db #ad,#08,#2d,#2f,#2f,#10,#a1,#08
	db #2d,#2d,#08,#2d,#02,#2f,#2f,#10
	db #a3,#08,#28,#2f,#3f,#10,#a3,#08
	db #28,#2f,#08,#28,#02,#2f,#2f,#10
	db #a1,#08,#2d,#ad,#08,#2d,#2f,#2f
	db #10,#2f,#3f,#10,#a8,#08,#3c,#2f
	db #2f,#10,#9c,#08,#3c,#28,#08,#3c
	db #02,#2f,#2f,#10,#9c,#08,#3c,#2f
	db #3f,#10,#a8,#08,#3c,#9c,#08,#3c
	db #2f,#3f,#10,#2f,#2f,#10,#9c,#08
	db #3c,#a8,#08,#3c,#2f,#2f,#10,#2f
	db #3f,#10,#a8,#08,#3c,#2f,#2f,#10
	db #a8,#08,#3c,#1c,#08,#3c,#02,#2f
	db #2f,#10,#9c,#08,#3c,#2f,#3f,#10
	db #a8,#08,#3c,#a8,#08,#3c,#9c,#08
	db #3c,#ff,#3d,#2f,#10,#b1,#08,#24
	db #a5,#08,#24,#3d,#2f,#10,#3d,#3f
	db #10,#b1,#08,#24,#3d,#2f,#10,#25
	db #08,#24,#03,#3d,#2f,#10,#b1,#08
	db #24,#3d,#3f,#10,#a5,#08,#24,#b1
	db #08,#24,#3d,#3f,#10,#3d,#2f,#10
	db #ad,#08,#2d,#a1,#08,#2d,#3d,#2f
	db #10,#3d,#3f,#10,#ad,#08,#2d,#3d
	db #2f,#10,#a1,#08,#2d,#2d,#08,#2d
	db #02,#3d,#2f,#10,#a3,#08,#28,#3d
	db #2f,#10,#2f,#08,#28,#03,#3d,#2f
	db #10,#a1,#08,#2d,#ad,#08,#2d,#3d
	db #2f,#10,#3d,#3f,#10,#a8,#08,#3c
	db #3d,#2f,#10,#9c,#08,#3c,#28,#08
	db #3c,#02,#3d,#2f,#10,#9c,#08,#3c
	db #3d,#3f,#10,#a8,#08,#3c,#9c,#08
	db #3c,#3d,#3f,#10,#3d,#2f,#10,#9c
	db #08,#3c,#a8,#08,#3c,#3d,#2f,#10
	db #3d,#3f,#10,#a8,#08,#3c,#3d,#2f
	db #10,#9c,#08,#3c,#28,#08,#3c,#02
	db #3d,#2f,#10,#9c,#08,#3c,#3d,#2f
	db #10,#a8,#08,#3c,#a8,#08,#3c,#9c
	db #08,#3c,#ff,#3d,#21,#10,#b1,#08
	db #24,#a5,#08,#24,#3d,#21,#10,#3d
	db #31,#10,#b1,#08,#24,#3d,#21,#10
	db #25,#08,#24,#03,#3d,#21,#10,#b1
	db #08,#24,#3d,#31,#10,#a5,#08,#24
	db #b1,#08,#24,#3d,#31,#10,#3d,#21
	db #10,#ad,#08,#2d,#a1,#08,#2d,#3d
	db #21,#10,#3d,#31,#10,#ad,#08,#2d
	db #3d,#21,#10,#21,#08,#2d,#03,#3d
	db #21,#10,#a3,#08,#28,#3d,#21,#10
	db #2f,#08,#28,#03,#3d,#21,#10,#a1
	db #08,#2d,#ad,#08,#2d,#3d,#21,#10
	db #3d,#31,#10,#a8,#08,#3c,#3d,#21
	db #10,#9c,#08,#3c,#28,#08,#3c,#02
	db #3d,#21,#10,#9c,#08,#3c,#3d,#31
	db #10,#a8,#08,#3c,#9c,#08,#3c,#3d
	db #31,#10,#3d,#21,#10,#9c,#08,#3c
	db #a8,#08,#3c,#3d,#21,#10,#3d,#31
	db #10,#9c,#08,#3c,#3d,#21,#10,#9c
	db #08,#3c,#28,#08,#3c,#02,#3d,#21
	db #10,#9c,#08,#3c,#3d,#21,#10,#a8
	db #08,#3c,#a8,#08,#3c,#9c,#08,#3c
	db #ff,#3d,#21,#10,#b1,#08,#24,#a5
	db #08,#24,#3d,#21,#10,#3d,#31,#10
	db #b1,#08,#24,#3d,#21,#10,#25,#08
	db #24,#03,#3d,#21,#10,#b1,#08,#24
	db #3d,#31,#10,#a5,#08,#24,#b1,#08
	db #24,#3d,#31,#10,#3d,#21,#10,#ad
	db #08,#2d,#a1,#08,#2d,#3d,#21,#10
	db #3d,#31,#10,#ad,#08,#2d,#3d,#21
	db #10,#21,#08,#2d,#03,#3d,#21,#10
	db #a3,#08,#28,#3d,#21,#10,#2f,#08
	db #28,#03,#3d,#21,#10,#b1,#08,#24
	db #a5,#08,#24,#3d,#21,#10,#3d,#31
	db #10,#b1,#08,#24,#3d,#21,#10,#25
	db #08,#24,#03,#3d,#21,#10,#b1,#08
	db #24,#3d,#31,#10,#a5,#08,#24,#ad
	db #08,#2d,#3d,#31,#10,#3d,#21,#10
	db #a1,#08,#2d,#ad,#08,#2d,#3d,#21
	db #10,#3d,#31,#10,#af,#08,#28,#3d
	db #21,#10,#23,#08,#28,#03,#3d,#21
	db #10,#a3,#08,#28,#3d,#21,#10,#af
	db #08,#28,#af,#08,#28,#a3,#08,#28
	db #ff,#47,#21,#10,#b1,#08,#24,#a5
	db #08,#24,#47,#21,#10,#47,#31,#10
	db #b1,#08,#24,#47,#21,#10,#25,#08
	db #24,#03,#47,#21,#10,#b1,#08,#24
	db #47,#31,#10,#a5,#08,#24,#b1,#08
	db #24,#47,#31,#10,#47,#21,#10,#a1
	db #08,#2d,#ad,#08,#2d,#47,#21,#10
	db #47,#31,#10,#a1,#08,#2d,#47,#21
	db #10,#ad,#08,#2d,#23,#08,#28,#02
	db #47,#21,#10,#af,#08,#28,#47,#21
	db #10,#a3,#08,#28,#2f,#08,#28,#02
	db #47,#21,#10,#9c,#08,#3c,#a8,#08
	db #3c,#47,#21,#10,#47,#31,#10,#9c
	db #08,#3c,#47,#21,#10,#28,#08,#3c
	db #03,#47,#21,#10,#9c,#08,#3c,#47
	db #31,#10,#a8,#08,#3c,#9c,#08,#3c
	db #47,#31,#10,#47,#21,#10,#a8,#08
	db #3c,#9e,#08,#36,#47,#21,#10,#47
	db #31,#10,#aa,#08,#36,#47,#21,#10
	db #9e,#08,#36,#2a,#08,#36,#02,#47
	db #21,#10,#9e,#08,#36,#47,#21,#10
	db #aa,#08,#36,#aa,#08,#36,#9e,#08
	db #36,#ff,#00,#02,#3d,#11,#70,#03
	db #24,#01,#03,#24,#01,#03,#24,#01
	db #03,#24,#01,#03,#24,#01,#03,#24
	db #01,#03,#24,#01,#03,#24,#01,#03
	db #24,#01,#03,#24,#01,#03,#24,#01
	db #03,#23,#08,#03,#2c,#03,#03,#23
	db #01,#03,#23,#01,#03,#23,#1f,#ff
	db #3d,#21,#10,#a5,#08,#24,#b1,#08
	db #24,#3d,#21,#10,#3d,#31,#10,#a5
	db #08,#24,#3d,#21,#10,#31,#08,#24
	db #03,#3d,#21,#10,#a5,#08,#24,#3d
	db #31,#10,#b1,#08,#24,#a5,#08,#24
	db #3d,#31,#10,#3d,#21,#10,#a1,#08
	db #2d,#ad,#08,#2d,#3d,#21,#10,#3d
	db #31,#10,#a1,#08,#2d,#3d,#21,#10
	db #ad,#08,#2d,#23,#08,#28,#02,#3d
	db #21,#10,#af,#08,#28,#3d,#31,#10
	db #23,#08,#28,#03,#3d,#21,#10,#a1
	db #08,#2d,#ad,#08,#2d,#3d,#21,#10
	db #3d,#31,#10,#9c,#08,#3c,#3d,#21
	db #10,#28,#08,#3c,#03,#3d,#21,#10
	db #9c,#08,#3c,#3d,#31,#10,#a8,#08
	db #3c,#9c,#08,#3c,#3d,#31,#10,#3d
	db #21,#10,#a8,#08,#3c,#9c,#08,#3c
	db #3d,#21,#10,#3d,#31,#10,#a8,#08
	db #3c,#3d,#21,#10,#9c,#08,#3c,#28
	db #08,#3c,#02,#3d,#21,#10,#9c,#08
	db #3c,#3d,#31,#10,#a8,#08,#3c,#a8
	db #08,#3c,#9c,#08,#3c,#ff,#49,#21
	db #10,#ad,#08,#2d,#a1,#08,#2d,#49
	db #21,#10,#49,#31,#10,#ad,#08,#2d
	db #49,#21,#10,#21,#08,#2d,#03,#49
	db #21,#10,#ad,#08,#2d,#49,#31,#10
	db #a1,#08,#2d,#ad,#08,#2d,#49,#31
	db #10,#49,#21,#10,#af,#08,#28,#a3
	db #08,#28,#49,#21,#10,#49,#31,#10
	db #af,#08,#28,#49,#21,#10,#23,#08
	db #28,#03,#49,#21,#10,#af,#08,#28
	db #49,#31,#10,#23,#08,#28,#03,#49
	db #21,#10,#a8,#08,#3c,#9c,#08,#3c
	db #49,#21,#10,#49,#31,#10,#a8,#08
	db #3c,#49,#21,#10,#9c,#08,#3c,#28
	db #08,#3c,#02,#49,#21,#10,#9c,#08
	db #3c,#49,#31,#10,#a8,#08,#3c,#9c
	db #08,#3c,#49,#31,#10,#49,#21,#10
	db #9e,#08,#36,#aa,#08,#36,#49,#21
	db #10,#49,#31,#10,#9e,#08,#36,#49
	db #21,#10,#2a,#08,#36,#03,#49,#21
	db #10,#9e,#08,#36,#49,#31,#10,#aa
	db #08,#36,#aa,#08,#36,#9e,#08,#36
	db #ff,#47,#21,#10,#ad,#08,#2d,#a1
	db #08,#2d,#47,#21,#10,#47,#31,#10
	db #ad,#08,#2d,#47,#21,#10,#21,#08
	db #2d,#03,#47,#21,#10,#ad,#08,#2d
	db #47,#31,#10,#a1,#08,#2d,#ad,#08
	db #2d,#47,#31,#10,#47,#21,#10,#a3
	db #08,#28,#af,#08,#28,#47,#21,#10
	db #47,#31,#10,#a3,#08,#28,#47,#21
	db #10,#2f,#08,#28,#03,#47,#21,#10
	db #a3,#08,#28,#47,#31,#10,#af,#08
	db #28,#23,#08,#28,#02,#47,#21,#10
	db #a8,#08,#3c,#9c,#08,#3c,#47,#21
	db #10,#47,#31,#10,#a8,#08,#3c,#47
	db #21,#10,#9c,#08,#3c,#28,#08,#3c
	db #02,#47,#21,#10,#9c,#08,#3c,#47
	db #31,#10,#a8,#08,#3c,#9c,#08,#3c
	db #47,#31,#10,#47,#21,#10,#a8,#08
	db #3c,#9c,#08,#3c,#47,#21,#10,#47
	db #31,#10,#a8,#08,#3c,#47,#21,#10
	db #9c,#08,#3c,#28,#08,#3c,#02,#47
	db #21,#10,#9c,#08,#3c,#47,#31,#10
	db #a8,#08,#3c,#a8,#08,#3c,#9c,#08
	db #3c,#ff,#47,#21,#10,#ad,#08,#2d
	db #a1,#08,#2d,#47,#21,#10,#47,#31
	db #10,#ad,#08,#2d,#47,#21,#10,#21
	db #08,#2d,#03,#47,#21,#10,#ad,#08
	db #2d,#47,#31,#10,#a1,#08,#2d,#ad
	db #08,#2d,#47,#31,#10,#47,#21,#10
	db #af,#08,#28,#a3,#08,#28,#47,#21
	db #10,#47,#31,#10,#af,#08,#28,#47
	db #21,#10,#23,#08,#28,#03,#47,#21
	db #10,#af,#08,#28,#47,#31,#10,#a3
	db #08,#28,#2f,#08,#28,#02,#47,#21
	db #10,#a8,#08,#3c,#9c,#08,#3c,#47
	db #21,#10,#47,#31,#10,#a8,#08,#3c
	db #47,#21,#10,#9c,#08,#3c,#28,#08
	db #3c,#02,#47,#21,#10,#9c,#08,#3c
	db #47,#31,#10,#a8,#08,#3c,#9c,#08
	db #3c,#47,#31,#10,#47,#21,#10,#28
	db #08,#3c,#02,#47,#21,#10,#47,#31
	db #10,#9c,#08,#3c,#47,#21,#10,#28
	db #08,#3c,#03,#47,#21,#10,#9c,#08
	db #3c,#47,#31,#10,#a8,#08,#3c,#a8
	db #08,#3c,#9c,#08,#3c,#ff,#47,#21
	db #10,#ad,#08,#2d,#a1,#08,#2d,#47
	db #21,#10,#47,#31,#10,#ad,#08,#2d
	db #47,#21,#10,#a1,#08,#2d,#2d,#08
	db #2d,#02,#47,#21,#10,#a1,#08,#2d
	db #47,#31,#10,#ad,#08,#2d,#a1,#08
	db #2d,#47,#31,#10,#47,#21,#10,#af
	db #08,#28,#a3,#08,#28,#47,#21,#10
	db #47,#31,#10,#af,#08,#28,#47,#21
	db #10,#23,#08,#28,#03,#47,#21,#10
	db #af,#08,#28,#47,#31,#10,#a3,#08
	db #28,#2f,#08,#28,#02,#47,#21,#10
	db #9c,#08,#3c,#a8,#08,#3c,#47,#21
	db #10,#47,#31,#10,#9c,#08,#3c,#47
	db #21,#10,#28,#08,#3c,#03,#47,#21
	db #10,#9c,#08,#3c,#47,#31,#10,#a8
	db #08,#3c,#9c,#08,#3c,#47,#31,#10
	db #47,#21,#10,#a8,#08,#3c,#9c,#08
	db #3c,#47,#21,#10,#47,#31,#10,#a8
	db #08,#3c,#47,#21,#10,#9c,#08,#3c
	db #28,#08,#3c,#02,#47,#21,#10,#9c
	db #08,#3c,#47,#31,#10,#a8,#08,#3c
	db #a8,#08,#3c,#9c,#08,#3c,#ff,#10
	db #a1,#08,#2d,#74,#21,#10,#74,#21
	db #10,#a1,#08,#2d,#74,#21,#10,#a1
	db #08,#2d,#74,#21,#10,#74,#31,#10
	db #74,#21,#10,#74,#31,#10,#74,#31
	db #10,#ff,#74,#21,#10,#b1,#00,#a5
	db #00,#a5,#00,#74,#31,#10,#a5,#00
	db #74,#21,#10,#74,#21,#10,#a5,#00
	db #74,#21,#10,#a5,#00,#74,#21,#10
	db #74,#31,#10,#a5,#00,#a5,#00,#b1
	db #00,#74,#21,#10,#b1,#00,#a5,#00
	db #a5,#00,#74,#31,#10,#a5,#00,#a5
	db #00,#74,#21,#10,#a5,#00,#b1,#00
	db #74,#21,#10,#a5,#00,#74,#31,#10
	db #a5,#00,#a5,#00,#b1,#00,#74,#21
	db #10,#af,#00,#a3,#00,#a3,#00,#74
	db #31,#10,#a3,#00,#a3,#00,#74,#21
	db #10,#a3,#00,#af,#00,#74,#21,#10
	db #74,#21,#10,#74,#31,#10,#a3,#00
	db #a3,#00,#af,#00,#74,#21,#10,#ad
	db #00,#a1,#00,#a1,#00,#74,#31,#10
	db #a1,#00,#74,#21,#10,#74,#21,#10
	db #a1,#00,#74,#21,#10,#a1,#00,#74
	db #21,#10,#74,#31,#10,#74,#21,#10
	db #74,#31,#10,#74,#31,#10,#ff,#f4
	db #20,#ab,#00,#9f,#00,#9f,#00,#f4
	db #30,#9f,#00,#f4,#20,#f4,#20,#9f
	db #00,#ab,#00,#f4,#20,#9f,#00,#f4
	db #30,#9f,#00,#9f,#00,#ab,#00,#f4
	db #20,#a9,#00,#9d,#00,#9d,#00,#f4
	db #30,#9d,#00,#f4,#20,#f4,#20,#9d
	db #00,#f4,#20,#f4,#20,#9d,#00,#f4
	db #30,#9d,#00,#f4,#20,#a9,#00,#f4
	db #20,#a7,#00,#9b,#00,#9b,#00,#f4
	db #30,#9b,#00,#9b,#00,#f4,#20,#9b
	db #00,#a7,#00,#f4,#20,#9b,#00,#f4
	db #30,#9b,#00,#9b,#00,#a7,#00,#f4
	db #20,#a5,#00,#99,#00,#99,#00,#f4
	db #30,#99,#00,#99,#00,#f4,#20,#99
	db #00,#a5,#00,#f4,#20,#99,#00,#f4
	db #30,#99,#00,#f4,#30,#f4,#30,#ff
	db #a3,#00,#af,#00,#a3,#00,#a3,#00
	db #af,#00,#a3,#00,#a3,#00,#af,#00
	db #a3,#00,#af,#00,#a3,#00,#a3,#00
	db #af,#00,#a3,#00,#a3,#00,#af,#00
	db #a1,#00,#ad,#00,#a1,#00,#a1,#00
	db #ad,#00,#a1,#00,#a1,#00,#ad,#00
	db #a1,#00,#ad,#00,#a1,#00,#a1,#00
	db #ad,#00,#a1,#00,#a1,#00,#ad,#00
	db #9f,#00,#ab,#00,#9f,#00,#9f,#00
	db #ab,#00,#9f,#00,#9f,#00,#ab,#00
	db #9f,#00,#ab,#00,#9f,#00,#9f,#00
	db #ab,#00,#9f,#00,#9f,#00,#ab,#00
	db #9d,#00,#a9,#00,#9d,#00,#9d,#00
	db #a9,#00,#9d,#00,#9d,#00,#a9,#00
	db #9d,#00,#a9,#00,#9d,#00,#9d,#00
	db #a9,#00,#9d,#00,#9d,#00,#a9,#00
	db #ff,#27,#0b,#10,#33,#0b,#10,#27
	db #0b,#10,#27,#0b,#10,#33,#0b,#10
	db #27,#0b,#10,#27,#0b,#11,#33,#0b
	db #11,#27,#0b,#11,#33,#0b,#11,#27
	db #0b,#11,#27,#0b,#11,#33,#0b,#12
	db #27,#0b,#12,#27,#0b,#12,#33,#0b
	db #12,#25,#0b,#12,#31,#0b,#12,#25
	db #0b,#13,#25,#0b,#13,#31,#0b,#13
	db #25,#0b,#13,#25,#0b,#13,#31,#0b
	db #13,#25,#0b,#14,#31,#0b,#14,#25
	db #0b,#14,#25,#0b,#14,#31,#0b,#14
	db #25,#0b,#14,#25,#0b,#15,#31,#0b
	db #15,#23,#0b,#15,#2f,#0b,#15,#23
	db #0b,#15,#23,#0b,#15,#2f,#0b,#16
	db #23,#0b,#16,#23,#0b,#16,#2f,#0b
	db #16,#23,#0b,#16,#2f,#0b,#16,#23
	db #0b,#16,#23,#0b,#17,#2f,#0b,#17
	db #23,#0b,#17,#23,#0b,#17,#2f,#0b
	db #17,#21,#0b,#17,#2d,#0b,#17,#21
	db #0b,#18,#21,#0b,#18,#2d,#0b,#18
	db #21,#0b,#18,#21,#0b,#18,#2d,#0b
	db #18,#21,#0b,#19,#2d,#0b,#19,#21
	db #0b,#19,#21,#0b,#5f,#ff
;
.music_info
	db "Acid Music Box 3 Cool (1995)(Acid)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"