; Music of Balldozer (1991)(Public Domain)(Jeroen Erkens)()
; Ripped by Megachur the 28/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BALLDOZE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5800
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	call #bca7
	ld hl,(l5ac5)
	ld (l59ce),hl
	ld hl,(l5ac7)
	ld (l59d0),hl
	ld hl,(l5ac9)
	ld (l59d2),hl
	xor a
	ld (l59da),a
	ld (l59db),a
	ld (l59dc),a
	inc a
	ld hl,l59f5
	call #bcbc
	ld a,#02
	ld hl,l59fc
	call #bcbc
	ld hl,l59dd
	ld b,#81
	ld de,l5855
	call #bcef
	ld hl,l59e5
	ld de,l58c9
	call #bcef
	ld hl,l59ed
	ld de,l593d
	call #bcef
	call l5855
	call l58c9
	call l593d
	ret
.l5855
	ld hl,(l59ce)
	ld a,(hl)
	cp #ff
	ret z
	cp #fd
	jp z,l58c0
	cp #fc
	jp z,l5896
	cp #fb
	jp z,l58a5
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l59ce),hl
	ld (l59b8),de
	sla a
	ld h,#00
	ld l,a
	ld de,l5a03
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l59b4),de
	ld hl,l59b1
	call #bcaa
	ld hl,l59dd
	ld a,#01
	call #bcb0
	ret
.l5896
	inc hl
	ld (l59ce),hl
	ld (l59d4),hl
	ld a,#01
	ld (l59da),a
	jp l5855
.l58a5
	ld a,(l59da)
	and a
	jp nz,l58b3
	ld hl,l59ce
	inc (hl)
	jp l5855
.l58b3
	xor a
	ld (l59da),a
	ld hl,(l59d4)
	ld (l59ce),hl
	jp l5855
.l58c0
	ld hl,(l5ac5)
	ld (l59ce),hl
	jp l5855
.l58c9
	ld hl,(l59d0)
	ld a,(hl)
	cp #ff
	ret z
	cp #fd
	jp z,l5934
	cp #fc
	jp z,l590a
	cp #fb
	jp z,l5919
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l59d0),hl
	ld (l59c1),de
	sla a
	ld h,#00
	ld l,a
	ld de,l5a03
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l59bd),de
	ld hl,l59ba
	call #bcaa
	ld hl,l59e5
	ld a,#02
	call #bcb0
	ret
.l590a
	inc hl
	ld (l59d0),hl
	ld (l59d6),hl
	ld a,#01
	ld (l59db),a
	jp l58c9
.l5919
	ld a,(l59db)
	and a
	jp nz,l5927
	ld hl,l59d0
	inc (hl)
	jp l58c9
.l5927
	xor a
	ld (l59db),a
	ld hl,(l59d6)
	ld (l59d0),hl
	jp l58c9
.l5934
	ld hl,(l5ac7)
	ld (l59d0),hl
	jp l58c9
;
.play_music_interrupt
.l593d			; play music interrupt
;
	ld hl,(l59d2)
	ld a,(hl)
	cp #ff
	ret z
	cp #fd
	jp z,l59a8
	cp #fc
	jp z,l597e
	cp #fb
	jp z,l598d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l59d2),hl
	ld (l59ca),de
	sla a
	ld h,#00
	ld l,a
	ld de,l5a03
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l59c6),de
	ld hl,l59c3
	call #bcaa
	ld hl,l59ed
	ld a,#04
	call #bcb0
	ret
.l597e
	inc hl
	ld (l59d2),hl
	ld (l59d8),hl
	ld a,#01
	ld (l59dc),a
	jp l593d
.l598d
	ld a,(l59dc)
	and a
	jp nz,l599b
	ld hl,l59d2
	inc (hl)
	jp l593d
.l599b
	xor a
	ld (l59dc),a
	ld hl,(l59d8)
	ld (l59d2),hl
	jp l593d
.l59a8
	ld hl,(l5ac9)
	ld (l59d2),hl
	jp l593d
.l59b8 equ $ + 7
.l59b4 equ $ + 3
.l59b1
	db #01,#01,#00,#be,#00,#00,#0c,#28
.l59bd equ $ + 4
.l59ba equ $ + 1
	db #00,#02,#01,#00,#7b,#01,#00,#0c
.l59c6 equ $ + 5
.l59c3 equ $ + 2
.l59c1
	db #28,#00,#04,#02,#00,#f6,#02,#00
.l59ca equ $ + 1
	db #0c,#14,#00,#00,#00
.l59d4 equ $ + 6
.l59d2 equ $ + 4
.l59d0 equ $ + 2
.l59ce
	dw l5ad4,l5bc7,l5e62,l5b7d
