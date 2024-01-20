	.arch armv8-a
	.file	"sumRange.c"
	.text
	.align	2
	.global	sumRange
	.type	sumRange, %function
sumRange:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	b	.L2
.L3:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sumRange, .-sumRange
	.section	.rodata
	.align	3
.LC0:
	.string	"Usage: %s\n start end"
	.align	3
.LC1:
	.string	"sumRange(%d, %d) = %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	beq	.L6
	adrp	x0, :got:stderr
	ldr	x0, [x0, :got_lo12:stderr]
	ldr	x3, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L7
.L6:
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	str	w0, [sp, 40]
	ldr	x0, [sp, 16]
	add	x0, x0, 16
	ldr	x0, [x0]
	bl	atoi
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	bl	sumRange
	mov	w3, w0
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
.L7:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Alpine 13.2.1_git20231014) 13.2.1 20231014"
	.section	.note.GNU-stack,"",@progbits
