; Music of ST128 Song Modules By Crown For SymBOS - Klisje-2 (2005)(Public Domain)(Crown)(ST-128 Module)
; Ripped by Megachur the 17/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SSMCFSK2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
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
	ld (hl),#20
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
	ld sp,#3332
	inc (hl)
	dec (hl)
.l41e0 equ $ + 1
	ld (hl),#7a
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
	dw #000f
.l45b4 equ $ + 4
.l45b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l45be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l45e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l4610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
	db #00,#00,#00,#49,#57,#49,#ae,#49
.l4640
	db #e0,#46,#20,#47,#40,#47,#00,#00
	db #d2,#ff,#32,#48,#72,#48,#c0,#48
	db #e0,#46,#60,#47,#40,#47,#00,#00
	db #d2,#ff,#f2,#48,#32,#49,#40,#47
	db #ee,#03,#b2,#46,#52,#49,#40,#47
	db #e0,#46,#80,#47,#40,#47,#00,#00
	db #a0,#47,#e0,#47,#00,#48,#00,#00
	db #ee,#03,#12,#4a,#32,#49,#40,#47
	db #20,#48,#80,#47,#60,#48,#00,#00
	db #d2,#ff,#b2,#4a,#92,#4a,#40,#47
	db #d2,#ff,#f2,#4a,#12,#4b,#60,#4b
	db #a0,#47,#80,#48,#a0,#48,#00,#00
	db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
