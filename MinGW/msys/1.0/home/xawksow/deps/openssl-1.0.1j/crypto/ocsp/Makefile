#
# OpenSSL/ocsp/Makefile
#

DIR=	ocsp
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile README
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC= ocsp_asn.c ocsp_ext.c ocsp_ht.c ocsp_lib.c ocsp_cl.c \
	ocsp_srv.c ocsp_prn.c ocsp_vfy.c ocsp_err.c

LIBOBJ= ocsp_asn.o ocsp_ext.o ocsp_ht.o ocsp_lib.o ocsp_cl.o \
	ocsp_srv.o ocsp_prn.o ocsp_vfy.o ocsp_err.o

SRC= $(LIBSRC)

EXHEADER= ocsp.h
HEADER=	$(EXHEADER)

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
	$(MAKEDEPEND) -- $(CFLAG) $(INCLUDES) $(DEPFLAG) -- $(LIBSRC)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

ocsp_asn.o: ../../include/openssl/asn1.h ../../include/openssl/asn1t.h
ocsp_asn.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ocsp_asn.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ocsp_asn.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ocsp_asn.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ocsp_asn.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ocsp_asn.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ocsp_asn.o: ../../include/openssl/ocsp.h ../../include/openssl/opensslconf.h
ocsp_asn.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_asn.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ocsp_asn.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ocsp_asn.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ocsp_asn.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ocsp_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ocsp_asn.c
ocsp_cl.o: ../../e_os.h ../../include/openssl/asn1.h
ocsp_cl.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ocsp_cl.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ocsp_cl.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ocsp_cl.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ocsp_cl.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ocsp_cl.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ocsp_cl.o: ../../include/openssl/objects.h ../../include/openssl/ocsp.h
ocsp_cl.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ocsp_cl.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pem.h
ocsp_cl.o: ../../include/openssl/pem2.h ../../include/openssl/pkcs7.h
ocsp_cl.o: ../../include/openssl/rand.h ../../include/openssl/safestack.h
ocsp_cl.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ocsp_cl.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ocsp_cl.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ocsp_cl.o: ../cryptlib.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ocsp_cl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ocsp_cl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h ocsp_cl.c
ocsp_err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ocsp_err.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ocsp_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ocsp_err.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ocsp_err.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ocsp_err.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ocsp_err.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ocsp_err.o: ../../include/openssl/ocsp.h ../../include/openssl/opensslconf.h
ocsp_err.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_err.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ocsp_err.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ocsp_err.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ocsp_err.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ocsp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ocsp_err.c
ocsp_ext.o: ../../e_os.h ../../include/openssl/asn1.h
ocsp_ext.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ocsp_ext.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ocsp_ext.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ocsp_ext.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ocsp_ext.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ocsp_ext.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ocsp_ext.o: ../../include/openssl/objects.h ../../include/openssl/ocsp.h
ocsp_ext.o: ../../include/openssl/opensslconf.h
ocsp_ext.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_ext.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
ocsp_ext.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ocsp_ext.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ocsp_ext.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ocsp_ext.o: ../../include/openssl/x509v3.h ../cryptlib.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ocsp_ext.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ocsp_ext.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ocsp_ext.o: ocsp_ext.c
ocsp_ht.o: ../../e_os.h ../../include/openssl/asn1.h
ocsp_ht.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ocsp_ht.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ocsp_ht.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ocsp_ht.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ocsp_ht.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ocsp_ht.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ocsp_ht.o: ../../include/openssl/objects.h ../../include/openssl/ocsp.h
ocsp_ht.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ocsp_ht.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ocsp_ht.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ocsp_ht.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ocsp_ht.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ocsp_ht.o: ../../include/openssl/x509v3.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ocsp_ht.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ocsp_ht.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h ocsp_ht.c
ocsp_lib.o: ../../e_os.h ../../include/openssl/asn1.h
ocsp_lib.o: ../../include/openssl/asn1t.h ../../include/openssl/bio.h
ocsp_lib.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ocsp_lib.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ocsp_lib.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ocsp_lib.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ocsp_lib.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ocsp_lib.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ocsp_lib.o: ../../include/openssl/ocsp.h ../../include/openssl/opensslconf.h
ocsp_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_lib.o: ../../include/openssl/pem.h ../../include/openssl/pem2.h
ocsp_lib.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
ocsp_lib.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ocsp_lib.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ocsp_lib.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ocsp_lib.o: ../../include/openssl/x509v3.h ../cryptlib.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ocsp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ocsp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ocsp_lib.o: ocsp_lib.c
ocsp_prn.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ocsp_prn.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ocsp_prn.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ocsp_prn.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ocsp_prn.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ocsp_prn.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ocsp_prn.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ocsp_prn.o: ../../include/openssl/ocsp.h ../../include/openssl/opensslconf.h
ocsp_prn.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_prn.o: ../../include/openssl/pem.h ../../include/openssl/pem2.h
ocsp_prn.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ocsp_prn.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ocsp_prn.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ocsp_prn.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ocsp_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ocsp_prn.c
ocsp_srv.o: ../../e_os.h ../../include/openssl/asn1.h
ocsp_srv.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ocsp_srv.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ocsp_srv.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ocsp_srv.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ocsp_srv.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ocsp_srv.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ocsp_srv.o: ../../include/openssl/objects.h ../../include/openssl/ocsp.h
ocsp_srv.o: ../../include/openssl/opensslconf.h
ocsp_srv.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_srv.o: ../../include/openssl/pem.h ../../include/openssl/pem2.h
ocsp_srv.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
ocsp_srv.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ocsp_srv.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ocsp_srv.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ocsp_srv.o: ../../include/openssl/x509v3.h ../cryptlib.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ocsp_srv.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ocsp_srv.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ocsp_srv.o: ocsp_srv.c
ocsp_vfy.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ocsp_vfy.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ocsp_vfy.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ocsp_vfy.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ocsp_vfy.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ocsp_vfy.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ocsp_vfy.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ocsp_vfy.o: ../../include/openssl/ocsp.h ../../include/openssl/opensslconf.h
ocsp_vfy.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ocsp_vfy.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
ocsp_vfy.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ocsp_vfy.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ocsp_vfy.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ocsp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ocsp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ocsp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ocsp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ocsp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ocsp_vfy.c
