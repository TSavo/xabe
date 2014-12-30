#
# crypto/ecdh/Makefile
#

DIR=	ecdh
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g -Wall
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=ecdhtest.c
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=	ech_lib.c ech_ossl.c ech_key.c ech_err.c

LIBOBJ=	ech_lib.o ech_ossl.o ech_key.o ech_err.o

SRC= $(LIBSRC)

EXHEADER= ecdh.h
HEADER=	ech_locl.h $(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:	lib

lib:	$(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

files:
	$(PERL) $(TOP)/util/files.pl Makefile >> $(TOP)/MINFO

links:
	@$(PERL) $(TOP)/util/mklink.pl ../../include/openssl $(EXHEADER)
	@$(PERL) $(TOP)/util/mklink.pl ../../test $(TEST)
	@$(PERL) $(TOP)/util/mklink.pl ../../apps $(APPS)

install:
	@[ -n "$(INSTALLTOP)" ] # should be set by top Makefile...
	@headerlist="$(EXHEADER)"; for i in $$headerlist; \
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
	rm -f *.o */*.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

ech_err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ech_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ech_err.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ech_err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ech_err.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ech_err.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
ech_err.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ech_err.o: ech_err.c
ech_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ech_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ech_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ech_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ech_key.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ech_key.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ech_key.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ech_key.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ech_key.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
ech_key.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ech_key.o: ech_key.c ech_locl.h
ech_key.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ech_key.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ech_key.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ech_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ech_lib.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ech_lib.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ech_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ech_lib.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ech_lib.o: ../../include/openssl/engine.h ../../include/openssl/err.h
ech_lib.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ech_lib.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ech_lib.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ech_lib.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ech_lib.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ech_lib.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ech_lib.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ech_lib.o: ech_lib.c ech_locl.h
ech_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ech_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ech_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ech_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ech_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ech_ossl.o: ../../e_os.h ../../include/openssl/asn1.h
ech_ossl.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
ech_ossl.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ech_ossl.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ech_ossl.o: ../../include/openssl/ecdh.h ../../include/openssl/err.h
ech_ossl.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ech_ossl.o: ../../include/openssl/opensslconf.h
ech_ossl.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ech_ossl.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ech_ossl.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ech_ossl.o: ../cryptlib.h ech_locl.h ech_ossl.c
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ech_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ech_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
