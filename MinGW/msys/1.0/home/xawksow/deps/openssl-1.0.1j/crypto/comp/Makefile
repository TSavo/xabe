#
# OpenSSL/crypto/comp/Makefile
#

DIR=	comp
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
LIBSRC= comp_lib.c comp_err.c \
	c_rle.c c_zlib.c

LIBOBJ=	comp_lib.o comp_err.o \
	c_rle.o c_zlib.o

SRC= $(LIBSRC)

EXHEADER= comp.h
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

c_rle.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
c_rle.o: ../../include/openssl/comp.h ../../include/openssl/crypto.h
c_rle.o: ../../include/openssl/e_os2.h ../../include/openssl/obj_mac.h
c_rle.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
c_rle.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
c_rle.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
c_rle.o: ../../include/openssl/symhacks.h c_rle.c
c_rle.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
c_rle.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
c_rle.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
c_rle.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
c_zlib.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
c_zlib.o: ../../include/openssl/comp.h ../../include/openssl/crypto.h
c_zlib.o: ../../include/openssl/e_os2.h ../../include/openssl/err.h
c_zlib.o: ../../include/openssl/lhash.h ../../include/openssl/obj_mac.h
c_zlib.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
c_zlib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
c_zlib.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
c_zlib.o: ../../include/openssl/symhacks.h c_zlib.c
c_zlib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
c_zlib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
c_zlib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
c_zlib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
comp_err.o: ../../include/openssl/bio.h ../../include/openssl/comp.h
comp_err.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
comp_err.o: ../../include/openssl/err.h ../../include/openssl/lhash.h
comp_err.o: ../../include/openssl/opensslconf.h
comp_err.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
comp_err.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
comp_err.o: ../../include/openssl/symhacks.h comp_err.c
comp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
comp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
comp_err.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/errno.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
comp_err.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
comp_lib.o: ../../include/openssl/asn1.h ../../include/openssl/bio.h
comp_lib.o: ../../include/openssl/comp.h ../../include/openssl/crypto.h
comp_lib.o: ../../include/openssl/e_os2.h ../../include/openssl/obj_mac.h
comp_lib.o: ../../include/openssl/objects.h ../../include/openssl/opensslconf.h
comp_lib.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
comp_lib.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
comp_lib.o: ../../include/openssl/symhacks.h comp_lib.c
comp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
comp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
comp_lib.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
comp_lib.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h
