; Music of Tusker (1989)(System 3)()()
; Ripped by Megachur the 22/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TUSKER.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7500

	read "music_header.asm"
	
.l7500
	dw l7923,l7954,l7b65,l7b96
	dw l7da7,l7dd8,l7fe9,l801a
.l7514 equ $ + 4
.l7510
	db #00,#00,#00,#00,#00,#00,#00,#00
.l751c equ $ + 4
.l7518
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7527 equ $ + 7
.l7525 equ $ + 5
.l7523 equ $ + 3
.l7520
	db #09,#00,#00,#b3,#00,#bc,#03,#77
.l752b equ $ + 3
.l752a equ $ + 2
.l7529 equ $ + 1
	db #00,#09,#38,#07,#07,#03,#00,#00
.l7535 equ $ + 5
.l7532 equ $ + 2
.l7531 equ $ + 1
	db #00,#0a,#04,#04,#01,#04,#04,#01
.l753f equ $ + 7
.l7539 equ $ + 1
.l7538
	db #00,#00,#00,#00,#00,#00,#00,#03
	db #01,#04,#00,#1d,#00,#24,#02,#03
	db #06
;
.init_music
.l7549
;
	ld a,#07
	ld (l77c2),a
	ld hl,l7500
	call l77ee
	jp l7586

	call #08dc	; ???
;
.stop_music
;
	ld de,#073f
	call l7563
	ld de,#0600
.l7563
	di
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ei
	ret
;
.play_music
.l7586
;
	call l75a9
.l7589
	xor a
	call l77c9
	ld a,#01
	call l77c9
	ld a,#02
	call l77c9
	call l778e
	call l77b1
	ld hl,l7531
	inc (hl)
	ld a,(hl)
	cp #10
	jr nz,l7589
	ld (hl),#00
	ret
.l75a9
	ld hl,l752a
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l7713
	ld hl,l7531
	ld (hl),b
	inc hl
	call l7713
	ld hl,l7538
	ld (hl),b
	inc hl
	call l7713
	inc hl
	call l7713
	ld hl,l751c
	call l761a
	call l76b4
	ld hl,l7510
	call l761a
	ld a,#01
	call l763e
	ld hl,l7514
	call l761a
	ld a,#02
	call l763e
	ld hl,l7518
	call l761a
	ld a,#03
	call l763e
	call l7719
	ld hl,l7523
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l760b
	inc hl
	inc hl
	call l760b
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
.l760b
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
.l761a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
.l761e
	ld a,(de)
	cp #3f
	jr z,l7635
	ld b,a
	ld (hl),d
	dec hl
	ld (hl),e
	add a
	add #f7
	ld l,a
	adc #77
	sub l
	ld h,a
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l7635
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jp l761e
.l763e
	ld c,a
	ld a,b
	cp #36
	ld a,h
	jr nc,l767e
	or l
	ret z
	ld a,c
	push hl
	add a
	dec a
	add #23
	ld l,a
	adc #75
	sub l
	ld h,a
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l7535
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l7520
	add hl,de
	ld a,(hl)
	ld hl,l752b
	add hl,de
	ld (hl),a
	ld hl,l752a
	ld a,c
	add #ff
	add a
	add a
	add a
	or #86
	ld (l767c),a
.l767c equ $ + 1
	res 0,(hl)
	ret
.l767e
	ld (l7529),a
	ld a,l
	and #f0
	or a
	jr z,l76a5
	rrca
	rrca
	rrca
	rrca
.l768b
	ld hl,l7532
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l752a
	ld a,c
	add #02
	add a
	add a
	add a
	or #86
	ld (l76a3),a
.l76a3 equ $ + 1
	res 0,(hl)
	ret
.l76a5
	ld a,l
	and #0f
	ld hl,l752b
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l768b
.l76b4
	ld a,b
	and #03
	ld c,a
	bit 2,b
	jr nz,l76c1
	bit 3,b
	jr nz,l76ec
	ret
