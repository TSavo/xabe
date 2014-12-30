#
# OpenSSL/crypto/pqueue/Makefile
#

DIR=	pqueue
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
LIBSRC=pqueue.c
LIBOBJ=pqueue.o

SRC= $(LIBSRC)

EXHEADER= pqueue.h
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

pqueue.o: ../../e_os.h ../../include/openssl/bio.h ../../include/openssl/bn.h
pqueue.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
pqueue.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
pqueue.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
pqueue.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
pqueue.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
pqueue.o: ../../include/openssl/symhacks.h ../cryptlib.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
pqueue.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
pqueue.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h pqueue.c
pqueue.o: pqueue.h
