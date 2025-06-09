	.file	"manual.c"
# GNU C17 (GCC) version 14.2.1 20250207 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 14.2.1 20250207, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
	.section	.rodata
.LC0:
	.string	"6"
.LC1:
	.string	"5"
.LC2:
	.string	"4"
.LC3:
	.string	"-3"
	.align 8
.LC4:
	.string	"\n\nThe sum of 4 strings is: %d\n"
.LC5:
	.string	"-6.5"
.LC6:
	.string	"5.5"
.LC7:
	.string	"4.6"
.LC8:
	.string	"3.521"
	.align 8
.LC9:
	.string	"\n\nThe sum of 4 strings is: %.2f\n"
.LC10:
	.string	"Test2"
.LC11:
	.string	"Test1"
.LC12:
	.string	"helloworldworld"
.LC13:
	.string	"world"
	.align 8
.LC14:
	.string	"\n\nNumber of Substrings %s inside %s: %d\n"
	.align 8
.LC15:
	.string	"\nNumber of character %c inside %s: %d\n"
	.align 8
.LC16:
	.string	"\n\nNumber of words in string is: %d\n"
.LC17:
	.string	"bored"
.LC18:
	.string	"hello"
.LC19:
	.string	"Brother"
.LC20:
	.string	"manual"
.LC21:
	.string	"bothered"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
# manual.c:35: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	movq	%rax, -8(%rbp)	# tmp110, D.5501
	xorl	%eax, %eax	# tmp110
# manual.c:38:     srand(time(NULL));
	movl	$0, %edi	#,
	call	time@PLT	#
# manual.c:38:     srand(time(NULL));
	movl	%eax, %edi	# _2,
	call	srand@PLT	#
# manual.c:41:     const char test[] = "This iS A Test";
	movabsq	$2329321020376836180, %rax	#, tmp151
	movq	%rax, -53(%rbp)	# tmp151, test
	movabsq	$32777976338727200, %rax	#, tmp152
	movq	%rax, -46(%rbp)	# tmp152, test
# manual.c:42:     upperLower(test);
	leaq	-53(%rbp), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	upperLower	#