.l76c1
	bit 3,b
	jr nz,l7702
	ld a,#f0
	and b
	rrca
	rrca
	rrca
	rrca
	ld b,a
	xor a
	cp c
	ld hl,l7520
	jr z,l76e4
	ld d,a
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,a
.l76da
	ld a,#34
	add c
	ld l,a
	adc #75
	sub l
	ld h,a
	ld (hl),b
	ret
.l76e4
	call l7713
	ld b,#00
	jp l7710
.l76ec
	ld a,c
	ld (l753f),a
	ld a,#f0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l76fe
	xor #7f
	inc a
.l76fe
	ld (l7538),a
	ret
.l7702
	bit 4,b
	ret nz
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	ld b,a
	xor a
	cp c
	jr nz,l76da
.l7710
	ld hl,l7535
.l7713
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l7719
	ld hl,l7538
	xor a
	cp (hl)
	ret z
	ld b,(hl)
	ld a,(l753f)
	or a
	jr z,l773d
	ld ix,l7523
	ld hl,l7510
	dec a
	jr z,l7758
	ld hl,l7514
	ld ix,l7525
	dec a
	jr z,l7758
	jp l7751
.l773d
	ld hl,l7510
	ld ix,l7523
	call l7758
	ld ix,l7525
	ld hl,l7514
	call l7758
.l7751
	ld ix,l7527
	ld hl,l7518
.l7758
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	add b
	cp #35
	ret nc
	add a
	add #f7
	ld l,a
	adc #77
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l777c
	or a
	rr h
	rr l
	rr a
	djnz l777c
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l778e
	ld hl,l7523
	ld de,l7539
	ld b,#03
.l7796
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,l77a5
	inc hl
.l77a5
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l7796
	ret
.l77b1
	ld b,#0b
	ld hl,l7523
	ld d,#00
.l77b8
	ld e,(hl)
	inc hl
	call l7563
	djnz l77b8
	ld b,#f0
.l77c2 equ $ + 1
.l77c1
	ld c,#04
.l77c3
	dec c
	jr nz,l77c3
	djnz l77c1
	ret
.l77c9
	ld hl,l752b
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld l,#07
	add hl,de
	ld a,(hl)
	or a
	ret z
	push de
	ld hl,l788b
	dec a
	rla
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l7531)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld (hl),a
	ret
.l77ee
	ld de,l7510
	ld bc,#0010
	ldir
	ret
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
	dw #002f
	db #00,#00,#04,#08,#14,#08,#1f,#08
	db #09,#70,#1f,#70,#0a,#07,#11,#07
	db #1c,#07,#09,#40,#0b,#0d,#0c,#ef
	db #00,#50,#1c,#3c,#0b,#0d,#00,#00
	db #00,#10,#00,#00,#00,#00,#00,#00
.l788b equ $ + 2
	db #00,#00,#07,#09,#0a,#0b,#0c,#0c
	db #0d,#0d,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#06,#07,#08,#09,#0c,#0e
	db #0f,#0e,#0d,#0c,#09,#08,#07,#06
	db #04,#02,#0d,#0c,#0b,#0a,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#0b,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0c,#0a,#0a,#09,#08,#07,#06,#06
	db #06,#06,#06,#07,#08,#09,#0a,#0a
	db #0a,#0a,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0b,#04,#08,#14,#08,#1f,#08
	db #09,#70,#1f,#70,#0a,#07,#11,#07
	db #1c,#07,#09,#40,#0b,#0d,#0c,#ef
	db #00,#50,#1c,#3c,#0b,#0d,#00,#00
	db #00,#10,#00,#00,#00,#00,#00,#00
.l7923 equ $ + 2
	db #00,#00,#35,#08,#08,#08,#0b,#0b
	db #0b,#08,#08,#08,#03,#04,#06,#08
	db #08,#08,#0b,#0b,#0b,#08,#08,#08
	db #03,#04,#06,#08,#08,#08,#0b,#0b
	db #0b,#08,#08,#08,#03,#04,#06,#08
	db #08,#08,#0b,#0b,#0b,#17,#16,#14
