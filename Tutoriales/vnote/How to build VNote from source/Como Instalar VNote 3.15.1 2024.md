

sudo apt-get install cmake build-essential libqt5x11extras5-dev qt5-qmake \
     qtbase5-dev-tools extra-cmake-modules qtdeclarative5-dev-tools \
     qtdeclarative5-dev qtcreator qttools5-dev qttools5-dev-tools \
     libqt5svg5-dev qtwebengine5-dev libqt5svg5-dev \
     libqt5location5 qtlocation5-dev
     
- - - - - - 	
	
   ```
   wget -c https://github.com/vnotex/vnote/archive/refs/tags/v3.17.0.tar.gz
   
   ``` 

# vnote-fork /libs
https://github.com/wachin/vnote-fork/tree/master/libs

## QHotkey @ 18ac011
https://github.com/vnotex/QHotkey/tree/18ac011008d3ae55abc19233ba94fad1ea9801d8

<>Code > Download ZIP
https://github.com/vnotex/QHotkey/archive/18ac011008d3ae55abc19233ba94fad1ea9801d8.zip

## vtextedit @ b512b51
https://github.com/vnotex/vtextedit/tree/b512b5126fe0898a29280204f2959e2dbeb67660

<>Code > Download ZIP
https://github.com/vnotex/vtextedit/archive/b512b5126fe0898a29280204f2959e2dbeb67660.zip

### vtextedit src/libs
https://github.com/vnotex/vtextedit/tree/b512b5126fe0898a29280204f2959e2dbeb67660/src/libs

#### hunspell @ efb0389
https://github.com/vnotex/hunspell/tree/efb0389dbd3cb4c9634e1df73bacb5a290dd9311

<>Code > Download ZIP
https://github.com/vnotex/hunspell/archive/efb0389dbd3cb4c9634e1df73bacb5a290dd9311.zip

#### sonnet @ 57e5adb
https://github.com/vnotex/sonnet/tree/57e5adb5dd375c7fd1acfabfd1d87b5ba5547b0d

<>Code > Download ZIP
https://github.com/vnotex/sonnet/archive/57e5adb5dd375c7fd1acfabfd1d87b5ba5547b0d.zip

#### syntax-highlighting @ 0428996
https://github.com/vnotex/syntax-highlighting/tree/04289967286edc44e29f0bde4d1e1cb7b94c3434

<>Code > Download ZIP
https://github.com/vnotex/syntax-highlighting/archive/04289967286edc44e29f0bde4d1e1cb7b94c3434.zip



y 

mkdir build && cd build
cmake ..
make


wachin@netinst:~/Dev/vnote-wachi/vnote-3.15.1
$ dpkg-buildpackage -uc -b
dpkg-buildpackage: información: paquete fuente vnote
dpkg-buildpackage: información: versión de las fuentes 3.15.1-1
dpkg-buildpackage: información: distribución de las fuentes UNRELEASED
dpkg-buildpackage: información: fuentes modificadas por Washington Indacochea Delgado <wachin.id@gmail.com>
dpkg-buildpackage: información: arquitectura del sistema i386
 dpkg-source --before-build .
 debian/rules clean
dh clean
   dh_auto_clean
   dh_clean
        rm -f debian/debhelper-build-stamp
        rm -rf debian/.debhelper/
        rm -f -- debian/vnote.substvars debian/files
        rm -fr -- debian/vnote/ debian/tmp/
        find .  \( \( \
                \( -path .\*/.git -o -path .\*/.svn -o -path .\*/.bzr -o -path .\*/.hg -o -path .\*/CVS -o -path .\*/.pc -o -path .\*/_darcs \) -prune -o -type f -a \
                \( -name '#*#' -o -name '.*~' -o -name '*~' -o -name DEADJOE \
                 -o -name '*.orig' -o -name '*.rej' -o -name '*.bak' \
                 -o -name '.*.orig' -o -name .*.rej -o -name '.SUMS' \
                 -o -name TAGS -o \( -path '*/.deps/*' -a -name '*.P' \) \
                \) -exec rm -f {} + \) -o \
                \( -type d -a -name autom4te.cache -prune -exec rm -rf {} + \) \)
 debian/rules binary
dh binary
   dh_update_autotools_config
   dh_autoreconf
   debian/rules override_dh_auto_configure
make[1]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1'
qmake PREFIX=/usr
Info: creating stash file /home/wachin/Dev/vnote-wachi/vnote-3.15.1/.qmake.stash
make[1]: se sale del directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1'
   debian/rules override_dh_auto_build
make[1]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1'
dh_auto_build -- qmake && make
        make -j2 qmake
make[2]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1'
make[2]: se sale del directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1'
make[2]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1'
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/libs.pro PREFIX=/usr ) && make -f Makefile 
make[3]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs'
cd vtextedit/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/vtextedit.pro PREFIX=/usr ) && make -f Makefile 
make[4]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit'
cd src/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/src/src.pro PREFIX=/usr ) && make -f Makefile 
make[5]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/src'
cd libs/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/src/libs/libs.pro PREFIX=/usr ) && make -f Makefile 
make[6]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/src/libs'
cd syntax-highlighting/ && ( test -e Makefile || /usr/lib/qt5/bin/qmake -o Makefile /home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/src/libs/syntax-highlighting/syntax-highlighting.pro PREFIX=/usr ) && make -f Makefile 
make[7]: se entra en el directorio '/home/wachin/Dev/vnote-wachi/vnote-3.15.1/libs/vtextedit/src/libs/syntax-highlighting'


