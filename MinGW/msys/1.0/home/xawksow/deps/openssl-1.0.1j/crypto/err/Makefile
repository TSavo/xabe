#
# OpenSSL/crypto/err/Makefile
#

DIR=	err
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=err.c err_all.c err_prn.c
LIBOBJ=err.o err_all.o err_prn.o

SRC= $(LIBSRC)

EXHEADER= err.h
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
	$(MAKEDEPEND) -- $(CFLAG) $(INCLUDES) $(DEPFLAG) -- $(PROGS) $(LIBSRC)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

err.o: ../../e_os.h ../../include/openssl/bio.h ../../include/openssl/buffer.h
err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
err.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
err.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
err.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
err.o: ../cryptlib.h err.c
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
err_all.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
err_all.o: ../../include/openssl/bn.h ../../include/openssl/buffer.h
err_all.o: ../../include/openssl/comp.h ../../include/openssl/conf.h
err_all.o: ../../include/openssl/crypto.h ../../include/openssl/dh.h
err_all.o: ../../include/openssl/dsa.h ../../include/openssl/dso.h
err_all.o: ../../include/openssl/e_os2.h ../../include/openssl/ec.h
err_all.o: ../../include/openssl/ecdh.h ../../include/openssl/ecdsa.h
err_all.o: ../../include/openssl/engine.h ../../include/openssl/err.h
err_all.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
err_all.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
err_all.o: ../../include/openssl/ocsp.h ../../include/openssl/opensslconf.h
err_all.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
err_all.o: ../../include/openssl/pem2.h ../../include/openssl/pkcs12.h
err_all.o: ../../include/openssl/pkcs7.h ../../include/openssl/rand.h
err_all.o: ../../include/openssl/rsa.h ../../include/openssl/safestack.h
err_all.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
err_all.o: ../../include/openssl/symhacks.h ../../include/openssl/ts.h
err_all.o: ../../include/openssl/ui.h ../../include/openssl/x509.h
err_all.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
err_all.o: err_all.c
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
err_all.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
err_all.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
err_prn.o: ../../e_os.h ../../include/openssl/bio.h
err_prn.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
err_prn.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
err_prn.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
err_prn.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
err_prn.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
err_prn.o: ../../include/openssl/symhacks.h ../cryptlib.h err_prn.c
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
err_prn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
err_prn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
