	.arch armv8.4-a+fp16+sb+ssbs
	.build_version macos,  15, 0
	.text
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.cstring
	.align	3
lC0:
	.ascii "Hello, world!\12\0"
	.text
	.align	2
	.globl _main
_main:
LFB2055:
	stp	x29, x30, [sp, -16]!
LCFI0:
	mov	x29, sp
LCFI1:
	adrp	x0, lC0@PAGE
	add	x1, x0, lC0@PAGEOFF;
	adrp	x0, __ZSt4cout@GOTPAGE
	ldr	x0, [x0, __ZSt4cout@GOTPAGEOFF]
	bl	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	w0, 0
	ldp	x29, x30, [sp], 16
LCFI2:
	ret
LFE2055:
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
__Z41__static_initialization_and_destruction_0v:
LFB2583:
	stp	x29, x30, [sp, -16]!
LCFI3:
	mov	x29, sp
LCFI4:
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x0, x0, __ZStL8__ioinit@PAGEOFF;
	bl	__ZNSt8ios_base4InitC1Ev
	adrp	x0, ___dso_handle@PAGE
	add	x2, x0, ___dso_handle@PAGEOFF;
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x1, x0, __ZStL8__ioinit@PAGEOFF;
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]
	bl	___cxa_atexit
	nop
	ldp	x29, x30, [sp], 16
LCFI5:
	ret
LFE2583:
	.const
__ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
__ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
__ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
__GLOBAL__sub_I_hello_world.cpp:
LFB2584:
	stp	x29, x30, [sp, -16]!
LCFI6:
	mov	x29, sp
LCFI7:
	bl	__Z41__static_initialization_and_destruction_0v
	ldp	x29, x30, [sp], 16
LCFI8:
	ret
LFE2584:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2055-.
	.set L$set$2,LFE2055-LFB2055
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2055
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$6,LEFDE3-LASFDE3
	.long L$set$6
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB2583-.
	.set L$set$7,LFE2583-LFB2583
	.quad L$set$7
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI3-LFB2583
	.long L$set$8
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$11,LEFDE5-LASFDE5
	.long L$set$11
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB2584-.
	.set L$set$12,LFE2584-LFB2584
	.quad L$set$12
	.uleb128 0
	.byte	0x4
	.set L$set$13,LCFI6-LFB2584
	.long L$set$13
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE5:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 14.2.0_1) 14.2.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_hello_world.cpp
	.subsections_via_symbols
