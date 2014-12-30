#
# OpenSSL/crypto/modes/Makefile
#

DIR=	modes
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

MODES_ASM_OBJ=

CFLAGS= $(INCLUDES) $(CFLAG)
ASFLAGS= $(INCLUDES) $(ASFLAG)
AFLAGS= $(ASFLAGS)

GENERAL=Makefile
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC= cbc128.c ctr128.c cts128.c cfb128.c ofb128.c gcm128.c \
	ccm128.c xts128.c
LIBOBJ= cbc128.o ctr128.o cts128.o cfb128.o ofb128.o gcm128.o \
	ccm128.o xts128.o $(MODES_ASM_OBJ)

SRC= $(LIBSRC)

#EXHEADER= store.h str_compat.h
EXHEADER= modes.h
HEADER=	modes_lcl.h $(EXHEADER)

ALL=    $(GENERAL) $(SRC) $(HEADER)

top:
	(cd ../..; $(MAKE) DIRS=crypto SDIRS=$(DIR) sub_all)

all:	lib

lib:	$(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)
	$(RANLIB) $(LIB) || echo Never mind.
	@touch lib

ghash-ia64.s:	asm/ghash-ia64.pl
	$(PERL) asm/ghash-ia64.pl $@ $(CFLAGS)
ghash-x86.s:	asm/ghash-x86.pl
	$(PERL) asm/ghash-x86.pl $(PERLASM_SCHEME) $(CFLAGS) $(PROCESSOR) > $@
ghash-x86_64.s:	asm/ghash-x86_64.pl
	$(PERL) asm/ghash-x86_64.pl $(PERLASM_SCHEME) > $@
ghash-sparcv9.s:	asm/ghash-sparcv9.pl
	$(PERL) asm/ghash-sparcv9.pl $@ $(CFLAGS)
ghash-alpha.s:	asm/ghash-alpha.pl
	(preproc=/tmp/$$$$.$@; trap "rm $$preproc" INT; \
	$(PERL) asm/ghash-alpha.pl > $$preproc && \
	$(CC) -E $$preproc > $@ && rm $$preproc)

ghash-parisc.s:	asm/ghash-parisc.pl
	$(PERL) asm/ghash-parisc.pl $(PERLASM_SCHEME) $@

# GNU make "catch all"
ghash-%.S:	asm/ghash-%.pl;	$(PERL) $< $(PERLASM_SCHEME) $@

ghash-armv4.o:	ghash-armv4.S

files:
	$(PERL) $(TOP)/util/files.pl Makefile >> $(TOP)/MINFO

links:
	@$(PERL) $(TOP)/util/mklink.pl ../../include/openssl $(EXHEADER)
	@$(PERL) $(TOP)/util/mklink.pl ../../test $(TEST)
	@$(PERL) $(TOP)/util/mklink.pl ../../apps $(APPS)

install:
	@[ -n "$(INSTALLTOP)" ] # should be set by top Makefile...
	@headerlist="$(EXHEADER)"; for i in $$headerlist; \
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
	rm -f *.s *.o */*.o *.obj lib tags core .pure .nfs* *.old *.bak fluff

# DO NOT DELETE THIS LINE -- make depend depends on it.

cbc128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
cbc128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
cbc128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
cbc128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
cbc128.o: ../../include/openssl/symhacks.h cbc128.c
cbc128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
cbc128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
cbc128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
cbc128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
ccm128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ccm128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
ccm128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ccm128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ccm128.o: ../../include/openssl/symhacks.h ccm128.c
ccm128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ccm128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ccm128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ccm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
cfb128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
cfb128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
cfb128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
cfb128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
cfb128.o: ../../include/openssl/symhacks.h cfb128.c
cfb128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
cfb128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
cfb128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
cfb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
ctr128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ctr128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
ctr128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ctr128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ctr128.o: ../../include/openssl/symhacks.h ctr128.c
ctr128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ctr128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ctr128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ctr128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
cts128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
cts128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
cts128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
cts128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
cts128.o: ../../include/openssl/symhacks.h cts128.c
cts128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
cts128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
cts128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
cts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
gcm128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
gcm128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
gcm128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
gcm128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
gcm128.o: ../../include/openssl/symhacks.h
gcm128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
gcm128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
gcm128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
gcm128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h gcm128.c
gcm128.o: modes_lcl.h
ofb128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
ofb128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
ofb128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
ofb128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
ofb128.o: ../../include/openssl/symhacks.h
ofb128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
ofb128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
ofb128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
ofb128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
ofb128.o: ofb128.c
xts128.o: ../../include/openssl/crypto.h ../../include/openssl/e_os2.h
xts128.o: ../../include/openssl/modes.h ../../include/openssl/opensslconf.h
xts128.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
xts128.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
xts128.o: ../../include/openssl/symhacks.h
xts128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
xts128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
xts128.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/assert.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/string_s.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/string.h
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
xts128.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h modes_lcl.h
xts128.o: xts128.c
