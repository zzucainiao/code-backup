	.file	"test_thisPtr.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"_m_s=%d %d\n"
	.section	.text._ZN2tt3fooEv,"axG",@progbits,_ZN2tt3fooEv,comdat
	.align 2
	.weak	_ZN2tt3fooEv
	.type	_ZN2tt3fooEv, @function
_ZN2tt3fooEv:
.LFB30:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	(%rdi), %edx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE30:
	.size	_ZN2tt3fooEv, .-_ZN2tt3fooEv
	.section	.rodata.str1.1
.LC1:
	.string	"%x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB32:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$123, (%rsp)
	movq	%rsp, %rdi
	call	_ZN2tt3fooEv
	movl	$_ZN2tt3fooEv, %edx
	movl	$0, %ecx
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	$_ZN2tt3fooEv, %edx
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movq	%rsp, This(%rip)
#APP
# 49 "test_thisPtr.cpp" 1
	movq This, %rdi 

# 0 "" 2
#NO_APP
	call	_ZN2tt3fooEv
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	main, .-main
	.globl	This
	.bss
	.align 8
	.type	This, @object
	.size	This, 8
This:
	.zero	8
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