.l7954 equ $ + 3
	db #17,#16,#15,#14,#0f,#14,#0f,#14
	db #0f,#14,#0f,#14,#0f,#14,#0f,#14
	db #0f,#14,#0f,#14,#0f,#14,#0f,#14
	db #0f,#14,#0f,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#11,#0c,#11,#0c,#11
	db #0c,#11,#0c,#11,#0c,#11,#0c,#12
	db #0d,#12,#0d,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#0d,#11,#14,#0d,#11
	db #14,#0d,#11,#14,#0d,#11,#14,#0d
	db #11,#14,#0d,#11,#14,#0d,#11,#14
	db #0d,#11,#14,#08,#14,#08,#14,#08
	db #14,#08,#14,#08,#14,#08,#14,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#05,#11,#05,#11,#05
	db #11,#05,#11,#05,#11,#05,#11,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#08,#14,#08,#14,#08
	db #14,#08,#14,#08,#14,#08,#14,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#05,#11,#05,#11,#05
	db #11,#05,#11,#05,#11,#05,#11,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#14,#0f,#14,#0f,#14
	db #0f,#14,#0f,#14,#0f,#14,#0f,#14
	db #0f,#14,#0f,#14,#0f,#14,#0f,#14
	db #0f,#14,#0f,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#11,#0c,#11,#0c,#11
	db #0c,#11,#0c,#11,#0c,#11,#0c,#12
	db #0d,#12,#0d,#12,#0d,#12,#0d,#12
	db #0d,#12,#0d,#0d,#11,#14,#0d,#11
	db #14,#0d,#11,#14,#0d,#11,#14,#0d
	db #11,#14,#0d,#11,#14,#0d,#11,#14
	db #0d,#11,#14,#0f,#13,#16,#1b,#16
	db #13,#0f,#13,#16,#1b,#16,#13,#12
	db #16,#19,#1e,#19,#16,#12,#16,#19
	db #1e,#19,#16,#0f,#13,#16,#1b,#16
	db #13,#0f,#13,#16,#1b,#16,#13,#12
	db #16,#19,#1e,#19,#16,#12,#16,#19
	db #1e,#19,#16,#19,#1d,#20,#25,#20
	db #1d,#19,#1d,#20,#25,#20,#1d,#14
	db #18,#1b,#14,#18,#1b,#14,#18,#1b
	db #14,#18,#1b,#19,#1d,#20,#25,#20
	db #1d,#19,#1d,#20,#25,#20,#1d,#14
	db #18,#1b,#20,#1b,#18,#14,#18,#1b
	db #20,#1b,#18,#08,#14,#08,#14,#08
	db #14,#08,#14,#08,#14,#08,#14,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#05,#11,#05,#11,#05
	db #11,#05,#11,#05,#11,#05,#11,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#08,#14,#08,#14,#08
	db #14,#08,#14,#08,#14,#08,#14,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#01,#0d,#01,#0d,#01
	db #0d,#01,#0d,#01,#0d,#01,#0d,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#08,#14,#08,#14,#08
	db #14,#06,#12,#06,#12,#06,#12,#04
	db #10,#04,#10,#04,#10,#06,#12,#06
	db #12,#06,#12,#08,#14,#08,#14,#08
	db #14,#06,#12,#06,#12,#06,#12,#04
	db #10,#04,#10,#04,#10,#06,#12,#06
.l7b65 equ $ + 4
	db #12,#06,#12,#3f,#35,#14,#14,#14
	db #17,#17,#17,#14,#14,#14,#0f,#17
	db #16,#14,#14,#14,#17,#17,#17,#14
	db #14,#14,#0f,#17,#17,#14,#14,#14
	db #17,#17,#17,#14,#14,#14,#0f,#17
	db #16,#14,#14,#14,#17,#17,#17,#14
