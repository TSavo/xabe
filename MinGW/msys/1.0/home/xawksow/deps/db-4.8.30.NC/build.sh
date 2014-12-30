#!/bin/sh
cd "build_unix/"
../dist/configure --enable-mingw --enable-cxx --disable-shared --disable-replication
make