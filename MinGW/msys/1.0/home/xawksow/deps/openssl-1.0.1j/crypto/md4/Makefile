#
# OpenSSL/crypto/md4/Makefile
#

DIR=    md4
TOP=    ../..
CC=     cc
CPP=    $(CC) -E
INCLUDES=
CFLAG=-g
MAKEFILE=       Makefile
AR=             ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile
TEST=md4test.c
APPS=md4.c

LIB=$(TOP)/libcrypto.a
LIBSRC=md4_dgst.c md4_one.c
LIBOBJ=md4_dgst.o md4_one.o

SRC= $(LIBSRC)

EXHEADER= md4.h
HEADER= md4_locl.h $(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:    lib

lib:    $(LIBOBJ)
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
	rm -f ../../include/openssl/$(EXHEADER) ../../test/$(TEST) ../../apps/$(APPS)

clean:
	rm -f asm/mx86unix.cpp *.o asm/*.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

md4_dgst.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
md4_dgst.o: ../../include/openssl/md4.h ../../include/openssl/opensslconf.h
md4_dgst.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
md4_dgst.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
md4_dgst.o: ../../include/openssl/symhacks.h ../md32_common.h
md4_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
md4_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
md4_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
md4_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h md4_dgst.c
md4_dgst.o: md4_locl.h
md4_one.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
md4_one.o: ../../include/openssl/md4.h ../../include/openssl/opensslconf.h
md4_one.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
md4_one.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
md4_one.o: ../../include/openssl/symhacks.h
md4_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
md4_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
md4_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
md4_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h md4_one.c
