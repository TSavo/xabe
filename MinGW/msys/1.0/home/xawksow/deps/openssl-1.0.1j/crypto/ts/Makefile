#
# SSLeay/crypto/ts/Makefile
#

DIR=	ts
TOP=	../..
CC=	cc
INCLUDES= -I.. -I../../include
CFLAG = -g
INSTALL_PREFIX=
OPENSSLDIR=     /usr/local/ssl
INSTALLTOP=/usr/local/ssl
MAKEDEPPROG=	makedepend
MAKEDEPEND=	$(TOP)/util/domd $(TOP) -MD $(MAKEDEPPROG)
MAKEFILE=	Makefile
AR=		ar r

PEX_LIBS=
EX_LIBS=
 
CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL= Makefile
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=	ts_err.c ts_req_utils.c ts_req_print.c ts_rsp_utils.c ts_rsp_print.c \
	ts_rsp_sign.c ts_rsp_verify.c ts_verify_ctx.c ts_lib.c ts_conf.c \
	ts_asn1.c
LIBOBJ= ts_err.o ts_req_utils.o ts_req_print.o ts_rsp_utils.o ts_rsp_print.o \
	ts_rsp_sign.o ts_rsp_verify.o ts_verify_ctx.o ts_lib.o ts_conf.o \
	ts_asn1.o

SRC= $(LIBSRC)

EXHEADER= ts.h
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

lint:
	lint -DLINT $(INCLUDES) $(SRC)>fluff

depend:
	$(MAKEDEPEND) -- $(CFLAG) $(INCLUDES) $(DEPFLAG) -- $(LIBSRC)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff enc dec sign verify

# DO NOT DELETE THIS LINE -- make depend depends on it.

