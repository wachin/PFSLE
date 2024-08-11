

There is no GCC as a compiler and is compatible with your version of Qt for Qt Creator in Debian 12 x386 32 bit


qmake qt6-base-dev qt6-base-dev qtcreator

Can't add kits and can't choose Qt version in Qt Creator

Le puse como nombre: "Chord_TrasnScroller" y he dado: Next, Next, Next, y he llegado hasta: "Kits - Kit Selection" y me pregunta: "The folloring kits can be used for projet Chord_TransCroller: Type to filter kits by name:" qué hago?


sudo apt-get install cmake build-essential libqt5x11extras5-dev qt5-qmake \
     qtbase5-dev-tools extra-cmake-modules qtdeclarative5-dev-tools qtdeclarative5-dev \
     qtcreator qttools5-dev qttools5-dev-tools libqt5svg5-dev clang xterm cmake-extras \
     qmlscene-qt6 qmlscene qml qmake qt6-base-dev qtcreator qmake6


https://facilitarelsoftwarelibre.blogspot.com/2021/03/compilar-ksnip-desde-codigo-fuente-en-linux.html

https://forum.qt.io/topic/116658/how-to-install-qt-version-for-linux


# Solución 1
https://forum.qt.io/topic/121285/no-compiler-can-produce-code-for-this-qt-version-on-64-bit-linux-machine/8

Thanks all for your support.
Finally, I could achieve what I want. Now, I am able to compile it for 32 bit.
Below are the steps for adding 32 bit compilers. Capturing here for others who are facing same problem
• Select Compilers tab -> Add ->Custom -> C  This will create an entry in compilers page.
o Assign, Name – My GCC - Desktop
o Assign, compiler path - “/usr/bin/gcc”
o Assign, Make Path – “/usrbin/make”
o Assign, ABI – x86 – linux – generic – elf – 32 bit
• Do the same for g++ compiler as well.
• Select Qt versions -> Add -> Browse for compiled qmake file located in “/usr/local/Qt_5.15.1/bin/qmake”



Consulta

"No QML utility installed" not letting me use Qt6
https://forum.qt.io/topic/145219/no-qml-utility-installed-not-letting-me-use-qt6/9
sudo apt install qml-qt6

qtcreator: no qml utility
https://groups.google.com/g/linux.debian.user/c/T9yImA-5abY
But if i execute on cmdline
qml -v
the output is
Qml Runtime 5.15.8
"which qml" says /usr/bin/qml
This packages are installed:
sudo apt install qtcreator qml build-essential qtbase5-dev qt5-qmake cmake

clazy
https://github.com/KDE/clazy
Ubuntu: sudo apt install g++ cmake clang llvm-dev git-core libclang-dev
