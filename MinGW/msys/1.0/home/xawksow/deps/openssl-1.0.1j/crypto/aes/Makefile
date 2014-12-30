#
# crypto/aes/Makefile
#

DIR=	aes
TOP=	../..
CC=	cc
CPP=	$(CC) -E
INCLUDES=
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

AES_ENC=aes_core.o aes_cbc.o

CFLAGS= $(INCLUDES) $(CFLAG)
ASFLAGS= $(INCLUDES) $(ASFLAG)
AFLAGS= $(ASFLAGS)

GENERAL=Makefile
#TEST=aestest.c
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=aes_core.c aes_misc.c aes_ecb.c aes_cbc.c aes_cfb.c aes_ofb.c \
       aes_ctr.c aes_ige.c aes_wrap.c
LIBOBJ=aes_misc.o aes_ecb.o aes_cfb.o aes_ofb.o aes_ctr.o aes_ige.o aes_wrap.o \
       $(AES_ENC)

SRC= $(LIBSRC)

EXHEADER= aes.h
HEADER= aes_locl.h $(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:	lib

lib:	$(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

aes-ia64.s: asm/aes-ia64.S
	$(CC) $(CFLAGS) -E asm/aes-ia64.S > $@

aes-586.s:	asm/aes-586.pl ../perlasm/x86asm.pl
	$(PERL) asm/aes-586.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@
vpaes-x86.s:	asm/vpaes-x86.pl ../perlasm/x86asm.pl
	$(PERL) asm/vpaes-x86.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@
aesni-x86.s:	asm/aesni-x86.pl ../perlasm/x86asm.pl
	$(PERL) asm/aesni-x86.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@

aes-x86_64.s: asm/aes-x86_64.pl
	$(PERL) asm/aes-x86_64.pl $(PERLASM_SCHEME) > $@
vpaes-x86_64.s:	asm/vpaes-x86_64.pl
	$(PERL) asm/vpaes-x86_64.pl $(PERLASM_SCHEME) > $@
bsaes-x86_64.s:	asm/bsaes-x86_64.pl
	$(PERL) asm/bsaes-x86_64.pl $(PERLASM_SCHEME) > $@
aesni-x86_64.s: asm/aesni-x86_64.pl
	$(PERL) asm/aesni-x86_64.pl $(PERLASM_SCHEME) > $@
aesni-sha1-x86_64.s:	asm/aesni-sha1-x86_64.pl
	$(PERL) asm/aesni-sha1-x86_64.pl $(PERLASM_SCHEME) > $@

aes-sparcv9.s: asm/aes-sparcv9.pl
	$(PERL) asm/aes-sparcv9.pl $(CFLAGS) > $@

aes-ppc.s:	asm/aes-ppc.pl
	$(PERL) asm/aes-ppc.pl $(PERLASM_SCHEME) $@

aes-parisc.s:	asm/aes-parisc.pl
	$(PERL) asm/aes-parisc.pl $(PERLASM_SCHEME) $@

aes-mips.S:	asm/aes-mips.pl
	$(PERL) asm/aes-mips.pl $(PERLASM_SCHEME) $@

# GNU make "catch all"
aes-%.S:	asm/aes-%.pl;	$(PERL) $< $(PERLASM_SCHEME) > $@
aes-armv4.o:	aes-armv4.S

files:
	$(PERL) $(TOP)/util/files.pl Makefile >> $(TOP)/MINFO

links:
	@$(PERL) $(TOP)/util/mklink.pl ../../include/openssl $(EXHEADER)
	@$(PERL) $(TOP)/util/mklink.pl ../../test $(TEST)
	@$(PERL) $(TOP)/util/mklink.pl ../../apps $(APPS)

install:
	@[ -n "$(INSTALLTOP)" ] # should be set by top Makefile...
	@headerlist="$(EXHEADER)"; for i in $$headerlist ; \
	do  \
	(cp $$i $(INSTALL_PREFIX)$(INSTALLTOP)/include/openssl/$$i; \
	chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/include/openssl/$$i ); \
	done;

tags:
	ctags $(SRC)

tests:

lint:
	lint -DLINT $(INCLUDES) $(SRC)>fluff

depend:
	@[ -n "$(MAKEDEPEND)" ] # should be set by upper Makefile...
	$(MAKEDEPEND) -- $(CFLAG) $(INCLUDES) $(DEPFLAG) -- $(PROGS) $(LIBSRC)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f *.s *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

aes_cbc.o: ../../include/openssl/aes.h ../../include/openssl/modes.h
aes_cbc.o: ../../include/openssl/opensslconf.h aes_cbc.c
aes_cbc.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_cbc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_cfb.o: ../../include/openssl/aes.h ../../include/openssl/modes.h
aes_cfb.o: ../../include/openssl/opensslconf.h aes_cfb.c
aes_cfb.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_cfb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_core.o: ../../include/openssl/aes.h ../../include/openssl/e_os2.h
aes_core.o: ../../include/openssl/opensslconf.h aes_core.c aes_locl.h
aes_core.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
aes_core.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
aes_core.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
aes_core.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_ctr.o: ../../include/openssl/aes.h ../../include/openssl/modes.h
aes_ctr.o: ../../include/openssl/opensslconf.h aes_ctr.c
aes_ctr.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_ctr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_ecb.o: ../../include/openssl/aes.h ../../include/openssl/e_os2.h
aes_ecb.o: ../../include/openssl/opensslconf.h aes_ecb.c aes_locl.h
aes_ecb.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
aes_ecb.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
aes_ecb.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
aes_ecb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_ige.o: ../../e_os.h ../../include/openssl/aes.h ../../include/openssl/bio.h
aes_ige.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
aes_ige.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
aes_ige.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
aes_ige.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
aes_ige.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
aes_ige.o: ../../include/openssl/symhacks.h ../cryptlib.h aes_ige.c aes_locl.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
aes_ige.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
aes_ige.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
aes_misc.o: ../../include/openssl/aes.h ../../include/openssl/crypto.h
aes_misc.o: ../../include/openssl/e_os2.h ../../include/openssl/opensslconf.h
aes_misc.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
aes_misc.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
aes_misc.o: ../../include/openssl/symhacks.h aes_locl.h aes_misc.c
aes_misc.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
aes_misc.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
aes_misc.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
aes_misc.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_ofb.o: ../../include/openssl/aes.h ../../include/openssl/modes.h
aes_ofb.o: ../../include/openssl/opensslconf.h aes_ofb.c
aes_ofb.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_ofb.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_wrap.o: ../../e_os.h ../../include/openssl/aes.h
aes_wrap.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
aes_wrap.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
aes_wrap.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
aes_wrap.o: ../../include/openssl/opensslconf.h
aes_wrap.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
aes_wrap.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
aes_wrap.o: ../../include/openssl/symhacks.h ../cryptlib.h aes_wrap.c
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
aes_wrap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
aes_wrap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
