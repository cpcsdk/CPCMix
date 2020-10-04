; Music of SEX - Sex Entertains Xenomorph - Music 3 (1994)(Beng)()(ST-128 Module)
; Ripped by Megachur the 02/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SEXENXM3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #9100

	read "music_header.asm"

	jp l9109
	jp l919d
	jp l9181
;
.init_music
.l9109
;
	xor a
	ld hl,l96b4
	call l917a
	ld hl,l96e2
	call l917a
	ld hl,l9710
	call l917a
	ld ix,l96b0
	ld iy,l973a
	ld de,#002e
	ld b,#03
.l9129
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
	djnz l9129
	ld hl,l95c9
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
	ld (l95c5),hl
	ld (l95c7),hl
	ld a,#0c
	ld c,d
	call l95a5
	ld a,#0d
	ld c,d
	jp l95a5
.l917a
	ld b,#2a
.l917c
	ld (hl),a
	inc hl
	djnz l917c
	ret
;
.stop_music
.l9181
;
	ld a,#07
	ld c,#3f
	call l95a5
	ld a,#08
	ld c,#00
	call l95a5
	ld a,#09
	ld c,#00
	call l95a5
	ld a,#0a
	ld c,#00
	jp l95a5
;
.play_music
.l919d
;
	ld hl,l95cb
	dec (hl)
	ld ix,l96b0
	ld bc,l96be
	call l923f
	ld ix,l96de
	ld bc,l96ec
	call l923f
	ld ix,l970c
	ld bc,l971a
	call l923f
	ld hl,l95c4
	ld de,l95cb
	ld b,#06
	call l921c
	ld b,#07
	call l921c
	ld b,#0b
	call l921c
	ld b,#0d
	call l921c
	ld de,l95cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l96cf
	call l91f5
	ld hl,l96fd
	call l91f5
	ld hl,l972b
