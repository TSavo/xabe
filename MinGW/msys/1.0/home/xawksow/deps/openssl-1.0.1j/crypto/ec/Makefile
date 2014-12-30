#
# crypto/ec/Makefile
#

DIR=	ec
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=ectest.c
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=	ec_lib.c ecp_smpl.c ecp_mont.c ecp_nist.c ec_cvt.c ec_mult.c\
	ec_err.c ec_curve.c ec_check.c ec_print.c ec_asn1.c ec_key.c\
	ec2_smpl.c ec2_mult.c ec_ameth.c ec_pmeth.c eck_prn.c \
	ecp_nistp224.c ecp_nistp256.c ecp_nistp521.c ecp_nistputil.c \
	ecp_oct.c ec2_oct.c ec_oct.c

LIBOBJ=	ec_lib.o ecp_smpl.o ecp_mont.o ecp_nist.o ec_cvt.o ec_mult.o\
	ec_err.o ec_curve.o ec_check.o ec_print.o ec_asn1.o ec_key.o\
	ec2_smpl.o ec2_mult.o ec_ameth.o ec_pmeth.o eck_prn.o \
	ecp_nistp224.o ecp_nistp256.o ecp_nistp521.o ecp_nistputil.o \
	ecp_oct.o ec2_oct.o ec_oct.o

SRC= $(LIBSRC)