# manual.c:45:     printf("\n\nThe sum of 4 strings is: %d\n", convertStrtoInt("-3", "4", "5", "6"));
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC3(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	convertStrtoInt	#
# manual.c:45:     printf("\n\nThe sum of 4 strings is: %d\n", convertStrtoInt("-3", "4", "5", "6"));
	movl	%eax, %esi	# _3,
	leaq	.LC4(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:49:     printf("\n\nThe sum of 4 strings is: %.2f\n", convertStrtoFloat("3.521", "4.6", "5.5", "-6.5"));
	leaq	.LC5(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	leaq	.LC6(%rip), %rax	#, tmp118
	movq	%rax, %rdx	# tmp118,
	leaq	.LC7(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC8(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	convertStrtoFloat	#
# manual.c:49:     printf("\n\nThe sum of 4 strings is: %.2f\n", convertStrtoFloat("3.521", "4.6", "5.5", "-6.5"));
	pxor	%xmm1, %xmm1	# _5
	cvtss2sd	%xmm0, %xmm1	# _4, _5
	movq	%xmm1, %rax	# _5, _5
	movq	%rax, %xmm0	# _5,
	leaq	.LC9(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	movl	$1, %eax	#,
	call	printf@PLT	#
# manual.c:53:     compareStr("Test1", "Test2");
	leaq	.LC10(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC11(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	compareStr	#
# manual.c:56:     comparePartialStr("Test1", "Test2", 4);
	movl	$4, %edx	#,
	leaq	.LC10(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC11(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	comparePartialStr	#
# manual.c:59:     randomize();
	call	randomize	#
# manual.c:62:     char str[] = "(267) 436-6281";
	movabsq	$3689609356115325480, %rax	#, tmp154
	movq	%rax, -38(%rbp)	# tmp154, str
	movabsq	$13854062167275059, %rax	#, tmp155
	movq	%rax, -31(%rbp)	# tmp155, str
# manual.c:63:     tokenizeTelNum(str);
	leaq	-38(%rbp), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	tokenizeTelNum	#
# manual.c:66:     char line[] = "Hello world";
	movabsq	$8031924123371070792, %rax	#, tmp156
	movq	%rax, -78(%rbp)	# tmp156, line
	movl	$6581362, -70(%rbp)	#, line
# manual.c:67:     reverse(line);
	leaq	-78(%rbp), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	reverse	#
# manual.c:70:     char *line1 = "helloworldworld";
	leaq	.LC12(%rip), %rax	#, tmp128
	movq	%rax, -144(%rbp)	# tmp128, line1
# manual.c:71:     char *substring = "world";
	leaq	.LC13(%rip), %rax	#, tmp129
	movq	%rax, -136(%rbp)	# tmp129, substring
# manual.c:72:     printf("\n\nNumber of Substrings %s inside %s: %d\n", substring, line1, countSubstr(line1, substring));
	movq	-136(%rbp), %rdx	# substring, tmp130
	movq	-144(%rbp), %rax	# line1, tmp131
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	countSubstr	#
	movl	%eax, %ecx	#, _6
# manual.c:72:     printf("\n\nNumber of Substrings %s inside %s: %d\n", substring, line1, countSubstr(line1, substring));
	movq	-144(%rbp), %rdx	# line1, tmp132
	movq	-136(%rbp), %rax	# substring, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC14(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:75:     char w = 'w';
	movb	$119, -145(%rbp)	#, w
# manual.c:76:     printf("\nNumber of character %c inside %s: %d\n", w, line1, countChar(line1, w));
	movsbl	-145(%rbp), %edx	# w, _7
	movq	-144(%rbp), %rax	# line1, tmp135
	movl	%edx, %esi	# _7,
	movq	%rax, %rdi	# tmp135,
	call	countChar	#
	movl	%eax, %ecx	#, _8
# manual.c:76:     printf("\nNumber of character %c inside %s: %d\n", w, line1, countChar(line1, w));
	movsbl	-145(%rbp), %eax	# w, _9
	movq	-144(%rbp), %rdx	# line1, tmp136
	movl	%eax, %esi	# _9,
	leaq	.LC15(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:79:     char str1[] = "Hello it's me.";
	movabsq	$8388271443886761288, %rax	#, tmp157
	movq	%rax, -23(%rbp)	# tmp157, str1
	movabsq	$13059368298948468, %rax	#, tmp158
	movq	%rax, -16(%rbp)	# tmp158, str1
# manual.c:80:     countAlpha(str1);
	leaq	-23(%rbp), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	countAlpha	#
# manual.c:83:     char countstring[] = "hello world!";
	movabsq	$8031924123371070824, %rax	#, tmp159
	movq	%rax, -66(%rbp)	# tmp159, countstring
	movabsq	$9399091170604832, %rax	#, tmp160
	movq	%rax, -61(%rbp)	# tmp160, countstring
# manual.c:84:     printf("\n\nNumber of words in string is: %d\n", countWords(countstring));
	leaq	-66(%rbp), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	countWords	#
# manual.c:84:     printf("\n\nNumber of words in string is: %d\n", countWords(countstring));
	movl	%eax, %esi	# _10,
	leaq	.LC16(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:87:     char *series[] = {"bored", "hello", "Brother", "manual", "bothered", NULL}; // added NULL to make it doable
	leaq	.LC17(%rip), %rax	#, tmp141
	movq	%rax, -128(%rbp)	# tmp141, series[0]
	leaq	.LC18(%rip), %rax	#, tmp142
	movq	%rax, -120(%rbp)	# tmp142, series[1]
	leaq	.LC19(%rip), %rax	#, tmp143
	movq	%rax, -112(%rbp)	# tmp143, series[2]
	leaq	.LC20(%rip), %rax	#, tmp144
	movq	%rax, -104(%rbp)	# tmp144, series[3]
	leaq	.LC21(%rip), %rax	#, tmp145
	movq	%rax, -96(%rbp)	# tmp145, series[4]
	movq	$0, -88(%rbp)	#, series[5]
# manual.c:88:     startsWithB(series);
	leaq	-128(%rbp), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	startsWithB	#
# manual.c:91:     endsWithed(series);
	leaq	-128(%rbp), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	endsWithed	#
	movl	$0, %eax	#, _53
# manual.c:93: }
	movq	-8(%rbp), %rdx	# D.5501, tmp149
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp149
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC22:
	.string	"Upper: %s\nLower: %s"
	.text
	.globl	upperLower
	.type	upperLower, @function
upperLower:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movq	%rdi, -248(%rbp)	# s, s
# manual.c:96: void upperLower (const char * s) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.5525
	xorl	%eax, %eax	# tmp112
# manual.c:99:     strcpy(u,s);
	movq	-248(%rbp), %rdx	# s, tmp113
	leaq	-224(%rbp), %rax	#, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	strcpy@PLT	#
# manual.c:100:     strcpy(l,s);
	movq	-248(%rbp), %rdx	# s, tmp115
	leaq	-112(%rbp), %rax	#, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	strcpy@PLT	#
# manual.c:101:     int i = 0;
	movl	$0, -228(%rbp)	#, i
# manual.c:102:     while(u[i] != '\0') {
	jmp	.L5	#
.L7:
# manual.c:103:         if(u[i] >= 'a' && u[i] <= 'z') {
	movl	-228(%rbp), %eax	# i, tmp118
	cltq
	movzbl	-224(%rbp,%rax), %eax	# u[i_15], _1
# manual.c:103:         if(u[i] >= 'a' && u[i] <= 'z') {
	cmpb	$96, %al	#, _1
	jle	.L6	#,
# manual.c:103:         if(u[i] >= 'a' && u[i] <= 'z') {
	movl	-228(%rbp), %eax	# i, tmp120
	cltq
	movzbl	-224(%rbp,%rax), %eax	# u[i_15], _2
# manual.c:103:         if(u[i] >= 'a' && u[i] <= 'z') {
	cmpb	$122, %al	#, _2
	jg	.L6	#,
# manual.c:104:             u[i] -= 'a'-'A';
	movl	-228(%rbp), %eax	# i, tmp122
	cltq
	movzbl	-224(%rbp,%rax), %eax	# u[i_15], _3
# manual.c:104:             u[i] -= 'a'-'A';
	subl	$32, %eax	#, _5
	movl	%eax, %edx	# _5, _6
	movl	-228(%rbp), %eax	# i, tmp124
	cltq
	movb	%dl, -224(%rbp,%rax)	# _6, u[i_15]
.L6:
# manual.c:106:         i++;
	addl	$1, -228(%rbp)	#, i
.L5:
# manual.c:102:     while(u[i] != '\0') {
	movl	-228(%rbp), %eax	# i, tmp126
	cltq
	movzbl	-224(%rbp,%rax), %eax	# u[i_15], _7
# manual.c:102:     while(u[i] != '\0') {
	testb	%al, %al	# _7
	jne	.L7	#,
# manual.c:108:     i = 0;
	movl	$0, -228(%rbp)	#, i
# manual.c:109:     while(l[i] != '\0') {
	jmp	.L8	#
.L10:
# manual.c:110:         if(l[i] >= 'A' && l[i] <= 'Z') {
	movl	-228(%rbp), %eax	# i, tmp128
	cltq
	movzbl	-112(%rbp,%rax), %eax	# l[i_16], _8
# manual.c:110:         if(l[i] >= 'A' && l[i] <= 'Z') {
	cmpb	$64, %al	#, _8
	jle	.L9	#,
# manual.c:110:         if(l[i] >= 'A' && l[i] <= 'Z') {
	movl	-228(%rbp), %eax	# i, tmp130
	cltq
	movzbl	-112(%rbp,%rax), %eax	# l[i_16], _9
# manual.c:110:         if(l[i] >= 'A' && l[i] <= 'Z') {
	cmpb	$90, %al	#, _9
	jg	.L9	#,
# manual.c:111:             l[i] += 'a'-'A';
	movl	-228(%rbp), %eax	# i, tmp132
	cltq
	movzbl	-112(%rbp,%rax), %eax	# l[i_16], _10
# manual.c:111:             l[i] += 'a'-'A';
	addl	$32, %eax	#, _12
	movl	%eax, %edx	# _12, _13
	movl	-228(%rbp), %eax	# i, tmp134
	cltq
	movb	%dl, -112(%rbp,%rax)	# _13, l[i_16]
.L9:
# manual.c:113:         i++;
	addl	$1, -228(%rbp)	#, i
.L8:
# manual.c:109:     while(l[i] != '\0') {
	movl	-228(%rbp), %eax	# i, tmp136
	cltq
	movzbl	-112(%rbp,%rax), %eax	# l[i_16], _14
# manual.c:109:     while(l[i] != '\0') {
	testb	%al, %al	# _14
	jne	.L10	#,
# manual.c:115:     printf("Upper: %s\nLower: %s", u,l);
	leaq	-112(%rbp), %rdx	#, tmp137
	leaq	-224(%rbp), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC22(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:116: }
	nop	
	movq	-8(%rbp), %rax	# D.5525, tmp140
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp140
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	upperLower, .-upperLower
	.globl	strtoInt
	.type	strtoInt, @function
strtoInt:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# s, s
# manual.c:120:     int n = 0;
	movl	$0, -32(%rbp)	#, n
# manual.c:121:     while(s[n] != '\0') {
	jmp	.L13	#
.L14:
# manual.c:122:         n++;
	addl	$1, -32(%rbp)	#, n
.L13:
# manual.c:121:     while(s[n] != '\0') {
	movl	-32(%rbp), %eax	# n, tmp115
	movslq	%eax, %rdx	# tmp115, _1
	movq	-40(%rbp), %rax	# s, tmp116
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# manual.c:121:     while(s[n] != '\0') {
	testb	%al, %al	# _3
	jne	.L14	#,
# manual.c:124:     int is_negative = 0;
	movl	$0, -28(%rbp)	#, is_negative
# manual.c:125:     if(s[0] == '-') {
	movq	-40(%rbp), %rax	# s, tmp117
	movzbl	(%rax), %eax	# *s_22(D), _4
# manual.c:125:     if(s[0] == '-') {
	cmpb	$45, %al	#, _4
	jne	.L15	#,
# manual.c:126:         is_negative = 1;
	movl	$1, -28(%rbp)	#, is_negative
.L15:
# manual.c:128:     int i = is_negative;
	movl	-28(%rbp), %eax	# is_negative, tmp118
	movl	%eax, -24(%rbp)	# tmp118, i
# manual.c:129:     int value = 0;
	movl	$0, -20(%rbp)	#, value
# manual.c:130:     while(i < n) {
	jmp	.L16	#
.L17:
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	movl	-24(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _5
	movq	-40(%rbp), %rax	# s, tmp120
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %eax	# *_6, _7
	movsbl	%al, %eax	# _7, _8
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	leal	-48(%rax), %ebx	#, _9
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	movl	-32(%rbp), %eax	# n, tmp121
	subl	-24(%rbp), %eax	# i, _10
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	subl	$1, %eax	#, _11
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	pxor	%xmm0, %xmm0	# _12
	cvtsi2sdl	%eax, %xmm0	# _11, _12
	movq	.LC23(%rip), %rax	#, tmp122
	movapd	%xmm0, %xmm1	# _12,
	movq	%rax, %xmm0	# tmp122,
	call	pow@PLT	#
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	cvttsd2sil	%xmm0, %eax	# _13, _14
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	imull	%ebx, %eax	# _9, _32
# manual.c:131:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	addl	%eax, -20(%rbp)	# _32, value
# manual.c:132:         i++;
	addl	$1, -24(%rbp)	#, i
.L16:
# manual.c:130:     while(i < n) {
	movl	-24(%rbp), %eax	# i, tmp123
	cmpl	-32(%rbp), %eax	# n, tmp123
	jl	.L17	#,
# manual.c:134:     if(is_negative) {
	cmpl	$0, -28(%rbp)	#, is_negative
	je	.L18	#,
# manual.c:135:         return value *= -1;
	negl	-20(%rbp)	# value
	movl	-20(%rbp), %eax	# value, _19
	jmp	.L19	#
.L18:
# manual.c:137:     return value;
	movl	-20(%rbp), %eax	# value, _19
.L19:
# manual.c:138: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	strtoInt, .-strtoInt
	.globl	convertStrtoInt
	.type	convertStrtoInt, @function
convertStrtoInt:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	movq	%rdx, -40(%rbp)	# s3, s3
	movq	%rcx, -48(%rbp)	# s4, s4
# manual.c:142:     i1 = strtoInt(s1);
	movq	-24(%rbp), %rax	# s1, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strtoInt	#
	movl	%eax, -16(%rbp)	# tmp103, i1
# manual.c:143:     i2 = strtoInt(s2);
	movq	-32(%rbp), %rax	# s2, tmp104
	movq	%rax, %rdi	# tmp104,
	call	strtoInt	#
	movl	%eax, -12(%rbp)	# tmp105, i2
# manual.c:144:     i3 = strtoInt(s3);
	movq	-40(%rbp), %rax	# s3, tmp106
	movq	%rax, %rdi	# tmp106,
	call	strtoInt	#
	movl	%eax, -8(%rbp)	# tmp107, i3
# manual.c:145:     i4 = strtoInt(s4);
	movq	-48(%rbp), %rax	# s4, tmp108
	movq	%rax, %rdi	# tmp108,
	call	strtoInt	#
	movl	%eax, -4(%rbp)	# tmp109, i4
# manual.c:146:     return i1+i2+i3+i4;    
	movl	-16(%rbp), %edx	# i1, tmp110
	movl	-12(%rbp), %eax	# i2, tmp111
	addl	%eax, %edx	# tmp111, _1
# manual.c:146:     return i1+i2+i3+i4;    
	movl	-8(%rbp), %eax	# i3, tmp112
	addl	%eax, %edx	# tmp112, _2
# manual.c:146:     return i1+i2+i3+i4;    
	movl	-4(%rbp), %eax	# i4, tmp113
	addl	%edx, %eax	# _2, _16
# manual.c:147: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	convertStrtoInt, .-convertStrtoInt
	.globl	rangedStrtoInt
	.type	rangedStrtoInt, @function
rangedStrtoInt:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# s, s
	movl	%esi, -44(%rbp)	# n, n
# manual.c:149:     int is_negative = 0;
	movl	$0, -28(%rbp)	#, is_negative
# manual.c:150:     if(s[0] == '-') {
	movq	-40(%rbp), %rax	# s, tmp112
	movzbl	(%rax), %eax	# *s_19(D), _1
# manual.c:150:     if(s[0] == '-') {
	cmpb	$45, %al	#, _1
	jne	.L23	#,
# manual.c:151:         is_negative = 1;
	movl	$1, -28(%rbp)	#, is_negative
.L23:
# manual.c:153:     int i = is_negative;
	movl	-28(%rbp), %eax	# is_negative, tmp113
	movl	%eax, -24(%rbp)	# tmp113, i
# manual.c:154:     int value = 0;
	movl	$0, -20(%rbp)	#, value
# manual.c:155:     while(i < n) {
	jmp	.L24	#
.L25:
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	movl	-24(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _2
	movq	-40(%rbp), %rax	# s, tmp115
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
	movsbl	%al, %eax	# _4, _5
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	leal	-48(%rax), %ebx	#, _6
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	movl	-44(%rbp), %eax	# n, tmp116
	subl	-24(%rbp), %eax	# i, _7
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	subl	$1, %eax	#, _8
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	pxor	%xmm0, %xmm0	# _9
	cvtsi2sdl	%eax, %xmm0	# _8, _9
	movq	.LC23(%rip), %rax	#, tmp117
	movapd	%xmm0, %xmm1	# _9,
	movq	%rax, %xmm0	# tmp117,
	call	pow@PLT	#
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	cvttsd2sil	%xmm0, %eax	# _10, _11
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	imull	%ebx, %eax	# _6, _28
# manual.c:156:         value += (s[i]-'0') * (int)pow(10,n-i-1); 
	addl	%eax, -20(%rbp)	# _28, value
# manual.c:157:         i++;
	addl	$1, -24(%rbp)	#, i
.L24:
# manual.c:155:     while(i < n) {
	movl	-24(%rbp), %eax	# i, tmp118
	cmpl	-44(%rbp), %eax	# n, tmp118
	jl	.L25	#,
# manual.c:159:     if(is_negative) {
	cmpl	$0, -28(%rbp)	#, is_negative
	je	.L26	#,
# manual.c:160:         return value *= -1;
	negl	-20(%rbp)	# value
	movl	-20(%rbp), %eax	# value, _15
	jmp	.L27	#
.L26:
# manual.c:162:     return value;
	movl	-20(%rbp), %eax	# value, _15
.L27:
# manual.c:163: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	rangedStrtoInt, .-rangedStrtoInt
	.globl	strToFloat
	.type	strToFloat, @function
strToFloat:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
# manual.c:165:     int dot_spot = -1;
	movl	$-1, -16(%rbp)	#, dot_spot
# manual.c:166:     int pre = 0;
	movl	$0, -12(%rbp)	#, pre
# manual.c:167:     int post = 0; 
	movl	$0, -8(%rbp)	#, post
# manual.c:168:     int n = 0;
	movl	$0, -4(%rbp)	#, n
# manual.c:169:     while(s[n] != '\0') {
	jmp	.L29	#
.L31:
# manual.c:170:         if(s[n] == '.') dot_spot = n;
	movl	-4(%rbp), %eax	# n, tmp121
	movslq	%eax, %rdx	# tmp121, _1
	movq	-24(%rbp), %rax	# s, tmp122
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# manual.c:170:         if(s[n] == '.') dot_spot = n;
	cmpb	$46, %al	#, _3
	jne	.L30	#,
# manual.c:170:         if(s[n] == '.') dot_spot = n;
	movl	-4(%rbp), %eax	# n, tmp123
	movl	%eax, -16(%rbp)	# tmp123, dot_spot
.L30:
# manual.c:171:         n++;
	addl	$1, -4(%rbp)	#, n
.L29:
# manual.c:169:     while(s[n] != '\0') {
	movl	-4(%rbp), %eax	# n, tmp124
	movslq	%eax, %rdx	# tmp124, _4
	movq	-24(%rbp), %rax	# s, tmp125
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# manual.c:169:     while(s[n] != '\0') {
	testb	%al, %al	# _6
	jne	.L31	#,
# manual.c:173:     if(dot_spot != -1) {
	cmpl	$-1, -16(%rbp)	#, dot_spot
	je	.L32	#,
# manual.c:174:         pre = rangedStrtoInt(s, dot_spot);
	movl	-16(%rbp), %edx	# dot_spot, tmp126
	movq	-24(%rbp), %rax	# s, tmp127
	movl	%edx, %esi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	rangedStrtoInt	#
	movl	%eax, -12(%rbp)	# tmp128, pre
# manual.c:175:         post = strtoInt(s + dot_spot + 1);
	movl	-16(%rbp), %eax	# dot_spot, tmp129
	cltq
	leaq	1(%rax), %rdx	#, _8
# manual.c:175:         post = strtoInt(s + dot_spot + 1);
	movq	-24(%rbp), %rax	# s, tmp130
	addq	%rdx, %rax	# _8, _9
	movq	%rax, %rdi	# _9,
	call	strtoInt	#
	movl	%eax, -8(%rbp)	# tmp131, post
	jmp	.L33	#
.L32:
# manual.c:177:         pre = strtoInt(s);
	movq	-24(%rbp), %rax	# s, tmp132
	movq	%rax, %rdi	# tmp132,
	call	strtoInt	#
	movl	%eax, -12(%rbp)	# tmp133, pre
.L33:
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	pxor	%xmm0, %xmm0	# _10
	cvtsi2ssl	-12(%rbp), %xmm0	# pre, _10
	pxor	%xmm3, %xmm3	# _11
	cvtss2sd	%xmm0, %xmm3	# _10, _11
	movsd	%xmm3, -32(%rbp)	# _11, %sfp
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	cmpl	$0, -12(%rbp)	#, pre
	jns	.L34	#,
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	movss	.LC24(%rip), %xmm0	#, iftmp.0_26
	jmp	.L35	#
.L34:
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	movss	.LC25(%rip), %xmm0	#, iftmp.0_26
.L35:
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	pxor	%xmm1, %xmm1	# _12
	cvtsi2ssl	-8(%rbp), %xmm1	# post, _12
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	mulss	%xmm1, %xmm0	# _12, _13
	pxor	%xmm2, %xmm2	# _14
	cvtss2sd	%xmm0, %xmm2	# _13, _14
	movsd	%xmm2, -40(%rbp)	# _14, %sfp
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	movl	-4(%rbp), %eax	# n, tmp134
	subl	-16(%rbp), %eax	# dot_spot, _15
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	subl	$1, %eax	#, _16
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	pxor	%xmm0, %xmm0	# _17
	cvtsi2sdl	%eax, %xmm0	# _16, _17
	movq	.LC23(%rip), %rax	#, tmp135
	movapd	%xmm0, %xmm1	# _17,
	movq	%rax, %xmm0	# tmp135,
	call	pow@PLT	#
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	movsd	-40(%rbp), %xmm1	# %sfp, _14
	divsd	%xmm0, %xmm1	# _18, _14
# manual.c:180:     return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
	movsd	-32(%rbp), %xmm0	# %sfp, _11
	addsd	%xmm1, %xmm0	# _19, _11
	cvtsd2ss	%xmm0, %xmm0	# _20, _43
# manual.c:181: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	strToFloat, .-strToFloat
	.globl	convertStrtoFloat
	.type	convertStrtoFloat, @function
convertStrtoFloat:
.LFB12:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	movq	%rdx, -40(%rbp)	# s3, s3
	movq	%rcx, -48(%rbp)	# s4, s4
# manual.c:185:   f1 = strToFloat(s1); 
	movq	-24(%rbp), %rax	# s1, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strToFloat	#
	movd	%xmm0, %eax	#, tmp103
	movl	%eax, -16(%rbp)	# tmp103, f1
# manual.c:186:   f2 = strToFloat(s2); 
	movq	-32(%rbp), %rax	# s2, tmp104
	movq	%rax, %rdi	# tmp104,
	call	strToFloat	#
	movd	%xmm0, %eax	#, tmp105
	movl	%eax, -12(%rbp)	# tmp105, f2
# manual.c:187:   f3 = strToFloat(s3); 
	movq	-40(%rbp), %rax	# s3, tmp106
	movq	%rax, %rdi	# tmp106,
	call	strToFloat	#
	movd	%xmm0, %eax	#, tmp107
	movl	%eax, -8(%rbp)	# tmp107, f3
# manual.c:188:   f4 = strToFloat(s4); 
	movq	-48(%rbp), %rax	# s4, tmp108
	movq	%rax, %rdi	# tmp108,
	call	strToFloat	#
	movd	%xmm0, %eax	#, tmp109
	movl	%eax, -4(%rbp)	# tmp109, f4
# manual.c:189:   return f1+f2+f3+f4;
	movss	-16(%rbp), %xmm0	# f1, tmp110
	addss	-12(%rbp), %xmm0	# f2, _1
# manual.c:189:   return f1+f2+f3+f4;
	addss	-8(%rbp), %xmm0	# f3, _2
# manual.c:189:   return f1+f2+f3+f4;
	addss	-4(%rbp), %xmm0	# f4, _16
# manual.c:190: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	convertStrtoFloat, .-convertStrtoFloat
	.section	.rodata
.LC26:
	.string	""
.LC27:
	.string	"First string is greater"
	.align 8
.LC28:
	.string	"First string is less than second"
.LC29:
	.string	"They are equal"
	.text
	.globl	compareStr
	.type	compareStr, @function
compareStr:
.LFB13:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
# manual.c:194:     int i = 0;
	movl	$0, -4(%rbp)	#, i
# manual.c:195:     puts("");
	leaq	.LC26(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	puts@PLT	#
# manual.c:196:     while(s1[i] != '\0' && s2[i] != '\0') {
	jmp	.L40	#
.L46:
# manual.c:197:         if(s1[i] - s2[i] != 0){
	movl	-4(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _1
	movq	-24(%rbp), %rax	# s1, tmp120
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %edx	# *_2, _3
# manual.c:197:         if(s1[i] - s2[i] != 0){
	movl	-4(%rbp), %eax	# i, tmp121
	movslq	%eax, %rcx	# tmp121, _4
	movq	-32(%rbp), %rax	# s2, tmp122
	addq	%rcx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# manual.c:197:         if(s1[i] - s2[i] != 0){
	cmpb	%al, %dl	# _6, _3
	je	.L41	#,
# manual.c:198:             s1[i] > s2[i]? puts("First string is greater") : puts("First string is less than second");
	movl	-4(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, _7
	movq	-24(%rbp), %rax	# s1, tmp124
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %edx	# *_8, _9
# manual.c:198:             s1[i] > s2[i]? puts("First string is greater") : puts("First string is less than second");
	movl	-4(%rbp), %eax	# i, tmp125
	movslq	%eax, %rcx	# tmp125, _10
	movq	-32(%rbp), %rax	# s2, tmp126
	addq	%rcx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# manual.c:198:             s1[i] > s2[i]? puts("First string is greater") : puts("First string is less than second");
	cmpb	%al, %dl	# _12, _9
	jle	.L42	#,
# manual.c:198:             s1[i] > s2[i]? puts("First string is greater") : puts("First string is less than second");
	leaq	.LC27(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	puts@PLT	#
# manual.c:199:             return;
	jmp	.L39	#
.L42:
# manual.c:198:             s1[i] > s2[i]? puts("First string is greater") : puts("First string is less than second");
	leaq	.LC28(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	puts@PLT	#
# manual.c:199:             return;
	jmp	.L39	#
.L41:
# manual.c:201:         i++;
	addl	$1, -4(%rbp)	#, i
.L40:
# manual.c:196:     while(s1[i] != '\0' && s2[i] != '\0') {
	movl	-4(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _13
	movq	-24(%rbp), %rax	# s1, tmp130
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# manual.c:196:     while(s1[i] != '\0' && s2[i] != '\0') {
	testb	%al, %al	# _15
	je	.L45	#,
# manual.c:196:     while(s1[i] != '\0' && s2[i] != '\0') {
	movl	-4(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _16
	movq	-32(%rbp), %rax	# s2, tmp132
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# manual.c:196:     while(s1[i] != '\0' && s2[i] != '\0') {
	testb	%al, %al	# _18
	jne	.L46	#,
.L45:
# manual.c:203:     puts("They are equal");
	leaq	.LC29(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	puts@PLT	#
.L39:
# manual.c:204: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	compareStr, .-compareStr
	.globl	comparePartialStr
	.type	comparePartialStr, @function
comparePartialStr:
.LFB14:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# s1, s1
	movq	%rsi, -80(%rbp)	# s2, s2
	movl	%edx, -84(%rbp)	# n, n
# manual.c:207: void comparePartialStr(const char *s1, const char *s2, int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -24(%rbp)	# tmp125, D.5532
	xorl	%eax, %eax	# tmp125
	movq	%rsp, %rax	#, tmp126
	movq	%rax, %rbx	# tmp126, saved_stack.4_27
# manual.c:208:     char d1[n+1], d2[n+1];
	movl	-84(%rbp), %eax	# n, tmp127
	addl	$1, %eax	#, _29
	movslq	%eax, %rdx	# _29, _1
# manual.c:208:     char d1[n+1], d2[n+1];
	subq	$1, %rdx	#, _2
	movq	%rdx, -56(%rbp)	# _3, D.5425
	cltq
	movl	$16, %edx	#, tmp157
	subq	$1, %rdx	#, tmp128
	addq	%rdx, %rax	# tmp128, tmp129
	movl	$16, %ecx	#, tmp158
	movl	$0, %edx	#, tmp132
	divq	%rcx	# tmp158
	imulq	$16, %rax, %rax	#, tmp131, tmp133
	subq	%rax, %rsp	# tmp133,
	movq	%rsp, %rax	#, tmp134
	movq	%rax, -48(%rbp)	# tmp134, d1.2
# manual.c:208:     char d1[n+1], d2[n+1];
	movl	-84(%rbp), %eax	# n, tmp135
	addl	$1, %eax	#, _37
	movslq	%eax, %rdx	# _37, _12
# manual.c:208:     char d1[n+1], d2[n+1];
	subq	$1, %rdx	#, _13
	movq	%rdx, -40(%rbp)	# _14, D.5432
	cltq
	movl	$16, %edx	#, tmp159
	subq	$1, %rdx	#, tmp136
	addq	%rdx, %rax	# tmp136, tmp137
	movl	$16, %esi	#, tmp160
	movl	$0, %edx	#, tmp140
	divq	%rsi	# tmp160
	imulq	$16, %rax, %rax	#, tmp139, tmp141
	subq	%rax, %rsp	# tmp141,
	movq	%rsp, %rax	#, tmp142
	movq	%rax, -32(%rbp)	# tmp142, d2.3
# manual.c:209:     strncpy(d1,s1,n);
	movl	-84(%rbp), %eax	# n, tmp143
	movslq	%eax, %rdx	# tmp143, _23
	movq	-72(%rbp), %rcx	# s1, tmp144
	movq	-48(%rbp), %rax	# d1.2, tmp145
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	strncpy@PLT	#
# manual.c:210:     strncpy(d2,s2,n);
	movl	-84(%rbp), %eax	# n, tmp146
	movslq	%eax, %rdx	# tmp146, _24
	movq	-80(%rbp), %rcx	# s2, tmp147
	movq	-32(%rbp), %rax	# d2.3, tmp148
	movq	%rcx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	strncpy@PLT	#
# manual.c:211:     d1[n] = '\0';
	movq	-48(%rbp), %rdx	# d1.2, tmp149
	movl	-84(%rbp), %eax	# n, tmp151
	cltq
	movb	$0, (%rdx,%rax)	#, (*d1.2_36)[n_28(D)]
# manual.c:212:     d2[n] = '\0';
	movq	-32(%rbp), %rdx	# d2.3, tmp152
	movl	-84(%rbp), %eax	# n, tmp154
	cltq
	movb	$0, (%rdx,%rax)	#, (*d2.3_44)[n_28(D)]
# manual.c:213:     compareStr(d1,d2);
	movq	-32(%rbp), %rdx	# d2.3, tmp155
	movq	-48(%rbp), %rax	# d1.2, tmp156
	movq	%rdx, %rsi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	compareStr	#
	movq	%rbx, %rsp	# saved_stack.4_27,
# manual.c:216: }
	nop	
	movq	-24(%rbp), %rax	# D.5532, tmp161
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp161
	je	.L48	#,
	call	__stack_chk_fail@PLT	#
.L48:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	comparePartialStr, .-comparePartialStr
	.globl	randomize
	.type	randomize, @function
randomize:
.LFB15:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
# manual.c:219: void randomize(void) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	movq	%rax, -8(%rbp)	# tmp144, D.5534
	xorl	%eax, %eax	# tmp144
# manual.c:221:     char article[5][5] = {"the", "a","one", "some", "any"}; 
	movl	$6645876, -192(%rbp)	#, article[0]
	movb	$0, -188(%rbp)	#, article[0]
	movl	$97, -187(%rbp)	#, article[1]
	movb	$0, -183(%rbp)	#, article[1]
	movl	$6647407, -182(%rbp)	#, article[2]
	movb	$0, -178(%rbp)	#, article[2]
	movl	$1701670771, -177(%rbp)	#, article[3]
	movb	$0, -173(%rbp)	#, article[3]
	movl	$7958113, -172(%rbp)	#, article[4]
	movb	$0, -168(%rbp)	#, article[4]
# manual.c:222:     char noun[5][5] = {"boy", "girl", "dog", "town", "car"};
	movl	$7958370, -160(%rbp)	#, noun[0]
	movb	$0, -156(%rbp)	#, noun[0]
	movl	$1819437415, -155(%rbp)	#, noun[1]
	movb	$0, -151(%rbp)	#, noun[1]
	movl	$6778724, -150(%rbp)	#, noun[2]
	movb	$0, -146(%rbp)	#, noun[2]
	movl	$1853321076, -145(%rbp)	#, noun[3]
	movb	$0, -141(%rbp)	#, noun[3]
	movl	$7496035, -140(%rbp)	#, noun[4]
	movb	$0, -136(%rbp)	#, noun[4]
# manual.c:223:     char verb[5][8] = {"drove", "jumped", "ran", "walked", "skipped"};
	movabsq	$435778712164, %rax	#, tmp239
	movq	%rax, -96(%rbp)	# tmp239, verb[0]
	movabsq	$110386840696170, %rax	#, tmp240
	movq	%rax, -88(%rbp)	# tmp240, verb[1]
	movq	$7233906, -80(%rbp)	#, verb[2]
	movabsq	$110386756739447, %rax	#, tmp241
	movq	%rax, -72(%rbp)	# tmp241, verb[3]
	movabsq	$28259031267765107, %rax	#, tmp242
	movq	%rax, -64(%rbp)	# tmp242, verb[4]
# manual.c:224:     char preposition[5][6] = {"to", "from", "over", "under", "on"};
	movl	$28532, -128(%rbp)	#, preposition[0]
	movw	$0, -124(%rbp)	#, preposition[0]
	movl	$1836020326, -122(%rbp)	#, preposition[1]
	movw	$0, -118(%rbp)	#, preposition[1]
	movl	$1919252079, -116(%rbp)	#, preposition[2]
	movw	$0, -112(%rbp)	#, preposition[2]
	movl	$1701080693, -110(%rbp)	#, preposition[3]
	movw	$114, -106(%rbp)	#, preposition[3]
	movl	$28271, -104(%rbp)	#, preposition[4]
	movw	$0, -100(%rbp)	#, preposition[4]
# manual.c:227:     char sentence[4*2+4*2+7+5+5+1] = "";
	movq	$0, -48(%rbp)	#, sentence
	movq	$0, -40(%rbp)	#, sentence
	movq	$0, -32(%rbp)	#, sentence
	movq	$0, -24(%rbp)	#, sentence
	movw	$0, -16(%rbp)	#, sentence
# manual.c:228:     srand(time(NULL));
	movl	$0, %edi	#,
	call	time@PLT	#
# manual.c:228:     srand(time(NULL));
	movl	%eax, %edi	# _2,
	call	srand@PLT	#
# manual.c:229:     strcat(sentence,article[rand()%5]);
	call	rand@PLT	#
	movl	%eax, %ecx	#, _3
# manual.c:229:     strcat(sentence,article[rand()%5]);
	movslq	%ecx, %rax	# _3, tmp145
	imulq	$1717986919, %rax, %rax	#, tmp145, tmp146
	shrq	$32, %rax	#, tmp147
	movl	%eax, %edx	# tmp147, tmp148
	sarl	%edx	# tmp148
	movl	%ecx, %eax	# _3, tmp149
	sarl	$31, %eax	#, tmp149
	subl	%eax, %edx	# tmp149, _4
	movl	%edx, %eax	# _4, tmp150
	sall	$2, %eax	#, tmp150
	addl	%edx, %eax	# _4, tmp150
	subl	%eax, %ecx	# tmp150, _3
	movl	%ecx, %edx	# _3, _4
# manual.c:229:     strcat(sentence,article[rand()%5]);
	leaq	-192(%rbp), %rcx	#, tmp151
	movslq	%edx, %rdx	# _4, tmp152
	movq	%rdx, %rax	# tmp152, tmp153
	salq	$2, %rax	#, tmp153
	addq	%rdx, %rax	# tmp152, tmp153
	leaq	(%rcx,%rax), %rdx	#, _5
# manual.c:229:     strcat(sentence,article[rand()%5]);
	leaq	-48(%rbp), %rax	#, tmp154
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp154,
	call	strcat@PLT	#
# manual.c:230:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp158, _61
# manual.c:230:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp159
	addq	%rdx, %rax	# _61, _62
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_62]
# manual.c:232:     srand(rand());
	call	rand@PLT	#
# manual.c:232:     srand(rand());
	movl	%eax, %edi	# _7,
	call	srand@PLT	#
# manual.c:233:     strcat(sentence,noun[rand()%5]);
	call	rand@PLT	#
	movl	%eax, %ecx	#, _8
# manual.c:233:     strcat(sentence,noun[rand()%5]);
	movslq	%ecx, %rax	# _8, tmp160
	imulq	$1717986919, %rax, %rax	#, tmp160, tmp161
	shrq	$32, %rax	#, tmp162
	movl	%eax, %edx	# tmp162, tmp163
	sarl	%edx	# tmp163
	movl	%ecx, %eax	# _8, tmp164
	sarl	$31, %eax	#, tmp164
	subl	%eax, %edx	# tmp164, _9
	movl	%edx, %eax	# _9, tmp165
	sall	$2, %eax	#, tmp165
	addl	%edx, %eax	# _9, tmp165
	subl	%eax, %ecx	# tmp165, _8
	movl	%ecx, %edx	# _8, _9
# manual.c:233:     strcat(sentence,noun[rand()%5]);
	leaq	-160(%rbp), %rcx	#, tmp166
	movslq	%edx, %rdx	# _9, tmp167
	movq	%rdx, %rax	# tmp167, tmp168
	salq	$2, %rax	#, tmp168
	addq	%rdx, %rax	# tmp167, tmp168
	leaq	(%rcx,%rax), %rdx	#, _10
# manual.c:233:     strcat(sentence,noun[rand()%5]);
	leaq	-48(%rbp), %rax	#, tmp169
	movq	%rdx, %rsi	# _10,
	movq	%rax, %rdi	# tmp169,
	call	strcat@PLT	#
# manual.c:234:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp173, _68
# manual.c:234:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp174
	addq	%rdx, %rax	# _68, _69
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_69]
# manual.c:235:     srand(rand());
	call	rand@PLT	#
# manual.c:235:     srand(rand());
	movl	%eax, %edi	# _12,
	call	srand@PLT	#
# manual.c:236:     strcat(sentence,verb[rand()%5]);
	call	rand@PLT	#
	movl	%eax, %ecx	#, _13
# manual.c:236:     strcat(sentence,verb[rand()%5]);
	movslq	%ecx, %rax	# _13, tmp175
	imulq	$1717986919, %rax, %rax	#, tmp175, tmp176
	shrq	$32, %rax	#, tmp177
	movl	%eax, %edx	# tmp177, tmp178
	sarl	%edx	# tmp178
	movl	%ecx, %eax	# _13, tmp179
	sarl	$31, %eax	#, tmp179
	subl	%eax, %edx	# tmp179, _14
	movl	%edx, %eax	# _14, tmp180
	sall	$2, %eax	#, tmp180
	addl	%edx, %eax	# _14, tmp180
	subl	%eax, %ecx	# tmp180, _13
	movl	%ecx, %edx	# _13, _14
# manual.c:236:     strcat(sentence,verb[rand()%5]);
	leaq	-96(%rbp), %rax	#, tmp181
	movslq	%edx, %rdx	# _14, tmp182
	salq	$3, %rdx	#, tmp183
	addq	%rax, %rdx	# tmp181, _15
# manual.c:236:     strcat(sentence,verb[rand()%5]);
	leaq	-48(%rbp), %rax	#, tmp184
	movq	%rdx, %rsi	# _15,
	movq	%rax, %rdi	# tmp184,
	call	strcat@PLT	#
# manual.c:237:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp186
	movq	%rax, %rdi	# tmp186,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp188, _75
# manual.c:237:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp189
	addq	%rdx, %rax	# _75, _76
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_76]
# manual.c:238:     srand(rand());
	call	rand@PLT	#
# manual.c:238:     srand(rand());
	movl	%eax, %edi	# _17,
	call	srand@PLT	#
# manual.c:239:     strcat(sentence,preposition[rand()%5]);
	call	rand@PLT	#
	movl	%eax, %ecx	#, _18
# manual.c:239:     strcat(sentence,preposition[rand()%5]);
	movslq	%ecx, %rax	# _18, tmp190
	imulq	$1717986919, %rax, %rax	#, tmp190, tmp191
	shrq	$32, %rax	#, tmp192
	movl	%eax, %edx	# tmp192, tmp193
	sarl	%edx	# tmp193
	movl	%ecx, %eax	# _18, tmp194
	sarl	$31, %eax	#, tmp194
	subl	%eax, %edx	# tmp194, _19
	movl	%edx, %eax	# _19, tmp195
	sall	$2, %eax	#, tmp195
	addl	%edx, %eax	# _19, tmp195
	subl	%eax, %ecx	# tmp195, _18
	movl	%ecx, %edx	# _18, _19
# manual.c:239:     strcat(sentence,preposition[rand()%5]);
	leaq	-128(%rbp), %rcx	#, tmp196
	movslq	%edx, %rdx	# _19, tmp197
	movq	%rdx, %rax	# tmp197, tmp198
	addq	%rax, %rax	# tmp198
	addq	%rdx, %rax	# tmp197, tmp198
	addq	%rax, %rax	# tmp199
	leaq	(%rcx,%rax), %rdx	#, _20
# manual.c:239:     strcat(sentence,preposition[rand()%5]);
	leaq	-48(%rbp), %rax	#, tmp200
	movq	%rdx, %rsi	# _20,
	movq	%rax, %rdi	# tmp200,
	call	strcat@PLT	#
# manual.c:240:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp202
	movq	%rax, %rdi	# tmp202,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp204, _82
# manual.c:240:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp205
	addq	%rdx, %rax	# _82, _83
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_83]
# manual.c:241:     srand(rand());
	call	rand@PLT	#
# manual.c:241:     srand(rand());
	movl	%eax, %edi	# _22,
	call	srand@PLT	#
# manual.c:242:     strcat(sentence,article[rand()%5]);
	call	rand@PLT	#
	movl	%eax, %ecx	#, _23
# manual.c:242:     strcat(sentence,article[rand()%5]);
	movslq	%ecx, %rax	# _23, tmp206
	imulq	$1717986919, %rax, %rax	#, tmp206, tmp207
	shrq	$32, %rax	#, tmp208
	movl	%eax, %edx	# tmp208, tmp209
	sarl	%edx	# tmp209
	movl	%ecx, %eax	# _23, tmp210
	sarl	$31, %eax	#, tmp210
	subl	%eax, %edx	# tmp210, _24
	movl	%edx, %eax	# _24, tmp211
	sall	$2, %eax	#, tmp211
	addl	%edx, %eax	# _24, tmp211
	subl	%eax, %ecx	# tmp211, _23
	movl	%ecx, %edx	# _23, _24
# manual.c:242:     strcat(sentence,article[rand()%5]);
	leaq	-192(%rbp), %rcx	#, tmp212
	movslq	%edx, %rdx	# _24, tmp213
	movq	%rdx, %rax	# tmp213, tmp214
	salq	$2, %rax	#, tmp214
	addq	%rdx, %rax	# tmp213, tmp214
	leaq	(%rcx,%rax), %rdx	#, _25
# manual.c:242:     strcat(sentence,article[rand()%5]);
	leaq	-48(%rbp), %rax	#, tmp215
	movq	%rdx, %rsi	# _25,
	movq	%rax, %rdi	# tmp215,
	call	strcat@PLT	#
# manual.c:243:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp217
	movq	%rax, %rdi	# tmp217,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp219, _89
# manual.c:243:     strcat(sentence, " ");
	leaq	-48(%rbp), %rax	#, tmp220
	addq	%rdx, %rax	# _89, _90
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_90]
# manual.c:244:     srand(rand());
	call	rand@PLT	#
# manual.c:244:     srand(rand());
	movl	%eax, %edi	# _27,
	call	srand@PLT	#
# manual.c:245:     strcat(sentence,noun[rand()%5]);
	call	rand@PLT	#
	movl	%eax, %ecx	#, _28
# manual.c:245:     strcat(sentence,noun[rand()%5]);
	movslq	%ecx, %rax	# _28, tmp221
	imulq	$1717986919, %rax, %rax	#, tmp221, tmp222
	shrq	$32, %rax	#, tmp223
	movl	%eax, %edx	# tmp223, tmp224
	sarl	%edx	# tmp224
	movl	%ecx, %eax	# _28, tmp225
	sarl	$31, %eax	#, tmp225
	subl	%eax, %edx	# tmp225, _29
	movl	%edx, %eax	# _29, tmp226
	sall	$2, %eax	#, tmp226
	addl	%edx, %eax	# _29, tmp226
	subl	%eax, %ecx	# tmp226, _28
	movl	%ecx, %edx	# _28, _29
# manual.c:245:     strcat(sentence,noun[rand()%5]);
	leaq	-160(%rbp), %rcx	#, tmp227
	movslq	%edx, %rdx	# _29, tmp228
	movq	%rdx, %rax	# tmp228, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# tmp228, tmp229
	leaq	(%rcx,%rax), %rdx	#, _30
# manual.c:245:     strcat(sentence,noun[rand()%5]);
	leaq	-48(%rbp), %rax	#, tmp230
	movq	%rdx, %rsi	# _30,
	movq	%rax, %rdi	# tmp230,
	call	strcat@PLT	#
# manual.c:246:     strcat(sentence, ".");
	leaq	-48(%rbp), %rax	#, tmp232
	movq	%rax, %rdi	# tmp232,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp234, _96
# manual.c:246:     strcat(sentence, ".");
	leaq	-48(%rbp), %rax	#, tmp235
	addq	%rdx, %rax	# _96, _97
	movw	$46, (%rax)	#, MEM <char[1:2]> [(void *)_97]
# manual.c:247:     sentence[0] = toupper(sentence[0]);
	movzbl	-48(%rbp), %eax	# sentence[0], _31
# manual.c:247:     sentence[0] = toupper(sentence[0]);
	movsbl	%al, %eax	# _31, _32
	movl	%eax, %edi	# _32,
	call	toupper@PLT	#
# manual.c:247:     sentence[0] = toupper(sentence[0]);
	movb	%al, -48(%rbp)	# _34, sentence[0]
# manual.c:248:     puts(sentence);
	leaq	-48(%rbp), %rax	#, tmp236
	movq	%rax, %rdi	# tmp236,
	call	puts@PLT	#
# manual.c:249: }
	nop	
	movq	-8(%rbp), %rax	# D.5534, tmp237
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp237
	je	.L50	#,
	call	__stack_chk_fail@PLT	#
.L50:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	randomize, .-randomize
	.section	.rodata
.LC30:
	.string	")"
.LC31:
	.string	"-"
	.align 8
.LC32:
	.string	"Area code: %d, Ending num: %ld\n"
	.text
	.globl	tokenizeTelNum
	.type	tokenizeTelNum, @function
tokenizeTelNum:
.LFB16:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# num, num
# manual.c:252: int tokenizeTelNum(char *num) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.5535
	xorl	%eax, %eax	# tmp106
# manual.c:253:     char *middle = NULL,*last4 = NULL;
	movq	$0, -48(%rbp)	#, middle
# manual.c:253:     char *middle = NULL,*last4 = NULL;
	movq	$0, -40(%rbp)	#, last4
# manual.c:255:     num++;
	addq	$1, -72(%rbp)	#, num
# manual.c:258:     strtok_r(num, ")", &middle);
	leaq	-48(%rbp), %rdx	#, tmp107
	movq	-72(%rbp), %rax	# num, tmp108
	leaq	.LC30(%rip), %rcx	#, tmp109
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp108,
	call	strtok_r@PLT	#
# manual.c:259:     int area_code = strtoInt(num);
	movq	-72(%rbp), %rax	# num, tmp110
	movq	%rax, %rdi	# tmp110,
	call	strtoInt	#
	movl	%eax, -52(%rbp)	# tmp111, area_code
# manual.c:261:     middle++;
	movq	-48(%rbp), %rax	# middle, middle.5_1
	addq	$1, %rax	#, _2
	movq	%rax, -48(%rbp)	# _2, middle
# manual.c:262:     strtok_r(middle, "-", &last4);
	movq	-48(%rbp), %rax	# middle, middle.6_3
	leaq	-40(%rbp), %rdx	#, tmp112
	leaq	.LC31(%rip), %rcx	#, tmp113
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# middle.6_3,
	call	strtok_r@PLT	#
# manual.c:263:     char phone_str[10] = "";
	movq	$0, -18(%rbp)	#, phone_str
	movw	$0, -10(%rbp)	#, phone_str
# manual.c:264:     strcat(phone_str,middle);
	movq	-48(%rbp), %rdx	# middle, middle.7_4
	leaq	-18(%rbp), %rax	#, tmp114
	movq	%rdx, %rsi	# middle.7_4,
	movq	%rax, %rdi	# tmp114,
	call	strcat@PLT	#
# manual.c:265:     strcat(phone_str, last4);
	movq	-40(%rbp), %rdx	# last4, last4.8_5
	leaq	-18(%rbp), %rax	#, tmp115
	movq	%rdx, %rsi	# last4.8_5,
	movq	%rax, %rdi	# tmp115,
	call	strcat@PLT	#
# manual.c:266:     long int phone_num = strtoInt(phone_str); 
	leaq	-18(%rbp), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	strtoInt	#
# manual.c:266:     long int phone_num = strtoInt(phone_str); 
	cltq
	movq	%rax, -32(%rbp)	# tmp117, phone_num
# manual.c:267:     printf("Area code: %d, Ending num: %ld\n", area_code,phone_num);
	movq	-32(%rbp), %rdx	# phone_num, tmp118
	movl	-52(%rbp), %eax	# area_code, tmp119
	movl	%eax, %esi	# tmp119,
	leaq	.LC32(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:269:     return area_code;
	movl	-52(%rbp), %eax	# area_code, _23
# manual.c:270: }
	movq	-8(%rbp), %rdx	# D.5535, tmp122
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	je	.L53	#,
	call	__stack_chk_fail@PLT	#
.L53:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	tokenizeTelNum, .-tokenizeTelNum
	.section	.rodata
.LC33:
	.string	" "
	.text
	.globl	reverse
	.type	reverse, @function
reverse:
.LFB17:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# text, text
# manual.c:277: void reverse(char *text) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	movq	%rax, -24(%rbp)	# tmp132, D.5539
	xorl	%eax, %eax	# tmp132
	movq	%rsp, %rax	#, tmp133
	movq	%rax, %rbx	# tmp133, saved_stack.12_40
# manual.c:278:     int len = strlen(text);
	movq	-104(%rbp), %rax	# text, tmp134
	movq	%rax, %rdi	# tmp134,
	call	strlen@PLT	#
# manual.c:278:     int len = strlen(text);
	movl	%eax, -72(%rbp)	# _1, len
# manual.c:279:     char reversed[len+1];
	movl	-72(%rbp), %eax	# len, tmp135
	addl	$1, %eax	#, _43
	movslq	%eax, %rdx	# _43, _2
# manual.c:279:     char reversed[len+1];
	subq	$1, %rdx	#, _3
	movq	%rdx, -56(%rbp)	# _4, D.5455
	cltq
	movl	$16, %edx	#, tmp178
	subq	$1, %rdx	#, tmp136
	addq	%rdx, %rax	# tmp136, tmp137
	movl	$16, %esi	#, tmp179
	movl	$0, %edx	#, tmp140
	divq	%rsi	# tmp179
	imulq	$16, %rax, %rax	#, tmp139, tmp141
	subq	%rax, %rsp	# tmp141,
	movq	%rsp, %rax	#, tmp142
	movq	%rax, -48(%rbp)	# tmp142, reversed.9
# manual.c:280:     reversed[len] = '\0';
	movq	-48(%rbp), %rdx	# reversed.9, tmp143
	movl	-72(%rbp), %eax	# len, tmp145
	cltq
	movb	$0, (%rdx,%rax)	#, (*reversed.9_50)[len_42]
# manual.c:282:     int current_pos = len-1;
	movl	-72(%rbp), %eax	# len, tmp149
	subl	$1, %eax	#, current_pos_52
	movl	%eax, -84(%rbp)	# current_pos_52, current_pos
# manual.c:283:     char text_copy[len+1];
	movl	-72(%rbp), %eax	# len, tmp150
	addl	$1, %eax	#, _53
	movslq	%eax, %rdx	# _53, _13
# manual.c:283:     char text_copy[len+1];
	subq	$1, %rdx	#, _14
	movq	%rdx, -40(%rbp)	# _15, D.5462
	cltq
	movl	$16, %edx	#, tmp180
	subq	$1, %rdx	#, tmp151
	addq	%rdx, %rax	# tmp151, tmp152
	movl	$16, %ecx	#, tmp181
	movl	$0, %edx	#, tmp155
	divq	%rcx	# tmp181
	imulq	$16, %rax, %rax	#, tmp154, tmp156
	subq	%rax, %rsp	# tmp156,
	movq	%rsp, %rax	#, tmp157
	movq	%rax, -32(%rbp)	# tmp157, text_copy.10
# manual.c:285:     strcpy(text_copy,text);
	movq	-104(%rbp), %rdx	# text, tmp158
	movq	-32(%rbp), %rax	# text_copy.10, tmp159
	movq	%rdx, %rsi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	strcpy@PLT	#
# manual.c:289:     for(int i=0; i < len; i++) {
	movl	$0, -80(%rbp)	#, i
# manual.c:289:     for(int i=0; i < len; i++) {
	jmp	.L55	#
.L56:
# manual.c:290:         reversed[i] = ' ';
	movq	-48(%rbp), %rdx	# reversed.9, tmp160
	movl	-80(%rbp), %eax	# i, tmp162
	cltq
	movb	$32, (%rdx,%rax)	#, (*reversed.9_50)[i_33]
# manual.c:289:     for(int i=0; i < len; i++) {
	addl	$1, -80(%rbp)	#, i
.L55:
# manual.c:289:     for(int i=0; i < len; i++) {
	movl	-80(%rbp), %eax	# i, tmp163
	cmpl	-72(%rbp), %eax	# len, tmp163
	jl	.L56	#,
# manual.c:292:     while(strtok_r(text_copy," ",&save_ptr) != NULL) {
	jmp	.L57	#
.L60:
# manual.c:294:         int tok_len = strlen(text_copy);
	movq	-32(%rbp), %rax	# text_copy.10, tmp164
	movq	%rax, %rdi	# tmp164,
	call	strlen@PLT	#
# manual.c:294:         int tok_len = strlen(text_copy);
	movl	%eax, -68(%rbp)	# _24, tok_len
# manual.c:295:         int i= 0;
	movl	$0, -76(%rbp)	#, i
# manual.c:296:         for(; i < tok_len; i++) {
	jmp	.L58	#
.L59:
# manual.c:297:             reversed[current_pos-i] = text_copy[tok_len-1-i]; // -1 is there to dodge null terminator 
	movl	-68(%rbp), %eax	# tok_len, tmp165
	subl	$1, %eax	#, _25
# manual.c:297:             reversed[current_pos-i] = text_copy[tok_len-1-i]; // -1 is there to dodge null terminator 
	subl	-76(%rbp), %eax	# i, _25
	movl	%eax, %ecx	# _25, _26
# manual.c:297:             reversed[current_pos-i] = text_copy[tok_len-1-i]; // -1 is there to dodge null terminator 
	movl	-84(%rbp), %eax	# current_pos, tmp166
	subl	-76(%rbp), %eax	# i, tmp166
	movl	%eax, %esi	# tmp166, _27
# manual.c:297:             reversed[current_pos-i] = text_copy[tok_len-1-i]; // -1 is there to dodge null terminator 
	movq	-32(%rbp), %rdx	# text_copy.10, tmp167
	movslq	%ecx, %rax	# _26, tmp168
	movzbl	(%rdx,%rax), %ecx	# (*text_copy.10_60)[_26], _28
# manual.c:297:             reversed[current_pos-i] = text_copy[tok_len-1-i]; // -1 is there to dodge null terminator 
	movq	-48(%rbp), %rdx	# reversed.9, tmp169
	movslq	%esi, %rax	# _27, tmp170
	movb	%cl, (%rdx,%rax)	# _28, (*reversed.9_50)[_27]
# manual.c:296:         for(; i < tok_len; i++) {
	addl	$1, -76(%rbp)	#, i
.L58:
# manual.c:296:         for(; i < tok_len; i++) {
	movl	-76(%rbp), %eax	# i, tmp171
	cmpl	-68(%rbp), %eax	# tok_len, tmp171
	jl	.L59	#,
# manual.c:300:         current_pos -= i+1;
	movl	-76(%rbp), %eax	# i, tmp172
	addl	$1, %eax	#, _29
# manual.c:300:         current_pos -= i+1;
	subl	%eax, -84(%rbp)	# _29, current_pos
# manual.c:301:         strcpy(text_copy, save_ptr);
	movq	-64(%rbp), %rdx	# save_ptr, save_ptr.11_30
	movq	-32(%rbp), %rax	# text_copy.10, tmp173
	movq	%rdx, %rsi	# save_ptr.11_30,
	movq	%rax, %rdi	# tmp173,
	call	strcpy@PLT	#
.L57:
# manual.c:292:     while(strtok_r(text_copy," ",&save_ptr) != NULL) {
	leaq	-64(%rbp), %rdx	#, tmp174
	movq	-32(%rbp), %rax	# text_copy.10, tmp175
	leaq	.LC33(%rip), %rcx	#, tmp176
	movq	%rcx, %rsi	# tmp176,
	movq	%rax, %rdi	# tmp175,
	call	strtok_r@PLT	#
# manual.c:292:     while(strtok_r(text_copy," ",&save_ptr) != NULL) {
	testq	%rax, %rax	# _31
	jne	.L60	#,
# manual.c:303:     puts(reversed);
	movq	-48(%rbp), %rax	# reversed.9, tmp177
	movq	%rax, %rdi	# tmp177,
	call	puts@PLT	#
	movq	%rbx, %rsp	# saved_stack.12_40,
# manual.c:304: }
	nop	
	movq	-24(%rbp), %rax	# D.5539, tmp182
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp182
	je	.L61	#,
	call	__stack_chk_fail@PLT	#
.L61:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	reverse, .-reverse
	.globl	countSubstr
	.type	countSubstr, @function
countSubstr:
.LFB18:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# line, line
	movq	%rsi, -48(%rbp)	# sub, sub
# manual.c:309:     main_len = strlen(line);
	movq	-40(%rbp), %rax	# line, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strlen@PLT	#
# manual.c:309:     main_len = strlen(line);
	movl	%eax, -16(%rbp)	# _1, main_len
# manual.c:310:     sub_len = strlen(sub);
	movq	-48(%rbp), %rax	# sub, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen@PLT	#
# manual.c:310:     sub_len = strlen(sub);
	movl	%eax, -12(%rbp)	# _2, sub_len
# manual.c:311:     int count = 0;
	movl	$0, -20(%rbp)	#, count
# manual.c:322:     char *line_ptr = strstr(line,sub);
	movq	-48(%rbp), %rdx	# sub, tmp104
	movq	-40(%rbp), %rax	# line, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	strstr@PLT	#
	movq	%rax, -8(%rbp)	# tmp106, line_ptr
# manual.c:323:     while(line_ptr != NULL) {
	jmp	.L63	#
.L64:
# manual.c:324:         line_ptr++;
	addq	$1, -8(%rbp)	#, line_ptr
# manual.c:325:         count++;
	addl	$1, -20(%rbp)	#, count
# manual.c:326:         line_ptr = strstr(line_ptr,sub); // I DONT LIKE IT
	movq	-48(%rbp), %rdx	# sub, tmp107
	movq	-8(%rbp), %rax	# line_ptr, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	strstr@PLT	#
	movq	%rax, -8(%rbp)	# tmp109, line_ptr
.L63:
# manual.c:323:     while(line_ptr != NULL) {
	cmpq	$0, -8(%rbp)	#, line_ptr
	jne	.L64	#,
# manual.c:328:     return count;
	movl	-20(%rbp), %eax	# count, _12
# manual.c:330: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	countSubstr, .-countSubstr
	.globl	countChar
	.type	countChar, @function
countChar:
.LFB19:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# line, line
	movl	%esi, %eax	# c, tmp102
	movb	%al, -28(%rbp)	# tmp103, c
# manual.c:337:     int count = 0;    
	movl	$0, -12(%rbp)	#, count
# manual.c:345:     line_ptr = strchr(line,c);
	movsbl	-28(%rbp), %edx	# c, _1
	movq	-24(%rbp), %rax	# line, tmp104
	movl	%edx, %esi	# _1,
	movq	%rax, %rdi	# tmp104,
	call	strchr@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, line_ptr
# manual.c:346:     while(line_ptr != NULL) {
	jmp	.L67	#
.L68:
# manual.c:347:         line_ptr++;
	addq	$1, -8(%rbp)	#, line_ptr
# manual.c:348:         count++;
	addl	$1, -12(%rbp)	#, count
# manual.c:349:         line_ptr = strchr(line_ptr,c);
	movsbl	-28(%rbp), %edx	# c, _2
	movq	-8(%rbp), %rax	# line_ptr, tmp106
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# tmp106,
	call	strchr@PLT	#
	movq	%rax, -8(%rbp)	# tmp107, line_ptr
.L67:
# manual.c:346:     while(line_ptr != NULL) {
	cmpq	$0, -8(%rbp)	#, line_ptr
	jne	.L68	#,
# manual.c:351:     return count;
	movl	-12(%rbp), %eax	# count, _10
# manual.c:353: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	countChar, .-countChar
	.section	.rodata
.LC34:
	.string	"%c: %d\n"
	.text
	.globl	countAlpha
	.type	countAlpha, @function
countAlpha:
.LFB20:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -184(%rbp)	# string, string
# manual.c:357: void countAlpha(char *string) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.5541
	xorl	%eax, %eax	# tmp112
# manual.c:359:     char letters[26] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
	movabsq	$7523094288207667809, %rax	#, tmp133
	movabsq	$8101815670912281193, %rdx	#,
	movq	%rax, -48(%rbp)	# tmp133, letters
	movq	%rdx, -40(%rbp)	#, letters
	movabsq	$8246496016588434539, %rax	#, tmp134
	movabsq	$8825217399293047923, %rdx	#,
	movq	%rax, -38(%rbp)	# tmp134, letters
	movq	%rdx, -30(%rbp)	#, letters
# manual.c:360:     puts(string);
	movq	-184(%rbp), %rax	# string, tmp113
	movq	%rax, %rdi	# tmp113,
	call	puts@PLT	#
# manual.c:361:     for(int i = 0; i < 26; i++) {
	movl	$0, -164(%rbp)	#, i
# manual.c:361:     for(int i = 0; i < 26; i++) {
	jmp	.L71	#
.L72:
# manual.c:362:         counts[i] = countChar(string,letters[i]);
	movl	-164(%rbp), %eax	# i, tmp115
	cltq
	movzbl	-48(%rbp,%rax), %eax	# letters[i_14], _1
# manual.c:362:         counts[i] = countChar(string,letters[i]);
	movsbl	%al, %edx	# _1, _2
	movq	-184(%rbp), %rax	# string, tmp116
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# tmp116,
	call	countChar	#
# manual.c:362:         counts[i] = countChar(string,letters[i]);
	movl	-164(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movl	%eax, -160(%rbp,%rdx,4)	# _3, counts[i_14]
# manual.c:363:         counts[i] += countChar(string,toupper(letters[i]));
	movl	-164(%rbp), %eax	# i, tmp120
	cltq
	movzbl	-48(%rbp,%rax), %eax	# letters[i_14], _4
# manual.c:363:         counts[i] += countChar(string,toupper(letters[i]));
	movsbl	%al, %eax	# _4, _5
	movl	%eax, %edi	# _5,
	call	toupper@PLT	#
# manual.c:363:         counts[i] += countChar(string,toupper(letters[i]));
	movsbl	%al, %edx	# _7, _8
	movq	-184(%rbp), %rax	# string, tmp121
	movl	%edx, %esi	# _8,
	movq	%rax, %rdi	# tmp121,
	call	countChar	#
# manual.c:363:         counts[i] += countChar(string,toupper(letters[i]));
	movl	-164(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, tmp122
	movl	-160(%rbp,%rdx,4), %edx	# counts[i_14], _9
# manual.c:363:         counts[i] += countChar(string,toupper(letters[i]));
	addl	%eax, %edx	# _26, _10
	movl	-164(%rbp), %eax	# i, tmp125
	cltq
	movl	%edx, -160(%rbp,%rax,4)	# _10, counts[i_14]
# manual.c:364:         printf("%c: %d\n",letters[i], counts[i]);
	movl	-164(%rbp), %eax	# i, tmp127
	cltq
	movl	-160(%rbp,%rax,4), %edx	# counts[i_14], _11
# manual.c:364:         printf("%c: %d\n",letters[i], counts[i]);
	movl	-164(%rbp), %eax	# i, tmp129
	cltq
	movzbl	-48(%rbp,%rax), %eax	# letters[i_14], _12
# manual.c:364:         printf("%c: %d\n",letters[i], counts[i]);
	movsbl	%al, %eax	# _12, _13
	movl	%eax, %esi	# _13,
	leaq	.LC34(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	movl	$0, %eax	#,
	call	printf@PLT	#
# manual.c:361:     for(int i = 0; i < 26; i++) {
	addl	$1, -164(%rbp)	#, i
.L71:
# manual.c:361:     for(int i = 0; i < 26; i++) {
	cmpl	$25, -164(%rbp)	#, i
	jle	.L72	#,
# manual.c:367: }
	nop	
	movq	-8(%rbp), %rax	# D.5541, tmp131
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	je	.L73	#,
	call	__stack_chk_fail@PLT	#
.L73:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	countAlpha, .-countAlpha
	.globl	countWords
	.type	countWords, @function
countWords:
.LFB21:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# string, string
# manual.c:371:     int len = strlen(string);
	movq	-24(%rbp), %rax	# string, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# manual.c:371:     int len = strlen(string);
	movl	%eax, -12(%rbp)	# _1, len
# manual.c:372:     char *temp = strtok(string, " ");
	movq	-24(%rbp), %rax	# string, tmp102
	leaq	.LC33(%rip), %rdx	#, tmp103
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp102,
	call	strtok@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, temp
# manual.c:373:     int count = 0;
	movl	$0, -16(%rbp)	#, count
# manual.c:374:     while(temp != NULL) 
	jmp	.L75	#
.L76:
# manual.c:376:         count++;
	addl	$1, -16(%rbp)	#, count
# manual.c:377:         temp = strtok(NULL, " "); // does this use some kinda stream?
	leaq	.LC33(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$0, %edi	#,
	call	strtok@PLT	#
	movq	%rax, -8(%rbp)	# tmp106, temp
.L75:
# manual.c:374:     while(temp != NULL) 
	cmpq	$0, -8(%rbp)	#, temp
	jne	.L76	#,
# manual.c:389:     return count;
	movl	-16(%rbp), %eax	# count, _11
# manual.c:390: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	countWords, .-countWords
	.globl	startsWithB
	.type	startsWithB, @function
startsWithB:
.LFB22:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# string, string
# manual.c:397:     int i = 0;
	movl	$0, -4(%rbp)	#, i
# manual.c:398:     while( string[i] != NULL) { 
	jmp	.L79	#
.L82:
# manual.c:399:         if(string[i][0] == 'b' || string[i][0] == 'B') {
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# string, tmp117
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# manual.c:399:         if(string[i][0] == 'b' || string[i][0] == 'B') {
	movzbl	(%rax), %eax	# *_4, _5
# manual.c:399:         if(string[i][0] == 'b' || string[i][0] == 'B') {
	cmpb	$98, %al	#, _5
	je	.L80	#,
# manual.c:399:         if(string[i][0] == 'b' || string[i][0] == 'B') {
	movl	-4(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, _7
	movq	-24(%rbp), %rax	# string, tmp119
	addq	%rdx, %rax	# _7, _8
	movq	(%rax), %rax	# *_8, _9
# manual.c:399:         if(string[i][0] == 'b' || string[i][0] == 'B') {
	movzbl	(%rax), %eax	# *_9, _10
# manual.c:399:         if(string[i][0] == 'b' || string[i][0] == 'B') {
	cmpb	$66, %al	#, _10
	jne	.L81	#,
.L80:
# manual.c:400:             puts(string[i]);
	movl	-4(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-24(%rbp), %rax	# string, tmp121
	addq	%rdx, %rax	# _12, _13
# manual.c:400:             puts(string[i]);
	movq	(%rax), %rax	# *_13, _14
	movq	%rax, %rdi	# _14,
	call	puts@PLT	#
.L81:
# manual.c:402:         i++;
	addl	$1, -4(%rbp)	#, i
.L79:
# manual.c:398:     while( string[i] != NULL) { 
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, _16
	movq	-24(%rbp), %rax	# string, tmp123
	addq	%rdx, %rax	# _16, _17
	movq	(%rax), %rax	# *_17, _18
# manual.c:398:     while( string[i] != NULL) { 
	testq	%rax, %rax	# _18
	jne	.L82	#,
# manual.c:404: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	startsWithB, .-startsWithB
	.globl	endsWithed
	.type	endsWithed, @function
endsWithed:
.LFB23:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# string, string
# manual.c:408:      int i = 0;
	movl	$0, -8(%rbp)	#, i
# manual.c:409:     while( string[i] != NULL) { 
	jmp	.L84	#
.L86:
# manual.c:410:         int len = strlen(string[i]);
	movl	-8(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# string, tmp128
	addq	%rdx, %rax	# _2, _3
# manual.c:410:         int len = strlen(string[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# manual.c:410:         int len = strlen(string[i]);
	movl	%eax, -4(%rbp)	# _5, len
# manual.c:411:         if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
	movl	-8(%rbp), %eax	# i, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, _7
	movq	-24(%rbp), %rax	# string, tmp130
	addq	%rdx, %rax	# _7, _8
	movq	(%rax), %rax	# *_8, _9
# manual.c:411:         if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
	movl	-4(%rbp), %edx	# len, tmp131
	movslq	%edx, %rdx	# tmp131, _10
	subq	$2, %rdx	#, _11
	addq	%rdx, %rax	# _11, _12
	movzbl	(%rax), %eax	# *_12, _13
# manual.c:411:         if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
	cmpb	$101, %al	#, _13
	jne	.L85	#,
# manual.c:411:         if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
	movl	-8(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, _15
	movq	-24(%rbp), %rax	# string, tmp133
	addq	%rdx, %rax	# _15, _16
	movq	(%rax), %rax	# *_16, _17
# manual.c:411:         if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
	movl	-4(%rbp), %edx	# len, tmp134
	movslq	%edx, %rdx	# tmp134, _18
	subq	$1, %rdx	#, _19
	addq	%rdx, %rax	# _19, _20
	movzbl	(%rax), %eax	# *_20, _21
# manual.c:411:         if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
	cmpb	$100, %al	#, _21
	jne	.L85	#,
# manual.c:412:             puts(string[i]);
	movl	-8(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, _23
	movq	-24(%rbp), %rax	# string, tmp136
	addq	%rdx, %rax	# _23, _24
# manual.c:412:             puts(string[i]);
	movq	(%rax), %rax	# *_24, _25
	movq	%rax, %rdi	# _25,
	call	puts@PLT	#
.L85:
# manual.c:414:         i++;
	addl	$1, -8(%rbp)	#, i
.L84:
# manual.c:409:     while( string[i] != NULL) { 
	movl	-8(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, _27
	movq	-24(%rbp), %rax	# string, tmp138
	addq	%rdx, %rax	# _27, _28
	movq	(%rax), %rax	# *_28, _29
# manual.c:409:     while( string[i] != NULL) { 
	testq	%rax, %rax	# _29
	jne	.L86	#,
# manual.c:416: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	endsWithed, .-endsWithed
	.section	.rodata
	.align 8
.LC23:
	.long	0
	.long	1076101120
	.align 4
.LC24:
	.long	-1082130432
	.align 4
.LC25:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20250207"
	.section	.note.GNU-stack,"",@progbits
