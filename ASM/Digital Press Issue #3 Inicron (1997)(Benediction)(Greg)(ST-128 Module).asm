; Music of Digital Press Issue #3 Inicron (1997)(Benediction)(Greg)(ST-128 Module)
; Ripped by Megachur the 01/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGPI3IN.BIN"
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
	db #60,#49,#b4,#49,#08,#4a,#e0,#46
	db #20,#47,#40,#47,#1a,#06,#60,#47
	db #a0,#47,#c0,#47,#80,#00,#e0,#47
	db #20,#48,#40,#48,#9a,#06,#40,#64
	db #f2,#73,#3a,#65,#20,#20,#60,#48
	db #a0,#48,#40,#47,#40,#00,#c0,#48
	db #00,#49,#20,#49,#c0,#00,#f2,#59
	db #17,#20,#1f,#45,#45,#54,#1b,#4e
	db #19,#20,#f2,#38,#35,#2e,#f2,#1f
	db #26,#68,#3b,#73,#20,#20,#38,#61
	db #40,#7a,#f2,#1f,#63,#6f,#47,#6c
	db #36,#00,#3a,#61,#76,#65,#f2,#61
	db #37,#65,#40,#20,#74,#68,#37,#20
	db #34,#65,#45,#74,#20,#6f,#40,#65
	db #f2,#61,#47,#74,#20,#20,#46,#68
	db #37,#72,#37,#20,#20,#61,#44,#65
