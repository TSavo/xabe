#
# OpenSSL/crypto/cmac/Makefile
#

DIR=	cmac
TOP=	../..
CC=	cc
INCLUDES=
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=cmac.c cm_ameth.c cm_pmeth.c
LIBOBJ=cmac.o cm_ameth.o cm_pmeth.o

SRC= $(LIBSRC)

EXHEADER= cmac.h
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

cm_ameth.o: ../../e_os.h ../../include/openssl/asn1.h
cm_ameth.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
cm_ameth.o: ../../include/openssl/cmac.h ../../include/openssl/crypto.h
cm_ameth.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
cm_ameth.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
cm_ameth.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
cm_ameth.o: ../../include/openssl/opensslconf.h
cm_ameth.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
cm_ameth.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
cm_ameth.o: ../../include/openssl/symhacks.h ../asn1/asn1_locl.h ../cryptlib.h
cm_ameth.o: cm_ameth.c
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
cm_ameth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
cm_ameth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
cm_pmeth.o: ../../e_os.h ../../include/openssl/asn1.h
cm_pmeth.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
cm_pmeth.o: ../../include/openssl/cmac.h ../../include/openssl/conf.h
cm_pmeth.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
cm_pmeth.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
cm_pmeth.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
cm_pmeth.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
cm_pmeth.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
cm_pmeth.o: ../../include/openssl/opensslconf.h
cm_pmeth.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
cm_pmeth.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
cm_pmeth.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
cm_pmeth.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
cm_pmeth.o: ../../include/openssl/x509_vfy.h ../../include/openssl/x509v3.h
cm_pmeth.o: ../cryptlib.h ../evp/evp_locl.h cm_pmeth.c
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
cm_pmeth.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
cm_pmeth.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
cmac.o: ../../e_os.h ../../include/openssl/asn1.h ../../include/openssl/bio.h
cmac.o: ../../include/openssl/buffer.h ../../include/openssl/cmac.h
cmac.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
cmac.o: ../../include/openssl/err.h ../../include/openssl/evp.h
cmac.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
cmac.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
cmac.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
cmac.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
cmac.o: ../../include/openssl/symhacks.h ../cryptlib.h cmac.c
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
cmac.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
cmac.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
