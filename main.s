	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	ldr	r3, .L14
	ldrh	r2, [r3, #2]
	cmp	r2, #1
	push	{r4, lr}
	strh	ip, [r3, #8]	@ movhi
	beq	.L13
.L3:
	ldr	r3, .L14+4
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L6
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	ble	.L6
	mov	r2, #0
	ldr	r1, .L14+8
	ldr	r0, .L14+12
	ldr	r1, [r1]
	strh	r2, [r0, #6]	@ movhi
	str	r2, [r3, #20]
	str	r2, [r1, #32]
.L6:
	mov	r1, #1
	ldr	r3, .L14
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L13:
	ldr	r3, .L14+16
	ldr	r1, [r3, #8]
	cmp	r1, ip
	beq	.L3
	add	r0, r3, #16
	ldm	r0, {r0, r1}
	add	r1, r1, #1
	cmp	r1, r0
	str	r1, [r3, #20]
	blt	.L3
	ldm	r3, {r0, r1}
	ldr	r4, .L14+20
	str	ip, [r3, #20]
	mov	lr, pc
	bx	r4
	b	.L3
.L15:
	.align	2
.L14:
	.word	67109376
	.word	soundB
	.word	dma
	.word	67109120
	.word	soundA
	.word	playSoundA
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldrh	r1, [r0, #4]
	ldr	r3, .L18
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	ip, .L18+4
	strh	r1, [r0, #4]	@ movhi
	ldr	r1, .L18+8
	orr	r2, r2, lr
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [ip, #4092]
	bx	lr
.L19:
	.align	2
.L18:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r6, #67108864
	mov	r2, #26
	ldr	r3, .L22+4
	ldr	r1, .L22+8
	ldr	ip, .L22+12
	ldr	r4, .L22+16
	str	r2, [r3]
	mov	r0, #3
	strh	r5, [r6, #20]	@ movhi
	mov	r3, #256
	strh	r1, [r6, #8]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L22+20
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #7424
	mov	r0, #3
	ldr	r2, .L22+24
	ldr	r1, .L22+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L22+32
	ldr	r1, .L22+36
	mov	lr, pc
	bx	r4
	mov	r3, #24064
	ldr	ip, .L22+40
	strh	r3, [r6, #10]	@ movhi
	mov	r2, #100663296
	mov	r3, #1456
	mov	r0, #3
	ldr	r1, .L22+44
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L22+48
	ldr	r1, .L22+52
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+60
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L22+64
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+72
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L22+76
	ldr	r3, .L22+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+84
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	initStart
	.word	currSB
	.word	23172
	.word	hOff
	.word	DMANow
	.word	startXLPal
	.word	100679680
	.word	startXLTiles
	.word	100716544
	.word	startXLMap
	.word	hOff2
	.word	startBG2Tiles
	.word	100724736
	.word	startBG2Map
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	stopSounds
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r4, #67108864
	ldr	r5, .L26
	strh	r2, [r4]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L26+4
	ldr	r1, .L26+8
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L26+12
	mov	r3, #256
	ldr	r2, .L26+16
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L26+20
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	lr, #1
	ldr	r3, .L26+24
	ldrh	r1, [r4, #4]
	ldrh	r2, [r3]
	ldr	r0, .L26+28
	ldr	ip, .L26+32
	orr	r2, r2, lr
	orr	r1, r1, #8
	strh	r1, [r4, #4]	@ movhi
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	pop	{r4, r5, r6, lr}
	str	ip, [r0, #4092]
	b	goToStart
.L27:
	.align	2
.L26:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	spritesheetPal
	.word	83886592
	.word	setupSounds
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L30
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L31:
	.align	2
.L30:
	.word	buttons
	.size	lose.part.0, .-lose.part.0
	.set	extra.part.0,lose.part.0
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r1, .L34
	ldr	r3, [r1]
	push	{r4, lr}
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r0, #20]	@ movhi
	add	r3, r3, #1
	ldr	r2, .L34+4
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	hOff2
	.word	updateStart
	.word	drawStart
	.word	waitForVBlank
	.size	start, .-start
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #7936
	mov	r1, #0
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L38
	strh	r3, [r2, #8]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r4
	mov	r3, #3632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L38+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L38+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	instructionsPal
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToInstr2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstr2, %function
goToInstr2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #8064
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L42
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L42+4
	mov	lr, pc
	bx	r4
	mov	r3, #19200
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+24
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L42+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	DMANow
	.word	tilesetPal
	.word	tilesetTiles
	.word	100726784
	.word	tilemapMap
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstr2, .-goToInstr2
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r5, #67108864
	ldr	r0, .L46
	ldr	lr, .L46+4
	strh	ip, [r5, #16]	@ movhi
	ldr	r4, .L46+8
	strh	ip, [r5, #18]	@ movhi
	mov	r3, #256
	str	ip, [r0]
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L46+12
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1936
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L46+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L46+20
	ldr	r1, .L46+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L46+32
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L46+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L47:
	.align	2
.L46:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100726784
	.word	pauseMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L65
	ldr	r3, .L65+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L49
	ldr	r2, .L65+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L62
.L49:
	tst	r3, #1
	beq	.L50
	ldr	r2, .L65+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L63
.L50:
	tst	r3, #16
	beq	.L51
	ldr	r3, .L65+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L64
.L51:
	ldr	r3, .L65+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L64:
	bl	goToInstr2
	b	.L51
.L62:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L49
.L63:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L50
.L66:
	.align	2
.L65:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	waitForVBlank
	.size	instructions, .-instructions
	.align	2
	.global	instr2
	.syntax unified
	.arm
	.fpu softvfp
	.type	instr2, %function
instr2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L93
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #512
	beq	.L68
	ldr	r2, .L93+8
	ldrh	r2, [r2]
	ands	r2, r2, #512
	ldreq	ip, .L93+12
	ldreq	r1, .L93+16
	ldreq	r0, .L93+20
	strheq	r2, [ip, #2]	@ movhi
	strheq	r0, [r1]	@ movhi
.L68:
	tst	r3, #256
	beq	.L69
	ldr	r2, .L93+8
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L89
.L69:
	tst	r3, #8
	beq	.L70
	ldr	r2, .L93+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L90
.L70:
	tst	r3, #1
	beq	.L71
	ldr	r2, .L93+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L91
.L71:
	tst	r3, #32
	beq	.L72
	ldr	r3, .L93+8
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L92
.L72:
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L89:
	ldr	r0, .L93+12
	ldr	ip, .L93+28
	ldr	r2, .L93+16
	ldr	r1, .L93+32
	strh	ip, [r0, #2]	@ movhi
	strh	r1, [r2]	@ movhi
	b	.L69
.L92:
	bl	goToInstructions
	b	.L72
.L90:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L70
.L91:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L71
.L94:
	.align	2
.L93:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	100727756
	.word	100727788
	.word	4097
	.word	waitForVBlank
	.word	457
	.word	4568
	.size	instr2, .-instr2
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4864
	mov	r1, #8064
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L97
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L97+4
	mov	lr, pc
	bx	r4
	mov	r3, #4992
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L97+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L97+12
	ldr	r1, .L97+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+20
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L97+24
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+36
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L97+40
	ldr	r3, .L97+44
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r2, #4
	ldr	r1, .L97+48
	ldr	r3, .L97+52
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	DMANow
	.word	gameBGPal
	.word	gameBGTiles
	.word	100726784
	.word	gameBGMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	stopSounds
	.word	gameSong_length
	.word	gameSong_data
	.word	playSoundA
	.word	level
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L116
	ldr	r3, .L116+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L100
	ldr	r2, .L116+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L113
.L100:
	tst	r3, #4
	beq	.L101
	ldr	r2, .L116+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L114
.L101:
	tst	r3, #1
	beq	.L102
	ldr	r3, .L116+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L115
.L102:
	ldr	r3, .L116+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L115:
	bl	goToInstructions
	b	.L102
.L113:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L100
.L114:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L101
.L117:
	.align	2
.L116:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	waitForVBlank
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r2, #67108864
	mov	r3, #8064
	ldr	r0, .L120
	push	{r4, lr}
	ldr	lr, .L120+4
	strh	r3, [r2, #8]	@ movhi
	ldr	r4, .L120+8
	strh	ip, [r2, #16]	@ movhi
	mov	r3, #256
	strh	ip, [r2, #18]	@ movhi
	ldr	r1, .L120+12
	str	ip, [r0]
	mov	r2, #83886080
	mov	r0, #3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L120+16
	ldr	r1, .L120+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L120+24
	ldr	r1, .L120+28
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L120+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L120+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L120+40
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L120+44
	ldr	r3, .L120+48
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L120+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L121:
	.align	2
.L120:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	pigeonPhotoGAMEVERPal
	.word	13920
	.word	pigeonPhotoGAMEVERTiles
	.word	100726784
	.word	pigeonPhotoGAMEVERMap
	.word	hideSprites
	.word	shadowOAM
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L124
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L124+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #8064
	mov	r3, #2432
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L124+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L124+12
	ldr	r1, .L124+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L124+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L124+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L124+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L125:
	.align	2
.L124:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L142
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L127
	ldr	r3, .L142+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L138
.L127:
	ldr	r3, .L142+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L139
	ldr	r3, .L142+12
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L140
.L129:
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L130
	ldr	r3, .L142+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L141
.L130:
	ldr	r3, .L142+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L142+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L142+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L142+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L142+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L139:
	mov	r2, #67108864
	ldr	r1, .L142+36
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	mov	lr, pc
	bx	r1
	bl	goToLose
	ldr	r3, .L142+12
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L129
.L140:
	ldr	r3, .L142+36
	mov	lr, pc
	bx	r3
	bl	goToWin
	b	.L129
.L141:
	ldr	r3, .L142+36
	mov	lr, pc
	bx	r3
	bl	goToWin
	b	.L130
.L138:
	mov	r2, #67108864
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	bl	goToPause
	b	.L127
.L143:
	.align	2
.L142:
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	score
	.word	updateGame
	.word	drawGame
	.word	DMANow
	.word	shadowOAM
	.word	waitForVBlank
	.word	pauseSounds
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L146
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L147:
	.align	2
.L146:
	.word	oldButtons
	.size	lose, .-lose
	.align	2
	.global	goToExtra
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToExtra, %function
goToExtra:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L150
	push	{r4, lr}
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r0, .L150+4
	ldr	r3, .L150+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #8064
	mov	r1, #0
	ldr	r4, .L150+12
	strh	r3, [r2, #8]	@ movhi
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L150+16
	mov	lr, pc
	bx	r4
	mov	r3, #10432
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L150+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L150+24
	ldr	r1, .L150+28
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L150+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L150+40
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L151:
	.align	2
.L150:
	.word	goofyahhbeatEXTRA_length
	.word	goofyahhbeatEXTRA_data
	.word	playSoundA
	.word	DMANow
	.word	extraPal
	.word	extraTiles
	.word	100726784
	.word	extraMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	goToExtra, .-goToExtra
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L164
	ldr	r3, .L164+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L153
	ldr	r2, .L164+8
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L162
.L153:
	tst	r3, #1
	beq	.L152
	ldr	r3, .L164+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L163
.L152:
	pop	{r4, lr}
	bx	lr
.L163:
	ldr	r3, .L164+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToExtra
.L162:
	mov	r3, #67108864
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	bl	goToStart
	ldrh	r3, [r4]
	b	.L153
.L165:
	.align	2
.L164:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	pauseSounds
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L187
	mov	lr, pc
	bx	r3
	ldr	r3, .L187+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L187+8
	ldr	r6, .L187+12
	ldr	r4, .L187+16
	ldr	fp, .L187+20
	ldr	r10, .L187+24
	ldr	r9, .L187+28
	ldr	r8, .L187+32
	ldr	r7, .L187+36
.L168:
	ldrh	r2, [r4]
	ldr	r3, [r5]
	strh	r2, [r6]	@ movhi
	add	r3, r3, #1
	str	r3, [r5]
	ldrh	r3, [r8, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	fp
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r10
	ldr	r3, [r9]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L168
.L170:
	.word	.L177
	.word	.L176
	.word	.L175
	.word	.L174
	.word	.L173
	.word	.L172
	.word	.L171
	.word	.L169
.L169:
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L168
	ldr	r3, .L187+40
	mov	lr, pc
	bx	r3
	b	.L168
.L171:
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L168
	ldr	r3, .L187+44
	mov	lr, pc
	bx	r3
	b	.L168
.L172:
	ldr	r3, .L187+48
	mov	lr, pc
	bx	r3
	b	.L168
.L173:
	ldr	r3, .L187+52
	mov	lr, pc
	bx	r3
	b	.L168
.L174:
	ldr	r3, .L187+56
	mov	lr, pc
	bx	r3
	b	.L168
.L175:
	ldr	r3, .L187+60
	mov	lr, pc
	bx	r3
	b	.L168
.L176:
	ldr	r3, .L187+64
	mov	lr, pc
	bx	r3
	b	.L168
.L177:
	ldr	r3, .L187+68
	mov	lr, pc
	bx	r3
	b	.L168
.L188:
	.align	2
.L187:
	.word	mgba_open
	.word	initialize
	.word	time
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	DMANow
	.word	state
	.word	67109120
	.word	shadowOAM
	.word	extra.part.0
	.word	lose.part.0
	.word	win
	.word	game
	.word	pause
	.word	instr2
	.word	instructions
	.word	start
	.size	main, .-main
	.text
	.align	2
	.global	extra
	.syntax unified
	.arm
	.fpu softvfp
	.type	extra, %function
extra:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	extra, .-extra
	.comm	currSB,4,4
	.comm	hOff2,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	vBlankCount,4,4
	.comm	state,4,4
	.comm	time,4,4
	.comm	level,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