.l46c0 equ $ + 6
	db #f2,#1f,#45,#6f,#6d,#65,#d2,#61
	db #33,#64,#f2,#73,#40,#49,#40,#67
	db #45,#20,#49,#68,#3b,#63,#3a,#20
	db #3f,#61,#3d,#65,#f2,#60,#f2,#6c
	db #37,#73,#45,#20,#f2,#6e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#01,#00,#01,#00,#0f,#0f
	db #0c,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0e,#0d
	db #0c,#0b,#0a,#0c,#0b,#0a,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#07,#06,#05,#04,#03,#02
	db #02,#02,#02,#02,#02,#02,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#5c
	db #4a,#00,#de,#4a,#00,#de,#4a,#00
	db #de,#4a,#00,#e2,#4b,#00,#e2,#4b
	db #00,#60,#4b,#00,#60,#4b,#00,#63
	db #4c,#00,#63,#4c,#00,#72,#4c,#00
	db #72,#4c,#00,#60,#4b,#00,#60,#4b
	db #00,#76,#4d,#00,#f4,#4c,#00,#f4
	db #4c,#00,#9c,#4d,#00,#9c,#4d,#00
	db #f4,#4c,#00,#f4,#4c,#00,#60,#4b
	db #00,#60,#4b,#00,#72,#4c,#00,#72
	db #4c,#00,#63,#4c,#00,#1d,#4e,#80
	db #60,#49,#00,#20,#4e,#00,#1d,#4e
	db #00,#28,#4e,#00,#28,#4e,#00,#ad
	db #4e,#00,#ad,#4e,#00,#2c,#4e,#00
	db #2c,#4e,#00,#b4,#4e,#00,#b4,#4e
	db #00,#2c,#4e,#00,#2c,#4e,#00,#2c
	db #4e,#00,#2c,#4e,#00,#74,#4f,#00
	db #36,#4f,#00,#36,#4f,#00,#78,#4f
	db #00,#78,#4f,#00,#36,#4f,#00,#36
	db #4f,#00,#2c,#4e,#00,#2c,#4e,#00
	db #2c,#4e,#00,#2c,#4e,#00,#b4,#4e
	db #00,#b6,#4f,#80,#b4,#49,#00,#4d
	db #50,#00,#1d,#4e,#00,#56,#50,#00
	db #56,#50,#00,#59,#51,#00,#59,#51
	db #00,#d7,#50,#00,#d7,#50,#00,#c3
	db #51,#00,#c3,#51,#00,#1d,#4e,#00
	db #1d,#4e,#00,#d7,#50,#00,#d7,#50
	db #00,#58,#52,#00,#d6,#51,#00,#d6
	db #51,#00,#76,#52,#00,#76,#52,#00
	db #d6,#51,#00,#d6,#51,#00,#d7,#50
	db #00,#d7,#50,#00,#1d,#4e,#00,#1d
	db #4e,#00,#c3,#51,#00,#1d,#4e,#80
	db #08,#4a,#3b,#01,#10,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#bb
	db #00,#bb,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#bb,#00,#bb
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#bb,#00,#bb,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#bb,#00,#bb,#00,#af,#00,#bb
	db #00,#af,#00,#ff,#bb,#0d,#05,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#bb,#00,#bb,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#bb
	db #00,#bb,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#bb,#00,#bb
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#bb,#00,#bb,#00,#af
	db #00,#bb,#00,#af,#00,#ff,#3b,#0f
	db #13,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#bb,#00,#bb,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#bb,#00,#bb,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#bb
	db #00,#bb,#00,#af,#00,#bb,#00,#ad
	db #00,#ad,#00,#b9,#00,#ad,#00,#ad
	db #00,#ad,#00,#b9,#00,#ad,#00,#ad
	db #00,#b9,#00,#ad,#00,#b9,#00,#b9
	db #00,#ad,#00,#b9,#00,#ad,#00,#ff
	db #bb,#00,#af,#00,#bb,#00,#af,#00
	db #af,#00,#bb,#00,#af,#00,#af,#00
	db #af,#00,#bb,#00,#af,#00,#af,#00
	db #bb,#00,#af,#00,#bb,#00,#bb,#00
	db #af,#00,#bb,#00,#af,#00,#af,#00
	db #bb,#00,#af,#00,#af,#00,#af,#00
	db #bb,#00,#af,#00,#af,#00,#bb,#00
	db #af,#00,#bb,#00,#bb,#00,#af,#00
	db #bb,#00,#af,#00,#af,#00,#bb,#00
	db #af,#00,#af,#00,#af,#00,#bb,#00
	db #af,#00,#af,#00,#bb,#00,#af,#00
	db #bb,#00,#bb,#00,#af,#00,#bb,#00
	db #af,#00,#af,#00,#bb,#00,#af,#00
	db #af,#00,#af,#00,#bb,#00,#af,#00
	db #af,#00,#bb,#00,#af,#00,#bb,#00
	db #bb,#00,#af,#00,#bb,#00,#af,#00
	db #ff,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#3a,#ff
	db #2f,#0f,#13,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#bb,#00,#bb,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#bb,#00,#bb,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#bb
	db #00,#bb,#00,#af,#00,#bb,#00,#af
	db #00,#ad,#00,#b9,#00,#ad,#00,#ad
	db #00,#ad,#00,#b9,#00,#ad,#00,#ad
	db #00,#b9,#00,#ad,#00,#b9,#00,#b9
	db #00,#ad,#00,#b9,#00,#ad,#00,#ad
	db #00,#ff,#2f,#0f,#13,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#bb,#00,#bb
	db #00,#af,#00,#bb,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#bb,#00,#bb,#00,#af
	db #00,#bb,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#bb,#00,#bb,#00,#af,#00,#bb
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#bb,#00,#af,#00,#bb
	db #00,#bb,#00,#af,#00,#bb,#00,#af
	db #00,#af,#00,#ff,#cb,#50,#af,#40
	db #bb,#40,#af,#40,#af,#40,#bb,#40
	db #af,#40,#af,#40,#af,#40,#bb,#40
	db #af,#40,#af,#40,#bb,#40,#af,#40
	db #bb,#40,#bb,#40,#af,#40,#3b,#40
	db #2f,#ff,#ab,#00,#b7,#00,#ab,#00
	db #ab,#00,#b7,#00,#ab,#00,#ab,#00
	db #ab,#00,#b7,#00,#ab,#00,#ab,#00
	db #b7,#00,#ab,#00,#b7,#00,#b7,#00
	db #ab,#00,#b7,#00,#ab,#00,#ab,#00
	db #b7,#00,#ab,#00,#ab,#00,#ab,#00
	db #b7,#00,#ab,#00,#ab,#00,#b7,#00
	db #ab,#00,#b7,#00,#b7,#00,#ab,#00
	db #b7,#00,#ad,#00,#ad,#00,#b9,#00
	db #ad,#00,#ad,#00,#ad,#00,#b9,#00
	db #ad,#00,#ad,#00,#b9,#00,#ad,#00
	db #b9,#00,#b9,#00,#ad,#00,#b9,#00
	db #ad,#00,#ad,#00,#b9,#00,#ad,#00
	db #ad,#00,#ad,#00,#b9,#00,#ad,#00
	db #ad,#00,#b9,#00,#ad,#00,#b9,#00
	db #b9,#00,#ad,#00,#b9,#00,#ad,#00
	db #ad,#00,#ff,#00,#40,#ff,#fe,#01
	db #fe,#01,#01,#00,#3e,#ff,#01,#00
	db #40,#ff,#c7,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#cc,#00
	db #c7,#00,#c7,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#cc,#00
	db #c7,#00,#c7,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#c9,#00
	db #c7,#00,#ca,#00,#c7,#00,#cc,#00
	db #c7,#00,#c7,#00,#c5,#00,#c9,#00
	db #c5,#00,#ca,#00,#c5,#00,#c9,#00
	db #c5,#00,#ca,#00,#c5,#00,#c9,#00
	db #c5,#00,#ca,#00,#c5,#00,#cc,#00
	db #c5,#00,#ff,#2f,#0a,#14,#3f,#01
	db #10,#ff,#47,#01,#10,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#cc
	db #00,#c7,#00,#c7,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#cc
	db #00,#c7,#00,#c7,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#c9
	db #00,#c7,#00,#ca,#00,#c7,#00,#cc
	db #00,#c7,#00,#c7,#00,#c5,#00,#c9
	db #00,#c5,#00,#ca,#00,#c5,#00,#c9
	db #00,#c5,#00,#ca,#00,#c5,#00,#c9
	db #00,#c5,#00,#ca,#00,#c5,#00,#cc
	db #00,#c5,#00,#ff,#47,#0e,#0c,#04
	db #47,#00,#04,#49,#00,#04,#49,#00
	db #04,#4a,#00,#04,#4a,#00,#04,#49
	db #00,#02,#4a,#00,#02,#49,#00,#02
	db #4c,#00,#02,#47,#00,#04,#47,#00
	db #04,#49,#00,#04,#49,#00,#04,#4a
	db #00,#04,#4a,#00,#04,#49,#00,#02
	db #4a,#00,#02,#49,#00,#02,#4c,#00
	db #02,#ff,#49,#50,#40,#ff,#43,#0e
	db #0c,#04,#43,#00,#04,#45,#00,#04
	db #45,#00,#04,#47,#00,#04,#47,#00
	db #04,#45,#00,#02,#47,#00,#02,#45
	db #00,#02,#47,#00,#02,#45,#00,#04
	db #45,#00,#04,#47,#00,#04,#47,#00
	db #04,#49,#00,#04,#49,#00,#04,#47
	db #00,#02,#49,#00,#02,#47,#00,#02
	db #49,#00,#02,#ff,#c7,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #cc,#00,#c7,#00,#c7,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #cc,#00,#c7,#00,#c7,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #c9,#00,#c7,#00,#ca,#00,#c7,#00
	db #49,#01,#10,#47,#01,#10,#4a,#01
	db #11,#47,#01,#11,#4c,#01,#11,#47
	db #01,#11,#47,#01,#12,#45,#01,#12
	db #49,#01,#12,#45,#01,#12,#4a,#01
	db #13,#45,#01,#13,#49,#01,#13,#45
	db #01,#13,#4a,#01,#14,#45,#01,#14
	db #49,#01,#14,#45,#01,#14,#4a,#01
	db #15,#45,#01,#15,#4c,#01,#15,#45
	db #01,#15,#ff,#0d,#06,#01,#fe,#01
	db #01,#00,#3e,#ff,#b1,#50,#b1,#50
	db #b1,#50,#b1,#50,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#10,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#20,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#10,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#50,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#10,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#20,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#b1,#50,#b1,#20
	db #b1,#20,#b1,#10,#b1,#10,#b1,#20
	db #b1,#20,#b1,#20,#ff,#b1,#1d,#05
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#20,#b1,#20,#b1,#10
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#20,#b1,#20,#b1,#10
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#20,#b1,#20,#b1,#10
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#20,#b1,#20,#b1,#10
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#20,#b1,#20,#b1,#10
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#20,#b1,#20,#b1,#10
	db #b1,#20,#b1,#20,#b1,#20,#b1,#50
	db #b1,#20,#b1,#50,#b1,#20,#b1,#50
	db #b1,#20,#b1,#50,#b1,#20,#b1,#50
	db #b1,#50,#b1,#50,#b1,#50,#ff,#31
	db #10,#02,#31,#20,#02,#31,#50,#02
	db #31,#20,#02,#31,#10,#02,#31,#20
	db #02,#31,#50,#02,#31,#20,#02,#31
	db #10,#02,#31,#20,#02,#31,#50,#02
	db #31,#20,#02,#31,#10,#02,#31,#20
	db #02,#31,#50,#02,#b1,#20,#b1,#20
	db #b1,#10,#b1,#20,#b1,#20,#b1,#50
	db #31,#50,#02,#31,#20,#02,#31,#10
	db #02,#31,#20,#02,#31,#50,#02,#31
	db #20,#02,#31,#10,#02,#31,#20,#02
	db #b1,#50,#b1,#20,#b1,#50,#b1,#20
	db #b1,#50,#b1,#20,#b1,#50,#b1,#20
	db #b1,#50,#b1,#50,#b1,#50,#b1,#50
	db #ff,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#38,#ff,#c9,#1d,#05,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#20,#c9,#20,#c9,#10,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#20,#c9,#20,#c9,#10,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#20,#c9,#20,#c9,#10,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#20,#c9,#20,#c9,#10,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#20,#c9,#20,#c9,#10,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#20,#c9,#20,#c9,#10,#c9
	db #20,#c9,#20,#c9,#20,#c9,#50,#c9
	db #20,#c9,#50,#c9,#20,#c9,#50,#c9
	db #20,#c9,#50,#c9,#20,#c9,#50,#c9
	db #50,#c9,#50,#c9,#50,#ff,#49,#50
	db #04,#49,#50,#02,#49,#50,#02,#49
	db #50,#02,#49,#50,#02,#c9,#50,#c9
	db #50,#c9,#50,#c9,#50,#c9,#50,#49
	db #59,#00,#2f,#ff,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#20,#af,#20,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#20,#af,#20,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#20,#af,#20,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#20,#af,#20,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#20,#af,#20,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#20,#af,#20,#af,#10,#af,#20
	db #af,#20,#af,#20,#af,#50,#af,#20
	db #af,#50,#af,#20,#af,#50,#af,#20
	db #af,#50,#af,#20,#af,#50,#af,#50
	db #af,#50,#af,#50,#ff
;
.music_info
	db "Digital Press Issue #3 Inicron (1997)(Benediction)(Greg)",0
	db "ST-128 Module",0

	read "music_end.asm"