.l59d8 equ $ + 2
.l59d6
	dw l5c70,l5da8
.l59dd equ $ + 3
.l59dc equ $ + 2
.l59db equ $ + 1
.l59da
	db #00,#00,#00,#00,#00,#00,#81
	ld d,l
	ld e,b
.l59e5 equ $ + 2
	db #00,#00,#00,#00,#00,#81
	ret
	ld e,b
.l59ed equ $ + 2
	db #00,#00,#00,#00,#00,#81
	dec a
	ld e,c
.l59f5 equ $ + 2
	db #00,#00,#02,#03,#05,#01,#0f,#ff
.l59fc equ $ + 1
	db #1e,#02,#03,#01,#02,#04,#ff,#01
.l5a03
	db #00,#00
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
.l5ac9 equ $ + 4
.l5ac7 equ $ + 2
.l5ac5
	dw l5acb,l5bbe,l5cf6
.l5acb
	db #31,#1e,#00,#33,#14,#00,#35,#28
.l5ad4 equ $ + 1
	db #00,#34,#14,#00,#35,#28,#00,#34
	db #14,#00,#35,#28,#00,#00,#14,#00
	db #35,#28,#00,#36,#14,#00,#35,#28
	db #00,#33,#0a,#00,#00,#0a,#00,#33
	db #28,#00,#32,#14,#00,#33,#28,#00
	db #00,#14,#00,#33,#28,#00,#35,#14
	db #00,#36,#28,#00,#35,#14,#00,#36
	db #28,#00,#35,#14,#00,#36,#28,#00
	db #00,#14,#00,#38,#28,#00,#36,#14
	db #00,#35,#50,#00,#00,#28,#00,#35
	db #28,#00,#36,#14,#00,#38,#28,#00
	db #37,#14,#00,#38,#28,#00,#37,#14
	db #00,#38,#28,#00,#00,#14,#00,#3a
	db #28,#00,#38,#0a,#00,#00,#0a,#00
	db #38,#28,#00,#36,#0a,#00,#00,#0a
	db #00,#36,#28,#00,#35,#14,#00,#36
	db #28,#00,#00,#14,#00,#36,#1e,#00
	db #00,#0a,#00,#36,#14,#00,#35,#28
	db #00,#33,#14,#00,#31,#28,#00,#35
	db #14,#00,#33,#28,#00,#31,#14,#00
	db #30,#28,#00,#31,#14,#00,#2e,#64
.l5b7d equ $ + 2
	db #00,#fc,#00,#14,#00,#35,#3c,#00
	db #3a,#b4,#00,#35,#3c,#00,#3c,#b4
	db #00,#35,#3c,#00,#3c,#b4,#00,#35
	db #3c,#00,#3a,#b4,#00,#35,#3c,#00
	db #3a,#3c,#00,#39,#3c,#00,#3a,#3c
	db #00,#3e,#3c,#00,#3c,#3c,#00,#3b
	db #3c,#00,#3c,#3c,#00,#3e,#3c,#00
	db #41,#78,#00,#40,#78,#00,#41,#a0
.l5bbe equ $ + 3
	db #00,#fb,#fd,#25,#1e,#00,#27,#14
.l5bc7 equ $ + 4
	db #00,#29,#28,#00,#28,#14,#00,#29
	db #28,#00,#28,#14,#00,#29,#28,#00
	db #00,#14,#00,#29,#28,#00,#2a,#14
	db #00,#29,#28,#00,#27,#0a,#00,#00
	db #0a,#00,#27,#28,#00,#26,#14,#00
	db #27,#28,#00,#00,#14,#00,#27,#28
	db #00,#29,#14,#00,#2a,#28,#00,#29
	db #14,#00,#2a,#28,#00,#29,#14,#00
	db #2a,#28,#00,#00,#14,#00,#2c,#28
	db #00,#2a,#14,#00,#29,#50,#00,#00
	db #28,#00,#29,#28,#00,#2a,#14,#00
	db #2c,#28,#00,#2b,#14,#00,#2c,#28
	db #00,#2b,#14,#00,#2c,#32,#00,#00
	db #0a,#00,#2e,#28,#00,#2c,#0a,#00
	db #00,#0a,#00,#2c,#28,#00,#2a,#0a
	db #00,#00,#0a,#00,#2a,#28,#00,#29
	db #14,#00,#2a,#28,#00,#00,#14,#00
	db #2a,#1e,#00,#00,#0a,#00,#2a,#14
	db #00,#29,#28,#00,#27,#14,#00,#25
	db #28,#00,#29,#14,#00,#27,#28,#00
	db #25,#14,#00,#24,#28,#00,#25,#14
