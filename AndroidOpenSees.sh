# prepare environment
pkg install proot
termux-chroot
pkg install clang
pkg install wget
pkg install git
pkg install emacs
pkg install make
pkg install tcl
pkg install tcl-dev
pkg install python
wget https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
mkdir lib
mkdir bin

# download OpenSees
git clone https://github.com/jpcoding/OpenSees.git
cd OpenSees
cp ./MAKES/Makefile.def.ANDROID-TERMUX ./Makefile.def
make
cd ./../bin
cp OpenSees /usr/bin