EXHEADER= ec.h
HEADER=	ec_lcl.h $(EXHEADER)

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
	rm -f *.o */*.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

ec2_mult.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec2_mult.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec2_mult.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec2_mult.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec2_mult.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec2_mult.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec2_mult.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec2_mult.o: ../../include/openssl/symhacks.h ec2_mult.c ec_lcl.h
ec2_mult.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec2_mult.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec2_mult.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec2_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec2_oct.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec2_oct.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec2_oct.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec2_oct.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec2_oct.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec2_oct.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec2_oct.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec2_oct.o: ../../include/openssl/symhacks.h ec2_oct.c ec_lcl.h
ec2_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec2_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec2_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec2_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec2_smpl.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec2_smpl.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec2_smpl.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec2_smpl.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec2_smpl.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec2_smpl.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec2_smpl.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec2_smpl.o: ../../include/openssl/symhacks.h ec2_smpl.c ec_lcl.h
ec2_smpl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec2_smpl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec2_smpl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec2_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_ameth.o: ../../e_os.h ../../include/openssl/asn1.h
ec_ameth.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
ec_ameth.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ec_ameth.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_ameth.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ec_ameth.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ec_ameth.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ec_ameth.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ec_ameth.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_ameth.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ec_ameth.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ec_ameth.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ec_ameth.o: ../../include/openssl/x509_vfy.h ../asn1/asn1_locl.h ../cryptlib.h
ec_ameth.o: ec_ameth.c
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ec_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ec_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ec_asn1.o: ../../include/openssl/asn1.h ../../include/openssl/asn1t.h
ec_asn1.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
ec_asn1.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ec_asn1.o: ../../include/openssl/ec.h ../../include/openssl/err.h
ec_asn1.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ec_asn1.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ec_asn1.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_asn1.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_asn1.o: ../../include/openssl/symhacks.h ec_asn1.c ec_lcl.h
ec_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_check.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_check.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_check.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_check.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_check.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_check.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_check.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_check.o: ../../include/openssl/symhacks.h ec_check.c ec_lcl.h
ec_check.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_check.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_check.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_check.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_curve.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_curve.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_curve.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_curve.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_curve.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_curve.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_curve.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_curve.o: ../../include/openssl/symhacks.h ec_curve.c ec_lcl.h
ec_curve.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_curve.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_curve.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_curve.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_cvt.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_cvt.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_cvt.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_cvt.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_cvt.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_cvt.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_cvt.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_cvt.o: ../../include/openssl/symhacks.h ec_cvt.c ec_lcl.h
ec_cvt.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_cvt.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_cvt.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_cvt.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ec_err.o: ../../include/openssl/ec.h ../../include/openssl/err.h
ec_err.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
ec_err.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_err.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_err.o: ../../include/openssl/symhacks.h ec_err.c
ec_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_key.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_key.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_key.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_key.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_key.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_key.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_key.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_key.o: ../../include/openssl/symhacks.h ec_key.c ec_lcl.h
ec_key.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_key.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_key.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_key.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_lib.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_lib.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_lib.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_lib.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_lib.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_lib.o: ../../include/openssl/symhacks.h ec_lcl.h ec_lib.c
ec_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_mult.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_mult.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_mult.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_mult.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_mult.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_mult.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_mult.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_mult.o: ../../include/openssl/symhacks.h ec_lcl.h ec_mult.c
ec_mult.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_mult.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_mult.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_mult.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_oct.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_oct.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_oct.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_oct.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ec_oct.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_oct.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_oct.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_oct.o: ../../include/openssl/symhacks.h ec_lcl.h ec_oct.c
ec_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_pmeth.o: ../../e_os.h ../../include/openssl/asn1.h
ec_pmeth.o: ../../include/openssl/asn1t.h ../../include/openssl/bio.h
ec_pmeth.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ec_pmeth.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_pmeth.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ec_pmeth.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ec_pmeth.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ec_pmeth.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ec_pmeth.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_pmeth.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ec_pmeth.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ec_pmeth.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ec_pmeth.o: ../../include/openssl/x509_vfy.h ../cryptlib.h ../evp/evp_locl.h
ec_pmeth.o: ec_pmeth.c
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ec_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ec_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ec_print.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ec_print.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ec_print.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ec_print.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ec_print.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ec_print.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ec_print.o: ../../include/openssl/symhacks.h ec_lcl.h ec_print.c
ec_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ec_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ec_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ec_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
eck_prn.o: ../../e_os.h ../../include/openssl/asn1.h
eck_prn.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
eck_prn.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
eck_prn.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
eck_prn.o: ../../include/openssl/err.h ../../include/openssl/evp.h
eck_prn.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
eck_prn.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
eck_prn.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
eck_prn.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
eck_prn.o: ../../include/openssl/symhacks.h ../cryptlib.h eck_prn.c
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
eck_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
eck_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ecp_mont.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecp_mont.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ecp_mont.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecp_mont.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ecp_mont.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ecp_mont.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecp_mont.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ecp_mont.o: ../../include/openssl/symhacks.h ec_lcl.h ecp_mont.c
ecp_mont.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecp_mont.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecp_mont.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecp_mont.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecp_nist.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecp_nist.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ecp_nist.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecp_nist.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ecp_nist.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ecp_nist.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecp_nist.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ecp_nist.o: ../../include/openssl/symhacks.h ec_lcl.h ecp_nist.c
ecp_nist.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecp_nist.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecp_nist.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecp_nist.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecp_nistp224.o: ../../include/openssl/opensslconf.h ecp_nistp224.c
ecp_nistp256.o: ../../include/openssl/opensslconf.h ecp_nistp256.c
ecp_nistp521.o: ../../include/openssl/opensslconf.h ecp_nistp521.c
ecp_nistputil.o: ../../include/openssl/opensslconf.h ecp_nistputil.c
ecp_oct.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecp_oct.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ecp_oct.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecp_oct.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ecp_oct.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ecp_oct.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecp_oct.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ecp_oct.o: ../../include/openssl/symhacks.h ec_lcl.h ecp_oct.c
ecp_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecp_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecp_oct.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecp_oct.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ecp_smpl.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ecp_smpl.o: ../../include/openssl/bn.h ../../include/openssl/crypto.h
ecp_smpl.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ecp_smpl.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
ecp_smpl.o: ../../include/openssl/obj_mac.h ../../include/openssl/opensslconf.h
ecp_smpl.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ecp_smpl.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ecp_smpl.o: ../../include/openssl/symhacks.h ec_lcl.h ecp_smpl.c
ecp_smpl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ecp_smpl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ecp_smpl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ecp_smpl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