.l5c70 equ $ + 5
	db #00,#22,#64,#00,#fc,#00,#8c,#00
	db #46,#0a,#00,#00,#0a,#00,#46,#0a
	db #00,#00,#0a,#00,#46,#0a,#00,#00
	db #0a,#00,#46,#3c,#00,#00,#78,#00
	db #48,#0a,#00,#00,#0a,#00,#48,#0a
	db #00,#00,#0a,#00,#48,#0a,#00,#00
	db #0a,#00,#48,#3c,#00,#00,#78,#00
	db #48,#0a,#00,#00,#0a,#00,#48,#0a
	db #00,#00,#0a,#00,#48,#0a,#00,#00
	db #0a,#00,#48,#3c,#00,#00,#78,#00
	db #46,#0a,#00,#00,#0a,#00,#46,#0a
	db #00,#00,#0a,#00,#46,#0a,#00,#00
	db #0a,#00,#46,#3c,#00,#41,#3c,#00
	db #46,#3c,#00,#45,#3c,#00,#46,#3c
	db #00,#4a,#3c,#00,#48,#3c,#00,#47
	db #3c,#00,#48,#3c,#00,#4a,#3c,#00
	db #4d,#78,#00,#4c,#78,#00,#4d,#a0
.l5cf6 equ $ + 3
	db #00,#fb,#fd,#00,#32,#00,#1d,#14
	db #00,#00,#28,#00,#1d,#14,#00,#00
	db #28,#00,#1d,#14,#00,#00,#28,#00
	db #1d,#14,#00,#00,#28,#00,#1d,#14
	db #00,#00,#28,#00,#1b,#14,#00,#00
	db #28,#00,#1b,#14,#00,#00,#28,#00
	db #1b,#14,#00,#00,#28,#00,#1e,#14
	db #00,#00,#28,#00,#1e,#14,#00,#00
	db #28,#00,#1e,#14,#00,#00,#28,#00
	db #20,#14,#00,#00,#28,#00,#1d,#14
	db #00,#00,#28,#00,#1d,#14,#00,#00
	db #28,#00,#1d,#14,#00,#00,#28,#00
	db #20,#14,#00,#00,#28,#00,#20,#14
	db #00,#00,#28,#00,#20,#14,#00,#00
	db #28,#00,#22,#14,#00,#00,#28,#00
	db #20,#14,#00,#00,#28,#00,#1e,#14
	db #00,#00,#28,#00,#1e,#14,#00,#00
	db #28,#00,#1e,#14,#00,#00,#28,#00
	db #1d,#14,#00,#00,#28,#00,#19,#14
	db #00,#00,#28,#00,#1b,#14,#00,#00
	db #28,#00,#18,#14,#00,#00,#28,#00
	db #16,#14,#00,#00,#28,#00,#16,#14
.l5da8 equ $ + 5
	db #00,#00,#14,#00,#fc,#00,#14,#00
	db #1d,#14,#00,#00,#28,#00,#22,#14
	db #00,#00,#28,#00,#22,#14,#00,#00
	db #28,#00,#22,#14,#00,#00,#28,#00
	db #1d,#14,#00,#00,#28,#00,#24,#14
	db #00,#00,#28,#00,#24,#14,#00,#00
	db #28,#00,#24,#14,#00,#00,#28,#00
	db #1d,#14,#00,#00,#28,#00,#24,#14
	db #00,#00,#28,#00,#24,#14,#00,#00
	db #28,#00,#24,#14,#00,#00,#28,#00
	db #1d,#14,#00,#00,#28,#00,#22,#14
	db #00,#00,#28,#00,#22,#14,#00,#00
	db #28,#00,#22,#14,#00,#00,#28,#00
	db #11,#14,#00,#00,#28,#00,#16,#14
	db #00,#00,#28,#00,#15,#14,#00,#00
	db #28,#00,#16,#14,#00,#00,#28,#00
	db #1a,#14,#00,#00,#28,#00,#18,#14
	db #00,#00,#28,#00,#17,#14,#00,#00
	db #28,#00,#18,#14,#00,#00,#28,#00
	db #1a,#14,#00,#00,#28,#00,#1d,#14
	db #00,#00,#28,#00,#1d,#14,#00,#00
	db #28,#00,#1c,#14,#00,#00,#28,#00
	db #1c,#14,#00,#00,#28,#00,#1d,#14
.l5e62 equ $ + 7
	db #00,#00,#28,#00,#1d,#14,#00,#00
	db #28,#00,#1d,#14,#00,#00,#14,#00
	db #fb,#fd,#00,#00
;
; #4458
; call #5800	; init and init play interrupt
;
.music_info
	db "Balldozer (1991)(Public Domain)(Jeroen Erkens)",0
	db "",0

	read "music_end.asm"