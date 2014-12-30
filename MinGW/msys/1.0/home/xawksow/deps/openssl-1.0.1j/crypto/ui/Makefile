#
# OpenSSL/crypto/ui/Makefile
#

DIR=	ui
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
#TEST= uitest.c
TEST=
APPS=

COMPATSRC= ui_compat.c
COMPATOBJ= ui_compat.o

LIB=$(TOP)/libcrypto.a
LIBSRC= ui_err.c ui_lib.c ui_openssl.c ui_util.c $(COMPATSRC)
LIBOBJ= ui_err.o ui_lib.o ui_openssl.o ui_util.o $(COMPATOBJ)

SRC= $(LIBSRC)

EXHEADER= ui.h ui_compat.h
HEADER=	$(EXHEADER) ui_locl.h

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

ui_compat.o: ../../include/openssl/e_os2.h ../../include/openssl/opensslconf.h
ui_compat.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
ui_compat.o: ../../include/openssl/stack.h ../../include/openssl/ui.h
ui_compat.o: ../../include/openssl/ui_compat.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ui_compat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ui_compat.o: ui_compat.c
ui_err.o: ../../include/openssl/bio.h ../../include/openssl/crypto.h
ui_err.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
ui_err.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
ui_err.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ui_err.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ui_err.o: ../../include/openssl/symhacks.h ../../include/openssl/ui.h
ui_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ui_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ui_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ui_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ui_err.c
ui_lib.o: ../../e_os.h ../../include/openssl/bio.h
ui_lib.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ui_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
ui_lib.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
ui_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ui_lib.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ui_lib.o: ../../include/openssl/symhacks.h ../../include/openssl/ui.h
ui_lib.o: ../cryptlib.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ui_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ui_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h ui_lib.c
ui_lib.o: ui_locl.h
ui_openssl.o: ../../e_os.h ../../include/openssl/bio.h
ui_openssl.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
ui_openssl.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
ui_openssl.o: ../../include/openssl/lhash.h ../../include/openssl/opensslconf.h
ui_openssl.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ui_openssl.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ui_openssl.o: ../../include/openssl/symhacks.h ../../include/openssl/ui.h
ui_openssl.o: ../cryptlib.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
ui_openssl.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/conio.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_signal.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/conio_s.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/signal.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
ui_openssl.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h
ui_openssl.o: ui_locl.h ui_openssl.c
ui_util.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ui_util.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
ui_util.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
ui_util.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
ui_util.o: ../../include/openssl/ui.h
ui_util.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ui_util.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ui_util.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h ui_locl.h
ui_util.o: ui_util.c
