	.file	"xbrent.c"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.section	.rodata
	.align 8
.LC9:
	.string	"Maximum number of iterations exceeded"
	.text
	.globl	zbrent
	.type	zbrent, @function
zbrent:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm1, -160(%rbp)
	movsd	-152(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %xmm0
	call	func
	movq	%xmm0, %rax
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %xmm0
	call	func
	movq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L4
.L34:
	movsd	-80(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L5
	movsd	-128(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-120(%rbp), %xmm0
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
.L5:
	movsd	-72(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0
	movq	.LC2(%rip), %xmm2
	andpd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L7
	movsd	-120(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-128(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.L7:
	movsd	-120(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-112(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-120(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L9
	pxor	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jp	.L10
	pxor	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jne	.L10
.L9:
	movsd	-120(%rbp), %xmm0
	jmp	.L12
.L10:
	movsd	-96(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	comisd	-48(%rbp), %xmm0
	jb	.L13
	movsd	-88(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1
	movq	.LC2(%rip), %xmm2
	andpd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L13
	movsd	-80(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-128(%rbp), %xmm0
	ucomisd	-112(%rbp), %xmm0
	jp	.L16
	movsd	-128(%rbp), %xmm0
	ucomisd	-112(%rbp), %xmm0
	jne	.L16
	movsd	-40(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC6(%rip), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.L18
.L16:
	movsd	-88(%rbp), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	subsd	-128(%rbp), %xmm2
	movsd	-24(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.L18:
	movsd	-64(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L19
	movsd	-56(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.L19:
	movsd	-64(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-40(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	movq	.LC2(%rip), %xmm2
	andpd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-96(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-64(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	comisd	-16(%rbp), %xmm0
	jbe	.L45
	movsd	-16(%rbp), %xmm0
	jmp	.L23
.L45:
	movsd	-8(%rbp), %xmm0
.L23:
	comisd	%xmm1, %xmm0
	jbe	.L46
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-64(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.L27
.L46:
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	jmp	.L27
.L13:
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
.L27:
	movsd	-120(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-104(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	comisd	-48(%rbp), %xmm0
	jbe	.L47
	movsd	-120(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.L30
.L47:
	movsd	-40(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L48
	movsd	-48(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	jmp	.L33
.L48:
	movsd	-48(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
.L33:
	movsd	-120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
.L30:
	movq	-120(%rbp), %rax
	movq	%rax, %xmm0
	call	func
	movq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	addl	$1, -132(%rbp)
.L4:
	cmpl	$999, -132(%rbp)
	jle	.L34
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
.L12:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	zbrent, .-zbrent
	.section	.rodata
.LC10:
	.string	"The root found is: %.5f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	zbrent
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC3:
	.long	-755914244
	.long	1063281229
	.align 8
.LC4:
	.long	-755914244
	.long	1061184077
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 16
.LC7:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC8:
	.long	0
	.long	1074266112
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
