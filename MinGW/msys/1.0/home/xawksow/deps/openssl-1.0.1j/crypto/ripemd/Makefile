#
# OpenSSL/crypto/ripemd/Makefile
#

DIR=    ripemd
TOP=    ../..
CC=     cc
CPP=    $(CC) -E
INCLUDES=
CFLAG=-g
MAKEFILE=       Makefile
AR=             ar r

RIP_ASM_OBJ=

CFLAGS= $(INCLUDES) $(CFLAG)
ASFLAGS= $(INCLUDES) $(ASFLAG)
AFLAGS= $(ASFLAGS)

GENERAL=Makefile
TEST=rmdtest.c
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC=rmd_dgst.c rmd_one.c
LIBOBJ=rmd_dgst.o rmd_one.o $(RMD160_ASM_OBJ)

SRC= $(LIBSRC)

EXHEADER= ripemd.h
HEADER= rmd_locl.h rmdconst.h $(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:    lib

lib:    $(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

rmd-586.s:	asm/rmd-586.pl ../perlasm/x86asm.pl
	$(PERL) asm/rmd-586.pl $(PERLASM_SCHEME) $(CFLAGS) > $@

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
	rm -f *.s *.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

rmd_dgst.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
rmd_dgst.o: ../../include/openssl/opensslconf.h
rmd_dgst.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
rmd_dgst.o: ../../include/openssl/ripemd.h ../../include/openssl/safestack.h
rmd_dgst.o: ../../include/openssl/stack.h ../../include/openssl/symhacks.h
rmd_dgst.o: ../md32_common.h
rmd_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
rmd_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
rmd_dgst.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
rmd_dgst.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h rmd_dgst.c
rmd_dgst.o: rmd_locl.h rmdconst.h
rmd_one.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
rmd_one.o: ../../include/openssl/opensslconf.h ../../include/openssl/opensslv.h
rmd_one.o: ../../include/openssl/ossl_typ.h ../../include/openssl/ripemd.h
rmd_one.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
rmd_one.o: ../../include/openssl/symhacks.h
rmd_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
rmd_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
rmd_one.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
rmd_one.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h rmd_one.c