.l7b96 equ $ + 5
	db #14,#08,#0b,#0a,#09,#2c,#27,#20
	db #25,#27,#20,#2c,#27,#20,#25,#27
	db #20,#2c,#27,#20,#25,#27,#20,#2c
	db #27,#20,#25,#27,#20,#2a,#27,#20
	db #25,#27,#20,#2a,#27,#20,#25,#27
	db #20,#2a,#27,#20,#25,#27,#20,#2a
	db #27,#20,#25,#27,#20,#29,#27,#20
	db #25,#27,#20,#29,#27,#20,#25,#27
	db #20,#2a,#27,#20,#25,#27,#20,#2a
	db #27,#20,#25,#27,#20,#27,#25,#20
	db #25,#27,#20,#27,#25,#20,#25,#27
	db #20,#27,#25,#20,#25,#27,#20,#27
	db #25,#20,#25,#20,#27,#2c,#2c,#2c
	db #27,#27,#27,#27,#27,#35,#27,#25
	db #24,#25,#25,#25,#25,#25,#25,#25
	db #35,#35,#35,#2e,#30,#2c,#2c,#2c
	db #27,#27,#27,#27,#35,#27,#27,#25
	db #24,#20,#20,#20,#20,#20,#20,#20
	db #35,#35,#35,#2e,#30,#2c,#2c,#2c
	db #27,#27,#27,#27,#27,#35,#27,#25
	db #24,#25,#25,#25,#25,#25,#25,#35
	db #35,#35,#35,#2e,#30,#2c,#2c,#2c
	db #27,#27,#27,#35,#35,#27,#27,#25
	db #24,#20,#20,#20,#20,#20,#20,#20
	db #35,#35,#35,#35,#20,#2c,#27,#20
	db #25,#27,#20,#2c,#27,#20,#25,#27
	db #20,#2c,#27,#20,#25,#27,#20,#2c
	db #27,#20,#25,#27,#20,#2a,#27,#20
	db #25,#27,#20,#2a,#27,#20,#25,#27
	db #20,#2a,#27,#20,#25,#27,#20,#2a
	db #27,#20,#25,#27,#20,#29,#27,#20
	db #25,#27,#20,#29,#27,#20,#25,#27
	db #20,#2a,#27,#20,#25,#27,#20,#2a
	db #27,#20,#25,#27,#20,#27,#25,#20
	db #25,#27,#20,#27,#25,#20,#25,#27
	db #20,#27,#25,#20,#25,#27,#20,#27
	db #25,#20,#25,#27,#35,#22,#22,#22
	db #1f,#1f,#1f,#1f,#35,#1f,#1f,#20
	db #1f,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #35,#35,#1e,#1f,#20,#22,#22,#22
	db #1f,#1f,#1f,#1f,#35,#1f,#1f,#20
	db #1f,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #35,#35,#1e,#1f,#20,#25,#25,#25
	db #20,#20,#20,#20,#20,#20,#20,#25
	db #24,#27,#27,#27,#20,#20,#20,#20
	db #20,#22,#24,#27,#25,#29,#29,#29
	db #25,#25,#25,#25,#25,#25,#27,#29
	db #2c,#27,#27,#27,#27,#27,#27,#27
	db #27,#27,#35,#35,#35,#2c,#2c,#2c
	db #27,#27,#27,#27,#35,#35,#27,#25
	db #24,#25,#25,#25,#25,#25,#25,#35
	db #35,#35,#35,#2e,#30,#2c,#2c,#2c
	db #27,#27,#27,#27,#27,#35,#27,#25
	db #24,#20,#20,#20,#20,#20,#20,#35
	db #35,#35,#35,#2e,#30,#2c,#2c,#2c
	db #27,#27,#27,#27,#27,#35,#27,#25
	db #24,#25,#25,#25,#25,#25,#25,#35
	db #35,#35,#35,#2e,#30,#2c,#2c,#2c
	db #27,#27,#27,#27,#27,#35,#27,#25
	db #24,#20,#20,#20,#20,#20,#20,#35
	db #35,#35,#35,#35,#35,#2c,#2c,#27
	db #2c,#2c,#2e,#2f,#2f,#2c,#2e,#2e
	db #2f,#2c,#2c,#27,#2c,#2c,#2e,#2f
	db #2f,#2c,#2e,#2e,#2f,#2c,#2c,#27
	db #2c,#2c,#2e,#2f,#2f,#2c,#2e,#2e
	db #2f,#2c,#2c,#27,#2c,#2c,#2e,#2f
