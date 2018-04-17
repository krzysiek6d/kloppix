#!/bin/sh
tar xf binutils-2.30.tar.xz
mkdir build-binutils
cd build-binutils
../binutils-2.30/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
rm -rf binutils-2.30

