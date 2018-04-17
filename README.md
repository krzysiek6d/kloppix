# kloppix
download this to such a directory structure:
/home/{$USER}/opt/<here is this README.md>

#go to src directory
cd src
#download appropriate binutils and gcc, script is aligned to such versions
wget http://mirrors-usa.go-parts.com/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.xz
wget https://saimei.ftp.acc.umu.se/mirror/gnu.org/gnu/binutils/binutils-2.30.tar.xz

#source exports to properly build binutils
source exports.sh
#build binutils
./binutils.sh
#export new path
source exports_after_binutils.sh
#build gcc for i386
./gcc.sh

Now your gcc and binutils are ready to use. You cant use stdlib since it is freestanding.

#go to my_os/boot directory
#and run build.sh
#this will compile boot.s, kernel.c and create binary using linker.ld script
./build.sh

#you can create iso file
./makeiso.sh
#NOTE that you need grub and xorriso and mtools
xorriso: wget https://ftp.gnu.org/gnu/xorriso/xorriso-1.4.8.tar.gz
mtools: repo
grub: repo


run your operating system:
qemu-system-i386 -cdrom myos.iso
or 
qemu-system-i386 -kernel myos.bin
