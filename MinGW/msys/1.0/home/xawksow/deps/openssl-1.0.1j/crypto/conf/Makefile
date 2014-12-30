#
# OpenSSL/crypto/conf/Makefile
#

DIR=	conf
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
LIBSRC= conf_err.c conf_lib.c conf_api.c conf_def.c conf_mod.c \
	 conf_mall.c conf_sap.c

LIBOBJ=	conf_err.o conf_lib.o conf_api.o conf_def.o conf_mod.o \
	conf_mall.o conf_sap.o

SRC= $(LIBSRC)

EXHEADER= conf.h conf_api.h
HEADER=	conf_def.h $(EXHEADER)

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

conf_api.o: ../../e_os.h ../../include/openssl/bio.h
conf_api.o: ../../include/openssl/conf.h ../../include/openssl/conf_api.h
conf_api.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
conf_api.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
conf_api.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_api.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
conf_api.o: ../../include/openssl/symhacks.h conf_api.c
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
conf_api.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
conf_api.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
conf_def.o: ../../e_os.h ../../include/openssl/bio.h
conf_def.o: ../../include/openssl/buffer.h ../../include/openssl/conf.h
conf_def.o: ../../include/openssl/conf_api.h ../../include/openssl/crypto.h
conf_def.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
conf_def.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
conf_def.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_def.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
conf_def.o: ../../include/openssl/symhacks.h ../cryptlib.h conf_def.c
conf_def.o: conf_def.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
conf_def.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
conf_def.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
conf_err.o: ../../include/openssl/bio.h ../../include/openssl/conf.h
conf_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
conf_err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
conf_err.o: ../../include/openssl/opensslconf.h
conf_err.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_err.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
conf_err.o: ../../include/openssl/symhacks.h conf_err.c
conf_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_lib.o: ../../include/openssl/bio.h ../../include/openssl/conf.h
conf_lib.o: ../../include/openssl/conf_api.h ../../include/openssl/crypto.h
conf_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
conf_lib.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
conf_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_lib.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
conf_lib.o: ../../include/openssl/symhacks.h conf_lib.c
conf_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_mall.o: ../../e_os.h ../../include/openssl/asn1.h
conf_mall.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
conf_mall.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
conf_mall.o: ../../include/openssl/dso.h ../../include/openssl/e_os2.h
conf_mall.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
conf_mall.o: ../../include/openssl/ecdsa.h ../../include/openssl/engine.h
conf_mall.o: ../../include/openssl/err.h ../../include/openssl/evp.h
conf_mall.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
conf_mall.o: ../../include/openssl/objects.h
conf_mall.o: ../../include/openssl/opensslconf.h
conf_mall.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_mall.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
conf_mall.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
conf_mall.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
conf_mall.o: ../../include/openssl/x509_vfy.h ../cryptlib.h conf_mall.c
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
conf_mall.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
conf_mall.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
conf_mod.o: ../../e_os.h ../../include/openssl/asn1.h
conf_mod.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
conf_mod.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
conf_mod.o: ../../include/openssl/dso.h ../../include/openssl/e_os2.h
conf_mod.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
conf_mod.o: ../../include/openssl/ecdsa.h ../../include/openssl/err.h
conf_mod.o: ../../include/openssl/evp.h ../../include/openssl/lhash.h
conf_mod.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
conf_mod.o: ../../include/openssl/opensslconf.h
conf_mod.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_mod.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
conf_mod.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
conf_mod.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
conf_mod.o: ../../include/openssl/x509_vfy.h ../cryptlib.h conf_mod.c
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
conf_mod.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
conf_mod.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
conf_sap.o: ../../e_os.h ../../include/openssl/asn1.h
conf_sap.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
conf_sap.o: ../../include/openssl/conf.h ../../include/openssl/crypto.h
conf_sap.o: ../../include/openssl/dso.h ../../include/openssl/e_os2.h
conf_sap.o: ../../include/openssl/ec.h ../../include/openssl/ecdh.h
conf_sap.o: ../../include/openssl/ecdsa.h ../../include/openssl/engine.h
conf_sap.o: ../../include/openssl/err.h ../../include/openssl/evp.h
conf_sap.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
conf_sap.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
conf_sap.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
conf_sap.o: ../../include/openssl/pkcs7.h ../../include/openssl/safestack.h
conf_sap.o: ../../include/openssl/sha.h ../../include/openssl/stack.h
conf_sap.o: ../../include/openssl/symhacks.h ../../include/openssl/x509.h
conf_sap.o: ../../include/openssl/x509_vfy.h ../cryptlib.h conf_sap.c
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
conf_sap.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
conf_sap.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
