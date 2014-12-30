#
# OpenSSL/crypto/sha/Makefile
#

DIR=    sha
TOP=    ../..
CC=     cc
CPP=    $(CC) -E
INCLUDES=
CFLAG=-g
MAKEFILE=       Makefile
AR=             ar r

SHA1_ASM_OBJ=

CFLAGS= $(INCLUDES) $(CFLAG)
ASFLAGS= $(INCLUDES) $(ASFLAG)
AFLAGS= $(ASFLAGS)

GENERAL=Makefile
TEST=shatest.c sha1test.c sha256t.c sha512t.c
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=sha_dgst.c sha1dgst.c sha_one.c sha1_one.c sha256.c sha512.c
LIBOBJ=sha_dgst.o sha1dgst.o sha_one.o sha1_one.o sha256.o sha512.o $(SHA1_ASM_OBJ)

SRC= $(LIBSRC)

EXHEADER= sha.h
HEADER= sha_locl.h $(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:    lib

lib:    $(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

sha1-586.s:	asm/sha1-586.pl ../perlasm/x86asm.pl
	$(PERL) asm/sha1-586.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@
sha256-586.s:	asm/sha256-586.pl ../perlasm/x86asm.pl
	$(PERL) asm/sha256-586.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@
sha512-586.s:	asm/sha512-586.pl ../perlasm/x86asm.pl
	$(PERL) asm/sha512-586.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@

sha1-ia64.s:   asm/sha1-ia64.pl
	(cd asm; $(PERL) sha1-ia64.pl ../$@ $(CFLAGS))
sha256-ia64.s: asm/sha512-ia64.pl
	(cd asm; $(PERL) sha512-ia64.pl ../$@ $(CFLAGS))
sha512-ia64.s: asm/sha512-ia64.pl
	(cd asm; $(PERL) sha512-ia64.pl ../$@ $(CFLAGS))

sha256-armv4.S: asm/sha256-armv4.pl
	$(PERL) $< $(PERLASM_SCHEME) $@

sha1-alpha.s:	asm/sha1-alpha.pl
	(preproc=/tmp/$$$$.$@; trap "rm $$preproc" INT; \
	$(PERL) asm/sha1-alpha.pl > $$preproc && \
	$(CC) -E $$preproc > $@ && rm $$preproc)

# Solaris make has to be explicitly told
sha1-x86_64.s:	asm/sha1-x86_64.pl;	$(PERL) asm/sha1-x86_64.pl $(PERLASM_SCHEME) > $@
sha256-x86_64.s:asm/sha512-x86_64.pl;	$(PERL) asm/sha512-x86_64.pl $(PERLASM_SCHEME) $@
sha512-x86_64.s:asm/sha512-x86_64.pl;	$(PERL) asm/sha512-x86_64.pl $(PERLASM_SCHEME) $@
sha1-sparcv9.s:	asm/sha1-sparcv9.pl;	$(PERL) asm/sha1-sparcv9.pl $@ $(CFLAGS)
sha256-sparcv9.s:asm/sha512-sparcv9.pl;	$(PERL) asm/sha512-sparcv9.pl $@ $(CFLAGS)
sha512-sparcv9.s:asm/sha512-sparcv9.pl;	$(PERL) asm/sha512-sparcv9.pl $@ $(CFLAGS)

sha1-ppc.s:	asm/sha1-ppc.pl;	$(PERL) asm/sha1-ppc.pl $(PERLASM_SCHEME) $@
sha256-ppc.s:	asm/sha512-ppc.pl;	$(PERL) asm/sha512-ppc.pl $(PERLASM_SCHEME) $@
sha512-ppc.s:	asm/sha512-ppc.pl;	$(PERL) asm/sha512-ppc.pl $(PERLASM_SCHEME) $@

sha1-parisc.s:	asm/sha1-parisc.pl;	$(PERL) asm/sha1-parisc.pl $(PERLASM_SCHEME) $@
sha256-parisc.s:asm/sha512-parisc.pl;	$(PERL) asm/sha512-parisc.pl $(PERLASM_SCHEME) $@
sha512-parisc.s:asm/sha512-parisc.pl;	$(PERL) asm/sha512-parisc.pl $(PERLASM_SCHEME) $@

sha1-mips.S:	asm/sha1-mips.pl;	$(PERL) asm/sha1-mips.pl $(PERLASM_SCHEME) $@
sha256-mips.S:	asm/sha512-mips.pl;	$(PERL) asm/sha512-mips.pl $(PERLASM_SCHEME) $@
sha512-mips.S:	asm/sha512-mips.pl;	$(PERL) asm/sha512-mips.pl $(PERLASM_SCHEME) $@

# GNU make "catch all"
sha1-%.S:	asm/sha1-%.pl;		$(PERL) $< $(PERLASM_SCHEME) $@
sha256-%.S:	asm/sha512-%.pl;	$(PERL) $< $(PERLASM_SCHEME) $@
sha512-%.S:	asm/sha512-%.pl;	$(PERL) $< $(PERLASM_SCHEME) $@

sha1-armv4-large.o:	sha1-armv4-large.S
sha256-armv4.o:		sha256-armv4.S
sha512-armv4.o:		sha512-armv4.S

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

sha1_one.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
sha1_one.o: ../../include/openssl/opensslconf.h
sha1_one.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
sha1_one.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
sha1_one.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
sha1_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
sha1_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
sha1_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
sha1_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h sha1_one.c
sha1dgst.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
sha1dgst.o: ../../include/openssl/opensslconf.h
sha1dgst.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
sha1dgst.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
sha1dgst.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
sha1dgst.o: ../md32_common.h
sha1dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
sha1dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
sha1dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
sha1dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h sha1dgst.c
sha1dgst.o: sha_locl.h
sha256.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
sha256.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
sha256.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
sha256.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
sha256.o: ../../include/openssl/symhacks.h ../md32_common.h
sha256.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
sha256.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
sha256.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
sha256.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h sha256.c
sha512.o: ../../e_os.h ../../include/openssl/bio.h
sha512.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
sha512.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
sha512.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
sha512.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
sha512.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
sha512.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
sha512.o: ../cryptlib.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
sha512.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
sha512.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h sha512.c
sha_dgst.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
sha_dgst.o: ../../include/openssl/opensslconf.h
sha_dgst.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
sha_dgst.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
sha_dgst.o: ../../include/openssl/symhacks.h
sha_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
sha_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
sha_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h sha_dgst.c
sha_one.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
sha_one.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
sha_one.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
sha_one.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
sha_one.o: ../../include/openssl/symhacks.h
sha_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
sha_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
sha_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
sha_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h sha_one.c
