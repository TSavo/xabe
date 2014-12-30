#!/bin/sh
LIBS="../libpng-1.6.15/.libs/libpng.a ../../mingw32/i686-w64-mingw32/lib/libz.a" \
png_CFLAGS="-I../libpng-1.6.15" \
png_LIBS="-L../libpng-1.6.15/.libs" \
configure --enable-static --disable-shared --without-tools

make