.l46c0
	db #c0,#48,#e0,#48,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#07,#07,#06,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #04,#04,#03,#03,#03,#03,#02,#00
	db #0c,#0c,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #25,#fe,#25,#fe,#25,#fe,#25,#fe
	db #0d,#08,#07,#07,#06,#05,#05,#04
	db #03,#03,#02,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #d0,#00,#90,#01,#20,#03,#40,#06
	db #60,#09,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0a,#09,#09,#08,#07,#07,#06
	db #05,#05,#04,#03,#03,#02,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #05,#04,#03,#02,#01,#01,#03,#05
	db #07,#09,#0b,#0d,#0f,#11,#13,#15
	db #17,#19,#1b,#1d,#1f,#1f,#1d,#1b
	db #19,#17,#15,#13,#11,#0f,#0d,#0b
	db #fd,#00,#04,#fd,#00,#04,#fd,#00
	db #04,#fd,#00,#04,#fd,#00,#04,#fd
	db #00,#04,#fd,#00,#04,#fd,#00,#04
	db #fd,#00,#04,#fd,#00,#04,#fd,#00
	db #fb,#ff,#02,#fb,#ff,#02,#fb,#ff
	db #02,#fb,#ff,#02,#fb,#ff,#02,#fb
	db #ff,#02,#fb,#ff,#02,#fb,#ff,#02
	db #fb,#ff,#02,#fb,#ff,#02,#fb,#ff
	db #00,#05,#4a,#00,#1b,#4a,#00,#52
	db #4a,#00,#ba,#4a,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#80,#00,#49,#00
	db #37,#4b,#00,#93,#4b,#00,#06,#4c
	db #00,#6d,#4c,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#80,#57,#49,#00,#e3
	db #4c,#00,#e9,#4c,#00,#2c,#4d,#00
	db #84,#4d,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#00,#34,#4b,#00,#34,#4b
	db #00,#34,#4b,#00,#34,#4b,#00,#34
	db #4b,#00,#34,#4b,#00,#34,#4b,#00
	db #34,#4b,#80,#ae,#49,#00,#16,#41
	db #20,#08,#44,#20,#11,#34,#6b,#1f
	db #34,#6d,#0a,#0e,#40,#2b,#1f,#40
	db #2f,#10,#ff,#3e,#20,#04,#4a,#20
	db #03,#3e,#20,#03,#4a,#20,#03,#46
	db #2f,#31,#44,#2f,#90,#4a,#20,#03
	db #3e,#20,#06,#4a,#20,#03,#46,#2b
	db #30,#46,#2b,#31,#46,#2b,#32,#46
	db #2b,#32,#46,#2b,#33,#46,#2b,#33
	db #46,#2b,#34,#46,#2b,#34,#46,#2b
	db #35,#ff,#45,#21,#20,#41,#20,#02
	db #3f,#20,#02,#3d,#20,#02,#44,#20
	db #02,#46,#20,#02,#3d,#20,#02,#44
	db #20,#02,#46,#20,#02,#3e,#20,#02
	db #46,#20,#02,#4a,#20,#02,#3e,#20
	db #02,#46,#20,#02,#4a,#20,#02,#4e
	db #20,#02,#52,#20,#02,#49,#20,#02
	db #4e,#20,#02,#52,#20,#02,#49,#20
	db #02,#4a,#2f,#30,#41,#20,#03,#c5
	db #20,#4a,#21,#10,#48,#2f,#10,#48
	db #21,#10,#41,#2f,#10,#43,#20,#02
	db #43,#20,#02,#ba,#20,#b7,#20,#bc
	db #20,#b9,#20,#bb,#20,#bd,#20,#c6
	db #20,#ff,#40,#2f,#31,#40,#2f,#11
	db #44,#2f,#21,#47,#2f,#11,#40,#2f
	db #10,#45,#2f,#10,#44,#2f,#30,#44
	db #2f,#10,#45,#2f,#10,#47,#2f,#10
	db #40,#2f,#21,#47,#2f,#11,#40,#2f
	db #31,#49,#2f,#11,#47,#2f,#11,#42
	db #2f,#10,#49,#2f,#10,#45,#2f,#10
	db #41,#21,#30,#bf,#20,#4b,#2f,#10
	db #40,#2f,#10,#44,#2f,#50,#45,#2f
	db #10,#49,#2f,#20,#45,#2f,#10,#49
	db #2f,#10,#4b,#2f,#10,#3d,#2f,#10
	db #3f,#2f,#20,#41,#21,#10,#44,#20
	db #03,#34,#2f,#10,#49,#2f,#11,#40
	db #2f,#10,#47,#2f,#30,#34,#2f,#10
	db #46,#2f,#10,#4a,#2f,#40,#28,#b1
	db #10,#9c,#b0,#ff,#00,#40,#ff,#25
	db #8d,#05,#04,#25,#50,#04,#34,#bb
	db #20,#34,#bb,#67,#25,#80,#06,#25
	db #50,#02,#34,#bb,#20,#34,#bb,#67
	db #28,#80,#04,#28,#50,#04,#34,#bb
	db #20,#34,#bb,#27,#34,#6b,#25,#34
	db #6b,#25,#34,#6b,#16,#34,#6b,#16
	db #34,#6b,#16,#34,#6b,#17,#34,#6b
	db #17,#34,#6b,#17,#34,#6b,#17,#34
	db #6b,#18,#34,#6b,#18,#34,#6b,#18
	db #34,#6b,#18,#34,#6b,#19,#34,#6b
	db #19,#34,#6b,#1a,#34,#6b,#1a,#34
	db #6b,#1b,#ff,#42,#2d,#0a,#02,#c3
	db #2d,#03,#ca,#2d,#05,#4e,#2d,#0a
	db #02,#cc,#20,#4a,#20,#02,#c9,#20
	db #47,#20,#03,#45,#20,#03,#41,#20
	db #05,#cd,#20,#ce,#20,#cf,#20,#cd
	db #20,#4e,#20,#02,#cc,#20,#4a,#20
	db #02,#c9,#20,#47,#2d,#09,#03,#ca
	db #20,#40,#0d,#08,#02,#cc,#20,#ca
	db #20,#c3,#2d,#07,#c2,#20,#c3,#20
	db #ca,#20,#cc,#2d,#06,#ca,#20,#c3
	db #20,#c2,#20,#c3,#20,#ca,#20,#cc
	db #20,#ca,#20,#c3,#20,#c2,#20,#c3
	db #20,#ca,#20,#cb,#20,#ca,#20,#c3
	db #20,#c9,#20,#c8,#20,#c3,#20,#c7
	db #20,#c6,#20,#c3,#20,#ff,#00,#01
	db #44,#20,#02,#43,#20,#02,#3c,#20
	db #02,#41,#20,#02,#43,#20,#02,#4b
	db #20,#02,#41,#20,#02,#43,#20,#02
	db #4b,#20,#02,#41,#20,#02,#45,#20
	db #02,#4d,#20,#02,#41,#20,#02,#45
	db #20,#02,#4d,#20,#02,#4b,#20,#02
	db #4d,#20,#02,#46,#20,#02,#4b,#20
	db #02,#4d,#20,#02,#c6,#20,#4b,#20
	db #02,#45,#20,#02,#c1,#20,#45,#20
	db #02,#4a,#20,#02,#46,#20,#02,#41
	db #20,#02,#c7,#20,#c7,#20,#c8,#20
	db #c1,#20,#c7,#20,#c6,#20,#c8,#20
	db #c1,#20,#c8,#20,#ff,#45,#2d,#04
	db #02,#c9,#20,#c9,#20,#39,#2f,#10
	db #bb,#20,#b4,#20,#b9,#20,#3e,#21
	db #10,#3e,#2f,#10,#3f,#21,#20,#d1
	db #20,#4b,#2f,#20,#c9,#20,#47,#21
	db #10,#4b,#2f,#10,#49,#21,#10,#53
	db #20,#02,#ce,#20,#3a,#2f,#20,#3b
	db #20,#02,#39,#2f,#20,#3f,#2f,#20
	db #36,#2f,#10,#3d,#2f,#20,#40,#2f
	db #10,#3f,#21,#20,#bb,#20,#54,#20
	db #02,#34,#2f,#10,#4f,#21,#10,#4e
	db #2f,#10,#49,#21,#40,#4a,#2f,#20
	db #49,#2f,#10,#4c,#2f,#20,#50,#21
	db #30,#cb,#20,#40,#2f,#10,#4f,#21
	db #30,#3f,#20,#02,#b4,#b0,#a8,#b0
	db #9c,#b0,#ff,#00,#1a,#42,#20,#26
	db #ff,#2f,#20,#04,#3b,#20,#02,#b1
	db #20,#32,#20,#03,#36,#20,#03,#35
	db #20,#03,#31,#20,#06,#32,#20,#03
	db #2f,#20,#03,#2f,#20,#02,#b1,#20
	db #32,#20,#02,#b4,#20,#36,#20,#03
	db #37,#20,#03,#37,#20,#03,#37,#20
	db #03,#37,#20,#03,#37,#20,#03,#37
	db #20,#03,#37,#20,#03,#37,#20,#03
	db #37,#20,#03,#ff,#2b,#20,#03,#2b
	db #20,#03,#25,#20,#03,#2c,#20,#03
	db #25,#20,#03,#2c,#20,#03,#2e,#20
	db #03,#30,#20,#03,#2e,#20,#03,#30
	db #20,#03,#25,#20,#02,#27,#20,#02
	db #29,#20,#02,#2a,#20,#02,#2c,#20
	db #02,#2e,#20,#02,#23,#20,#02,#2f
	db #20,#02,#ac,#20,#2a,#20,#02,#26
	db #20,#02,#2d,#20,#02,#a5,#20,#ac
	db #20,#aa,#20,#ae,#20,#a5,#20,#a9
	db #20,#ac,#20,#aa,#20,#a5,#20,#a8
	db #20,#ab,#20,#ff,#00,#01,#ab,#20
	db #ac,#20,#2e,#20,#02,#36,#20,#02
	db #31,#20,#03,#ac,#20,#25,#20,#02
	db #b1,#20,#b0,#20,#a1,#20,#22,#2d
	db #03,#03,#a7,#20,#22,#20,#03,#a8
	db #20,#30,#20,#02,#ab,#20,#1d,#20
	db #02,#ad,#20,#21,#20,#02,#36,#2d
	db #02,#02,#b3,#20,#ad,#20,#26,#20
	db #03,#9e,#20,#37,#20,#02,#b1,#20
	db #24,#20,#02,#aa,#20,#af,#20,#a7
	db #20,#21,#2d,#01,#03,#a6,#20,#2b
	db #20,#02,#a3,#20,#ab,#20,#25,#20
	db #02,#a3,#20,#2d,#20,#04,#9c,#bd
	db #20,#ff
;
.music_info
	db "ST128 Song Modules By Crown For SymBOS - Klisje-2 (2005)(Public Domain)(Crown)",0
	db "ST-128 Module",0

	read "music_end.asm"
