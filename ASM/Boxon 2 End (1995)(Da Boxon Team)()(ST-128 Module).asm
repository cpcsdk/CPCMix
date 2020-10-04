; Music of Boxon 2 End (1995)(Da Boxon Team)()(ST-128 Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2EN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
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
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l44ed
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
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
	db #ff,#ff,#ff,#ff,#06,#40,#01,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
	db #38,#00,#00
.l44d0
	dw l4353,l4366,l4365,l438a
	dw l4387,l439a,l43ab,l43d3
	dw l43ed,l43d3,l4407,l4410
.l44ed equ $ + 5
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
	db #00,#00,#00,#00,#00,#01,#7f,#4c
	db #23,#4b,#00,#ff,#00,#00,#00,#00
.l45de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l45e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 3
	db #00,#00,#00,#01,#04,#54,#98,#4b
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 6
.l460c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 1
	db #00,#01,#53,#60,#0d,#4c,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4640 equ $ + 6
.l463a
	db #20,#4b,#95,#4b,#0a,#4c,#e0,#46
	db #20,#47,#40,#47,#18,#08,#60,#47
	db #a0,#47,#c0,#47,#80,#00,#e0,#47
	db #20,#48,#40,#48,#c0,#00,#60,#48
	db #a0,#48,#c0,#48,#9a,#06,#60,#48
	db #e0,#48,#00,#49,#80,#00,#20,#49
	db #60,#49,#80,#49,#c0,#20,#60,#48
	db #a0,#49,#c0,#49,#1a,#06,#60,#48
	db #a0,#49,#40,#47,#1a,#06,#60,#48
	db #e0,#49,#40,#47,#5d,#03,#60,#48
	db #20,#47,#40,#47,#1a,#06,#60,#48
	db #00,#4a,#c0,#49,#00,#00,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#20,#4a
	db #20,#47,#40,#47,#10,#10,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
.l46c0 equ $ + 6
	db #d2,#ff,#d2,#ff,#ff,#ff,#60,#4a
	db #80,#4a,#a0,#4a,#c0,#4a,#e0,#4a
	db #d2,#ff,#d2,#ff,#d1,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#d1,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#00,#4b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
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
	db #00,#00,#00,#00,#00,#00,#0d,#0e
	db #0e,#0e,#0d,#0d,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0d,#0b
	db #09,#07,#05,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #65,#01,#3e,#01,#00,#00,#65,#01
	db #3e,#01,#00,#00,#65,#01,#3e,#01
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #65,#01,#3e,#01,#00,#00,#65,#01
	db #3e,#01,#00,#00,#65,#01,#3e,#01
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #65,#01,#3e,#01,#00,#00,#65,#01
	db #3e,#01,#00,#00,#65,#01,#0f,#0f
	db #0e,#0f,#0f,#0e,#0f,#0f,#0e,#0f
	db #0f,#0e,#0f,#0f,#0e,#0f,#0f,#0e
	db #0f,#0f,#0e,#0f,#0f,#0e,#0f,#0f
	db #0e,#0f,#0f,#0e,#0f,#0f,#06,#00
	db #00,#06,#00,#00,#06,#00,#00,#06
	db #00,#00,#06,#00,#00,#06,#00,#00
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #00,#06,#00,#00,#06,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0d
	db #0b,#09,#07,#05,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#0c,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#0c,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#0c,#00,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#7f
	db #4c,#00,#a9,#4c,#00,#bf,#4c,#00
	db #a9,#4c,#00,#bf,#4c,#00,#e8,#4c
	db #00,#1f,#4d,#00,#5f,#4d,#00,#f7
	db #4d,#00,#75,#4d,#00,#79,#4e,#00
	db #b9,#4e,#00,#f7,#4e,#00,#24,#4f
	db #00,#86,#4f,#00,#cb,#4f,#00,#cb
	db #4f,#00,#cb,#4f,#00,#8c,#50,#00
	db #8c,#50,#ff,#8c,#50,#00,#4d,#51
	db #ff,#4d,#51,#00,#4d,#51,#ff,#4d
	db #51,#00,#4d,#51,#00,#0e,#52,#00
	db #cf,#52,#00,#f5,#52,#00,#cf,#52
	db #00,#52,#53,#00,#a9,#53,#00,#de
	db #53,#00,#de,#53,#00,#de,#53,#00
	db #de,#53,#00,#e3,#53,#00,#01,#54
	db #80,#20,#4b,#00,#04,#54,#00,#2c
	db #54,#00,#52,#54,#00,#d3,#54,#00
	db #4f,#55,#00,#4f,#55,#00,#4f,#55
	db #00,#4f,#55,#00,#4f,#55,#00,#07
	db #56,#00,#c8,#56,#00,#03,#57,#00
	db #03,#57,#00,#03,#57,#00,#c4,#57
	db #00,#c4,#57,#00,#85,#58,#00,#c5
	db #58,#00,#77,#59,#00,#77,#59,#ff
	db #77,#59,#00,#77,#59,#ff,#77,#59
	db #00,#38,#5a,#ff,#f9,#5a,#00,#ba
	db #5b,#00,#c4,#57,#00,#e8,#5b,#00
	db #a9,#5c,#00,#6a,#5d,#00,#2b,#5e
	db #00,#ec,#5e,#00,#24,#5f,#00,#3d
	db #5f,#00,#3d,#5f,#00,#76,#5f,#00
	db #af,#5f,#00,#01,#60,#80,#95,#4b
	db #00,#53,#60,#00,#53,#60,#00,#53
	db #60,#00,#53,#60,#00,#53,#60,#00
	db #53,#60,#00,#53,#60,#00,#53,#60
	db #00,#53,#60,#00,#14,#61,#00,#d5
	db #61,#00,#14,#61,#00,#14,#61,#00
	db #14,#61,#00,#96,#62,#00,#96,#62
	db #00,#57,#63,#00,#5c,#63,#00,#61
	db #63,#00,#64,#63,#ff,#d5,#63,#00
	db #64,#63,#ff,#d5,#63,#00,#64,#63
	db #ff,#46,#64,#00,#ae,#64,#00,#96
	db #62,#00,#0f,#65,#00,#d0,#65,#00
	db #0f,#65,#00,#d0,#65,#00,#91,#66
	db #00,#91,#66,#00,#91,#66,#00,#91
	db #66,#00,#91,#66,#00,#91,#66,#00
	db #ef,#66,#80,#0a,#4c,#c5,#0d,#06
	db #03,#22,#01,#03,#22,#01,#03,#23
	db #01,#47,#00,#18,#c9,#00,#02,#22
	db #01,#02,#22,#01,#02,#22,#01,#44
	db #00,#1c,#03,#22,#01,#03,#22,#01
	db #03,#22,#01,#03,#22,#01,#ff,#47
	db #00,#1a,#49,#00,#02,#4c,#00,#04
	db #4b,#00,#04,#02,#23,#01,#02,#23
	db #01,#44,#00,#1a,#ff,#c5,#00,#03
	db #22,#01,#03,#22,#01,#03,#23,#01
	db #47,#00,#18,#c9,#00,#02,#22,#01
	db #02,#22,#01,#02,#22,#01,#44,#00
	db #1c,#03,#22,#01,#03,#22,#01,#03
	db #22,#01,#03,#22,#01,#ff,#47,#00
	db #1a,#49,#00,#02,#4c,#00,#04,#4b
	db #00,#04,#02,#23,#01,#02,#23,#01
	db #44,#00,#0f,#02,#23,#01,#02,#24
	db #01,#02,#23,#01,#02,#24,#01,#02
	db #23,#01,#02,#24,#01,#02,#23,#01
	db #02,#24,#01,#02,#23,#01,#02,#24
	db #01,#02,#23,#01,#ff,#3b,#00,#16
	db #02,#21,#01,#02,#21,#01,#02,#21
	db #01,#02,#21,#01,#02,#21,#01,#02
	db #21,#01,#02,#21,#01,#02,#21,#01
	db #02,#21,#01,#02,#21,#01,#38,#00
	db #17,#03,#22,#01,#03,#22,#01,#03
	db #22,#01,#03,#22,#01,#03,#22,#01
	db #03,#22,#01,#03,#22,#01,#03,#22
	db #01,#03,#22,#01,#ff,#3b,#00,#1a
	db #3d,#00,#02,#40,#00,#04,#3f,#00
	db #04,#02,#23,#01,#02,#23,#01,#38
	db #00,#1a,#ff,#53,#7f,#11,#ce,#70
	db #c7,#70,#d3,#70,#ce,#70,#c7,#70
	db #d3,#70,#ce,#70,#d6,#70,#ce,#70
	db #d5,#70,#ce,#70,#d3,#70,#ce,#70
	db #d1,#70,#ce,#70,#d3,#70,#ce,#70
	db #c7,#70,#d3,#70,#ce,#70,#c7,#70
	db #d3,#70,#ce,#70,#d6,#70,#d3,#70
	db #d5,#70,#d1,#70,#d3,#70,#ce,#70
	db #d1,#70,#ce,#70,#d1,#70,#cc,#70
	db #c5,#70,#d1,#70,#cc,#70,#c5,#70
	db #d1,#70,#cc,#70,#d5,#70,#cc,#70
	db #d3,#70,#cc,#70,#d1,#70,#cc,#70
	db #d0,#70,#cc,#70,#d0,#70,#cc,#70
	db #c7,#70,#d0,#70,#cc,#70,#c7,#70
	db #d0,#70,#cc,#70,#d0,#70,#cc,#70
	db #d1,#70,#cc,#70,#d3,#70,#cc,#70
	db #d5,#70,#cc,#70,#ff,#53,#7f,#11
	db #ce,#70,#c7,#70,#d3,#70,#ce,#70
	db #c7,#70,#d3,#70,#ce,#70,#d6,#70
	db #ce,#70,#d5,#70,#ce,#70,#d3,#70
	db #ce,#70,#d1,#70,#ce,#70,#d3,#70
	db #ce,#70,#c7,#70,#d3,#70,#ce,#70
	db #c7,#70,#d3,#70,#ce,#70,#d6,#70
	db #d3,#70,#d5,#70,#d1,#70,#d3,#70
	db #ce,#70,#d1,#70,#ce,#70,#d0,#70
	db #cb,#70,#c4,#70,#d0,#70,#cb,#70
	db #c4,#70,#d0,#70,#cb,#70,#d3,#70
	db #cb,#70,#d2,#70,#cb,#70,#ce,#70
	db #c9,#70,#c6,#70,#c7,#70,#c9,#70
	db #c7,#70,#cb,#70,#c7,#70,#ce,#70
	db #c7,#70,#d0,#70,#c7,#70,#d3,#70
	db #c7,#70,#d5,#70,#c7,#70,#d7,#70
	db #c7,#70,#da,#70,#c7,#70,#ff,#45
	db #01,#10,#03,#22,#01,#03,#22,#01
	db #03,#23,#01,#c7,#00,#02,#22,#01
	db #42,#00,#10,#42,#00,#02,#4a,#00
	db #02,#42,#00,#02,#49,#00,#02,#42
	db #00,#02,#47,#00,#0c,#49,#00,#02
	db #4c,#00,#0a,#d0,#00,#cc,#00,#c9
	db #00,#c7,#00,#c4,#00,#02,#17,#01
	db #02,#17,#01,#02,#17,#01,#ff,#45
	db #01,#10,#03,#22,#01,#03,#22,#01
	db #03,#23,#01,#c7,#00,#02,#22,#01
	db #42,#00,#10,#42,#00,#02,#4a,#00
	db #02,#47,#00,#02,#49,#00,#02,#45
	db #00,#02,#47,#00,#04,#c2,#00,#02
	db #23,#01,#40,#00,#08,#c0,#00,#c2
	db #00,#44,#00,#04,#c9,#00,#02,#24
	db #01,#47,#00,#0a,#ff,#47,#9f,#a3
	db #42,#90,#02,#45,#90,#02,#42,#90
	db #10,#c2,#90,#c4,#90,#45,#90,#04
	db #47,#90,#02,#45,#90,#02,#47,#90
	db #02,#49,#90,#04,#c7,#90,#c9,#90
	db #4c,#90,#04,#55,#90,#02,#53,#90
	db #0a,#ff,#47,#01,#20,#02,#35,#01
	db #42,#00,#02,#03,#35,#01,#47,#00
	db #02,#4a,#00,#02,#49,#00,#02,#c5
	db #00,#42,#00,#03,#47,#90,#03,#42
	db #90,#03,#47,#90,#02,#4a,#90,#02
	db #49,#90,#02,#c5,#90,#47,#90,#03
	db #c7,#90,#c5,#90,#c7,#90,#c9,#90
	db #47,#90,#02,#45,#90,#02,#47,#90
	db #02,#45,#90,#02,#47,#90,#02,#49
	db #90,#02,#4c,#90,#03,#c9,#90,#4c
	db #90,#02,#c9,#90,#4c,#90,#02,#d0
	db #90,#4c,#90,#02,#d0,#90,#4c,#90
	db #02,#d0,#90,#ff,#cc,#93,#24,#4e
	db #90,#14,#4e,#96,#f0,#02,#4e,#96
	db #f1,#02,#4e,#96,#f2,#02,#4e,#96
	db #f3,#02,#4e,#96,#f4,#02,#4e,#96
	db #f5,#02,#4e,#96,#f6,#02,#4e,#96
	db #f7,#02,#4e,#96,#f8,#02,#4e,#96
	db #f9,#02,#4e,#96,#fa,#02,#4e,#96
	db #fb,#02,#4e,#96,#fc,#02,#4e,#96
	db #fd,#02,#4e,#96,#fe,#0e,#01,#10
	db #ff,#53,#af,#11,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#53,#ab,#10,#53,#ab,#11,#53
	db #ab,#12,#53,#ab,#13,#53,#ab,#12
	db #53,#ab,#11,#53,#ab,#10,#53,#ab
	db #11,#ff,#47,#71,#10,#42,#9b,#15
	db #45,#7b,#14,#40,#9b,#14,#42,#7b
	db #13,#3e,#9b,#13,#40,#7b,#12,#3b
	db #9b,#12,#47,#7b,#13,#42,#9b,#13
	db #45,#7b,#14,#40,#9b,#14,#42,#7b
	db #15,#3e,#9b,#15,#40,#7b,#14,#3b
	db #9b,#14,#47,#7b,#13,#42,#9b,#13
	db #45,#7b,#12,#40,#9b,#12,#42,#7b
	db #13,#3e,#9b,#13,#40,#7b,#14,#3b
	db #9b,#14,#47,#7b,#15,#42,#9b,#15
	db #45,#7b,#14,#40,#9b,#14,#42,#7b
	db #13,#3e,#9b,#13,#40,#7b,#12,#3b
	db #9b,#12,#47,#7b,#13,#42,#9b,#13
	db #45,#7b,#14,#40,#9b,#14,#42,#7b
	db #15,#3e,#9b,#15,#40,#7b,#14,#3b
	db #9b,#14,#47,#7b,#13,#42,#9b,#13
	db #45,#7b,#12,#40,#9b,#12,#42,#7b
	db #13,#3e,#9b,#13,#40,#7b,#14,#3b
	db #9b,#14,#47,#7b,#15,#42,#9b,#15
	db #45,#7b,#14,#40,#9b,#14,#42,#7b
	db #13,#3e,#9b,#13,#40,#7b,#12,#3b
	db #9b,#12,#47,#7b,#13,#42,#9b,#13
	db #45,#7b,#14,#40,#9b,#14,#42,#7b
	db #15,#3e,#9b,#15,#40,#7b,#14,#3b
	db #9b,#14,#ff,#47,#71,#10,#42,#9b
	db #11,#47,#7f,#10,#40,#91,#10,#42
	db #7b,#11,#47,#7f,#10,#40,#71,#10
	db #47,#7f,#10,#47,#71,#10,#47,#7f
	db #10,#47,#7f,#10,#40,#91,#10,#47
	db #7f,#10,#3e,#91,#10,#47,#7b,#14
	db #3b,#9b,#14,#47,#7b,#13,#42,#9b
	db #11,#47,#7f,#10,#40,#91,#10,#42
	db #7b,#11,#47,#7f,#10,#40,#71,#10
	db #47,#7f,#10,#47,#71,#10,#47,#7f
	db #10,#47,#7f,#10,#40,#91,#10,#47
	db #7f,#10,#3e,#91,#10,#47,#7f,#10
	db #3b,#91,#10,#47,#7b,#13,#42,#9b
	db #11,#47,#7f,#10,#40,#91,#10,#42
	db #7b,#11,#47,#7f,#10,#40,#71,#10
	db #47,#7f,#10,#47,#71,#10,#47,#7f
	db #10,#47,#7f,#10,#40,#91,#10,#47
	db #7f,#10,#3e,#91,#10,#40,#7b,#14
	db #3b,#9b,#14,#47,#7b,#15,#42,#9b
	db #11,#47,#7f,#10,#40,#91,#10,#42
	db #7b,#11,#47,#7f,#10,#40,#71,#10
	db #47,#7f,#10,#47,#71,#10,#47,#7f
	db #10,#47,#7f,#10,#40,#91,#10,#47
	db #7f,#10,#3e,#91,#10,#47,#7f,#10
	db #47,#7f,#10,#ff,#47,#71,#10,#42
	db #9b,#11,#53,#7f,#10,#40,#91,#10
	db #42,#7b,#11,#53,#7f,#10,#40,#71
	db #10,#53,#7f,#10,#47,#71,#10,#53
	db #7f,#10,#53,#7f,#10,#40,#91,#10
	db #53,#7f,#10,#3e,#91,#10,#47,#7b
	db #14,#3b,#9b,#14,#47,#7b,#13,#42
	db #9b,#11,#53,#7f,#10,#40,#91,#10
	db #42,#7b,#11,#53,#7f,#10,#40,#71
	db #10,#53,#7f,#10,#47,#71,#10,#53
	db #7f,#10,#53,#7f,#10,#40,#91,#10
	db #53,#7f,#10,#3e,#91,#10,#53,#7f
	db #10,#3b,#91,#10,#47,#7b,#13,#42
	db #9b,#11,#53,#7f,#10,#40,#91,#10
	db #42,#7b,#11,#53,#7f,#10,#40,#71
	db #10,#53,#7f,#10,#47,#71,#10,#53
	db #7f,#10,#53,#7f,#10,#40,#91,#10
	db #53,#7f,#10,#3e,#91,#10,#40,#7b
	db #14,#3b,#9b,#14,#47,#7b,#15,#42
	db #9b,#11,#53,#7f,#10,#40,#91,#10
	db #42,#7b,#11,#53,#7f,#10,#40,#71
	db #10,#53,#7f,#10,#47,#71,#10,#53
	db #7f,#10,#53,#7f,#10,#40,#91,#10
	db #53,#7f,#10,#3e,#91,#10,#53,#7f
	db #10,#53,#71,#10,#ff,#4a,#0f,#31
	db #49,#00,#03,#47,#00,#02,#4e,#00
	db #12,#4e,#00,#03,#53,#00,#03,#53
	db #00,#03,#51,#00,#03,#ce,#00,#cc
	db #00,#4e,#00,#12,#4e,#00,#03,#51
	db #00,#03,#ff,#50,#0f,#11,#cc,#00
	db #ce,#00,#c9,#00,#cc,#00,#c7,#00
	db #c9,#00,#c4,#00,#c7,#00,#c2,#00
	db #c4,#00,#c0,#00,#c2,#00,#bd,#00
	db #c0,#00,#c2,#00,#c0,#00,#c4,#00
	db #c7,#00,#c4,#00,#c7,#00,#cc,#00
	db #c7,#00,#cc,#00,#d0,#00,#cc,#00
	db #d0,#00,#d3,#00,#d0,#00,#d3,#00
	db #d6,#00,#d8,#00,#4a,#00,#0a,#4c
	db #00,#03,#4e,#00,#03,#51,#00,#04
	db #4e,#00,#02,#51,#00,#04,#4e,#00
	db #02,#51,#00,#02,#53,#00,#02,#ff
	db #50,#0f,#11,#cc,#00,#ce,#00,#c9
	db #00,#cc,#00,#c7,#00,#c9,#00,#c4
	db #00,#c7,#00,#c2,#00,#c4,#00,#c0
	db #00,#c2,#00,#bd,#00,#c0,#00,#c2
	db #00,#c0,#00,#c4,#00,#c7,#00,#c4
	db #00,#c7,#00,#cc,#00,#c7,#00,#cc
	db #00,#d0,#00,#cc,#00,#d0,#00,#d3
	db #00,#d0,#00,#d3,#00,#d6,#00,#d8
	db #00,#4a,#00,#0a,#4c,#00,#03,#4e
	db #00,#03,#4c,#00,#04,#51,#00,#04
	db #53,#00,#04,#55,#00,#04,#ff,#56
	db #01,#00,#30,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#ff,#47,#01,#00,#40
	db #ff,#00,#18,#47,#cb,#40,#47,#cb
	db #41,#47,#cb,#42,#47,#cb,#43,#47
	db #cb,#44,#47,#cb,#45,#47,#cb,#46
	db #47,#cb,#47,#47,#cb,#8f,#ff,#fe
	db #40,#ff,#01,#10,#c5,#00,#03,#22
	db #01,#03,#22,#01,#03,#23,#01,#47
	db #00,#18,#c9,#00,#02,#22,#01,#02
	db #22,#01,#02,#22,#01,#44,#00,#1c
	db #03,#22,#01,#03,#22,#01,#03,#22
	db #01,#ff,#00,#01,#47,#00,#1a,#49
	db #00,#02,#4c,#00,#04,#4b,#00,#04
	db #02,#23,#01,#02,#23,#01,#44,#00
	db #11,#39,#20,#02,#39,#20,#02,#b9
	db #20,#b9,#20,#b9,#20,#b9,#20,#ff
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#40
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#40
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#30
	db #bb,#10,#bb,#30,#bb,#30,#bb,#40
	db #bb,#10,#bb,#40,#bb,#10,#bb,#30
	db #ff,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #40,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #40,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#10,#bb,#30,#bb,#30,#bb
	db #30,#bb,#20,#bb,#20,#bb,#20,#bb
	db #20,#3b,#50,#04,#ff,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#21,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#6f,#10,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#21,#10,#47,#6f,#10,#47
	db #6f,#10,#3b,#41,#10,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#21,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#6f,#10,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#41
	db #10,#3b,#21,#10,#47,#6f,#10,#3b
	db #11,#10,#3b,#41,#10,#3b,#11,#10
	db #44,#6f,#10,#44,#6f,#10,#44,#6f
	db #10,#3b,#21,#10,#44,#6f,#10,#44
	db #6f,#10,#44,#6f,#10,#3b,#11,#10
	db #44,#6f,#10,#44,#6f,#10,#44,#6f
	db #10,#3b,#21,#10,#44,#6f,#10,#44
	db #6f,#10,#3b,#41,#10,#3b,#11,#10
	db #44,#6f,#10,#44,#6f,#10,#44,#6f
	db #10,#3b,#21,#10,#44,#6f,#10,#44
	db #6f,#10,#44,#6f,#10,#3b,#21,#10
	db #3b,#21,#10,#3b,#21,#10,#3b,#21
	db #10,#3b,#51,#40,#ff,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#21,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#6f,#10,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#21,#10,#47,#6f,#10,#47
	db #6f,#10,#3b,#41,#10,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#21,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#6f,#10,#3b,#11,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#41
	db #10,#3b,#21,#10,#47,#6f,#10,#3b
	db #11,#10,#3b,#41,#10,#3b,#11,#10
	db #45,#6f,#12,#45,#6f,#12,#45,#6f
	db #12,#3b,#21,#10,#45,#6f,#12,#45
	db #6f,#12,#45,#6f,#12,#3b,#11,#10
	db #45,#6f,#12,#45,#6f,#12,#45,#6f
	db #12,#3b,#21,#10,#45,#6f,#12,#45
	db #6f,#12,#3b,#41,#10,#3b,#11,#10
	db #49,#6f,#10,#49,#6f,#10,#49,#6f
	db #10,#3b,#21,#10,#49,#6f,#10,#49
	db #6f,#10,#49,#6f,#10,#3b,#11,#10
	db #40,#6f,#12,#40,#6f,#12,#40,#6f
	db #12,#3b,#21,#10,#40,#6f,#12,#40
	db #6f,#12,#40,#6f,#12,#ff,#fe,#01
	db #45,#01,#10,#03,#22,#01,#03,#22
	db #01,#03,#23,#01,#c7,#00,#02,#22
	db #01,#42,#00,#10,#42,#00,#02,#4a
	db #00,#02,#42,#00,#02,#49,#00,#02
	db #42,#00,#02,#47,#00,#0c,#49,#00
	db #02,#4c,#00,#0a,#50,#0b,#12,#4c
	db #0b,#12,#49,#0b,#12,#47,#51,#40
	db #ff,#3b,#11,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#6f,#10,#47,#21,#10
	db #47,#6f,#10,#47,#11,#10,#47,#6f
	db #10,#47,#6f,#10,#47,#6f,#10,#47
	db #11,#10,#47,#6f,#10,#3b,#21,#10
	db #47,#6f,#10,#47,#11,#10,#3b,#41
	db #10,#3b,#11,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#6f,#10,#3b,#21,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#6f
	db #10,#3b,#11,#10,#47,#6f,#10,#47
	db #6f,#10,#3b,#41,#10,#3b,#21,#10
	db #47,#6f,#10,#3b,#11,#10,#3b,#41
	db #10,#3b,#11,#10,#45,#6f,#12,#45
	db #6f,#12,#45,#6f,#12,#3b,#21,#10
	db #45,#6f,#12,#47,#11,#10,#45,#6f
	db #12,#45,#6f,#12,#45,#6f,#12,#47
	db #11,#10,#45,#6f,#12,#3b,#21,#10
	db #45,#6f,#12,#47,#11,#10,#3b,#41
	db #10,#3b,#11,#10,#49,#6f,#10,#49
	db #6f,#10,#49,#6f,#10,#3b,#21,#10
	db #49,#6f,#10,#49,#6f,#10,#49,#6f
	db #10,#3b,#11,#10,#40,#6f,#12,#40
	db #6f,#12,#40,#6f,#12,#3b,#21,#10
	db #40,#6f,#12,#40,#6f,#12,#40,#6f
	db #12,#ff,#3b,#11,#10,#47,#6f,#10
	db #47,#6f,#10,#47,#6f,#10,#47,#21
	db #10,#47,#6f,#10,#47,#11,#10,#47
	db #6f,#10,#47,#6f,#10,#47,#6f,#10
	db #47,#11,#10,#47,#6f,#10,#3b,#21
	db #10,#47,#6f,#10,#47,#11,#10,#3b
	db #41,#10,#3b,#11,#10,#47,#6f,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#21
	db #10,#47,#6f,#10,#47,#6f,#10,#47
	db #6f,#10,#3b,#11,#10,#47,#6f,#10
	db #47,#6f,#10,#3b,#41,#10,#3b,#21
	db #10,#47,#6f,#10,#3b,#11,#10,#3b
	db #41,#10,#3b,#11,#10,#47,#6f,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#21
	db #10,#47,#6f,#10,#47,#11,#10,#47
	db #6f,#10,#47,#6f,#10,#47,#6f,#10
	db #47,#11,#10,#47,#6f,#10,#3b,#21
	db #10,#47,#6f,#10,#47,#11,#10,#3b
	db #41,#10,#3b,#11,#10,#47,#6f,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#21
	db #10,#47,#6f,#10,#47,#6f,#10,#47
	db #6f,#10,#3b,#11,#10,#47,#6f,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#21
	db #10,#47,#6f,#10,#47,#6f,#10,#47
	db #6f,#10,#ff,#3b,#11,#40,#47,#20
	db #02,#47,#10,#04,#47,#10,#02,#3b
	db #20,#02,#47,#10,#02,#3b,#10,#04
	db #3b,#20,#04,#3b,#10,#04,#3b,#20
	db #02,#3b,#10,#02,#3b,#10,#04,#3b
	db #20,#02,#47,#10,#04,#47,#10,#02
	db #3b,#20,#02,#47,#10,#02,#3b,#10
	db #04,#3b,#20,#04,#3b,#10,#04,#3b
	db #20,#04,#ff,#3b,#1b,#30,#3b,#1b
	db #31,#3b,#1b,#22,#4a,#9b,#1e,#47
	db #9b,#1e,#49,#9b,#1d,#45,#9b,#1d
	db #47,#9b,#1c,#42,#9b,#1c,#45,#9b
	db #1b,#42,#9b,#1b,#4a,#9b,#1a,#47
	db #9b,#1a,#49,#9b,#19,#45,#9b,#19
	db #47,#9b,#18,#42,#9b,#18,#45,#9b
	db #17,#42,#9b,#17,#4a,#9b,#16,#47
	db #9b,#16,#49,#9b,#15,#45,#9b,#15
	db #47,#9b,#14,#42,#9b,#14,#45,#9b
	db #15,#42,#9b,#15,#4a,#9b,#15,#47
	db #9b,#14,#49,#9b,#14,#45,#9b,#13
	db #47,#9b,#13,#42,#9b,#14,#45,#9b
	db #14,#42,#9b,#14,#4a,#9b,#16,#47
	db #9b,#16,#49,#9b,#17,#45,#9b,#17
	db #47,#9b,#16,#42,#9b,#16,#45,#9b
	db #15,#42,#9b,#15,#4a,#9b,#14,#47
	db #9b,#14,#49,#9b,#15,#45,#9b,#15
	db #47,#9b,#16,#42,#9b,#16,#45,#9b
	db #15,#42,#9b,#15,#4a,#9b,#14,#47
	db #9b,#14,#49,#9b,#13,#45,#9b,#13
	db #47,#9b,#12,#42,#9b,#12,#45,#9b
	db #11,#42,#9b,#11,#ff,#4a,#9b,#12
	db #47,#7b,#12,#49,#9b,#13,#45,#7b
	db #13,#47,#9b,#14,#42,#7b,#14,#45
	db #9b,#15,#42,#7b,#15,#4a,#9b,#14
	db #47,#7b,#14,#49,#9b,#13,#45,#7b
	db #13,#47,#9b,#12,#42,#7b,#12,#45
	db #9b,#14,#42,#7b,#14,#4a,#9b,#15
	db #47,#7b,#15,#49,#9b,#14,#45,#7b
	db #14,#47,#9b,#13,#42,#7b,#13,#45
	db #9b,#12,#42,#7b,#12,#4a,#9b,#13
	db #47,#7b,#13,#49,#9b,#14,#45,#7b
	db #14,#47,#9b,#15,#42,#7b,#15,#45
	db #9b,#14,#42,#7b,#14,#4a,#9b,#13
	db #47,#7b,#13,#49,#9b,#12,#45,#7b
	db #12,#47,#9b,#14,#42,#7b,#14,#45
	db #9b,#15,#42,#7b,#15,#4a,#9b,#14
	db #47,#7b,#14,#49,#9b,#13,#45,#7b
	db #13,#47,#9b,#12,#42,#7b,#12,#45
	db #9b,#13,#42,#7b,#13,#4a,#9b,#14
	db #47,#7b,#14,#49,#9b,#15,#45,#7b
	db #15,#47,#9b,#14,#42,#7b,#14,#45
	db #9b,#13,#42,#7b,#13,#4a,#9b,#12
	db #47,#7b,#12,#49,#9b,#13,#45,#7b
	db #13,#47,#9b,#14,#42,#7b,#14,#45
	db #9b,#15,#42,#7b,#15,#ff,#47,#01
	db #10,#47,#7b,#12,#49,#9b,#13,#4a
	db #01,#10,#47,#9b,#14,#42,#7b,#14
	db #49,#01,#10,#42,#7b,#15,#4a,#9b
	db #14,#45,#01,#10,#49,#9b,#13,#45
	db #7b,#13,#40,#01,#10,#42,#01,#10
	db #45,#01,#10,#42,#7b,#14,#47,#01
	db #10,#47,#7b,#15,#49,#9b,#14,#4a
	db #01,#10,#47,#9b,#13,#42,#7b,#13
	db #49,#01,#10,#42,#7b,#12,#4a,#9b
	db #13,#45,#01,#10,#49,#9b,#14,#45
	db #7b,#14,#40,#01,#10,#47,#01,#10
	db #45,#01,#10,#42,#7b,#14,#47,#01
	db #10,#47,#7b,#13,#49,#9b,#12,#4a
	db #01,#10,#47,#9b,#14,#42,#7b,#14
	db #49,#01,#10,#42,#7b,#15,#4a,#9b
	db #14,#45,#01,#10,#49,#9b,#1f,#45
	db #7b,#13,#40,#01,#10,#42,#01,#10
	db #45,#01,#10,#42,#7b,#13,#47,#01
	db #10,#47,#7b,#14,#49,#9b,#15,#4a
	db #01,#10,#47,#9b,#14,#42,#7b,#14
	db #49,#01,#10,#42,#7b,#13,#4a,#9b
	db #12,#45,#01,#10,#49,#9b,#13,#40
	db #01,#10,#42,#01,#10,#45,#01,#10
	db #47,#01,#10,#4a,#01,#10,#ff,#47
	db #01,#10,#47,#7b,#12,#49,#9b,#13
	db #4a,#01,#10,#47,#9b,#14,#42,#7b
	db #14,#49,#01,#10,#42,#7b,#15,#4a
	db #9b,#14,#45,#01,#10,#49,#9b,#13
	db #45,#7b,#13,#40,#01,#10,#42,#01
	db #10,#45,#01,#10,#42,#7b,#14,#47
	db #01,#10,#47,#7b,#15,#49,#9b,#14
	db #4a,#01,#10,#47,#9b,#13,#42,#7b
	db #13,#49,#01,#10,#42,#7b,#12,#4a
	db #9b,#13,#45,#01,#10,#49,#9b,#14
	db #45,#7b,#14,#40,#01,#10,#47,#01
	db #10,#45,#01,#10,#42,#7b,#14,#47
	db #01,#10,#47,#7b,#13,#49,#9b,#12
	db #4a,#01,#10,#47,#9b,#14,#42,#7b
	db #14,#49,#01,#10,#42,#7b,#15,#4a
	db #9b,#14,#45,#01,#10,#49,#9b,#1f
	db #45,#7b,#13,#40,#01,#10,#42,#01
	db #10,#45,#01,#10,#42,#7b,#13,#47
	db #01,#10,#47,#7b,#14,#49,#9b,#15
	db #4a,#81,#10,#47,#9b,#14,#42,#7b
	db #14,#49,#81,#10,#42,#7b,#13,#4a
	db #9b,#12,#45,#81,#10,#49,#9b,#13
	db #40,#81,#10,#42,#81,#10,#47,#81
	db #10,#4a,#81,#10,#4c,#81,#10,#ff
	db #4e,#00,#1b,#03,#22,#01,#03,#22
	db #01,#03,#21,#01,#03,#22,#01,#03
	db #21,#01,#53,#00,#18,#d6,#02,#16
	db #02,#16,#01,#02,#16,#01,#02,#16
	db #01,#02,#16,#01,#02,#16,#01,#02
	db #16,#01,#02,#16,#01,#ff,#3b,#11
	db #10,#47,#6f,#10,#47,#6f,#10,#47
	db #6f,#10,#47,#21,#10,#47,#6f,#10
	db #47,#11,#10,#47,#6f,#10,#47,#6f
	db #10,#47,#6f,#10,#47,#11,#10,#47
	db #6f,#10,#3b,#21,#10,#47,#6f,#10
	db #47,#11,#10,#3b,#41,#10,#3b,#11
	db #10,#47,#6f,#10,#47,#6f,#10,#47
	db #6f,#10,#3b,#21,#10,#47,#6f,#10
	db #47,#6f,#10,#47,#6f,#10,#3b,#11
	db #10,#47,#6f,#10,#47,#6f,#10,#3b
	db #41,#10,#3b,#21,#10,#47,#6f,#10
	db #3b,#11,#10,#3b,#41,#10,#3b,#11
	db #10,#4a,#6f,#12,#4a,#6f,#12,#4a
	db #6f,#12,#3b,#21,#10,#4a,#6f,#12
	db #47,#11,#10,#4a,#6f,#12,#4a,#6f
	db #12,#4a,#6f,#12,#47,#11,#10,#4a
	db #6f,#12,#3b,#21,#10,#4a,#6f,#12
	db #17,#11,#10,#3b,#41,#10,#3b,#11
	db #10,#4a,#6f,#12,#4a,#6f,#12,#4a
	db #6f,#12,#3b,#21,#10,#4a,#6f,#12
	db #4a,#6f,#12,#4a,#6f,#12,#3b,#11
	db #10,#4a,#6f,#12,#4a,#6f,#12,#4a
	db #6f,#12,#3b,#21,#10,#4a,#6f,#12
	db #4a,#6f,#12,#4a,#6f,#12,#ff,#3b
	db #11,#10,#40,#6f,#12,#40,#6f,#12
	db #40,#6f,#12,#47,#21,#10,#40,#6f
	db #12,#47,#11,#10,#40,#6f,#12,#40
	db #6f,#12,#40,#6f,#12,#47,#11,#10
	db #40,#6f,#12,#3b,#21,#10,#40,#6f
	db #12,#47,#11,#10,#3b,#41,#10,#3b
	db #11,#10,#40,#6f,#12,#40,#6f,#12
	db #40,#6f,#12,#3b,#21,#10,#40,#6f
	db #12,#40,#6f,#12,#40,#6f,#12,#3b
	db #11,#10,#40,#6f,#12,#40,#6f,#12
	db #3b,#41,#10,#3b,#21,#10,#40,#6f
	db #12,#3b,#11,#10,#3b,#41,#10,#3b
	db #11,#10,#43,#6f,#12,#43,#6f,#12
	db #43,#6f,#12,#3b,#21,#10,#43,#6f
	db #12,#47,#11,#10,#43,#6f,#12,#43
	db #6f,#12,#43,#6f,#12,#47,#11,#10
	db #43,#6f,#12,#3b,#21,#10,#43,#6f
	db #12,#17,#11,#10,#3b,#41,#10,#3b
	db #11,#10,#45,#6f,#12,#45,#6f,#12
	db #45,#6f,#12,#3b,#21,#10,#45,#6f
	db #12,#45,#6f,#12,#45,#6f,#12,#3b
	db #11,#10,#45,#6f,#12,#45,#6f,#12
	db #45,#6f,#12,#3b,#21,#10,#45,#6f
	db #12,#45,#6f,#12,#45,#6f,#12,#ff
	db #3b,#11,#10,#53,#6f,#10,#47,#6f
	db #10,#53,#6f,#10,#47,#21,#10,#53
	db #6f,#10,#47,#11,#10,#47,#6f,#10
	db #53,#6f,#10,#53,#6f,#10,#47,#11
	db #10,#53,#6f,#10,#3b,#21,#10,#47
	db #6f,#10,#47,#11,#10,#3b,#41,#10
	db #3b,#11,#10,#47,#6f,#10,#53,#6f
	db #10,#47,#6f,#10,#3b,#21,#10,#47
	db #6f,#10,#53,#6f,#10,#53,#6f,#10
	db #3b,#11,#10,#53,#6f,#10,#47,#6f
	db #10,#3b,#41,#10,#3b,#21,#10,#47
	db #6f,#10,#3b,#11,#10,#3b,#41,#10
	db #3b,#11,#10,#4a,#6f,#12,#56,#6f
	db #12,#56,#6f,#12,#3b,#21,#10,#4a
	db #6f,#12,#47,#11,#10,#56,#6f,#12
	db #4a,#6f,#12,#4a,#6f,#12,#47,#11
	db #10,#56,#6f,#12,#3b,#21,#10,#4a
	db #6f,#12,#17,#11,#10,#3b,#41,#10
	db #3b,#11,#10,#4a,#6f,#12,#56,#6f
	db #12,#4a,#6f,#12,#3b,#21,#10,#56
	db #6f,#12,#56,#6f,#12,#56,#6f,#12
	db #3b,#11,#10,#4a,#6f,#12,#56,#6f
	db #12,#56,#6f,#12,#3b,#21,#10,#56
	db #6f,#12,#4a,#6f,#12,#4a,#6f,#12
	db #ff,#3b,#11,#10,#40,#6f,#12,#4c
	db #6f,#12,#4c,#6f,#12,#47,#21,#10
	db #4c,#6f,#12,#47,#11,#10,#40,#6f
	db #12,#4c,#6f,#12,#4c,#6f,#12,#47
	db #11,#10,#4c,#6f,#12,#3b,#21,#10
	db #40,#6f,#12,#47,#11,#10,#3b,#41
	db #10,#3b,#11,#10,#4c,#6f,#12,#40
	db #6f,#12,#40,#6f,#12,#3b,#21,#10
	db #40,#6f,#12,#4c,#6f,#12,#40,#6f
	db #12,#3b,#11,#10,#4c,#6f,#12,#40
	db #6f,#12,#3b,#41,#10,#3b,#21,#10
	db #4c,#6f,#12,#3b,#11,#10,#3b,#41
	db #10,#3b,#11,#10,#43,#6f,#12,#4f
	db #6f,#12,#4f,#6f,#12,#3b,#21,#10
	db #4f,#6f,#12,#47,#11,#10,#43,#6f
	db #12,#43,#6f,#12,#4f,#6f,#12,#47
	db #11,#10,#4f,#6f,#12,#3b,#21,#10
	db #43,#6f,#12,#17,#11,#10,#3b,#41
	db #10,#3b,#11,#10,#45,#6f,#12,#51
	db #6f,#12,#51,#6f,#12,#3b,#21,#10
	db #51,#6f,#12,#45,#6f,#12,#51,#6f
	db #12,#3b,#11,#10,#51,#6f,#12,#51
	db #6f,#12,#45,#6f,#12,#3b,#21,#10
	db #45,#6f,#12,#45,#6f,#12,#51,#6f
	db #12,#ff,#0d,#03,#01,#56,#01,#00
	db #2f,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#02,#11
	db #01,#ff,#47,#86,#49,#03,#47,#86
	db #48,#03,#47,#86,#47,#03,#47,#86
	db #46,#03,#47,#86,#45,#03,#47,#86
	db #44,#31,#ff,#51,#11,#20,#47,#86
	db #44,#04,#51,#11,#20,#47,#86,#44
	db #04,#51,#11,#20,#47,#86,#44,#02
	db #51,#21,#20,#47,#86,#44,#0e,#51
	db #11,#20,#47,#86,#44,#0e,#51,#21
	db #20,#47,#86,#44,#02,#51,#11,#20
	db #47,#86,#44,#06,#51,#11,#20,#47
	db #86,#44,#02,#ff,#51,#11,#20,#47
	db #86,#44,#04,#51,#11,#20,#47,#86
	db #45,#04,#51,#11,#20,#47,#86,#46
	db #02,#51,#21,#20,#47,#86,#47,#0e
	db #51,#11,#20,#47,#86,#48,#0e,#51
	db #21,#20,#47,#86,#49,#02,#51,#11
	db #20,#47,#86,#4a,#06,#51,#11,#20
	db #47,#86,#4b,#02,#ff,#51,#1b,#20
	db #51,#1b,#22,#51,#1b,#24,#51,#1b
	db #20,#51,#1b,#22,#51,#1b,#24,#51
	db #1b,#20,#51,#1b,#22,#51,#2b,#20
	db #51,#2b,#22,#51,#2b,#24,#51,#2b
	db #26,#51,#2b,#28,#51,#2b,#6a,#51
	db #1b,#20,#51,#1b,#22,#51,#1b,#24
	db #51,#1b,#26,#51,#1b,#88,#51,#2b
	db #20,#51,#2b,#22,#51,#1b,#20,#51
	db #1b,#22,#51,#1b,#24,#51,#1b,#26
	db #51,#1b,#20,#51,#1b,#22,#00,#87
	db #42,#13,#ff,#16,#42,#8c,#00,#38
	db #42,#13,#ff
;
.music_info
	db "Boxon 2 End (1995)(Da Boxon Team)()",0
	db "ST-128 Module",0

	read "music_end.asm"