#
# OpenSSL/crypto/pkcs7/Makefile
#

DIR=	pkcs7
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

PEX_LIBS=
EX_LIBS=
 
CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile README
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=	pk7_asn1.c pk7_lib.c pkcs7err.c pk7_doit.c pk7_smime.c pk7_attr.c \
	pk7_mime.c bio_pk7.c
LIBOBJ= pk7_asn1.o pk7_lib.o pkcs7err.o pk7_doit.o pk7_smime.o pk7_attr.o \
	pk7_mime.o bio_pk7.o

SRC= $(LIBSRC)

EXHEADER=  pkcs7.h
HEADER=	$(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

test:

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
	rm -f *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff enc dec sign verify

# DO NOT DELETE THIS LINE -- make depend depends on it.

bio_pk7.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
bio_pk7.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
bio_pk7.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
bio_pk7.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
bio_pk7.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
bio_pk7.o: ../../include/openssl/symhacks.h bio_pk7.c
bio_pk7.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
bio_pk7.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
bio_pk7.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memory.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/memory_s.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
bio_pk7.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pk7_asn1.o: ../../e_os.h ../../include/openssl/asn1.h
pk7_asn1.o: ../../include/openssl/asn1t.h ../../include/openssl/bio.h
pk7_asn1.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
pk7_asn1.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
pk7_asn1.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
pk7_asn1.o: ../../include/openssl/err.h ../../include/openssl/evp.h
pk7_asn1.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
pk7_asn1.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
pk7_asn1.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pk7_asn1.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
pk7_asn1.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
pk7_asn1.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
pk7_asn1.o: ../../include/openssl/x509_vfy.h ../cryptlib.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
pk7_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
pk7_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
pk7_asn1.o: pk7_asn1.c
pk7_attr.o: ../../include/openssl/asn1.h ../../include/openssl/asn1t.h
pk7_attr.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
pk7_attr.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
pk7_attr.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
pk7_attr.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
pk7_attr.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
pk7_attr.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
pk7_attr.o: ../../include/openssl/opensslconf.h
pk7_attr.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pk7_attr.o: ../../include/openssl/pem.h ../../include/openssl/pem2.h
pk7_attr.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
pk7_attr.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
pk7_attr.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
pk7_attr.o: ../../include/openssl/x509_vfy.h
pk7_attr.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pk7_attr.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pk7_attr.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pk7_attr.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pk7_attr.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h pk7_attr.c
pk7_doit.o: ../../e_os.h ../../include/openssl/asn1.h
pk7_doit.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
pk7_doit.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
pk7_doit.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
pk7_doit.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
pk7_doit.o: ../../include/openssl/err.h ../../include/openssl/evp.h
pk7_doit.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
pk7_doit.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
pk7_doit.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pk7_doit.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
pk7_doit.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
pk7_doit.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
pk7_doit.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
pk7_doit.o: ../../include/openssl/x509v3.h ../cryptlib.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
pk7_doit.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
pk7_doit.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
pk7_doit.o: pk7_doit.c
pk7_lib.o: ../../e_os.h ../../include/openssl/asn1.h
pk7_lib.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
pk7_lib.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
pk7_lib.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
pk7_lib.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
pk7_lib.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
pk7_lib.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
pk7_lib.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
pk7_lib.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
pk7_lib.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
pk7_lib.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
pk7_lib.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
pk7_lib.o: ../asn1/asn1_locl.h ../cryptlib.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
pk7_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
pk7_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h pk7_lib.c
pk7_mime.o: ../../e_os.h ../../include/openssl/asn1.h
pk7_mime.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
pk7_mime.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
pk7_mime.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
pk7_mime.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
pk7_mime.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
pk7_mime.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
pk7_mime.o: ../../include/openssl/opensslconf.h
pk7_mime.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pk7_mime.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
pk7_mime.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
pk7_mime.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
pk7_mime.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
pk7_mime.o: ../cryptlib.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
pk7_mime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
pk7_mime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
pk7_mime.o: pk7_mime.c
pk7_smime.o: ../../e_os.h ../../include/openssl/asn1.h
pk7_smime.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
pk7_smime.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
pk7_smime.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
pk7_smime.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
pk7_smime.o: ../../include/openssl/err.h ../../include/openssl/evp.h
pk7_smime.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
pk7_smime.o: ../../include/openssl/objects.h
pk7_smime.o: ../../include/openssl/opensslconf.h
pk7_smime.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pk7_smime.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
pk7_smime.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
pk7_smime.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
pk7_smime.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
pk7_smime.o: ../cryptlib.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
pk7_smime.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
pk7_smime.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
pk7_smime.o: pk7_smime.c
pkcs7err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
pkcs7err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
pkcs7err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
pkcs7err.o: ../../include/openssl/opensslconf.h
pkcs7err.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pkcs7err.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
pkcs7err.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
pkcs7err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pkcs7err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pkcs7err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
pkcs7err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h pkcs7err.c
