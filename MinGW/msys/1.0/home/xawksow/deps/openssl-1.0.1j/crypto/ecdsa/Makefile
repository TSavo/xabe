#
# crypto/ecdsa/Makefile
#

DIR=	ecdsa
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g -Wall
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=ecdsatest.c
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=	ecs_lib.c ecs_asn1.c ecs_ossl.c ecs_sign.c ecs_vrf.c ecs_err.c

LIBOBJ=	ecs_lib.o ecs_asn1.o ecs_ossl.o ecs_sign.o ecs_vrf.o ecs_err.o

SRC= $(LIBSRC)

EXHEADER= ecdsa.h
HEADER=	ecs_locl.h $(EXHEADER)

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

ecs_asn1.o: ../../include/openssl/asn1.h ../../include/openssl/asn1t.h
ecs_asn1.o: ../../include/openssl/bio.h ../../include/openssl/crypto.h
ecs_asn1.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecs_asn1.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ecs_asn1.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
ecs_asn1.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecs_asn1.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ecs_asn1.o: ../../include/openssl/symhacks.h ecs_asn1.c ecs_locl.h
ecs_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecs_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecs_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecs_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecs_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecs_err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecs_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ecs_err.o: ../../include/openssl/ec.h ../../include/openssl/ecdsa.h
ecs_err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ecs_err.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ecs_err.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
ecs_err.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ecs_err.o: ecs_err.c
ecs_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecs_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecs_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecs_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecs_lib.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecs_lib.o: ../../include/openssl/bn.h ../../include/openssl/buffer.h
ecs_lib.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ecs_lib.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ecs_lib.o: ../../include/openssl/ecdsa.h ../../include/openssl/engine.h
ecs_lib.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ecs_lib.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ecs_lib.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ecs_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecs_lib.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ecs_lib.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ecs_lib.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ecs_lib.o: ../../include/openssl/x509_vfy.h ecs_lib.c ecs_locl.h
ecs_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecs_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecs_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecs_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecs_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecs_ossl.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecs_ossl.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ecs_ossl.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecs_ossl.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ecs_ossl.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ecs_ossl.o: ../../include/openssl/opensslconf.h
ecs_ossl.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecs_ossl.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ecs_ossl.o: ../../include/openssl/symhacks.h ecs_locl.h ecs_ossl.c
ecs_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecs_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecs_ossl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecs_ossl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecs_sign.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecs_sign.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ecs_sign.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecs_sign.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ecs_sign.o: ../../include/openssl/engine.h ../../include/openssl/evp.h
ecs_sign.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ecs_sign.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ecs_sign.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecs_sign.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
ecs_sign.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ecs_sign.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ecs_sign.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ecs_sign.o: ecs_locl.h ecs_sign.c
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ecs_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ecs_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ecs_vrf.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecs_vrf.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ecs_vrf.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecs_vrf.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ecs_vrf.o: ../../include/openssl/engine.h ../../include/openssl/evp.h
ecs_vrf.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ecs_vrf.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ecs_vrf.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecs_vrf.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ecs_vrf.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ecs_vrf.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ecs_vrf.o: ../../include/openssl/x509_vfy.h ecs_locl.h ecs_vrf.c
ecs_vrf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecs_vrf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecs_vrf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecs_vrf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecs_vrf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
