# prepare environment
apt edit-sources
pkg install proot clang wget git emacs make tcl tcl-dev python
termux-chroot 
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

