DIR=	srp
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
INSTALL_PREFIX=
OPENSSLDIR=     /usr/local/ssl
INSTALLTOP=/usr/local/ssl
MAKE=		make -f Makefile.ssl
MAKEDEPPROG=	makedepend
MAKEDEPEND=	$(TOP)/util/domd $(TOP) -MD $(MAKEDEPPROG)
MAKEFILE=	Makefile.ssl
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=srptest.c
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=srp_lib.c srp_vfy.c
LIBOBJ=srp_lib.o srp_vfy.o

SRC= $(LIBSRC)

EXHEADER= srp.h
HEADER=	$(EXHEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:	lib

lib:	$(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

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

srptest: top srptest.c $(LIB)
	$(CC) $(CFLAGS) -Wall -Werror -g -o srptest srptest.c $(LIB)

lint:
	lint -DLINT $(INCLUDES) $(SRC)>fluff

depend:
	$(MAKEDEPEND) -- $(CFLAG) $(INCLUDES) $(DEPFLAG) -- $(PROGS) $(LIBSRC)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

srp_lib.o: ../../e_os.h ../../include/openssl/asn1.h
srp_lib.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
srp_lib.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
srp_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
srp_lib.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
srp_lib.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
srp_lib.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
srp_lib.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
srp_lib.o: ../../include/openssl/sha.h ../../include/openssl/srp.h
srp_lib.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
srp_lib.o: ../cryptlib.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
srp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
srp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
srp_lib.o: srp_grps.h srp_lcl.h srp_lib.c
srp_vfy.o: ../../e_os.h ../../include/openssl/asn1.h
srp_vfy.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
srp_vfy.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
srp_vfy.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
srp_vfy.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
srp_vfy.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
srp_vfy.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
srp_vfy.o: ../../include/openssl/ossl_typ.h ../../include/openssl/rand.h
srp_vfy.o: ../../include/openssl/safestack.h ../../include/openssl/sha.h
srp_vfy.o: ../../include/openssl/srp.h ../../include/openssl/stack.h
srp_vfy.o: ../../include/openssl/symhacks.h ../../include/openssl/txt_db.h
srp_vfy.o: ../cryptlib.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
srp_vfy.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
srp_vfy.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h srp_lcl.h
srp_vfy.o: srp_vfy.c
