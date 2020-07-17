; Music of Techno 2000 Demo - Track 41 Remix (2000)(Brothers)(Catloc)(ST-128 Module)
; Ripped by Megachur the 04/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TECH2DTR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
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
	db #00,#00,#80,#4a,#fe,#4a,#7c,#4b
.l4640
	db #e0,#46,#20,#47,#40,#47,#00,#00
	db #26,#25,#d2,#6c,#d2,#6d,#20,#6e
	db #e0,#46,#60,#47,#40,#47,#20,#00
	db #e0,#46,#80,#47,#40,#47,#00,#00
	db #a0,#47,#e0,#47,#40,#47,#16,#0a
	db #00,#48,#40,#48,#60,#48,#00,#00
	db #80,#48,#c0,#48,#e0,#48,#00,#00
	db #e0,#46,#00,#49,#20,#49,#00,#00
	db #e0,#46,#40,#49,#60,#49,#00,#00
	db #d2,#ff,#92,#6e,#d2,#6e,#20,#6f
	db #e0,#46,#80,#49,#40,#47,#18,#07
	db #c4,#25,#c4,#25,#c4,#25,#f2,#25
	db #c4,#25,#c4,#25,#c4,#25,#f2,#25
	db #e0,#46,#a0,#49,#c0,#49,#9a,#06
	db #e0,#46,#a0,#49,#e0,#49,#9a,#06
	db #00,#4a,#40,#4a,#60,#4a,#80,#00
