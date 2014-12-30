#
# OpenSSL/krb5/Makefile
#

DIR=	krb5
TOP=	../..
CC=	cc
INCLUDES= -I.. -I$(TOP) -I../../include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)

GENERAL=Makefile README
TEST=
APPS=

LIB=$(TOP)/libcrypto.a
LIBSRC= krb5_asn.c

LIBOBJ= krb5_asn.o

SRC= $(LIBSRC)

EXHEADER= krb5_asn.h
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

krb5_asn.o: ../../include/openssl/asn1.h ../../include/openssl/asn1t.h
krb5_asn.o: ../../include/openssl/bio.h ../../include/openssl/crypto.h
krb5_asn.o: ../../include/openssl/e_os2.h ../../include/openssl/krb5_asn.h
krb5_asn.o: ../../include/openssl/opensslconf.h
krb5_asn.o: ../../include/openssl/opensslv.h ../../include/openssl/ossl_typ.h
krb5_asn.o: ../../include/openssl/safestack.h ../../include/openssl/stack.h
krb5_asn.o: ../../include/openssl/symhacks.h
krb5_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h
krb5_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h
krb5_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h
krb5_asn.o: g:/build-env/mingw64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_pop.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_print_push.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/_timeval.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/crtdefs.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/limits.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/malloc.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/pthread_time.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sec_api/time_s.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdarg.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stddef.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdio.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/stdlib.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/swprintf.inl
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/sys/timeb.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/time.h
krb5_asn.o: g:/build-env/mingw64/x86_64-w64-mingw32/include/vadefs.h krb5_asn.c