.l7da7 equ $ + 6
	db #2f,#2c,#2e,#2e,#2f,#3f,#35,#08
	db #35,#08,#0b,#35,#0b,#08,#35,#08
	db #03,#04,#06,#08,#35,#08,#0b,#35
	db #0b,#08,#35,#08,#03,#04,#06,#08
	db #35,#08,#0b,#35,#0b,#08,#35,#08
	db #03,#04,#06,#08,#35,#08,#0b,#35
.l7dd8 equ $ + 7
	db #0b,#08,#35,#08,#03,#04,#06,#08
	db #35,#08,#14,#35,#14,#08,#35,#08
	db #14,#35,#14,#08,#35,#08,#14,#35
	db #14,#08,#35,#08,#14,#35,#14,#06
	db #35,#06,#12,#35,#12,#06,#35,#06
	db #12,#35,#12,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#05
	db #35,#05,#11,#35,#11,#05,#35,#05
	db #11,#35,#11,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#01
	db #35,#01,#0d,#35,#0d,#01,#35,#01
	db #0d,#35,#0d,#01,#35,#01,#0d,#35
	db #0d,#01,#35,#01,#0d,#35,#0d,#08
	db #35,#08,#14,#35,#14,#08,#35,#08
	db #14,#35,#14,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#05
	db #35,#05,#11,#35,#11,#05,#35,#05
	db #11,#35,#11,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#08
	db #35,#08,#14,#35,#14,#08,#35,#08
	db #14,#35,#14,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#05
	db #35,#05,#11,#35,#11,#05,#35,#05
	db #11,#35,#11,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#08
	db #35,#08,#14,#35,#14,#08,#35,#08
	db #14,#35,#14,#08,#35,#08,#14,#35
	db #14,#08,#35,#08,#14,#35,#14,#06
	db #35,#06,#12,#35,#12,#06,#35,#06
	db #12,#35,#12,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#05
	db #35,#05,#11,#35,#11,#05,#35,#05
	db #11,#35,#11,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#01
	db #35,#01,#0d,#35,#0d,#01,#35,#01
	db #0d,#35,#0d,#01,#35,#01,#0d,#35
	db #0d,#01,#35,#01,#0d,#35,#0d,#03
	db #35,#03,#0f,#35,#0f,#03,#35,#03
	db #0f,#35,#0f,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#03
	db #35,#03,#0f,#35,#0f,#03,#35,#03
	db #0f,#35,#0f,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#01
	db #35,#01,#0d,#35,#0d,#01,#35,#01
	db #0d,#35,#0d,#08,#35,#08,#14,#35
	db #14,#08,#35,#08,#14,#35,#14,#01
	db #35,#01,#0d,#35,#0d,#01,#35,#01
	db #0d,#35,#0d,#08,#35,#08,#14,#35
	db #14,#08,#35,#08,#14,#35,#14,#08
	db #35,#08,#14,#35,#14,#08,#35,#08
	db #14,#35,#14,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#01
	db #35,#01,#0d,#35,#0d,#01,#35,#01
	db #0d,#35,#0d,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#08
	db #35,#08,#14,#35,#14,#08,#35,#08
	db #14,#35,#14,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#01
	db #35,#01,#0d,#35,#0d,#01,#35,#01
	db #0d,#35,#0d,#06,#35,#06,#12,#35
	db #12,#06,#35,#06,#12,#35,#12,#08
	db #08,#08,#08,#08,#08,#06,#06,#06
	db #06,#06,#06,#04,#04,#04,#04,#04
	db #04,#06,#06,#06,#06,#06,#06,#08
	db #08,#08,#08,#08,#08,#06,#06,#06
	db #06,#06,#06,#04,#04,#04,#04,#04
	db #04,#06,#06,#06,#06,#06,#06,#3f
.l7fe9
	db #00,#4f,#c5,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l801a equ $ +2
	db #00,#00,#8e,#b5
;
.music_info
	db "Tusker (1989)(System 3)()",0
	db "",0

	read "music_end.asm"