.l46c0
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
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
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#0a,#09
	db #08,#07,#05,#02,#02,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#0a,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0e,#0c,#0b,#09,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#08,#08,#07
	db #07,#07,#06,#06,#05,#05,#00,#00
	db #11,#04,#08,#02,#0d,#02,#15,#05
	db #0a,#0f,#06,#03,#0d,#16,#04,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #0f,#0e,#0c,#0a,#08,#06,#04,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0a,#09,#08,#07,#06,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #40,#01,#90,#01,#e0,#01,#30,#02
	db #80,#02,#d0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0f,#0f,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#fa,#4b,#00,#fa,#4b,#00,#3b
	db #4c,#00,#a0,#4c,#00,#3b,#4c,#00
	db #fc,#4c,#00,#67,#4d,#00,#6b,#4d
	db #00,#8e,#4d,#00,#ef,#4d,#00,#8e
	db #4d,#00,#ef,#4d,#00,#67,#4d,#00
	db #58,#4e,#00,#5b,#4e,#00,#92,#4e
	db #00,#d3,#4e,#00,#34,#4f,#00,#d3
	db #4e,#00,#34,#4f,#00,#97,#4f,#00
	db #58,#4e,#00,#fa,#4b,#00,#fa,#4b
	db #00,#9b,#4f,#00,#00,#50,#00,#67
	db #4d,#00,#6b,#4d,#00,#5c,#50,#00
	db #bd,#50,#00,#5c,#50,#00,#bd,#50
	db #00,#67,#4d,#00,#6b,#4d,#00,#26
	db #51,#00,#26,#51,#00,#5c,#50,#00
	db #bd,#50,#00,#5c,#50,#00,#8f,#51
	db #00,#67,#4d,#80,#80,#4a,#00,#58
	db #4e,#00,#e4,#51,#00,#07,#52,#00
	db #0c,#52,#00,#13,#52,#00,#80,#52
	db #00,#ed,#52,#00,#30,#53,#00,#30
	db #53,#00,#30,#53,#00,#30,#53,#00
	db #30,#53,#00,#a3,#53,#00,#e6,#53
	db #00,#29,#54,#00,#29,#54,#00,#3c
	db #54,#00,#3c,#54,#00,#3c,#54,#00
	db #3c,#54,#00,#43,#54,#00,#8c,#54
	db #00,#d5,#54,#00,#d5,#54,#00,#1e
	db #55,#00,#1e,#55,#00,#af,#55,#00
	db #af,#55,#00,#af,#55,#00,#af,#55
	db #00,#af,#55,#00,#af,#55,#00,#30
	db #56,#00,#30,#56,#00,#30,#56,#00
	db #30,#56,#00,#95,#56,#00,#95,#56
	db #00,#95,#56,#00,#95,#56,#00,#16
	db #57,#80,#fe,#4a,#00,#27,#57,#00
	db #87,#57,#00,#f4,#57,#00,#f4,#57
	db #00,#f4,#57,#00,#59,#58,#00,#c5
	db #58,#00,#07,#52,#00,#c9,#58,#00
	db #c9,#58,#00,#c9,#58,#00,#c9,#58
	db #00,#52,#59,#00,#b3,#59,#00,#14
	db #5a,#00,#14,#5a,#00,#14,#5a,#00
	db #14,#5a,#00,#14,#5a,#00,#14,#5a
	db #00,#6d,#5a,#00,#b6,#5a,#00,#58
	db #4e,#00,#ff,#5a,#00,#67,#5b,#00
	db #67,#5b,#00,#97,#4f,#00,#58,#4e
	db #00,#d0,#5b,#00,#d0,#5b,#00,#d0
	db #5b,#00,#d0,#5b,#00,#97,#4f,#00
	db #58,#4e,#00,#7d,#5c,#00,#c8,#5c
	db #00,#07,#5d,#00,#07,#5d,#00,#07
	db #5d,#00,#07,#5d,#00,#97,#4f,#80
	db #7c,#4b,#34,#f0,#04,#34,#f0,#04
	db #34,#f0,#04,#34,#f0,#02,#34,#f0
	db #02,#34,#f0,#04,#34,#f0,#04,#34
	db #f0,#04,#b4,#f0,#b4,#f0,#b4,#f0
	db #b4,#f0,#34,#f0,#04,#34,#f0,#04
	db #34,#f0,#04,#34,#f0,#02,#34,#f0
	db #02,#34,#f0,#04,#34,#f0,#04,#34
	db #f0,#04,#b4,#f0,#b4,#f0,#b4,#f0
	db #b4,#f0,#ff,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#34
	db #f0,#02,#34,#d9,#24,#34,#f0,#02
	db #34,#f0,#02,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#34
	db #f0,#02,#34,#d9,#24,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#34,#f0,#02
	db #34,#d9,#24,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#34
	db #f0,#02,#34,#f0,#02,#34,#f0,#02
	db #34,#d9,#24,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#ff
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#f0,#02
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#b4,#f0,#b4,#f0,#b4,#f0
	db #b4,#f0,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #f0,#02,#34,#f0,#04,#34,#f0,#04
	db #34,#f0,#04,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#ff,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#f0,#02,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#b4,#f0
	db #b4,#f0,#b4,#f0,#b4,#f0,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#f0,#02,#b4,#f0
	db #b4,#60,#b4,#60,#b4,#60,#b4,#f0
	db #b4,#60,#b4,#60,#b4,#60,#b4,#f0
	db #b4,#60,#b4,#60,#b4,#60,#b4,#f0
	db #b4,#f0,#b4,#f0,#b4,#f0,#ff,#34
	db #f0,#40,#ff,#00,#30,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#ff,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#34,#f0
	db #02,#34,#d9,#24,#34,#f0,#02,#34
	db #d9,#24,#34,#f0,#02,#34,#d9,#24
	db #34,#f0,#02,#34,#d9,#24,#ff,#34
	db #f0,#02,#34,#d9,#24,#34,#f0,#02
	db #34,#d9,#24,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#34
	db #f0,#02,#34,#d9,#24,#34,#f0,#02
	db #34,#d9,#24,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#34
	db #f0,#02,#34,#d9,#24,#34,#f0,#02
	db #34,#d9,#24,#34,#f0,#02,#34,#d9
	db #24,#34,#f0,#02,#34,#d9,#24,#b4
	db #f0,#b4,#60,#b4,#60,#b4,#60,#b4
	db #f0,#b4,#60,#b4,#60,#b4,#60,#b4
	db #f0,#b4,#60,#b4,#60,#b4,#60,#b4
	db #f0,#b4,#60,#b4,#60,#b4,#60,#ff
	db #00,#40,#ff,#34,#60,#04,#34,#60
	db #04,#34,#60,#04,#34,#60,#04,#34
	db #60,#04,#34,#60,#02,#34,#60,#02
	db #34,#60,#04,#34,#60,#04,#34,#60
	db #04,#34,#60,#04,#34,#60,#04,#34
	db #60,#04,#34,#60,#04,#34,#60,#02
	db #34,#60,#02,#34,#60,#04,#34,#60
	db #04,#ff,#34,#60,#04,#34,#50,#04
	db #34,#60,#04,#34,#50,#04,#34,#60
	db #04,#34,#50,#02,#34,#60,#02,#34
	db #60,#04,#34,#50,#04,#34,#60,#04
	db #34,#50,#04,#34,#60,#04,#34,#50
	db #04,#34,#60,#04,#34,#50,#02,#34
	db #60,#02,#b4,#60,#b4,#60,#b4,#60
	db #b4,#60,#b4,#50,#b4,#60,#b4,#60
	db #b4,#60,#ff,#34,#60,#02,#28,#00
	db #02,#34,#50,#02,#28,#00,#02,#34
	db #60,#02,#28,#00,#02,#34,#50,#02
	db #28,#00,#02,#34,#60,#02,#28,#00
	db #02,#34,#50,#02,#34,#60,#02,#34
	db #60,#02,#28,#00,#02,#34,#50,#02
	db #28,#00,#02,#34,#60,#02,#25,#00
	db #02,#34,#50,#02,#25,#00,#02,#34
	db #60,#02,#25,#00,#02,#34,#50,#02
	db #25,#00,#02,#34,#60,#02,#25,#00
	db #02,#34,#50,#02,#34,#60,#02,#34
	db #60,#02,#25,#00,#02,#34,#50,#02
	db #25,#00,#02,#ff,#34,#60,#02,#28
	db #00,#02,#34,#50,#02,#28,#00,#02
	db #34,#60,#02,#28,#00,#02,#34,#50
	db #02,#28,#00,#02,#34,#60,#02,#28
	db #00,#02,#34,#50,#02,#34,#60,#02
	db #34,#60,#02,#28,#00,#02,#34,#50
	db #02,#28,#00,#02,#34,#60,#02,#25
	db #00,#02,#34,#50,#02,#25,#00,#02
	db #34,#60,#02,#25,#00,#02,#34,#50
	db #02,#25,#00,#02,#34,#60,#02,#25
	db #00,#02,#34,#50,#02,#34,#60,#02
	db #b4,#60,#b4,#60,#25,#00,#02,#b4
	db #50,#b4,#50,#25,#00,#02,#ff,#34
	db #80,#40,#ff,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#34,#f0,#02
	db #34,#f0,#02,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#f0,#02,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#ff
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#34,#f0,#02,#34
	db #d9,#22,#34,#f0,#02,#34,#f0,#02
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#34,#f0,#02,#34
	db #d9,#22,#b4,#f0,#b4,#f0,#b4,#f0
	db #b4,#f0,#34,#f0,#02,#34,#d9,#22
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#34,#f0,#02,#34
	db #f0,#02,#34,#f0,#04,#34,#f0,#04
	db #34,#f0,#04,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#ff,#34,#f0,#02,#34
	db #d9,#22,#34,#f0,#02,#34,#d9,#22
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#34,#f0,#02,#34
	db #d9,#22,#34,#f0,#02,#34,#d9,#22
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#34,#f0,#02,#34
	db #d9,#22,#34,#f0,#02,#34,#d9,#22
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#34,#f0,#02,#34
	db #d9,#22,#34,#f0,#02,#34,#d9,#22
	db #34,#f0,#02,#34,#d9,#22,#34,#f0
	db #02,#34,#d9,#22,#ff,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#b4,#f0,#b4
	db #f0,#b4,#f0,#b4,#f0,#ff,#34,#f0
	db #02,#b4,#80,#b4,#80,#34,#f0,#02
	db #34,#80,#02,#34,#f0,#02,#34,#80
	db #02,#34,#f0,#02,#34,#f0,#02,#34
	db #f0,#02,#b4,#80,#b4,#80,#34,#f0
	db #02,#34,#80,#02,#34,#f0,#02,#34
	db #80,#02,#b4,#f0,#b4,#f0,#b4,#f0
	db #b4,#f0,#34,#f0,#02,#b4,#80,#b4
	db #80,#34,#f0,#02,#34,#80,#02,#34
	db #f0,#02,#34,#80,#02,#34,#f0,#02
	db #34,#f0,#02,#34,#f0,#02,#b4,#80
	db #b4,#80,#34,#f0,#02,#34,#80,#02
	db #34,#f0,#02,#34,#80,#02,#b4,#f0
	db #b4,#f0,#b4,#f0,#b4,#f0,#ff,#34
	db #f0,#02,#34,#d9,#22,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#02,#34,#d9,#22,#34,#f0,#02
	db #34,#d9,#22,#34,#f0,#02,#34,#d9
	db #22,#34,#f0,#02,#34,#d9,#22,#34
	db #f0,#04,#34,#f0,#04,#34,#f0,#04
	db #34,#f0,#04,#ff,#00,#30,#b4,#60
	db #b4,#60,#b4,#60,#b4,#60,#b4,#60
	db #b4,#60,#b4,#60,#b4,#60,#b4,#60
	db #b4,#60,#b4,#60,#b4,#60,#b4,#60
	db #b4,#60,#b4,#60,#b4,#60,#ff,#34
	db #d9,#0f,#40,#ff,#00,#30,#34,#e9
	db #08,#10,#ff,#34,#3b,#20,#34,#3b
	db #13,#34,#3b,#20,#34,#3b,#13,#34
	db #3b,#20,#34,#3b,#23,#34,#3b,#20
	db #35,#3b,#20,#35,#3b,#20,#34,#3b
	db #20,#34,#3b,#13,#34,#3b,#20,#34
	db #3b,#13,#34,#3b,#20,#34,#3b,#23
	db #34,#3b,#20,#33,#3b,#20,#33,#3b
	db #23,#34,#3b,#20,#34,#3b,#13,#34
	db #3b,#20,#34,#3b,#13,#34,#3b,#20
	db #34,#3b,#23,#34,#3b,#20,#35,#3b
	db #20,#35,#3b,#20,#34,#3b,#20,#34
	db #3b,#13,#34,#3b,#20,#34,#3b,#13
	db #34,#3b,#20,#34,#3b,#23,#34,#3b
	db #20,#33,#3b,#20,#33,#3b,#23,#ff
	db #34,#3b,#20,#34,#3b,#13,#34,#3b
	db #20,#34,#3b,#13,#34,#3b,#20,#34
	db #3b,#23,#34,#3b,#20,#35,#3b,#20
	db #35,#3b,#20,#34,#3b,#20,#34,#3b
	db #13,#34,#3b,#20,#34,#3b,#13,#34
	db #3b,#20,#34,#3b,#23,#34,#3b,#20
	db #33,#3b,#20,#33,#3b,#23,#34,#3b
	db #20,#34,#3b,#13,#34,#3b,#20,#34
	db #3b,#13,#34,#3b,#20,#34,#3b,#23
	db #34,#3b,#20,#35,#3b,#20,#35,#3b
	db #20,#34,#3b,#20,#34,#3b,#13,#34
	db #3b,#22,#34,#3b,#15,#34,#3b,#24
	db #34,#3b,#27,#34,#3b,#26,#33,#3b
	db #28,#33,#3b,#2b,#ff,#34,#a0,#03
	db #34,#a0,#03,#34,#a0,#04,#34,#a0
	db #02,#35,#a0,#02,#35,#a0,#02,#34
	db #a0,#03,#34,#a0,#03,#34,#a0,#04
	db #34,#a0,#02,#33,#a0,#04,#34,#a0
	db #03,#34,#a0,#03,#34,#a0,#04,#34
	db #a0,#02,#35,#a0,#02,#35,#a0,#02
	db #34,#a0,#03,#34,#a0,#03,#34,#a0
	db #04,#34,#a0,#02,#33,#a0,#04,#ff
	db #34,#a1,#20,#d3,#aa,#00,#34,#a1
	db #20,#d3,#aa,#00,#34,#a1,#20,#53
	db #aa,#00,#02,#34,#a1,#20,#35,#a1
	db #20,#35,#a1,#20,#34,#a1,#20,#d3
	db #aa,#00,#34,#a1,#20,#d3,#aa,#00
	db #34,#a1,#20,#53,#aa,#00,#02,#34
	db #a1,#20,#33,#a1,#20,#4b,#aa,#00
	db #02,#34,#a1,#20,#d3,#aa,#00,#34
	db #a1,#20,#d3,#aa,#00,#34,#a1,#20
	db #53,#aa,#00,#02,#34,#a1,#20,#35
	db #a1,#20,#35,#a1,#20,#34,#a1,#20
	db #d3,#aa,#00,#34,#a1,#20,#d3,#aa
	db #00,#34,#a1,#20,#53,#aa,#00,#02
	db #34,#a1,#20,#33,#a1,#20,#4b,#aa
	db #00,#02,#ff,#34,#a1,#30,#34,#ab
	db #30,#34,#ab,#40,#34,#ab,#21,#35
	db #ab,#21,#35,#ab,#21,#34,#ab,#32
	db #34,#ab,#32,#34,#ab,#42,#34,#ab
	db #23,#33,#ab,#43,#34,#ab,#34,#34
	db #ab,#34,#34,#ab,#44,#34,#ab,#25
	db #35,#ab,#25,#35,#ab,#25,#34,#ab
	db #36,#34,#ab,#36,#34,#ab,#46,#34
	db #ab,#27,#33,#ab,#47,#ff,#34,#ab
	db #38,#34,#ab,#38,#34,#ab,#48,#34
	db #ab,#29,#35,#ab,#29,#35,#ab,#29
	db #34,#ab,#3a,#34,#ab,#3a,#34,#ab
	db #4a,#34,#ab,#2b,#33,#ab,#4b,#34
	db #ab,#3c,#34,#ab,#3c,#34,#ab,#4c
	db #34,#ab,#2d,#35,#ab,#2d,#35,#ab
	db #2d,#34,#ab,#3e,#34,#ab,#3e,#34
	db #ab,#4e,#34,#ab,#2f,#33,#ab,#4f
	db #ff,#28,#40,#1c,#02,#12,#02,#02
	db #12,#02,#25,#40,#1c,#03,#12,#02
	db #03,#11,#02,#ff,#28,#40,#20,#25
	db #40,#20,#ff,#28,#0b,#3e,#28,#0b
	db #3e,#28,#0b,#3e,#28,#0b,#3d,#29
	db #0b,#2d,#29,#0b,#2d,#28,#0b,#3c
	db #28,#0b,#3c,#28,#0b,#3c,#28,#0b
	db #3b,#27,#0b,#2b,#27,#0b,#2b,#28
	db #0b,#3a,#28,#0b,#3a,#28,#0b,#3a
	db #28,#0b,#39,#29,#0b,#29,#29,#0b
	db #29,#28,#0b,#38,#28,#0b,#38,#28
	db #0b,#38,#28,#0b,#37,#27,#0b,#27
	db #27,#0b,#27,#ff,#28,#0b,#36,#28
	db #0b,#36,#28,#0b,#36,#28,#0b,#35
	db #29,#0b,#25,#29,#0b,#25,#28,#0b
	db #34,#28,#0b,#34,#28,#0b,#34,#28
	db #0b,#33,#27,#0b,#23,#27,#0b,#23
	db #28,#0b,#32,#28,#0b,#32,#28,#0b
	db #32,#28,#0b,#31,#29,#0b,#21,#29
	db #0b,#21,#28,#0b,#30,#28,#0b,#30
	db #28,#0b,#30,#28,#0b,#30,#27,#0b
	db #20,#27,#0b,#20,#ff,#28,#00,#03
	db #28,#00,#03,#28,#00,#03,#28,#00
	db #03,#29,#00,#02,#29,#00,#02,#28
	db #00,#03,#28,#00,#03,#28,#00,#03
	db #28,#00,#03,#27,#00,#02,#27,#00
	db #02,#28,#00,#03,#28,#00,#03,#28
	db #00,#03,#28,#00,#03,#29,#00,#02
	db #29,#00,#02,#28,#00,#03,#28,#00
	db #03,#28,#00,#03,#28,#00,#03,#27
	db #00,#02,#27,#00,#02,#ff,#28,#07
	db #00,#02,#c0,#07,#21,#28,#07,#00
	db #02,#c0,#07,#21,#28,#07,#00,#02
	db #c0,#07,#21,#28,#07,#00,#02,#c0
	db #07,#21,#29,#07,#00,#02,#29,#07
	db #00,#02,#28,#07,#00,#02,#c0,#07
	db #21,#28,#07,#00,#02,#c0,#07,#21
	db #28,#07,#00,#02,#c0,#07,#21,#28
	db #07,#00,#02,#c0,#07,#21,#27,#07
	db #00,#02,#27,#07,#00,#02,#28,#07
	db #00,#02,#c0,#07,#21,#28,#07,#00
	db #02,#c0,#07,#21,#28,#07,#00,#02
	db #c0,#07,#21,#28,#07,#00,#02,#c0
	db #07,#21,#29,#07,#00,#02,#29,#07
	db #00,#02,#28,#07,#00,#02,#c0,#07
	db #21,#28,#07,#00,#02,#c0,#07,#21
	db #28,#07,#00,#02,#c0,#07,#21,#28
	db #07,#00,#02,#c0,#07,#21,#27,#07
	db #00,#02,#27,#07,#00,#02,#ff,#a8
	db #00,#b4,#00,#c0,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#a9
	db #00,#b5,#00,#a9,#00,#b5,#00,#a8
	db #00,#b4,#00,#c0,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#a7
	db #00,#b3,#00,#a7,#00,#b3,#00,#a8
	db #00,#b4,#00,#c0,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#a9
	db #00,#b5,#00,#a9,#00,#b5,#00,#a8
	db #00,#b4,#00,#c0,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#a7
	db #00,#b3,#00,#a7,#00,#b3,#00,#ff
	db #28,#00,#02,#c0,#00,#28,#00,#02
	db #c0,#00,#28,#00,#02,#40,#00,#02
	db #28,#00,#02,#29,#00,#02,#29,#00
	db #02,#28,#00,#02,#c0,#00,#28,#00
	db #02,#c0,#00,#28,#00,#02,#40,#00
	db #02,#28,#00,#02,#27,#00,#02,#3f
	db #00,#02,#28,#00,#02,#c0,#00,#28
	db #00,#02,#c0,#00,#28,#00,#02,#40
	db #00,#02,#28,#00,#02,#29,#00,#02
	db #29,#00,#02,#28,#00,#02,#c0,#00
	db #28,#00,#02,#c0,#00,#28,#00,#02
	db #40,#00,#02,#28,#00,#02,#27,#00
	db #02,#3f,#00,#02,#ff,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#b4
	db #00,#a8,#00,#b4,#00,#a9,#00,#b5
	db #00,#a9,#00,#b5,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#b4
	db #00,#a8,#00,#b4,#00,#a7,#00,#b3
	db #00,#bf,#00,#b3,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#b4
	db #00,#a8,#00,#b4,#00,#a9,#00,#b5
	db #00,#a9,#00,#b5,#00,#a8,#00,#b4
	db #00,#c0,#00,#a8,#00,#b4,#00,#c0
	db #00,#a8,#00,#b4,#00,#c0,#00,#b4
	db #00,#a8,#00,#b4,#00,#a7,#00,#b3
	db #00,#bf,#00,#b3,#00,#ff,#33,#0b
	db #13,#33,#0b,#16,#33,#0b,#19,#33
	db #0b,#1c,#33,#0b,#0f,#3c,#ff,#00
	db #08,#34,#eb,#2e,#34,#eb,#2e,#34
	db #eb,#2e,#34,#eb,#2e,#34,#eb,#2d
	db #34,#eb,#1d,#34,#eb,#2d,#34,#eb
	db #1c,#34,#eb,#2c,#34,#eb,#2b,#34
	db #eb,#2b,#34,#eb,#2b,#34,#eb,#2b
	db #34,#eb,#2a,#34,#eb,#1a,#34,#eb
	db #2a,#34,#eb,#1a,#34,#eb,#2a,#34
	db #eb,#29,#34,#eb,#29,#34,#eb,#29
	db #34,#eb,#29,#34,#eb,#28,#34,#eb
	db #18,#34,#eb,#28,#34,#eb,#18,#34
	db #eb,#28,#34,#eb,#27,#34,#eb,#27
	db #34,#eb,#27,#34,#eb,#27,#ff,#34
	db #eb,#26,#34,#eb,#16,#34,#eb,#26
	db #34,#eb,#16,#34,#eb,#26,#34,#eb
	db #25,#34,#eb,#25,#34,#eb,#25,#34
	db #eb,#25,#34,#eb,#24,#34,#eb,#14
	db #34,#eb,#24,#34,#eb,#14,#34,#eb
	db #24,#34,#eb,#23,#34,#eb,#23,#34
	db #eb,#23,#34,#eb,#23,#34,#eb,#22
	db #34,#eb,#12,#34,#eb,#22,#34,#eb
	db #12,#34,#eb,#22,#34,#eb,#21,#34
	db #eb,#21,#34,#eb,#21,#34,#eb,#21
	db #34,#eb,#20,#34,#eb,#10,#34,#eb
	db #20,#34,#eb,#10,#34,#eb,#20,#34
	db #eb,#20,#34,#eb,#20,#34,#eb,#20
	db #34,#eb,#20,#ff,#34,#e0,#02,#b4
	db #e0,#34,#e0,#02,#b4,#e0,#34,#e0
	db #02,#34,#e0,#02,#34,#e0,#02,#34
	db #e0,#02,#34,#e0,#02,#34,#e0,#02
	db #b4,#e0,#34,#e0,#02,#b4,#e0,#34
	db #e0,#02,#34,#e0,#02,#34,#e0,#02
	db #34,#e0,#02,#34,#e0,#02,#34,#e0
	db #02,#b4,#e0,#34,#e0,#02,#b4,#e0
	db #34,#e0,#02,#34,#e0,#02,#34,#e0
	db #02,#34,#e0,#02,#34,#e0,#02,#34
	db #e0,#02,#b4,#e0,#34,#e0,#02,#b4
	db #e0,#34,#e0,#02,#34,#e0,#02,#34
	db #e0,#02,#34,#e0,#02,#34,#e0,#02
	db #ff,#34,#e0,#02,#b4,#e0,#34,#e0
	db #02,#b4,#e0,#34,#e0,#02,#34,#e0
	db #02,#34,#e0,#02,#34,#e0,#02,#34
	db #e0,#02,#34,#e0,#02,#b4,#e0,#34
	db #e0,#02,#b4,#e0,#34,#e0,#02,#34
	db #e0,#02,#34,#e0,#02,#34,#e0,#02
	db #34,#e0,#02,#34,#e0,#02,#b4,#e0
	db #34,#e0,#02,#b4,#e0,#34,#e0,#02
	db #34,#e0,#02,#34,#e0,#02,#34,#e0
	db #02,#34,#e0,#02,#b4,#e0,#b4,#e0
	db #b4,#e0,#b4,#e0,#b4,#e0,#b4,#e0
	db #b4,#e0,#b4,#e0,#b4,#e0,#b4,#e0
	db #b4,#e0,#b4,#e0,#b4,#e0,#b4,#e0
	db #b4,#e0,#b4,#e0,#ff,#34,#e0,#40
	db #ff,#34,#e0,#02,#b4,#e0,#34,#ec
	db #f7,#02,#b4,#ec,#f7,#34,#e0,#02
	db #b4,#e0,#b4,#e0,#b4,#ec,#f7,#b4
	db #ec,#f7,#b4,#e0,#b4,#e0,#b4,#ec
	db #f7,#b4,#ec,#f7,#34,#e0,#02,#b4
	db #e0,#34,#ec,#f7,#02,#b4,#ec,#f7
	db #34,#e0,#02,#b4,#e0,#b4,#e0,#b4
	db #ec,#f7,#b4,#ec,#f7,#b4,#e0,#b4
	db #e0,#34,#5c,#77,#02,#34,#e0,#02
	db #b4,#e0,#34,#ec,#f7,#02,#b4,#ec
	db #f7,#34,#e0,#02,#b4,#e0,#b4,#e0
	db #b4,#ec,#f7,#b4,#ec,#f7,#b4,#e0
	db #b4,#e0,#b4,#ec,#f7,#b4,#ec,#f7
	db #34,#e0,#02,#b4,#e0,#34,#ec,#f7
	db #02,#b4,#ec,#f7,#34,#e0,#02,#b4
	db #e0,#b4,#e0,#b4,#ec,#f7,#b4,#ec
	db #f7,#b4,#e0,#b4,#e0,#34,#5c,#77
	db #02,#ff,#34,#e0,#03,#34,#2b,#2e
	db #31,#2b,#1e,#34,#2b,#2e,#31,#2b
	db #3d,#34,#2b,#2d,#31,#2b,#1d,#34
	db #2b,#2d,#31,#2b,#3c,#34,#2b,#2c
	db #31,#2b,#1c,#34,#2b,#2c,#31,#2b
	db #3b,#34,#2b,#2b,#31,#2b,#1b,#34
	db #2b,#2b,#2e,#2b,#3a,#31,#2b,#2a
	db #2e,#2b,#1a,#31,#2b,#2a,#2e,#2b
	db #39,#31,#2b,#29,#2e,#2b,#19,#31
	db #2b,#29,#2e,#2b,#38,#31,#2b,#28
	db #2e,#2b,#18,#31,#2b,#28,#2e,#2b
	db #37,#31,#2b,#27,#2e,#2b,#17,#31
	db #2b,#27,#ff,#31,#2b,#36,#34,#2b
	db #26,#31,#2b,#16,#34,#2b,#26,#31
	db #2b,#35,#34,#2b,#25,#31,#2b,#15
	db #34,#2b,#25,#31,#2b,#34,#34,#2b
	db #24,#31,#2b,#14,#34,#2b,#24,#31
	db #2b,#33,#34,#2b,#23,#31,#2b,#13
	db #34,#2b,#23,#2e,#2b,#32,#31,#2b
	db #22,#2e,#2b,#12,#31,#2b,#22,#2e
	db #2b,#31,#31,#2b,#21,#2e,#2b,#11
	db #31,#2b,#21,#2e,#2b,#30,#31,#2b
	db #20,#2e,#2b,#10,#31,#2b,#20,#2e
	db #2b,#30,#31,#2b,#20,#2e,#2b,#10
	db #31,#2b,#20,#ff,#31,#20,#03,#34
	db #20,#02,#b1,#20,#34,#20,#02,#31
	db #20,#03,#34,#20,#02,#b1,#20,#34
	db #20,#02,#31,#20,#03,#34,#20,#02
	db #b1,#20,#34,#20,#02,#31,#20,#03
	db #34,#20,#02,#b1,#20,#34,#20,#02
	db #2e,#20,#03,#31,#20,#02,#ae,#20
	db #31,#20,#02,#2e,#20,#03,#31,#20
	db #02,#ae,#20,#31,#20,#02,#2e,#20
	db #03,#31,#20,#02,#ae,#20,#31,#20
	db #02,#2e,#20,#03,#31,#20,#02,#ae
	db #20,#31,#20,#02,#ff,#31,#2b,#30
	db #34,#2b,#30,#34,#2b,#20,#31,#2b
	db #31,#34,#2b,#31,#34,#2b,#21,#31
	db #2b,#32,#34,#2b,#32,#34,#2b,#22
	db #31,#2b,#33,#34,#2b,#33,#34,#2b
	db #23,#2e,#2b,#34,#31,#2b,#34,#31
	db #2b,#24,#2e,#2b,#35,#31,#2b,#35
	db #31,#2b,#25,#2e,#2b,#36,#31,#2b
	db #36,#31,#2b,#26,#2e,#2b,#37,#31
	db #2b,#37,#31,#2b,#27,#ff,#31,#2b
	db #38,#34,#2b,#38,#34,#2b,#28,#31
	db #2b,#39,#34,#2b,#39,#34,#2b,#29
	db #31,#2b,#3a,#34,#2b,#3a,#34,#2b
	db #2a,#31,#2b,#3b,#34,#2b,#3b,#34
	db #2b,#2b,#2e,#2b,#3c,#31,#2b,#3c
	db #31,#2b,#2c,#2e,#2b,#3d,#31,#2b
	db #3d,#31,#2b,#2d,#2e,#2b,#3e,#31
	db #2b,#3e,#31,#2b,#2e,#2e,#2b,#3f
	db #31,#2b,#3f,#31,#2b,#2f,#ff,#00
	db #02,#b4,#80,#34,#80,#02,#b4,#80
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #b4,#80,#34,#80,#02,#34,#80,#02
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #b4,#80,#34,#80,#02,#b4,#80,#34
	db #80,#02,#b4,#80,#34,#80,#02,#34
	db #80,#02,#34,#80,#02,#b4,#80,#34
	db #80,#02,#b4,#80,#34,#80,#02,#b4
	db #80,#34,#80,#02,#b4,#80,#34,#80
	db #02,#34,#80,#02,#34,#80,#02,#b4
	db #80,#34,#80,#02,#b4,#80,#34,#80
	db #02,#b4,#80,#34,#80,#02,#b4,#80
	db #34,#80,#02,#34,#80,#02,#ff,#34
	db #80,#02,#b4,#80,#34,#80,#02,#b4
	db #80,#34,#80,#02,#b4,#80,#34,#80
	db #02,#b4,#80,#34,#80,#02,#34,#80
	db #02,#34,#80,#02,#b4,#80,#34,#80
	db #02,#b4,#80,#34,#80,#02,#b4,#80
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #34,#80,#02,#34,#80,#02,#b4,#80
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #b4,#80,#34,#80,#02,#b4,#80,#34
	db #80,#02,#34,#80,#02,#34,#80,#02
	db #b4,#80,#34,#80,#02,#b4,#80,#34
	db #80,#02,#b4,#80,#34,#80,#02,#b4
	db #80,#34,#80,#02,#34,#80,#02,#ff
	db #34,#8b,#10,#34,#8b,#13,#34,#8b
	db #10,#34,#8b,#10,#b4,#70,#0b,#10
	db #34,#8b,#10,#34,#8b,#13,#34,#8b
	db #10,#34,#8b,#10,#34,#8b,#13,#34
	db #8b,#10,#34,#7b,#20,#34,#8b,#10
	db #34,#8b,#13,#34,#8b,#10,#34,#8b
	db #13,#34,#8b,#10,#34,#8b,#10,#b4
	db #70,#0b,#10,#34,#8b,#10,#34,#8b
	db #13,#34,#8b,#10,#34,#8b,#10,#34
	db #8b,#13,#34,#8b,#10,#34,#7b,#20
	db #34,#8b,#10,#34,#8b,#13,#34,#8b
	db #10,#34,#8b,#13,#34,#8b,#10,#34
	db #8b,#10,#b4,#70,#0b,#10,#34,#8b
	db #10,#34,#8b,#13,#34,#8b,#10,#34
	db #8b,#10,#34,#8b,#13,#34,#8b,#10
	db #34,#7b,#20,#34,#8b,#10,#34,#8b
	db #13,#34,#8b,#10,#34,#8b,#13,#34
	db #8b,#10,#34,#8b,#10,#b4,#70,#0b
	db #10,#34,#8b,#10,#34,#8b,#13,#34
	db #8b,#10,#34,#8b,#10,#34,#8b,#13
	db #34,#8b,#10,#34,#7b,#20,#34,#8b
	db #10,#34,#8b,#13,#ff,#00,#02,#34
	db #d9,#22,#34,#70,#02,#34,#d9,#42
	db #34,#d9,#22,#34,#70,#02,#34,#d9
	db #42,#34,#d9,#22,#34,#70,#02,#34
	db #d9,#42,#34,#d9,#22,#34,#70,#02
	db #34,#d9,#42,#34,#d9,#22,#34,#70
	db #02,#34,#d9,#42,#34,#d9,#22,#34
	db #70,#02,#34,#d9,#42,#34,#d9,#22
	db #34,#70,#02,#34,#d9,#42,#34,#d9
	db #22,#34,#70,#02,#34,#d9,#22,#ff
	db #00,#02,#34,#d9,#22,#34,#70,#02
	db #34,#d9,#42,#34,#d9,#22,#34,#70
	db #02,#34,#d9,#42,#34,#d9,#22,#34
	db #70,#02,#34,#d9,#42,#34,#d9,#22
	db #34,#70,#02,#34,#d9,#42,#34,#d9
	db #22,#34,#70,#02,#34,#d9,#42,#34
	db #d9,#22,#34,#70,#02,#34,#d9,#62
	db #34,#70,#08,#34,#70,#04,#ff,#34
	db #80,#02,#b4,#80,#b4,#80,#34,#70
	db #02,#34,#80,#02,#34,#80,#02,#34
	db #80,#02,#34,#70,#02,#34,#80,#02
	db #34,#80,#02,#b4,#80,#b4,#80,#34
	db #70,#02,#34,#80,#02,#34,#80,#02
	db #34,#80,#02,#34,#70,#02,#34,#80
	db #02,#34,#80,#02,#b4,#80,#b4,#80
	db #34,#70,#02,#34,#80,#02,#34,#80
	db #02,#34,#80,#02,#34,#70,#02,#34
	db #80,#02,#34,#80,#02,#b4,#80,#b4
	db #80,#34,#70,#02,#34,#80,#02,#34
	db #80,#02,#34,#80,#02,#34,#70,#02
	db #34,#80,#02,#ff
;
.music_info
	db "Techno 2000 Demo - Track 41 Remix (2000)(Brothers)(Catloc)",0
	db "ST-128 Module",0

	read "music_end.asm"
