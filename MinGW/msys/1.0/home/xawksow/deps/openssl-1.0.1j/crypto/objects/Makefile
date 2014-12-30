#
# OpenSSL/crypto/objects/Makefile
#

DIR=	objects
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r
PERL=		perl

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile README
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=	o_names.c obj_dat.c obj_lib.c obj_err.c obj_xref.c
LIBOBJ= o_names.o obj_dat.o obj_lib.o obj_err.o obj_xref.o

SRC= $(LIBSRC)

EXHEADER= objects.h obj_mac.h
HEADER=	$(EXHEADER) obj_dat.h obj_xref.h

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:	obj_dat.h obj_xref.h lib

lib:	$(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

obj_dat.h: obj_dat.pl obj_mac.h
	$(PERL) obj_dat.pl obj_mac.h obj_dat.h

# objects.pl both reads and writes obj_mac.num
obj_mac.h: objects.pl objects.txt obj_mac.num
	$(PERL) objects.pl objects.txt obj_mac.num obj_mac.h
	@sleep 1; touch obj_mac.h; sleep 1

obj_xref.h: objxref.pl obj_xref.txt obj_mac.num
	$(PERL) objxref.pl obj_mac.num obj_xref.txt > obj_xref.h
	@sleep 1; touch obj_xref.h; sleep 1

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

o_names.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
o_names.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
o_names.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
o_names.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
o_names.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
o_names.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
o_names.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
o_names.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
o_names.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
o_names.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
o_names.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h o_names.c
obj_dat.o: ../../e_os.h ../../include/openssl/asn1.h
obj_dat.o: ../../include/openssl/bio.h ../../include/openssl/bn.h
obj_dat.o: ../../include/openssl/buffer.h ../../include/openssl/crypto.h
obj_dat.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
obj_dat.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
obj_dat.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
obj_dat.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
obj_dat.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
obj_dat.o: ../../include/openssl/symhacks.h ../cryptlib.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
obj_dat.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
obj_dat.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h obj_dat.c
obj_dat.o: obj_dat.h
obj_err.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
obj_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
obj_err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
obj_err.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
obj_err.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
obj_err.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
obj_err.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
obj_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
obj_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
obj_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
obj_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h obj_err.c
obj_lib.o: ../../e_os.h ../../include/openssl/asn1.h
obj_lib.o: ../../include/openssl/bio.h ../../include/openssl/buffer.h
obj_lib.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
obj_lib.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
obj_lib.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
obj_lib.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
obj_lib.o: ../../include/openssl/ossl_typ.h ../../include/openssl/safestack.h
obj_lib.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
obj_lib.o: ../cryptlib.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/adxintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ammintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx2intrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512cdintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512erintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512fintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avx512pfintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/avxintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmi2intrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/bmiintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/emmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/f16cintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fma4intrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fmaintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/fxsrintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/ia32intrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/immintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lwpintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/lzcntintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm3dnow.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mm_malloc.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/mmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/pmmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/popcntintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/prfchwintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rdseedintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/rtmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/shaintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/smmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tbmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/tmmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/wmmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/x86intrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xmmintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xopintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xsaveoptintrin.h
obj_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/xtestintrin.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_bsd_types.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_unicode.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/apisetcconv.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/basetsd.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/bemapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ctype.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/datetimeapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/debugapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errhandlingapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/excpt.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fcntl.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fibersapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fileapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/fltwinerror.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/guiddef.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/handleapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/heapapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/imm.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/in6addr.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/inaddr.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/interlockedapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/io.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ioapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/jobapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ktmtypes.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/libloaderapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mcx.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/memoryapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwinbase.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/minwindef.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/mstcpip.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namedpipeapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/namespaceapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/poppack.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processenv.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processthreadsapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/processtopologyapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/profileapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_fd_types.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_mreq1.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ip_types.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_socket_types.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_ws1_undef.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsa_errnos.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/_wsadata.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack1.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack2.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack4.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pshpack8.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/qos.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/realtimeapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/reason.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sal.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdkddkver.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/io_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stralign_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securityappcontainer.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/securitybaseapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/specstrings.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stralign.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stringapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/synchapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/types.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sysinfoapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/systemtopologyapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoolapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/threadpoollegacyapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/timezoneapi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/tvout.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/utilapiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/virtdisk.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winapifamily.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winbase.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wincon.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windef.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/windows.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winerror.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wingdi.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnetwk.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnls.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winnt.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winreg.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsock2.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winsvc.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winuser.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/winver.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wnnc.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/wow64apiset.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2def.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2ipdef.h
obj_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/ws2tcpip.h obj_lib.c
obj_xref.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
obj_xref.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
obj_xref.o: ../../include/openssl/obj_mac.h ../../include/openssl/objects.h
obj_xref.o: ../../include/openssl/opensslconf.h
obj_xref.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
obj_xref.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
obj_xref.o: ../../include/openssl/symhacks.h
obj_xref.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
obj_xref.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
obj_xref.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
obj_xref.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h obj_xref.c
obj_xref.o: obj_xref.h
