#!/bin/sh
configure --disable-shared
make
cp .libs/libpng16.a .libs/libpng.a