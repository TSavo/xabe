#
# OpenSSL/crypto/txt_db/Makefile
#

DIR=	txt_db
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
LIBSRC=txt_db.c
LIBOBJ=txt_db.o

SRC= $(LIBSRC)

EXHEADER= txt_db.h
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
	@[ -n "$(MAKEDEPEND)" ] # should be set by top Makefile...
	$(MAKEDEPEND) -- $(CFLAG) $(INCLUDES) $(DEPFLAG) -- $(PROGS) $(LIBSRC)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

txt_db.o: ../../e_os.h ../../include/openssl/bio.h
txt_db.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
txt_db.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
txt_db.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
txt_db.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
txt_db.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
txt_db.o: ../../include/openssl/symhacks.h ../../include/openssl/txt_db.h
txt_db.o: ../cryptlib.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
txt_db.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
txt_db.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h txt_db.c
