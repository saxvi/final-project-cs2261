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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCheat.part.0, %function
drawCheat.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L3
	ldr	r1, .L3+4
	ldr	r0, .L3+8
	ldr	r1, [r1]
	ldr	r3, [r2]
	ldr	r0, [r0]
	ldr	r2, [r2, #4]
	sub	r3, r3, r1
	ldr	r1, .L3+12
	sub	r2, r2, r0
	ldr	ip, .L3+16
	lsl	r3, r3, #23
	add	r0, r1, #256
	lsr	r3, r3, #23
	add	r1, r1, #260
	and	r2, r2, #255
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	ip, [r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	cheat
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	4144
	.size	drawCheat.part.0, .-drawCheat.part.0
	.align	2
	.global	initStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #24
	str	lr, [sp, #-4]!
	mov	r1, #2
	mov	r2, #0
	mov	lr, #80
	mov	ip, #10
	ldr	r3, .L7
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	ldr	r0, .L7+4
	str	lr, [r3, #4]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	str	r2, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #48]
	str	ip, [r0]
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.word	aniSpeed
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
	mov	r1, #24
	push	{r4, lr}
	mov	r2, #2
	mov	r4, #8
	mov	lr, #16
	mov	ip, #0
	mov	r0, #10
	ldr	r3, .L11
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	ldr	r1, .L11+4
	str	r4, [r3]
	str	lr, [r3, #4]
	str	ip, [r3, #24]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r0, [r1]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	player
	.word	aniSpeed
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
	ldr	r4, .L52
	ldr	r7, .L52+4
	ldr	lr, [r4]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #4]
	ldr	r3, [r4, #20]
	ldrh	ip, [r7]
	ldr	r8, .L52+8
	add	r6, r2, lr
	add	r9, r3, r5
	tst	ip, #32
	str	r1, [r4, #28]
	str	r1, [r8]
	sub	sp, sp, #28
	sub	r6, r6, #1
	sub	r9, r9, #1
	bne	.L32
	mov	r0, #3
	mov	r1, #1
	cmp	lr, #0
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	ble	.L32
	ldr	r0, [r4, #8]
	ldr	r1, .L52+12
	sub	r0, lr, r0
	add	r10, r0, r5, lsl #8
	ldrb	r10, [r10, r1]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L46
.L32:
	mov	r0, lr
.L14:
	tst	ip, #64
	bne	.L36
	ldr	r1, .L52+16
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
	bne	.L47
.L36:
	mov	r1, r5
.L15:
	ands	r10, ip, #128
	bne	.L16
	mov	fp, #1
	str	r10, [r4, #24]
	add	r10, r3, r1
	cmp	r10, #255
	str	fp, [r4, #28]
	ble	.L48
.L16:
	tst	ip, #16
	bne	.L17
	mov	ip, #1
	mov	lr, #2
	ldr	r10, .L52+16
	ldr	r10, [r10]
	cmp	r10, ip
	str	lr, [r4, #24]
	str	ip, [r4, #28]
	beq	.L49
.L17:
	mov	lr, #1
	ldr	r6, .L52+20
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
	ldr	r5, .L52+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L18
	ldr	r3, .L52+28
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L50
.L18:
	ldr	r2, .L52+32
	ldr	r3, [r4, #28]
	ldr	r5, [r2]
	cmp	r3, #0
	streq	r3, [r4, #36]
	streq	r5, [r4, #32]
	beq	.L22
	ldr	r6, [r4, #32]
	mov	r1, r5
	mov	r0, r6
	ldr	r7, .L52+36
	mov	lr, pc
	bx	r7
	cmp	r1, #0
	beq	.L51
.L20:
	cmp	r6, #0
	movne	r5, r6
	sub	r5, r5, #1
	str	r5, [r4, #32]
.L22:
	ldr	r2, .L52+40
	ldr	r3, [r2]
	cmp	r3, #15
	bgt	.L23
	ldr	r1, [r4]
	sub	r1, r1, r3
	cmp	r1, #119
	addgt	r3, r3, #2
	strgt	r3, [r2]
	cmp	r3, #0
	bgt	.L23
.L25:
	ldr	r2, .L52+44
	ldr	r3, [r2]
	cmp	r3, #95
	bgt	.L26
	ldr	r1, [r4, #4]
	sub	r1, r1, r3
	cmp	r1, #79
	addgt	r3, r3, #2
	strgt	r3, [r2]
	cmp	r3, #0
	bgt	.L26
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L26:
	ldr	r1, [r4, #4]
	sub	r1, r1, r3
	cmp	r1, #80
	suble	r3, r3, #2
	strle	r3, [r2]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	ldr	r1, [r4]
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #2
	strle	r3, [r2]
	b	.L25
.L51:
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r7
	str	r1, [r4, #36]
	b	.L20
.L50:
	ldrh	r3, [r7]
	tst	r3, #512
	bne	.L18
	ldr	r1, [r8]
	rsbs	r1, r1, #1
	movcc	r1, #0
	ldr	r0, .L52+48
	ldr	r3, .L52+52
	str	r1, [r8]
	mov	lr, pc
	bx	r3
	b	.L18
.L48:
	ldr	r10, [r4, #12]
	ldr	fp, .L52+12
	str	r10, [sp, #20]
	add	r10, r10, r9
	add	lr, lr, r10, lsl #8
	ldrb	lr, [lr, fp]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	r10, r10, #8
	bne	.L16
	add	r10, r6, r10
	ldrb	lr, [r10, fp]	@ zero_extendqisi2
	cmp	lr, #0
	ldreq	r10, [sp, #20]
	addeq	r1, r1, r10
	streq	r1, [r4, #4]
	b	.L16
.L49:
	add	ip, r2, r0
	cmp	ip, #255
	bgt	.L17
	ldr	lr, [r4, #8]
	ldr	ip, .L52+12
	add	r6, lr, r6
	add	r5, r6, r5, lsl #8
	ldrb	r5, [r5, ip]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L17
	add	r6, r6, r9, lsl #8
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	addeq	r0, r0, lr
	streq	r0, [r4]
	b	.L17
.L46:
	add	r10, r0, r9, lsl #8
	ldrb	r1, [r10, r1]	@ zero_extendqisi2
	cmp	r1, #0
	streq	r0, [r4]
	beq	.L14
	b	.L32
.L47:
	ldr	r1, [r4, #12]
	ldr	r10, .L52+12
	sub	r1, r5, r1
	add	fp, lr, r1, lsl #8
	ldrb	fp, [fp, r10]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	fp, r1, #8
	bne	.L36
	add	fp, r6, fp
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	streq	r1, [r4, #4]
	beq	.L15
	b	.L36
.L53:
	.align	2
.L52:
	.word	player
	.word	buttons
	.word	safe
	.word	collisionMap1Bitmap
	.word	level
	.word	table
	.word	collision
	.word	oldButtons
	.word	aniSpeed
	.word	__aeabi_idivmod
	.word	hOff
	.word	vOff
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
	ldr	r2, .L56
	ldr	r1, .L56+4
	ldr	r3, [r2]
	ldr	r0, [r1]
	ldr	r1, .L56+8
	push	{r4, lr}
	ldr	ip, [r2, #24]
	ldr	lr, [r2, #36]
	sub	r3, r3, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r1]
	add	ip, ip, lr, lsl #5
	lsl	r3, r3, #23
	ldr	r1, .L56+12
	lsr	r3, r3, #23
	sub	r0, r0, r2
	lsl	ip, ip, #2
	orr	r2, r3, #32768
	and	r0, r0, #255
	and	ip, ip, #1020
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	ldr	r4, .L56+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #4]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r1, .L60
	ldr	r0, .L60+4
	ldr	r2, .L60+8
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
	ldr	r0, .L60+12
	lsl	r2, r2, #2
	and	r2, r2, #1020
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L61:
	.align	2
.L60:
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
	push	{r4, r5, r6, r7, lr}
	mov	r1, #32
	mov	r2, #2
	mov	lr, #3
	mov	r7, #96
	mov	r6, #104
	mov	r5, #183
	mov	r4, #8
	mov	ip, #0
	mov	r0, #1
	ldr	r3, .L65
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #52]
	str	r4, [r3, #56]
	str	lr, [r3, #24]
	str	lr, [r3, #76]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #68]
	str	r1, [r3, #72]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	ip, [r3, #28]
	str	ip, [r3, #80]
	str	r0, [r3, #60]
	str	r0, [r3, #64]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L66:
	.align	2
.L65:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L101
	ldr	fp, .L101+4
	ldr	r10, .L101+8
	sub	sp, sp, #20
.L83:
	mov	r3, #1
	ldr	r9, [fp]
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	cmp	r9, #0
	mov	r1, r7
	mov	r2, r6
	str	r3, [r4, #28]
	ldr	r8, [r4, #16]
	ldr	r5, [r4, #20]
	beq	.L68
.L72:
	add	r5, r5, r6
	ldr	ip, .L101+12
	sub	r3, r7, #2
	add	r0, r3, r5, lsl #8
	ldrb	r0, [ip, r0]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	r5, r5, #8
	bne	.L100
	sub	r0, r6, #1
	add	r3, r3, r0, lsl #8
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	ldr	r0, [r4, #8]
	cmp	r3, #0
	rsbeq	r0, r0, #0
	streq	r0, [r4, #8]
.L70:
	add	r8, r8, r7
	add	r3, r8, #1
	add	lr, r3, r5
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L74
	sub	lr, r6, #1
	add	r3, r3, lr, lsl #8
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	cmp	r3, #0
	rsbeq	r0, r0, #0
	streq	r0, [r4, #8]
.L74:
	sub	r3, r6, #2
	add	r7, r7, #3
	add	lr, r7, r3, lsl #8
	ldrb	lr, [ip, lr]	@ zero_extendqisi2
	cmp	lr, #0
	lsl	r3, r3, #8
	beq	.L96
	ldr	lr, [r4, #12]
.L75:
	add	r5, r5, #256
	add	r7, r7, r5
	ldrb	r3, [ip, r7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L76
	add	r8, r8, r5
	ldrb	r3, [ip, r8]	@ zero_extendqisi2
	cmp	r3, #0
	rsbeq	lr, lr, #0
	streq	lr, [r4, #12]
.L76:
	cmp	r0, #0
	ble	.L77
	cmp	lr, #0
	movgt	r3, #2
	strgt	r3, [r4, #24]
	bgt	.L79
	movne	r3, #1
	strne	r3, [r4, #24]
.L79:
	ldr	r5, [r4, #32]
	ldr	ip, .L101+16
	sub	r5, r5, #1
	smull	r3, ip, r5, ip
	asr	r3, r5, #31
	rsb	r3, r3, ip, asr #2
	add	r3, r3, r3, lsl #2
	add	r1, r1, r0
	add	r2, r2, lr
	cmp	r5, r3, lsl #1
	stm	r4, {r1, r2}
	str	r5, [r4, #32]
	bne	.L81
	ldr	r0, [r4, #36]
	ldr	r3, .L101+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L81:
	cmp	r5, #0
	moveq	r3, #10
	streq	r3, [r4, #32]
.L73:
	ldr	r3, .L101+24
	add	r4, r4, #52
	cmp	r4, r3
	bne	.L83
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L100:
	ldr	r0, [r4, #8]
	b	.L70
.L68:
	stmib	sp, {r6, r8}
	str	r5, [sp, #12]
	str	r7, [sp]
	add	r2, r10, #16
	ldm	r2, {r2, r3}
	ldm	r10, {r0, r1}
	ldr	ip, .L101+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L71
	mov	r1, #8
	mov	r2, #16
	ldr	r3, .L101+32
	ldr	r0, .L101+36
	str	r9, [r3]
	ldr	r3, .L101+40
	str	r9, [r3]
	ldr	r3, [r0]
	stm	r10, {r1, r2}
	sub	r3, r3, #1
	str	r3, [r0]
.L71:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L73
	ldm	r4, {r1, r2}
	b	.L72
.L96:
	add	r3, r8, r3
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	ldr	lr, [r4, #12]
	cmp	r3, #0
	rsbeq	lr, lr, #0
	streq	lr, [r4, #12]
	b	.L75
.L77:
	beq	.L79
	cmp	lr, #0
	movlt	r3, #0
	strlt	r3, [r4, #24]
	blt	.L79
	movne	r3, #3
	strne	r3, [r4, #24]
	b	.L79
.L102:
	.align	2
.L101:
	.word	dogs
	.word	safe
	.word	player
	.word	collisionMap1Bitmap
	.word	1717986919
	.word	__aeabi_idivmod
	.word	dogs+156
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L105
	ldr	r1, .L105+4
	ldr	r0, [r5, #88]
	ldr	lr, [r5, #36]
	ldr	r3, [r5, #76]
	ldr	r2, .L105+8
	ldrh	r6, [r1]
	ldr	ip, [r5, #52]
	ldrh	r2, [r2]
	ldr	r1, [r5]
	add	r3, r3, r0, lsl #5
	add	r0, lr, #2
	ldr	lr, [r5, #24]
	sub	r1, r1, r2
	add	lr, lr, r0, lsl #5
	sub	r2, ip, r2
	ldr	r0, [r5, #56]
	ldr	ip, [r5, #4]
	add	r3, r3, #68
	ldr	r5, .L105+12
	lsl	r3, r3, #2
	ldr	r4, .L105+16
	sub	ip, ip, r6
	sub	r0, r0, r6
	and	r1, r1, r5
	and	r2, r2, r5
	and	r3, r3, #1020
	lsl	lr, lr, #2
	and	lr, lr, #1020
	orr	r3, r3, #4096
	and	ip, ip, #255
	and	r0, r0, #255
	orr	r1, r1, #32768
	orr	r2, r2, #32768
	strh	r3, [r4, #20]	@ movhi
	strh	ip, [r4, #8]	@ movhi
	strh	r0, [r4, #16]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	strh	lr, [r4, #12]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	dogs
	.word	vOff
	.word	hOff
	.word	511
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
	ldr	r1, .L113
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, r2
	mov	r3, r1
	mov	r0, #8
	mov	lr, #1
	b	.L111
.L109:
	add	r3, r3, #52
.L111:
	cmp	r2, #3
	add	r2, r2, #1
	str	ip, [r3, #48]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	strls	r2, [r3, #24]
	bls	.L109
	cmp	r2, #6
	str	lr, [r3, #24]
	bne	.L109
	mov	r2, #16
	mov	r8, #128
	mov	r7, #72
	mov	r6, #160
	mov	r5, #163
	mov	r4, #24
	mov	lr, #192
	mov	r3, #200
	mov	ip, #64
	mov	r0, #208
	str	r8, [r1, #4]
	str	r7, [r1, #52]
	str	r6, [r1, #56]
	str	r5, [r1, #104]
	str	r4, [r1, #108]
	str	lr, [r1, #156]
	str	r2, [r1]
	str	r2, [r1, #260]
	str	r3, [r1, #160]
	str	r3, [r1, #208]
	str	ip, [r1, #212]
	str	r0, [r1, #264]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	sToy
	.size	initToys, .-initToys
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
	ldr	r4, .L137
	ldr	r7, .L137+4
	ldr	r8, .L137+8
	ldr	r6, .L137+12
	ldr	fp, .L137+16
	ldr	r10, .L137+20
	sub	sp, sp, #20
	add	r9, r4, #312
	b	.L122
.L134:
	ldrh	r3, [r8]
.L117:
	tst	r3, #2
	beq	.L120
	ldrh	r2, [r10]
	ands	r5, r2, #2
	bne	.L120
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L135
.L120:
	add	r4, r4, #52
	cmp	r4, r9
	beq	.L136
.L122:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L134
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
	beq	.L117
	tst	r3, #1
	beq	.L117
	ldrh	r2, [r10]
	ands	r2, r2, #1
	bne	.L117
	mov	r3, #1
	ldr	r1, .L137+24
	ldr	ip, .L137+28
	ldr	r1, [r1]
	ldr	r0, .L137+32
	ldr	r5, .L137+36
	str	r3, [r4, #28]
	str	r3, [r7]
	str	r3, [ip, #8]
	mov	lr, pc
	bx	r5
	b	.L134
.L136:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L135:
	ldr	r3, .L137+40
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
	beq	.L120
	mov	ip, #1
	ldr	r0, .L137+44
	ldr	r3, [r0]
	ldr	r2, .L137+48
	add	r3, r3, ip
	ldr	r1, [r2]
	str	r3, [r0]
	mov	r2, r5
	ldr	r0, .L137+52
	ldr	r3, .L137+36
	str	ip, [r4, #48]
	str	r5, [r7]
	mov	lr, pc
	bx	r3
	b	.L120
.L138:
	.align	2
.L137:
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
	.global	drawToys
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawToys, %function
drawToys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L151
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L151+4
	ldr	r4, .L151+8
	add	r1, r3, #16
	ldm	r1, {r1, lr}
	ldrh	r8, [r4]
	ldrh	r7, [r0]
	ldr	r10, [r3, #4]
	ldr	r9, [r3]
	ldr	r0, [r3, #24]
	add	lr, lr, lr, lsr #31
	add	r1, r1, r1, lsr #31
	ldr	ip, .L151+12
	rsb	lr, r8, lr, asr #1
	rsb	r1, r7, r1, asr #1
	add	lr, lr, r10
	add	r1, r1, r9
	ldr	r5, .L151+16
	ldr	r4, .L151+20
	ldr	r3, .L151+24
	add	r0, r0, #16
	sub	sp, sp, #12
	and	r1, r1, ip
	lsl	r0, r0, #16
	and	lr, lr, #255
	mov	fp, ip
	mov	r2, r5
	mov	r6, #512
	ldr	r10, [r4]
	ldr	r9, .L151+28
	str	lr, [sp]
	str	r1, [sp, #4]
	lsr	r0, r0, #16
	add	ip, r3, #312
	b	.L143
.L150:
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
.L142:
	add	r3, r3, #52
	cmp	r3, ip
	add	r2, r2, #16
	beq	.L149
.L143:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	strhne	r6, [r5, #32]	@ movhi
	bne	.L142
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L150
	cmp	r10, #0
	beq	.L142
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
	bne	.L143
.L149:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L152:
	.align	2
.L151:
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
	ldr	r3, .L155
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
.L156:
	.align	2
.L155:
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
	ldr	r3, .L166
	ldr	r3, [r3]
	cmp	r3, #3
	push	{r4, lr}
	beq	.L163
	cmp	r3, #2
	beq	.L164
	cmp	r3, #1
	beq	.L165
	cmp	r3, #0
	bne	.L157
	ldr	r3, .L166+4
	mov	lr, pc
	bx	r3
	b	.L157
.L164:
	mov	r2, #992
	mov	lr, #184
	mov	ip, #201
	mov	r0, #512
	ldr	r3, .L166+8
	ldr	r1, .L166+12
	strh	lr, [r3, #58]	@ movhi
	strh	ip, [r3, #74]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	strh	r2, [r3, #76]	@ movhi
.L157:
	pop	{r4, lr}
	bx	lr
.L163:
	mov	r2, #992
	mov	lr, #184
	mov	ip, #201
	mov	r0, #218
	ldr	r3, .L166+8
	ldr	r1, .L166+12
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
.L165:
	mov	r2, #512
	mov	ip, #184
	mov	r0, #992
	ldr	r1, .L166+16
	ldrh	lr, [r1, #14]
	ldr	r3, .L166+8
	strh	lr, [r1, #4]	@ movhi
	ldr	r1, .L166+12
	strh	ip, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
	strh	r2, [r3, #72]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	pop	{r4, lr}
	bx	lr
.L167:
	.align	2
.L166:
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
	ldr	r3, .L169
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r2, [r3, #16]
	bx	lr
.L170:
	.align	2
.L169:
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
	ldr	r3, .L173
	ldr	r2, [r3]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mov	ip, #2432
	mvn	r2, r2, lsr #17
	push	{r4, lr}
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldr	r1, .L173+4
	orr	r0, r0, #16384
	strh	r2, [r1, #98]	@ movhi
	strh	r0, [r1, #96]	@ movhi
	ldr	r4, .L173+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #100]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L174:
	.align	2
.L173:
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
	ldr	r3, .L179
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L176
	bl	drawCheat.part.0
.L177:
	mov	r2, #67108864
	ldr	r3, .L179+4
	ldrh	r1, [r3]
	ldr	r3, .L179+8
	strh	r1, [r2, #16]	@ movhi
	ldrh	r1, [r3]
	ldr	r4, .L179+12
	strh	r1, [r2, #18]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L179+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L176:
	mov	r2, #512
	ldr	r3, .L179+20
	strh	r2, [r3]	@ movhi
	b	.L177
.L180:
	.align	2
.L179:
	.word	cheat
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	shadowOAM
	.word	shadowOAM+256
	.size	drawGame, .-drawGame
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"cheat initialized\000"
	.text
	.align	2
	.global	initCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCheat, %function
initCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #16
	push	{r4, lr}
	mov	r2, #0
	mov	lr, #2
	mov	r1, #8
	mov	ip, #1
	ldr	r3, .L183
	ldr	r4, .L183+4
	str	r0, [r3]
	ldr	r0, .L183+8
	str	lr, [r3, #12]
	str	ip, [r3, #48]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	cheat
	.word	mgba_printf
	.word	.LC1
	.size	initCheat, .-initCheat
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
	push	{r4, r5, r6, lr}
	mov	r3, #16384
	ldr	r4, .L187
	mov	r0, #3
	ldr	r2, .L187+4
	ldr	r1, .L187+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L187+12
	ldr	r1, .L187+16
	mov	lr, pc
	bx	r4
	mov	lr, #3
	mov	r2, #0
	mov	r4, #8
	mov	r1, #2
	mov	r5, #16
	mov	r0, #24
	mov	ip, #10
	ldr	r3, .L187+20
	str	lr, [r3]
	ldr	r3, .L187+24
	str	r2, [r3]
	ldr	r3, .L187+28
	str	r2, [r3]
	ldr	r3, .L187+32
	str	r2, [r3]
	ldr	r3, .L187+36
	str	r2, [r3]
	ldr	r3, .L187+40
	str	r2, [r3]
	ldr	r3, .L187+44
	str	r2, [r3, #24]
	ldr	r2, .L187+48
	stm	r3, {r4, r5}
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r2]
	bl	initDogs
	bl	initToys
	mov	r2, #200
	mov	lr, #184
	mov	r1, #216
	mov	ip, #232
	mov	r0, #32
	ldr	r3, .L187+52
	str	r2, [r3, #52]
	ldr	r2, .L187+56
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	r4, [r3, #4]
	str	r5, [r3, #68]
	str	r4, [r3, #72]
	str	r4, [r3, #56]
	str	r5, [r3, #120]
	str	r4, [r3, #124]
	str	r4, [r3, #108]
	str	lr, [r3]
	str	r5, [r2, #20]
	str	r1, [r3, #104]
	pop	{r4, r5, r6, lr}
	str	r1, [r2]
	str	ip, [r2, #4]
	str	r0, [r2, #16]
	b	initCheat
.L188:
	.align	2
.L187:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	lives
	.word	score
	.word	carrying
	.word	safe
	.word	vOff
	.word	hOff
	.word	player
	.word	aniSpeed
	.word	life
	.word	basket
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
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L244
	ldrh	r1, [r7]
	ldr	r4, .L244+4
	tst	r1, #16
	str	r3, [r4, #28]
	ldr	r5, [r4]
	ldr	r6, [r4, #16]
	sub	sp, sp, #16
	and	ip, r1, #32
	bne	.L190
	mov	r2, #2
	mov	r3, #1
	str	r2, [r4, #24]
	add	r2, r6, r5
	cmp	r2, #992
	str	r3, [r4, #28]
	blt	.L237
	ldr	r0, .L244+8
.L191:
	cmp	ip, #0
	bne	.L238
.L210:
	mov	r2, #3
	mov	r3, #1
	cmp	r5, #0
	str	r2, [r4, #24]
	str	r3, [r4, #28]
	ble	.L238
	tst	r1, #1
	movne	r2, #10
	movne	r8, r2
	ldreq	r8, [r0]
	ldr	r3, [r4, #8]
	addeq	r8, r8, r8, lsr #31
	subeq	r5, r5, r3, lsl #1
	asreq	r8, r8, #1
	sub	r5, r5, r3
	streq	r8, [r0]
	strne	r2, [r0]
	str	r5, [r4]
.L209:
	ldr	r9, [r4, #32]
	mov	r1, r8
	mov	r0, r9
	ldr	r10, .L244+12
	mov	lr, pc
	bx	r10
	cmp	r1, #0
	bne	.L198
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r10
	str	r1, [r4, #36]
.L198:
	cmp	r9, #0
	movne	r8, r9
	sub	r8, r8, #1
	str	r8, [r4, #32]
	b	.L212
.L190:
	cmp	ip, #0
	ldreq	r0, .L244+8
	beq	.L210
	ldr	r2, .L244+8
	ldr	r2, [r2]
	str	r3, [r4, #36]
	str	r2, [r4, #32]
.L212:
	add	r3, r6, r6, lsr #31
	ldr	r0, .L244+16
	asr	r2, r3, #1
	rsb	r3, r2, #120
	ldr	ip, [r0]
	cmp	r3, r5
	sublt	r3, ip, #26
	ldrge	r1, .L244+20
	sublt	r3, r5, r3, lsl #8
	sublt	r3, r3, #120
	ldrlt	r1, .L244+20
	ldrge	r3, [r1]
	addlt	r3, r3, r2
	strlt	r3, [r1]
	cmp	r3, #256
	ble	.L202
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
.L203:
	cmp	ip, #29
	beq	.L206
	ldrh	r3, [r1]
.L205:
	mov	r8, #67108864
	mov	lr, #21
	mov	ip, #44
	mov	r1, #90
	strh	r3, [r8, #16]	@ movhi
	ldr	r3, .L244+24
	mov	r0, r5
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	mov	r2, r6
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #4]
	ldr	r5, .L244+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L207
	ldr	r3, .L244+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L207
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L242
.L207:
	mov	r1, #90
	mov	r2, #44
	mov	r3, #21
	ldr	r0, .L244+36
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L189
	ldr	r3, .L244+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L189
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L243
.L189:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L237:
	tst	r1, #1
	movne	r3, #10
	ldreq	r0, .L244+8
	ldr	r2, [r4, #8]
	ldreq	r3, [r0]
	ldrne	r0, .L244+8
	addeq	r3, r3, r3, lsr #31
	addeq	r5, r5, r2, lsl #1
	asreq	r3, r3, #1
	add	r5, r5, r2
	str	r3, [r0]
	str	r5, [r4]
	b	.L191
.L202:
	cmp	r3, #0
	bgt	.L203
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
	beq	.L204
.L241:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	b	.L205
.L238:
	ldr	r8, [r0]
	b	.L209
.L204:
	cmp	r3, #0
	ble	.L241
.L206:
	mov	r2, #0
	mov	r3, r2
	str	r2, [r1]
	b	.L205
.L243:
	ldr	r3, .L244+40
	mov	lr, pc
	bx	r3
	b	.L189
.L242:
	bl	initGame
	ldr	r3, .L244+44
	mov	lr, pc
	bx	r3
	b	.L207
.L245:
	.align	2
.L244:
	.word	buttons
	.word	player
	.word	aniSpeed
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
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"cheat button pressed\000"
	.text
	.align	2
	.global	updateCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCheat, %function
updateCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L266
	ldrh	r3, [r6]
	tst	r3, #512
	ldr	r4, .L266+4
	sub	sp, sp, #16
	beq	.L248
	ldr	r3, .L266+8
	ldrh	r3, [r3]
	ands	r5, r3, #512
	beq	.L265
.L248:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	ldr	r7, .L266+12
	beq	.L249
.L250:
	ldr	r0, .L266+16
	mov	lr, pc
	bx	r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L265:
	ldr	r0, .L266+20
	ldr	r7, .L266+12
	mov	lr, pc
	bx	r7
	str	r5, [r4, #48]
.L249:
	ldr	r3, [r4, #4]
	cmp	r3, #99
	ldrle	r2, [r4, #12]
	ldr	r5, .L266+24
	addle	r3, r3, r2
	ldr	r8, [r4, #20]
	str	r3, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	ip, [r4]
	add	r2, r5, #16
	ldm	r5, {r0, r1}
	strle	r3, [r4, #4]
	ldm	r2, {r2, r3}
	str	r8, [sp, #12]
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r8, .L266+28
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L250
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L250
	ldr	r3, .L266+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L250
	mov	r3, #5
	mov	r1, #1
	mov	r2, #4
	str	r3, [r5, #8]
	str	r3, [r5, #12]
	ldr	r3, .L266+32
	str	r1, [r4, #48]
	str	r2, [r3]
	b	.L250
.L267:
	.align	2
.L266:
	.word	oldButtons
	.word	cheat
	.word	buttons
	.word	mgba_printf
	.word	.LC1
	.word	.LC2
	.word	player
	.word	collision
	.word	aniSpeed
	.size	updateCheat, .-updateCheat
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
	bl	updateToys
	pop	{r4, lr}
	b	updateCheat
	.size	updateGame, .-updateGame
	.align	2
	.global	drawCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCheat, %function
drawCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L272
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	drawCheat.part.0
.L271:
	mov	r2, #512
	ldr	r3, .L272+4
	strh	r2, [r3]	@ movhi
	bx	lr
.L273:
	.align	2
.L272:
	.word	cheat
	.word	shadowOAM+256
	.size	drawCheat, .-drawCheat
	.comm	lToy,104,4
	.comm	mToy,156,4
	.comm	sToy,312,4
	.comm	dogs,156,4
	.comm	player,52,4
	.comm	cheat,52,4
	.comm	life,156,4
	.comm	points,52,4
	.comm	SC,52,4
	.comm	table,52,4
	.comm	basket,52,4
	.comm	aniSpeed,4,4
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