ts_asn1.o: ../../include/openssl/asn1.h ../../include/openssl/asn1t.h
ts_asn1.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_asn1.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_asn1.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_asn1.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_asn1.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_asn1.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_asn1.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_asn1.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ts_asn1.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ts_asn1.o: ../../include/openssl/pkcs7.h ../../include/openssl/rsa.h
ts_asn1.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ts_asn1.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ts_asn1.o: ../../include/openssl/ts.h ../../include/openssl/x509.h
ts_asn1.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ts_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_asn1.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_asn1.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ts_asn1.c
ts_conf.o: ../../e_os.h ../../include/openssl/asn1.h
ts_conf.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_conf.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_conf.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_conf.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_conf.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_conf.o: ../../include/openssl/engine.h ../../include/openssl/err.h
ts_conf.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ts_conf.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ts_conf.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ts_conf.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pem.h
ts_conf.o: ../../include/openssl/pem2.h ../../include/openssl/pkcs7.h
ts_conf.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_conf.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_conf.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_conf.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_conf.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_conf.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_conf.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h ts_conf.c
ts_err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
ts_err.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ts_err.o: ../../include/openssl/crypto.h ../../include/openssl/dh.h
ts_err.o: ../../include/openssl/dsa.h ../../include/openssl/e_os2.h
ts_err.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ts_err.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ts_err.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ts_err.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ts_err.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ts_err.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_err.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_err.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_err.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_err.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_err.o: ../../include/openssl/x509v3.h
ts_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ts_err.c
ts_lib.o: ../../e_os.h ../../include/openssl/asn1.h ../../include/openssl/bio.h
ts_lib.o: ../../include/openssl/bn.h ../../include/openssl/buffer.h
ts_lib.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_lib.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_lib.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_lib.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_lib.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_lib.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
ts_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ts_lib.o: ../../include/openssl/pkcs7.h ../../include/openssl/rsa.h
ts_lib.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
ts_lib.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ts_lib.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_lib.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h ts.h
ts_lib.o: ts_lib.c
ts_req_print.o: ../../e_os.h ../../include/openssl/asn1.h
ts_req_print.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
ts_req_print.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ts_req_print.o: ../../include/openssl/crypto.h ../../include/openssl/dh.h
ts_req_print.o: ../../include/openssl/dsa.h ../../include/openssl/e_os2.h
ts_req_print.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ts_req_print.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ts_req_print.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ts_req_print.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ts_req_print.o: ../../include/openssl/opensslconf.h
ts_req_print.o: ../../include/openssl/opensslv.h
ts_req_print.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_req_print.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_req_print.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_req_print.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_req_print.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_req_print.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_req_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_req_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ts_req_print.o: ts_req_print.c
ts_req_utils.o: ../../e_os.h ../../include/openssl/asn1.h
ts_req_utils.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_req_utils.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_req_utils.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_req_utils.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_req_utils.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_req_utils.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_req_utils.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_req_utils.o: ../../include/openssl/objects.h
ts_req_utils.o: ../../include/openssl/opensslconf.h
ts_req_utils.o: ../../include/openssl/opensslv.h
ts_req_utils.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_req_utils.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_req_utils.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_req_utils.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_req_utils.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_req_utils.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_req_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_req_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ts_req_utils.o: ts_req_utils.c
ts_rsp_print.o: ../../e_os.h ../../include/openssl/asn1.h
ts_rsp_print.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
ts_rsp_print.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
ts_rsp_print.o: ../../include/openssl/crypto.h ../../include/openssl/dh.h
ts_rsp_print.o: ../../include/openssl/dsa.h ../../include/openssl/e_os2.h
ts_rsp_print.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
ts_rsp_print.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
ts_rsp_print.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
ts_rsp_print.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
ts_rsp_print.o: ../../include/openssl/opensslconf.h
ts_rsp_print.o: ../../include/openssl/opensslv.h
ts_rsp_print.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_rsp_print.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_rsp_print.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_rsp_print.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
ts_rsp_print.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
ts_rsp_print.o: ../cryptlib.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_rsp_print.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_rsp_print.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h ts.h
ts_rsp_print.o: ts_rsp_print.c
ts_rsp_sign.o: ../../e_os.h ../../include/openssl/asn1.h
ts_rsp_sign.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_rsp_sign.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_rsp_sign.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_rsp_sign.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_rsp_sign.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_rsp_sign.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_rsp_sign.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_rsp_sign.o: ../../include/openssl/objects.h
ts_rsp_sign.o: ../../include/openssl/opensslconf.h
ts_rsp_sign.o: ../../include/openssl/opensslv.h
ts_rsp_sign.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_rsp_sign.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_rsp_sign.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_rsp_sign.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_rsp_sign.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_rsp_sign.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_rsp_sign.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ts_rsp_sign.o: ts_rsp_sign.c
ts_rsp_utils.o: ../../e_os.h ../../include/openssl/asn1.h
ts_rsp_utils.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_rsp_utils.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_rsp_utils.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_rsp_utils.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_rsp_utils.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_rsp_utils.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_rsp_utils.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_rsp_utils.o: ../../include/openssl/objects.h
ts_rsp_utils.o: ../../include/openssl/opensslconf.h
ts_rsp_utils.o: ../../include/openssl/opensslv.h
ts_rsp_utils.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_rsp_utils.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_rsp_utils.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_rsp_utils.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_rsp_utils.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_rsp_utils.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_rsp_utils.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ts_rsp_utils.o: ts_rsp_utils.c
ts_rsp_verify.o: ../../e_os.h ../../include/openssl/asn1.h
ts_rsp_verify.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_rsp_verify.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_rsp_verify.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_rsp_verify.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_rsp_verify.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_rsp_verify.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_rsp_verify.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_rsp_verify.o: ../../include/openssl/objects.h
ts_rsp_verify.o: ../../include/openssl/opensslconf.h
ts_rsp_verify.o: ../../include/openssl/opensslv.h
ts_rsp_verify.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_rsp_verify.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_rsp_verify.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_rsp_verify.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_rsp_verify.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_rsp_verify.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_rsp_verify.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ts_rsp_verify.o: ts_rsp_verify.c
ts_verify_ctx.o: ../../e_os.h ../../include/openssl/asn1.h
ts_verify_ctx.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
ts_verify_ctx.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
ts_verify_ctx.o: ../../include/openssl/dh.h ../../include/openssl/dsa.h
ts_verify_ctx.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
ts_verify_ctx.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
ts_verify_ctx.o: ../../include/openssl/err.h ../../include/openssl/evp.h
ts_verify_ctx.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
ts_verify_ctx.o: ../../include/openssl/objects.h
ts_verify_ctx.o: ../../include/openssl/opensslconf.h
ts_verify_ctx.o: ../../include/openssl/opensslv.h
ts_verify_ctx.o: ../../include/openssl/ossl_typ.h ../../include/openssl/pkcs7.h
ts_verify_ctx.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
ts_verify_ctx.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
ts_verify_ctx.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
ts_verify_ctx.o: ../../include/openssl/x509.h ../../include/openssl/x509_vfy.h
ts_verify_ctx.o: ../../include/openssl/x509v3.h ../cryptlib.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ts_verify_ctx.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ts_verify_ctx.o: ts_verify_ctx.c
