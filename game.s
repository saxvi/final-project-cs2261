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
	.file	"game.c"
	.text
	.align	2
	.global	initStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #2
	mov	r2, #0
	mov	r0, #24
	mov	ip, #80
	ldr	r3, .L3
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #4]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	str	r2, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #48]
	bx	lr
.L4:
	.align	2
.L3:
	.word	player
	.size	initStart, .-initStart
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #2
	mov	r1, #24
	mov	lr, #8
	mov	ip, #16
	mov	r0, #0
	ldr	r3, .L7
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #24]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.size	initPlayer, .-initPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"player safety: %d\000"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L47
	ldr	r7, .L47+4
	ldr	lr, [r4]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #4]
	ldr	r3, [r4, #20]
	ldrh	ip, [r7]
	ldr	r8, .L47+8
	add	r6, r2, lr
	add	r9, r3, r5
	tst	ip, #32
	str	r1, [r4, #28]
	str	r1, [r8]
	sub	sp, sp, #28
	sub	r6, r6, #1
	sub	r9, r9, #1
	bne	.L28
	mov	r0, #3
	mov	r1, #1
	cmp	lr, #0
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	ble	.L28
	ldr	r0, [r4, #8]
	ldr	r1, .L47+12
	sub	r0, lr, r0
	add	r10, r0, r5, lsl #8
	ldrb	r10, [r10, r1]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L41
.L28:
	mov	r0, lr
.L10:
	tst	ip, #64
	bne	.L32
	ldr	r1, .L47+16
	ldr	r1, [r1]
	sub	r10, r1, #1
	rsbs	r1, r10, #0
	adc	r1, r1, r10
	cmp	r5, #0
	movle	r1, #0
	mov	r10, #1
	cmp	r1, #0
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	bne	.L42
.L32:
	mov	r1, r5
.L11:
	ands	r10, ip, #128
	bne	.L12
	mov	fp, #1
	str	r10, [r4, #24]
	add	r10, r3, r1
	cmp	r10, #255
	str	fp, [r4, #28]
	ble	.L43
.L12:
	tst	ip, #16
	bne	.L13
	mov	ip, #1
	mov	lr, #2
	ldr	r10, .L47+16
	ldr	r10, [r10]
	cmp	r10, ip
	str	lr, [r4, #24]
	str	ip, [r4, #28]
	beq	.L44
.L13:
	mov	lr, #1
	ldr	r6, .L47+20
	ldr	r5, [r6, #20]
	ldr	ip, [r6, #16]
	ldr	r9, [r6, #4]
	ldr	r6, [r6]
	add	r5, r5, r5, lsr #31
	add	ip, ip, ip, lsr #31
	add	r5, r9, r5, asr lr
	add	ip, r6, ip, asr lr
	str	r5, [sp, #4]
	str	ip, [sp]
	str	lr, [sp, #12]
	str	lr, [sp, #8]
	ldr	r5, .L47+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L14
	ldr	r3, .L47+28
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L45
.L14:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L15
	ldr	r5, [r4, #32]
	ldr	r3, .L47+32
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	beq	.L46
.L16:
	cmp	r5, #0
	moveq	r5, #9
	subne	r5, r5, #1
	str	r5, [r4, #32]
.L18:
	ldr	r2, .L47+36
	ldr	r3, [r2]
	cmp	r3, #15
	bgt	.L19
	ldr	r1, [r4]
	sub	r1, r1, r3
	cmp	r1, #119
	addgt	r3, r3, #2
	strgt	r3, [r2]
	cmp	r3, #0
	bgt	.L19
.L21:
	ldr	r2, .L47+40
	ldr	r3, [r2]
	cmp	r3, #95
	bgt	.L22
	ldr	r1, [r4, #4]
	sub	r1, r1, r3
	cmp	r1, #79
	addgt	r3, r3, #2
	strgt	r3, [r2]
	cmp	r3, #0
	bgt	.L22
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L22:
	ldr	r1, [r4, #4]
	sub	r1, r1, r3
	cmp	r1, #80
	suble	r3, r3, #2
	strle	r3, [r2]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L19:
	ldr	r1, [r4]
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #2
	strle	r3, [r2]
	b	.L21
.L15:
	mov	r2, #10
	str	r3, [r4, #36]
	str	r2, [r4, #32]
	b	.L18
.L46:
	ldr	r0, [r4, #36]
	ldr	r3, .L47+44
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	b	.L16
.L45:
	ldrh	r3, [r7]
	tst	r3, #512
	bne	.L14
	ldr	r1, [r8]
	rsbs	r1, r1, #1
	movcc	r1, #0
	ldr	r0, .L47+48
	ldr	r3, .L47+52
	str	r1, [r8]
	mov	lr, pc
	bx	r3
	b	.L14
.L43:
	ldr	r10, [r4, #12]
	ldr	fp, .L47+12
	str	r10, [sp, #20]
	add	r10, r10, r9
	add	lr, lr, r10, lsl #8
	ldrb	lr, [lr, fp]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	r10, r10, #8
	bne	.L12
	add	r10, r6, r10
	ldrb	lr, [r10, fp]	@ zero_extendqisi2
	cmp	lr, #0
	ldreq	r10, [sp, #20]
	addeq	r1, r1, r10
	streq	r1, [r4, #4]
	b	.L12
.L44:
	add	ip, r2, r0
	cmp	ip, #255
	bgt	.L13
	ldr	lr, [r4, #8]
	ldr	ip, .L47+12
	add	r6, lr, r6
	add	r5, r6, r5, lsl #8
	ldrb	r5, [r5, ip]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L13
	add	r6, r6, r9, lsl #8
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	addeq	r0, r0, lr
	streq	r0, [r4]
	b	.L13
.L41:
	add	r10, r0, r9, lsl #8
	ldrb	r1, [r10, r1]	@ zero_extendqisi2
	cmp	r1, #0
	streq	r0, [r4]
	beq	.L10
	b	.L28
.L42:
	ldr	r1, [r4, #12]
	ldr	r10, .L47+12
	sub	r1, r5, r1
	add	fp, lr, r1, lsl #8
	ldrb	fp, [fp, r10]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	fp, r1, #8
	bne	.L32
	add	fp, r6, fp
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	streq	r1, [r4, #4]
	beq	.L11
	b	.L32
.L48:
	.align	2
.L47:
	.word	player
	.word	buttons
	.word	safe
	.word	collisionMap1Bitmap
	.word	level
	.word	table
	.word	collision
	.word	oldButtons
	.word	1717986919
	.word	hOff
	.word	vOff
	.word	__aeabi_idivmod
	.word	.LC0
	.word	mgba_printf
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L51
	ldr	r1, .L51+4
	ldr	r3, [r2]
	ldr	r0, [r1]
	ldr	r1, .L51+8
	push	{r4, lr}
	ldr	ip, [r2, #24]
	ldr	lr, [r2, #36]
	sub	r3, r3, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r1]
	add	ip, ip, lr, lsl #5
	lsl	r3, r3, #23
	ldr	r1, .L51+12
	lsr	r3, r3, #23
	sub	r0, r0, r2
	lsl	ip, ip, #2
	orr	r2, r3, #32768
	and	r0, r0, #255
	and	ip, ip, #1020
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	ldr	r4, .L51+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #4]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	DMANow
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initPlayerS
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerS, %function
initPlayerS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initStart
	.size	initPlayerS, .-initPlayerS
	.align	2
	.global	drawPlayerS
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerS, %function
drawPlayerS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L55
	ldr	r0, .L55+4
	ldr	r2, .L55+8
	ldr	r0, [r0]
	ldr	r3, [r1]
	ldr	r2, [r2]
	sub	r3, r3, r0
	sub	r2, r2, #26
	sub	r3, r3, r2, lsl #8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [r1, #36]
	ldr	r2, [r1, #24]
	add	r2, r2, r0, lsl #5
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	ldr	r0, .L55+12
	lsl	r2, r2, #2
	and	r2, r2, #1020
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L56:
	.align	2
.L55:
	.word	player
	.word	hOff
	.word	currSB
	.word	shadowOAM
	.size	drawPlayerS, .-drawPlayerS
	.align	2
	.global	drawStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStart, %function
drawStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawPlayerS
	.size	drawStart, .-drawStart
	.align	2
	.global	initDogs
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDogs, %function
initDogs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #2
	mov	r1, #32
	mov	r4, #96
	mov	lr, #104
	mov	ip, #3
	mov	r0, #0
	ldr	r3, .L60
	stm	r3, {r4, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #40]
	pop	{r4, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	dogs
	.size	initDogs, .-initDogs
	.align	2
	.global	updateDogs
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDogs, %function
updateDogs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L102
	ldr	r9, .L102+4
	sub	sp, sp, #28
	add	fp, r4, #156
.L81:
	mov	r3, #1
	ldr	r2, .L102+8
	ldr	r10, [r2]
	ldr	r7, [r4]
	ldr	r5, [r4, #4]
	cmp	r10, #0
	mov	r2, r5
	str	r3, [r4, #28]
	str	r7, [sp, #20]
	ldr	r8, [r4, #16]
	ldr	r6, [r4, #20]
	beq	.L63
.L67:
	add	r6, r6, r5
	add	r6, r6, #1
	ldr	r1, .L102+12
	sub	r3, r7, #2
	add	r0, r3, r6, lsl #8
	ldrb	ip, [r1, r0]	@ zero_extendqisi2
	sub	r5, r5, #2
	cmp	ip, #0
	lsl	r5, r5, #8
	lsl	r6, r6, #8
	bne	.L101
	add	r3, r3, r5
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	ldreq	r0, [sp, #20]
	ldr	r3, [r4, #8]
	subeq	r0, r0, #1
	addeq	r2, r2, #1
	rsbeq	r3, r3, #0
	stmeq	r4, {r0, r2, r3}
	streq	r0, [sp, #20]
.L65:
	add	r8, r8, r7
	add	r0, r8, #1
	add	lr, r0, r6
	ldrb	r10, [r1, lr]	@ zero_extendqisi2
	ldr	lr, .L102+16
	add	r7, r5, r7
	cmp	r10, #0
	ldrb	lr, [r7, lr]	@ zero_extendqisi2
	bne	.L69
	add	r5, r0, r5
	ldrb	r1, [r1, r5]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L70
.L100:
	ldr	r0, [r4, #12]
.L71:
	cmp	ip, #0
	bne	.L74
	ldr	r1, .L102+20
	add	r8, r8, r6
	ldrb	r1, [r8, r1]	@ zero_extendqisi2
	cmp	r1, #0
	rsbeq	r0, r0, #0
	addeq	r2, r2, #1
	streq	r0, [r4, #12]
	streq	r2, [r4, #4]
.L74:
	cmp	r3, #0
	ble	.L75
	cmp	r0, #0
	movgt	r1, #2
	strgt	r1, [r4, #24]
	bgt	.L77
	movne	r1, #1
	strne	r1, [r4, #24]
.L77:
	ldr	r5, [r4, #32]
	ldr	ip, .L102+24
	sub	r5, r5, #1
	smull	r1, ip, r5, ip
	ldr	r1, [sp, #20]
	add	r3, r1, r3
	asr	r1, r5, #31
	rsb	r1, r1, ip, asr #2
	add	r1, r1, r1, lsl #2
	add	r2, r2, r0
	cmp	r5, r1, lsl #1
	str	r3, [r4]
	str	r2, [r4, #4]
	str	r5, [r4, #32]
	bne	.L79
	ldr	r0, [r4, #36]
	ldr	r3, .L102+28
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L79:
	cmp	r5, #0
	moveq	r3, #10
	streq	r3, [r4, #32]
.L68:
	add	r4, r4, #52
	cmp	r4, fp
	bne	.L81
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L101:
	ldr	r3, [r4, #8]
	b	.L65
.L63:
	stmib	sp, {r5, r8}
	str	r6, [sp, #12]
	str	r7, [sp]
	add	r2, r9, #16
	ldm	r2, {r2, r3}
	ldm	r9, {r0, r1}
	ldr	ip, .L102+32
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L66
	mov	r1, #8
	mov	r2, #16
	ldr	r3, .L102+36
	ldr	r0, .L102+40
	str	r10, [r3]
	ldr	r3, .L102+44
	str	r10, [r3]
	ldr	r3, [r0]
	stm	r9, {r1, r2}
	sub	r3, r3, #1
	str	r3, [r0]
.L66:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	ldrne	r3, [r4]
	ldrne	r2, [r4, #4]
	strne	r3, [sp, #20]
	beq	.L68
	b	.L67
.L69:
	cmp	lr, #0
	bne	.L100
	add	r5, r0, r5
	ldrb	r1, [r1, r5]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L100
.L73:
	ldr	r0, [r4, #12]
	sub	r2, r2, #1
	rsb	r0, r0, #0
	str	r2, [r4, #4]
	str	r0, [r4, #12]
	b	.L71
.L75:
	beq	.L77
	cmp	r0, #0
	movlt	r1, #0
	strlt	r1, [r4, #24]
	blt	.L77
	movne	r1, #3
	strne	r1, [r4, #24]
	b	.L77
.L70:
	rsb	r3, r3, #0
	add	r2, r2, #1
	cmp	lr, #0
	stmib	r4, {r2, r3}
	beq	.L73
	b	.L100
.L103:
	.align	2
.L102:
	.word	dogs
	.word	player
	.word	safe
	.word	collisionMap1Bitmap
	.word	collisionMap1Bitmap+2
	.word	collisionMap1Bitmap-3
	.word	1717986919
	.word	__aeabi_idivmod
	.word	collision
	.word	hOff
	.word	lives
	.word	vOff
	.size	updateDogs, .-updateDogs
	.align	2
	.global	drawDogs
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDogs, %function
drawDogs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L106
	ldr	r2, .L106+4
	str	lr, [sp, #-4]!
	ldr	r3, [r1]
	ldr	lr, [r2]
	ldr	r0, [r1, #36]
	ldr	ip, .L106+8
	ldr	r2, [r1, #24]
	sub	r3, r3, lr
	add	r0, r0, #2
	ldr	r1, [r1, #4]
	ldr	ip, [ip]
	add	r2, r2, r0, lsl #5
	lsl	r3, r3, #23
	ldr	r0, .L106+12
	lsr	r3, r3, #23
	sub	r1, r1, ip
	lsl	r2, r2, #2
	orr	r3, r3, #32768
	and	r1, r1, #255
	and	r2, r2, #1020
	strh	r3, [r0, #10]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0, #12]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L107:
	.align	2
.L106:
	.word	dogs
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawDogs, .-drawDogs
	.align	2
	.global	initToys
	.syntax unified
	.arm
	.fpu softvfp
	.type	initToys, %function
initToys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r1, .L114
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, r2
	mov	r3, r1
	mov	r0, #8
	mov	lr, #1
	b	.L112
.L110:
	add	r3, r3, #52
.L112:
	cmp	r2, #3
	add	r2, r2, #1
	str	ip, [r3, #48]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	strls	r2, [r3, #24]
	bls	.L110
	cmp	r2, #6
	str	lr, [r3, #24]
	bne	.L110
	mov	r3, #160
	mov	r8, #16
	mov	r7, #128
	mov	r6, #72
	mov	r5, #24
	mov	r4, #176
	mov	lr, #200
	mov	ip, #64
	mov	r0, #184
	mov	r2, #224
	str	r8, [r1]
	str	r7, [r1, #4]
	str	r6, [r1, #52]
	str	r5, [r1, #108]
	str	r4, [r1, #156]
	str	lr, [r1, #208]
	str	r3, [r1, #56]
	str	r3, [r1, #104]
	str	r3, [r1, #160]
	str	ip, [r1, #212]
	str	r0, [r1, #260]
	str	r2, [r1, #264]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	sToy
	.size	initToys, .-initToys
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #16384
	ldr	r4, .L118
	mov	r0, #3
	ldr	r2, .L118+4
	ldr	r1, .L118+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L118+12
	ldr	r1, .L118+16
	mov	lr, pc
	bx	r4
	mov	ip, #3
	mov	r2, #0
	mov	r1, #2
	mov	r6, #32
	mov	lr, #104
	mov	r7, #96
	mov	r4, #8
	mov	r5, #16
	mov	r0, #24
	ldr	r3, .L118+20
	str	ip, [r3]
	ldr	r3, .L118+24
	stm	r3, {r7, lr}
	str	ip, [r3, #24]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #40]
	str	r2, [r3, #28]
	ldr	r3, .L118+28
	str	r2, [r3]
	ldr	r3, .L118+32
	str	r2, [r3]
	ldr	r3, .L118+36
	str	r2, [r3]
	ldr	r3, .L118+40
	str	r2, [r3]
	ldr	r3, .L118+44
	str	r2, [r3]
	ldr	r3, .L118+48
	stm	r3, {r4, r5}
	str	r2, [r3, #24]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	bl	initToys
	mov	r2, #216
	mov	ip, #232
	mov	r0, #184
	mov	r1, #200
	ldr	r3, .L118+52
	stm	r3, {r2, ip}
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	ldr	r3, .L118+56
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	r4, [r3, #4]
	str	r5, [r3, #68]
	str	r4, [r3, #72]
	str	r4, [r3, #56]
	str	r5, [r3, #120]
	str	r4, [r3, #124]
	str	r4, [r3, #108]
	str	r2, [r3, #104]
	str	r0, [r3]
	str	r1, [r3, #52]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L119:
	.align	2
.L118:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	lives
	.word	dogs
	.word	score
	.word	carrying
	.word	safe
	.word	vOff
	.word	hOff
	.word	player
	.word	basket
	.word	life
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayerS
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerS, %function
updatePlayerS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L167
	ldrh	r3, [r7]
	ldr	r4, .L167+4
	tst	r3, #16
	str	r2, [r4, #28]
	ldr	r5, [r4]
	ldr	r6, [r4, #16]
	sub	sp, sp, #16
	and	r1, r3, #32
	bne	.L121
	mov	r0, #2
	mov	r2, #1
	str	r0, [r4, #24]
	add	r0, r5, r6
	cmp	r0, #1024
	str	r2, [r4, #28]
	blt	.L164
.L122:
	cmp	r1, #0
	bne	.L137
.L138:
	mov	r1, #3
	mov	r2, #1
	cmp	r5, #0
	str	r1, [r4, #24]
	str	r2, [r4, #28]
	ble	.L137
	tst	r3, #1
	ldr	r3, [r4, #8]
	subeq	r5, r5, r3, lsl r2
	sub	r5, r5, r3
	str	r5, [r4]
.L137:
	ldr	r8, [r4, #32]
	ldr	r3, .L167+8
	sub	r8, r8, #1
	smull	r1, r2, r3, r8
	asr	r3, r8, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r8, r3, lsl #1
	str	r8, [r4, #32]
	bne	.L126
	ldr	r0, [r4, #36]
	ldr	r3, .L167+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L126:
	cmp	r8, #0
	moveq	r3, #10
	streq	r3, [r4, #32]
.L127:
	add	r3, r6, r6, lsr #31
	ldr	r0, .L167+16
	asr	r2, r3, #1
	rsb	r3, r2, #120
	ldr	ip, [r0]
	cmp	r5, r3
	subgt	r3, ip, #26
	ldrle	r1, .L167+20
	subgt	r3, r5, r3, lsl #8
	subgt	r3, r3, #120
	ldrgt	r1, .L167+20
	ldrle	r3, [r1]
	addgt	r3, r3, r2
	strgt	r3, [r1]
	cmp	r3, #256
	ble	.L130
	mov	lr, #67108864
	add	ip, ip, #1
	lsl	r2, ip, #24
	orr	r2, r2, #1073741824
	orr	r2, r2, #8650752
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	ip, [r0]
	str	r3, [r1]
	strh	r2, [lr, #8]	@ movhi
.L131:
	cmp	ip, #29
	beq	.L134
	ldrh	r3, [r1]
	b	.L133
.L121:
	cmp	r1, #0
	movne	r3, #10
	strne	r2, [r4, #36]
	strne	r3, [r4, #32]
	bne	.L127
	b	.L138
.L130:
	cmp	r3, #0
	bgt	.L131
	mov	lr, #67108864
	sub	ip, ip, #1
	lsl	r2, ip, #24
	orr	r2, r2, #1073741824
	orr	r2, r2, #8650752
	add	r3, r3, #256
	lsr	r2, r2, #16
	cmp	ip, #29
	str	ip, [r0]
	str	r3, [r1]
	strh	r2, [lr, #8]	@ movhi
	beq	.L132
.L163:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
.L133:
	mov	r8, #67108864
	mov	lr, #21
	mov	ip, #44
	mov	r1, #90
	strh	r3, [r8, #16]	@ movhi
	ldr	r3, .L167+24
	mov	r0, r5
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	mov	r2, r6
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #4]
	ldr	r5, .L167+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L135
	ldr	r3, .L167+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L135
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L165
.L135:
	mov	r1, #90
	mov	r2, #44
	mov	r3, #21
	ldr	r0, .L167+36
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L120
	ldr	r3, .L167+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L166
.L120:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L164:
	ldr	r2, [r4, #8]
	tst	r3, #1
	addeq	r5, r5, r2, lsl #1
	add	r5, r5, r2
	str	r5, [r4]
	b	.L122
.L132:
	cmp	r3, #0
	ble	.L163
.L134:
	mov	r2, #0
	mov	r3, r2
	str	r2, [r1]
	b	.L133
.L166:
	ldr	r3, .L167+40
	mov	lr, pc
	bx	r3
	b	.L120
.L165:
	bl	initGame
	ldr	r3, .L167+44
	mov	lr, pc
	bx	r3
	b	.L135
.L168:
	.align	2
.L167:
	.word	buttons
	.word	player
	.word	1717986919
	.word	__aeabi_idivmod
	.word	currSB
	.word	hOff
	.word	390
	.word	collision
	.word	oldButtons
	.word	786
	.word	goToInstructions
	.word	goToGame
	.size	updatePlayerS, .-updatePlayerS
	.align	2
	.global	updateStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStart, %function
updateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayerS
	.size	updateStart, .-updateStart
	.align	2
	.global	updateToys
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateToys, %function
updateToys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L192
	ldr	r7, .L192+4
	ldr	r8, .L192+8
	ldr	r6, .L192+12
	ldr	fp, .L192+16
	ldr	r10, .L192+20
	sub	sp, sp, #20
	add	r9, r4, #312
	b	.L177
.L189:
	ldrh	r3, [r8]
.L172:
	tst	r3, #2
	beq	.L175
	ldrh	r2, [r10]
	ands	r5, r2, #2
	bne	.L175
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L190
.L175:
	add	r4, r4, #52
	cmp	r4, r9
	beq	.L191
.L177:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L189
	mov	r3, #8
	add	ip, r6, #16
	ldm	ip, {ip, lr}
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	mov	r2, r3
	stmib	sp, {r0, ip, lr}
	str	r1, [sp]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	ldrh	r3, [r8]
	beq	.L172
	tst	r3, #1
	beq	.L172
	ldrh	r2, [r10]
	ands	r2, r2, #1
	bne	.L172
	mov	r3, #1
	ldr	r1, .L192+24
	ldr	ip, .L192+28
	ldr	r1, [r1]
	ldr	r0, .L192+32
	ldr	r5, .L192+36
	str	r3, [r4, #28]
	str	r3, [r7]
	str	r3, [ip, #8]
	mov	lr, pc
	bx	r5
	b	.L189
.L191:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L190:
	ldr	r3, .L192+40
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L175
	mov	ip, #1
	ldr	r0, .L192+44
	ldr	r3, [r0]
	ldr	r2, .L192+48
	add	r3, r3, ip
	ldr	r1, [r2]
	str	r3, [r0]
	mov	r2, r5
	ldr	r0, .L192+52
	ldr	r3, .L192+36
	str	ip, [r4, #48]
	str	r5, [r7]
	mov	lr, pc
	bx	r3
	b	.L175
.L193:
	.align	2
.L192:
	.word	sToy
	.word	carrying
	.word	oldButtons
	.word	player
	.word	collision
	.word	buttons
	.word	meow_length
	.word	soundB
	.word	meow_data
	.word	playSoundB
	.word	basket
	.word	score
	.word	scoreUp_length
	.word	scoreUp_data
	.size	updateToys, .-updateToys
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	updateDogs
	pop	{r4, lr}
	b	updateToys
	.size	updateGame, .-updateGame
	.align	2
	.global	drawToys
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawToys, %function
drawToys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L208
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L208+4
	ldr	r4, .L208+8
	add	r1, r3, #16
	ldm	r1, {r1, lr}
	ldrh	r8, [r4]
	ldrh	r7, [r0]
	ldr	r10, [r3, #4]
	ldr	r9, [r3]
	ldr	r0, [r3, #24]
	add	lr, lr, lr, lsr #31
	add	r1, r1, r1, lsr #31
	ldr	ip, .L208+12
	rsb	lr, r8, lr, asr #1
	rsb	r1, r7, r1, asr #1
	add	lr, lr, r10
	add	r1, r1, r9
	ldr	r5, .L208+16
	ldr	r4, .L208+20
	ldr	r3, .L208+24
	add	r0, r0, #16
	sub	sp, sp, #12
	and	r1, r1, ip
	lsl	r0, r0, #16
	and	lr, lr, #255
	mov	fp, ip
	mov	r2, r5
	mov	r6, #512
	ldr	r10, [r4]
	ldr	r9, .L208+28
	str	lr, [sp]
	str	r1, [sp, #4]
	lsr	r0, r0, #16
	add	ip, r3, #312
	b	.L200
.L207:
	ldr	r1, [r3, #36]
	ldr	r4, [r3, #4]
	ldr	lr, [r3]
	lsl	r1, r1, #5
	add	r1, r1, #16
	sub	r4, r4, r8
	sub	lr, lr, r7
	and	r1, r1, r9
	and	r4, r4, #255
	and	lr, lr, fp
	strh	r1, [r2, #36]	@ movhi
	strh	r4, [r2, #32]	@ movhi
	strh	lr, [r2, #34]	@ movhi
.L199:
	add	r3, r3, #52
	cmp	r3, ip
	add	r2, r2, #16
	beq	.L206
.L200:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	strhne	r6, [r5, #32]	@ movhi
	bne	.L199
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L207
	cmp	r10, #0
	beq	.L199
	ldr	r1, [r3, #36]
	ldr	lr, [sp]
	add	r1, r0, r1, lsl #5
	strh	lr, [r2, #32]	@ movhi
	add	r3, r3, #52
	ldr	lr, [sp, #4]
	and	r1, r1, r9
	cmp	r3, ip
	strh	lr, [r2, #34]	@ movhi
	strh	r1, [r2, #36]	@ movhi
	add	r2, r2, #16
	bne	.L200
.L206:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L209:
	.align	2
.L208:
	.word	player
	.word	hOff
	.word	vOff
	.word	511
	.word	shadowOAM
	.word	carrying
	.word	sToy
	.word	1023
	.size	drawToys, .-drawToys
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	r1, #16
	mov	lr, #184
	mov	ip, #200
	mov	r0, #216
	ldr	r3, .L212
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #68]
	str	r1, [r3, #120]
	str	ip, [r3, #52]
	str	r0, [r3, #104]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #72]
	str	r2, [r3, #56]
	str	r2, [r3, #124]
	str	r2, [r3, #108]
	ldr	lr, [sp], #4
	bx	lr
.L213:
	.align	2
.L212:
	.word	life
	.size	initLives, .-initLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L223
	ldr	r3, [r3]
	cmp	r3, #3
	push	{r4, lr}
	beq	.L220
	cmp	r3, #2
	beq	.L221
	cmp	r3, #1
	beq	.L222
	cmp	r3, #0
	bne	.L214
	ldr	r3, .L223+4
	mov	lr, pc
	bx	r3
	b	.L214
.L221:
	mov	r2, #992
	mov	lr, #184
	mov	ip, #201
	mov	r0, #512
	ldr	r3, .L223+8
	ldr	r1, .L223+12
	strh	lr, [r3, #58]	@ movhi
	strh	ip, [r3, #74]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	strh	r2, [r3, #76]	@ movhi
.L214:
	pop	{r4, lr}
	bx	lr
.L220:
	mov	r2, #992
	mov	lr, #184
	mov	ip, #201
	mov	r0, #218
	ldr	r3, .L223+8
	ldr	r1, .L223+12
	strh	lr, [r3, #58]	@ movhi
	strh	ip, [r3, #74]	@ movhi
	strh	r0, [r3, #90]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	strh	r1, [r3, #88]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	strh	r2, [r3, #76]	@ movhi
	strh	r2, [r3, #92]	@ movhi
	pop	{r4, lr}
	bx	lr
.L222:
	mov	r2, #512
	mov	ip, #184
	mov	r0, #992
	ldr	r1, .L223+16
	ldrh	lr, [r1, #14]
	ldr	r3, .L223+8
	strh	lr, [r1, #4]	@ movhi
	ldr	r1, .L223+12
	strh	ip, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
	strh	r2, [r3, #72]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	pop	{r4, lr}
	bx	lr
.L224:
	.align	2
.L223:
	.word	lives
	.word	goToLose
	.word	shadowOAM
	.word	16392
	.word	83886592
	.size	drawLives, .-drawLives
	.align	2
	.global	initBasket
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBasket, %function
initBasket:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #216
	mov	r0, #232
	mov	r1, #16
	mov	r2, #32
	ldr	r3, .L226
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r2, [r3, #16]
	bx	lr
.L227:
	.align	2
.L226:
	.word	basket
	.size	initBasket, .-initBasket
	.align	2
	.global	drawBasket
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBasket, %function
drawBasket:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L230
	ldr	r2, [r3]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mov	ip, #2432
	mvn	r2, r2, lsr #17
	push	{r4, lr}
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldr	r1, .L230+4
	orr	r0, r0, #16384
	strh	r2, [r1, #98]	@ movhi
	strh	r0, [r1, #96]	@ movhi
	ldr	r4, .L230+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #100]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L231:
	.align	2
.L230:
	.word	basket
	.word	shadowOAM
	.word	DMANow
	.size	drawBasket, .-drawBasket
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawPlayer
	bl	drawDogs
	bl	drawToys
	bl	drawLives
	bl	drawBasket
	mov	r2, #67108864
	ldr	r3, .L234
	ldrh	r1, [r3]
	ldr	r3, .L234+4
	strh	r1, [r2, #16]	@ movhi
	ldrh	r1, [r3]
	ldr	r4, .L234+8
	strh	r1, [r2, #18]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L234+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L235:
	.align	2
.L234:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	initSC
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSC, %function
initSC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	r1, #32
	ldr	r3, .L237
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #20]
	str	r1, [r3, #16]
	bx	lr
.L238:
	.align	2
.L237:
	.word	SC
	.size	initSC, .-initSC
	.align	2
	.global	drawSC
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSC, %function
drawSC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L251
	ldr	r3, [r2]
	ldrb	r0, [r2, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r1, .L251+4
	ldr	ip, .L251+8
	lsr	r3, r3, #23
	orr	r2, r3, #16384
	orr	r0, r0, #16384
	push	{r4, lr}
	mov	r3, #512
	strh	r2, [r1, #114]	@ movhi
	strh	r0, [r1, #112]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #116]	@ movhi
	ldr	r4, .L251+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L251+16
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L240
	ldr	r3, .L251+20
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L240
.L241:
	ldr	r3, .L251+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L240:
	ldr	r3, .L251+28
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L241
	pop	{r4, lr}
	bx	lr
.L252:
	.align	2
.L251:
	.word	SC
	.word	shadowOAM
	.word	994
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	goToWin
	.word	score
	.size	drawSC, .-drawSC
	.align	2
	.global	initPoints
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPoints, %function
initPoints:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	r1, #32
	ldr	r3, .L254
	stm	r3, {r1, r2}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L255:
	.align	2
.L254:
	.word	points
	.size	initPoints, .-initPoints
	.align	2
	.global	drawPoints
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPoints, %function
drawPoints:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L265
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L257
	ldr	r2, .L265+4
	ldr	r3, [r2]
	ldrb	r0, [r2, #4]	@ zero_extendqisi2
	ldr	r1, .L265+8
	ldr	r2, .L265+12
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	strh	r3, [r2, #122]	@ movhi
	strh	r0, [r2, #120]	@ movhi
	strh	r1, [r2, #124]	@ movhi
	bx	lr
.L257:
	cmp	r3, #9
	bgt	.L259
	ldr	r0, .L265+4
	ldr	r2, [r0]
	add	r3, r3, #996
	add	r3, r3, #1
	add	r2, r2, #8
	ldr	r1, .L265+12
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	lsl	r3, r3, #22
	lsl	r2, r2, #23
	lsr	r3, r3, #22
	lsr	r2, r2, #23
	strh	r3, [r1, #124]	@ movhi
	strh	r0, [r1, #120]	@ movhi
	strh	r2, [r1, #122]	@ movhi
	bx	lr
.L259:
	sub	r2, r3, #11
	cmp	r2, #8
	str	lr, [sp, #-4]!
	bls	.L264
	cmp	r3, #20
	ble	.L256
	ldr	r2, .L265+4
	add	r3, r3, #984
	ldrh	r1, [r2]
	add	r3, r3, #3
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	ldr	lr, .L265+16
	ldr	r2, .L265+12
	lsl	r3, r3, #22
	add	r0, r1, #8
	lsr	r3, r3, #22
	and	r1, r1, lr
	and	r0, r0, lr
	strh	r3, [r2, #132]	@ movhi
	add	lr, lr, #488
	orr	r3, ip, #8192
	strh	ip, [r2, #128]	@ movhi
	strh	r3, [r2, #120]	@ movhi
	strh	r1, [r2, #122]	@ movhi
	strh	r0, [r2, #130]	@ movhi
	strh	lr, [r2, #124]	@ movhi
.L256:
	ldr	lr, [sp], #4
	bx	lr
.L264:
	ldr	r0, .L265+4
	ldrh	r1, [r0]
	ldr	lr, .L265+16
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	add	r0, r1, #8
	ldr	r2, .L265+12
	and	r1, r1, lr
	and	r0, r0, lr
	add	r3, r3, #984
	ldr	lr, .L265+20
	add	r3, r3, #3
	strh	lr, [r2, #124]	@ movhi
	strh	r3, [r2, #132]	@ movhi
	strh	ip, [r2, #120]	@ movhi
	strh	ip, [r2, #128]	@ movhi
	strh	r1, [r2, #122]	@ movhi
	strh	r0, [r2, #130]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L266:
	.align	2
.L265:
	.word	score
	.word	points
	.word	1007
	.word	shadowOAM
	.word	511
	.word	998
	.size	drawPoints, .-drawPoints
	.align	2
	.global	initTable
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTable, %function
initTable:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L269
	ldr	r3, [r3]
	cmp	r3, #1
	bxne	lr
	mov	ip, #128
	mov	r0, #168
	mov	r1, #32
	mov	r2, #64
	ldr	r3, .L269+4
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L270:
	.align	2
.L269:
	.word	level
	.word	table
	.size	initTable, .-initTable
	.align	2
	.global	drawTable
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTable, %function
drawTable:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L272
	ldr	r3, [r2]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mov	r0, #356
	mvn	r3, r3, lsr #18
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldr	r2, .L272+4
	orr	r1, r1, #40960
	strh	r3, [r2, #138]	@ movhi
	strh	r1, [r2, #136]	@ movhi
	strh	r0, [r2, #140]	@ movhi
	bx	lr
.L273:
	.align	2
.L272:
	.word	table
	.word	shadowOAM
	.size	drawTable, .-drawTable
	.comm	lToy,104,4
	.comm	mToy,156,4
	.comm	sToy,312,4
	.comm	dogs,156,4
	.comm	player,52,4
	.comm	life,156,4
	.comm	points,52,4
	.comm	SC,52,4
	.comm	table,52,4
	.comm	basket,52,4
	.comm	safe,4,4
	.comm	carrying,4,4
	.comm	level,4,4
	.comm	score,4,4
	.comm	lives,4,4
	.comm	currSB,4,4
	.comm	shadowOAM,1024,4
	.comm	hOff2,4,4
	.comm	time,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