.l91f5
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
	jr nz,l920a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l920a
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
.l921c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l95a5
.l9227
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l95a5
.l923f
	ld a,(l95cb)
	or a
	jp nz,l92f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l92f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9227
	or a
	jp z,l92ec
	ld r,a
	and #7f
	cp #10
	jr c,l92c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l943f
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
	jr z,l92a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l92a0
	rrca
	ld c,a
	ld hl,l9740
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
	jr z,l92bf
	ld (ix+#1e),b
.l92bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l92e0
.l92c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l95d0
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
	add a
.l92e0
	ld a,d
	or a
	jr nz,l92ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l92ee
.l92ec
	ld a,(hl)
	inc hl
.l92ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l92f7
	ld a,(ix+#17)
	or a
	jr nz,l930d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l930d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9323
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9323
	ld a,(ix+#0d)
	or a
	jr z,l9331
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l934f
.l9331
	ld a,(ix+#1a)
	or a
	jp z,l9356
	ld c,a
	cp #03
	jr nz,l933e
	xor a
.l933e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l934f
	ld a,(ix+#18)
	dec c
	jr z,l934f
	ld a,(ix+#19)
.l934f
	add (ix+#07)
	ld b,d
	call l943f
.l9356
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l937e
	dec (ix+#1b)
	jr nz,l937e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l93b6
.l937e
	ld a,(ix+#29)
	or a
	jr z,l93b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l93ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l93a4
	ld (ix+#29),#ff
	jr l93ad
.l93a4
	cp (ix+#2b)
	jr nz,l93ad
	ld (ix+#29),#01
.l93ad
	ld b,d
	or a
	jp p,l93b3
	dec b
.l93b3
	ld c,a
	jr l93c1
.l93b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l93c1
	pop hl
	bit 7,(ix+#14)
	jr z,l93ca
	ld h,d
	ld l,d
.l93ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l95a5
	ld c,h
	ld a,(ix+#02)
	call l95a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l941d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l940c
	dec (ix+#09)
	jr nz,l940c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9404
	xor a
	jr l9409
.l9404
	cp #10
	jr nz,l9409
	dec a
.l9409
	ld (ix+#1e),a
.l940c
	ld a,b
	sub (ix+#1e)
	jr nc,l9413
	xor a
.l9413
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l95a5
.l941d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l95cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l943b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l943b
	ld (l95cc),hl
	ret
.l943f
	ld hl,l95ee
	cp #61
	jr nc,l9449
	add a
	ld c,a
	add hl,bc
.l9449
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9453
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9578
	ld (ix+#1e),a
	jp l92e0
.l9465
	dec b
.l9466
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9471
	neg
.l9471
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
	jp l92e0
.l9487
	dec b
	jr l948b
.l948a
	inc b
.l948b
	call l9578
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l92e0
.l949a
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
	jp l955d
.l94ab
	ld a,(hl)
	inc hl
	or a
	jr z,l94cd
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
.l94cd
	ld (ix+#29),a
	jp l92e0
.l94d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l95cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l95ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l92e0
.l94ed
	ld a,(hl)
	or a
	jr z,l94fe
	call l957a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l92e0
.l94fe
	ld hl,#0101
	ld (l95ca),hl
	jp l92e0
.l9507
	call l9578
	ld (ix+#1e),a
	jp l92e0
.l9510
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9589
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9589
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l92e0
.l9532
	ld a,(hl)
	inc hl
	ld (l95c9),a
	jp l92e0
.l953a
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
	jp l92e0
.l9559
	call l9578
	add a
.l955d
	ld b,#00
	ld c,a
	push hl
	ld hl,l97c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l92e0
.l9578
	ld a,(hl)
	inc hl
.l957a
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
.l9589
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9740
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l95a5
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
.l95c4
	ret
.l95cc equ $ + 7
.l95cb equ $ + 6
.l95ca equ $ + 5
.l95c9 equ $ + 4
.l95c7 equ $ + 2
.l95c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95cf equ $ + 2
.l95ce equ $ + 1
	db #38,#00,#00
.l95d0
	dw l9453,l9466,l9465,l948a
	dw l9487,l949a,l94ab,l94d3
	dw l94ed,l94d3,l9507,l9510
	dw l9532,l953a,l9559
.l95ee
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
.l96b4 equ $ + 4
.l96b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l96be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l96e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l96ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l970c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l9710
	db #00,#00,#00,#00,#00,#00,#00,#00
.l971a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l972b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l973a equ $ + 2
	db #00,#00,#60,#9a,#99,#9a,#d2,#9a
.l9740
	db #d2,#50,#32,#ea,#72,#ea,#40,#98
	db #e0,#97,#20,#98,#40,#98,#00,#00
	db #a3,#a1,#92,#ea,#d2,#ea,#40,#98
	db #60,#98,#a0,#98,#c0,#98,#00,#00
	db #e0,#98,#20,#99,#40,#99,#00,#00
	db #a4,#a1,#76,#f2,#76,#f2,#a3,#a1
	db #60,#99,#a0,#99,#c0,#99,#00,#00
	db #e0,#98,#e0,#99,#c0,#98,#18,#07
	db #00,#9a,#40,#9a,#c0,#98,#18,#07
	db #12,#52,#44,#a3,#e4,#a3,#ba,#53
	db #d2,#50,#a4,#a1,#f2,#ea,#d2,#50
	db #a4,#a1,#a4,#a1,#a4,#a1,#d2,#50
	db #a4,#a1,#a4,#a1,#a4,#a1,#d2,#50
	db #a4,#a1,#a4,#a1,#a4,#a1,#d2,#50
	db #a4,#a1,#d2,#50,#d2,#50,#00,#00
	db #d2,#50,#d2,#50,#d2,#50,#00,#00
.l97c0
	db #d2,#50,#d2,#50,#d2,#50,#d2,#50
	db #d2,#50,#d2,#50,#d2,#50,#d2,#50
	db #d2,#50,#d2,#50,#d2,#50,#d2,#50
	db #d2,#50,#d2,#50,#d2,#50,#d2,#50
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
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0c,#0f,#0f,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
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
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0c,#0b,#0a,#08,#06,#08,#0a,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#0b,#9b,#00,#30,#9b,#00,#30
	db #9b,#00,#0b,#9b,#00,#5b,#9b,#00
	db #bc,#9b,#00,#1d,#9c,#00,#bc,#9b
	db #00,#5b,#9b,#00,#0b,#9b,#00,#bc
	db #9b,#00,#50,#9c,#00,#9a,#9c,#00
	db #d3,#9c,#00,#9a,#9c,#00,#d3,#9c
	db #00,#bc,#9b,#00,#0b,#9b,#80,#69
	db #9a,#00,#04,#9d,#00,#07,#9d,#00
	db #38,#9d,#00,#ba,#9d,#00,#ba,#9d
	db #00,#38,#9d,#00,#38,#9d,#00,#38
	db #9d,#00,#ba,#9d,#00,#ba,#9d,#00
	db #38,#9d,#00,#11,#9e,#00,#89,#9e
	db #00,#0b,#9f,#00,#89,#9e,#00,#0b
	db #9f,#00,#38,#9d,#00,#04,#9d,#80
	db #a2,#9a,#00,#04,#9d,#00,#38,#9d
	db #00,#8d,#9f,#00,#eb,#9f,#00,#4b
	db #a0,#00,#af,#a0,#00,#0f,#a1,#00
	db #af,#a0,#00,#4b,#a0,#00,#eb,#9f
	db #00,#af,#a0,#00,#72,#a1,#00,#cf
	db #a1,#00,#32,#a2,#00,#cf,#a1,#00
	db #32,#a2,#00,#af,#a0,#00,#04,#9d
	db #80,#db,#9a,#28,#70,#0e,#28,#70
	db #02,#2b,#70,#06,#2b,#70,#02,#2d
	db #70,#06,#2d,#70,#02,#28,#70,#0e
	db #28,#70,#02,#2b,#70,#06,#2b,#70
	db #02,#2d,#70,#06,#2d,#70,#02,#ff
	db #28,#70,#0e,#28,#70,#02,#2b,#70
	db #06,#2b,#70,#02,#2d,#70,#06,#2d
	db #70,#02,#28,#70,#0e,#28,#70,#02
	db #2f,#70,#03,#2d,#70,#03,#2b,#70
	db #02,#2a,#70,#03,#28,#70,#03,#26
	db #70,#02,#ff,#28,#70,#02,#28,#70
	db #02,#28,#70,#02,#28,#70,#02,#28
	db #70,#02,#28,#70,#02,#28,#70,#02
	db #28,#70,#02,#2b,#70,#02,#2b,#70
	db #02,#2b,#70,#02,#2b,#70,#02,#2d
	db #70,#02,#2d,#70,#02,#2d,#70,#02
	db #2d,#70,#02,#28,#70,#02,#28,#70
	db #02,#28,#70,#02,#28,#70,#02,#28
	db #70,#02,#28,#70,#02,#28,#70,#02
	db #28,#70,#02,#2b,#70,#02,#2b,#70
	db #02,#2b,#70,#02,#2b,#70,#02,#2d
	db #70,#02,#2d,#70,#02,#2d,#70,#02
	db #2d,#70,#02,#ff,#28,#71,#20,#28
	db #70,#02,#28,#70,#02,#28,#70,#02
	db #28,#70,#02,#28,#70,#02,#28,#70
	db #02,#28,#70,#02,#2b,#70,#02,#2b
	db #70,#02,#2b,#70,#02,#2b,#70,#02
	db #2d,#70,#02,#2d,#70,#02,#2d,#70
	db #02,#2d,#70,#02,#28,#70,#02,#28
	db #70,#02,#28,#70,#02,#28,#70,#02
	db #28,#70,#02,#28,#70,#02,#28,#70
	db #02,#28,#70,#02,#2b,#70,#02,#2b
	db #70,#02,#2b,#70,#02,#2b,#70,#02
	db #2d,#70,#02,#2d,#70,#02,#2d,#70
	db #02,#2d,#70,#02,#ff,#cc,#70,#cc
	db #70,#cc,#70,#cc,#70,#4a,#70,#02
	db #4a,#70,#02,#4c,#70,#06,#4a,#70
	db #02,#47,#70,#04,#45,#70,#04,#47
	db #70,#08,#45,#70,#06,#43,#70,#02
	db #45,#70,#04,#43,#70,#04,#40,#70
	db #02,#40,#70,#06,#40,#70,#08,#ff
	db #40,#80,#06,#42,#80,#02,#43,#80
	db #04,#42,#80,#04,#45,#80,#04,#43
	db #80,#04,#42,#80,#02,#3f,#80,#04
	db #40,#80,#02,#4c,#80,#02,#4c,#80
	db #02,#4e,#80,#02,#4b,#80,#03,#cc
	db #80,#4e,#80,#02,#50,#80,#02,#50
	db #80,#02,#51,#80,#02,#50,#80,#03
	db #ce,#80,#4c,#80,#02,#4e,#80,#02
	db #4c,#80,#02,#4b,#80,#02,#4c,#80
	db #02,#ff,#45,#80,#06,#44,#80,#02
	db #42,#80,#04,#40,#80,#04,#40,#80
	db #04,#3f,#80,#04,#42,#80,#04,#44
	db #80,#04,#45,#80,#06,#44,#80,#02
	db #42,#80,#04,#40,#80,#04,#3f,#80
	db #04,#47,#80,#03,#c7,#80,#47,#80
	db #02,#47,#80,#02,#45,#80,#02,#45
	db #80,#02,#ff,#44,#80,#06,#42,#80
	db #02,#40,#80,#02,#40,#80,#02,#3f
	db #80,#04,#3d,#80,#04,#3f,#80,#04
	db #40,#80,#04,#42,#80,#04,#3b,#80
	db #06,#3b,#80,#02,#3d,#80,#04,#3f
	db #80,#04,#40,#80,#08,#42,#80,#04
	db #44,#80,#04,#ff,#00,#40,#ff,#40
	db #40,#04,#40,#40,#04,#40,#40,#04
	db #40,#40,#04,#40,#40,#04,#40,#40
	db #04,#40,#40,#04,#40,#40,#04,#40
	db #40,#04,#40,#40,#04,#40,#40,#04
	db #40,#40,#04,#40,#40,#04,#40,#40
	db #04,#40,#40,#04,#40,#40,#04,#ff
	db #40,#7b,#13,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#c0,#70,#c7,#70,#cc,#70,#c7
	db #70,#ff,#40,#30,#02,#40,#30,#02
	db #43,#30,#02,#c0,#30,#45,#30,#03
	db #47,#30,#04,#40,#30,#02,#3e,#30
	db #04,#3e,#30,#02,#be,#30,#43,#30
	db #02,#c3,#30,#42,#30,#02,#40,#30
	db #02,#be,#30,#40,#30,#03,#40,#30
	db #02,#43,#30,#02,#c0,#30,#45,#30
	db #03,#47,#30,#04,#4c,#30,#02,#4a
	db #30,#02,#47,#30,#02,#43,#30,#02
	db #c5,#30,#47,#30,#02,#c7,#30,#45
	db #30,#02,#43,#30,#02,#42,#30,#02
	db #ff,#40,#7b,#13,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#c0,#70,#c7,#70,#cc,#70
	db #c7,#70,#42,#80,#04,#44,#80,#04
	db #ff,#42,#7b,#13,#c9,#70,#ce,#70
	db #c2,#70,#c9,#70,#ce,#70,#c2,#70
	db #c9,#70,#ce,#70,#c2,#70,#c9,#70
	db #ce,#70,#c2,#70,#c9,#70,#ce,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#ce,#70,#c2,#70,#c9,#70
	db #ce,#70,#c2,#70,#c9,#70,#ce,#70
	db #c2,#70,#c9,#70,#ce,#70,#c2,#70
	db #c9,#70,#ce,#70,#c2,#70,#c9,#70
	db #ce,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#bb,#70,#c2,#70,#c7,#70
	db #c2,#70,#ff,#40,#7b,#13,#c7,#70
	db #cc,#70,#c7,#70,#c0,#70,#c7,#70
	db #cc,#70,#c7,#70,#c0,#70,#c7,#70
	db #cc,#70,#c7,#70,#c0,#70,#c7,#70
	db #cc,#70,#c7,#70,#b9,#70,#c0,#70
	db #c5,#70,#c0,#70,#b9,#70,#c0,#70
	db #c5,#70,#c0,#70,#b9,#70,#c0,#70
	db #c5,#70,#c0,#70,#b9,#70,#c0,#70
	db #c5,#70,#c0,#70,#bb,#70,#c2,#70
	db #c7,#70,#c2,#70,#bb,#70,#c2,#70
	db #c7,#70,#c2,#70,#bb,#70,#c2,#70
	db #c7,#70,#c2,#70,#bb,#70,#c2,#70
	db #c7,#70,#c2,#70,#b4,#70,#bb,#70
	db #c0,#70,#bb,#70,#b4,#70,#bb,#70
	db #c0,#70,#bb,#70,#b4,#70,#bb,#70
	db #c0,#70,#bb,#70,#b4,#70,#bb,#70
	db #c0,#70,#bb,#70,#ff,#34,#10,#03
	db #b4,#10,#40,#60,#02,#34,#10,#02
	db #40,#40,#02,#34,#10,#02,#40,#60
	db #03,#b8,#10,#34,#10,#03,#b4,#10
	db #40,#60,#02,#34,#10,#02,#40,#40
	db #02,#34,#10,#02,#c0,#60,#b8,#10
	db #38,#10,#02,#34,#10,#03,#b4,#10
	db #40,#60,#02,#34,#10,#02,#40,#40
	db #02,#34,#10,#02,#40,#60,#04,#34
	db #10,#03,#b4,#10,#c0,#60,#c0,#60
	db #34,#10,#02,#38,#10,#02,#b4,#10
	db #b8,#10,#c0,#60,#b4,#10,#b8,#10
	db #b8,#10,#ff,#34,#10,#03,#b4,#10
	db #40,#60,#02,#34,#10,#02,#40,#40
	db #02,#34,#10,#02,#40,#60,#03,#b8
	db #10,#34,#10,#03,#b4,#10,#40,#60
	db #02,#34,#10,#02,#40,#40,#02,#34
	db #10,#02,#c0,#60,#b8,#10,#40,#60
	db #02,#34,#10,#03,#b4,#10,#40,#60
	db #02,#34,#10,#02,#40,#40,#02,#34
	db #10,#02,#40,#60,#02,#40,#60,#02
	db #34,#10,#03,#b4,#10,#40,#60,#02
	db #34,#10,#02,#38,#10,#02,#b4,#10
	db #b8,#10,#c0,#60,#b4,#10,#b8,#10
	db #b8,#10,#ff,#34,#10,#03,#b4,#10
	db #40,#60,#02,#34,#10,#02,#40,#40
	db #02,#34,#10,#02,#40,#60,#03,#b8
	db #10,#34,#10,#02,#c0,#60,#b4,#10
	db #40,#60,#02,#34,#10,#02,#40,#40
	db #02,#40,#60,#02,#c0,#60,#b8,#10
	db #c0,#60,#c0,#60,#34,#10,#03,#b4
	db #10,#40,#60,#02,#34,#10,#02,#40
	db #40,#02,#34,#10,#02,#40,#60,#02
	db #c0,#60,#c0,#60,#34,#10,#03,#b4
	db #10,#40,#60,#02,#34,#10,#02,#38
	db #10,#02,#c0,#60,#b8,#10,#c0,#60
	db #b4,#10,#c0,#60,#c0,#60,#ff,#34
	db #11,#30,#b4,#10,#40,#60,#02,#34
	db #10,#02,#40,#40,#02,#34,#10,#02
	db #40,#60,#03,#b8,#10,#34,#10,#03
	db #b4,#10,#40,#60,#02,#40,#60,#02
	db #40,#40,#02,#40,#60,#02,#c0,#60
	db #b8,#10,#40,#60,#02,#34,#10,#03
	db #b4,#10,#40,#60,#02,#34,#10,#02
	db #40,#40,#02,#40,#60,#02,#40,#60
	db #02,#40,#60,#02,#34,#10,#03,#c0
	db #60,#40,#60,#02,#40,#60,#02,#38
	db #10,#02,#c0,#60,#b8,#10,#c0,#60
	db #b4,#10,#c0,#60,#b8,#10,#ff,#40
	db #60,#03,#b4,#10,#38,#10,#02,#40
	db #60,#02,#40,#40,#02,#40,#60,#02
	db #38,#10,#03,#b8,#10,#c0,#60,#40
	db #60,#02,#b4,#10,#38,#10,#02,#40
	db #60,#02,#40,#40,#02,#40,#60,#02
	db #b8,#10,#b8,#10,#38,#10,#02,#40
	db #60,#03,#b4,#10,#38,#10,#02,#40
	db #60,#02,#40,#40,#02,#40,#60,#02
	db #38,#10,#04,#c0,#60,#40,#60,#02
	db #b4,#10,#40,#60,#02,#c0,#60,#c0
	db #60,#b8,#10,#c0,#60,#c0,#60,#b8
	db #10,#c0,#60,#b4,#10,#c0,#60,#b8
	db #10,#ff,#40,#60,#03,#b4,#10,#38
	db #10,#02,#34,#10,#02,#40,#40,#02
	db #34,#10,#02,#40,#60,#03,#b8,#10
	db #34,#10,#03,#b4,#10,#40,#60,#02
	db #34,#10,#02,#40,#40,#02,#40,#60
	db #02,#b8,#10,#b8,#10,#40,#60,#02
	db #34,#10,#03,#b4,#10,#40,#60,#02
	db #34,#10,#02,#40,#60,#02,#34,#10
	db #02,#40,#60,#04,#40,#60,#03,#b4
	db #10,#40,#60,#02,#34,#10,#02,#40
	db #60,#02,#b4,#10,#b8,#10,#c0,#60
	db #b4,#10,#b8,#10,#b8,#10,#ff,#34
	db #10,#03,#b4,#10,#40,#60,#02,#34
	db #10,#02,#40,#40,#02,#34,#10,#02
	db #40,#60,#02,#c0,#60,#c0,#60,#40
	db #60,#03,#b4,#10,#b8,#10,#c0,#60
	db #34,#10,#02,#40,#40,#02,#34,#10
	db #02,#b8,#10,#b8,#10,#38,#10,#02
	db #34,#10,#03,#b4,#10,#40,#60,#02
	db #34,#10,#02,#40,#40,#02,#40,#60
	db #02,#40,#60,#02,#c0,#60,#c0,#60
	db #34,#10,#03,#b4,#10,#40,#60,#02
	db #34,#10,#02,#38,#10,#02,#c0,#60
	db #38,#10,#02,#b4,#10,#c0,#60,#b8
	db #10,#ff,#34,#10,#03,#b4,#10,#40
	db #60,#02,#34,#10,#02,#40,#40,#02
	db #34,#10,#02,#40,#60,#03,#b8,#10
	db #34,#10,#03,#b4,#10,#40,#60,#02
	db #c0,#60,#c0,#60,#40,#40,#02,#40
	db #60,#02,#c0,#60,#b8,#10,#40,#60
	db #02,#34,#10,#03,#b4,#10,#40,#60
	db #02,#c0,#60,#c0,#60,#40,#40,#02
	db #34,#10,#02,#40,#60,#04,#40,#60
	db #03,#c0,#60,#38,#10,#02,#40,#60
	db #02,#40,#60,#02,#c0,#60,#b8,#10
	db #c0,#60,#b4,#10,#c0,#60,#c0,#60
	db #ff
;
.music_info
	db "SEX - Sex Entertains Xenomorph - Music 3 (1994)(Beng)()",0
	db "ST-128 Module",0

	read "music_end.asm"
