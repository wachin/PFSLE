
# Compilando dmidiplayer 1.7.0 con ninja
En su administrador de archivos en la carpeta:

/dmidiplayer-1.7-ninja

y allí cree una subcarpeta:

/dmidi-ninja

y abra una terminal allí y ponga:

    wget -c https://github.com/pedrolcl/dmidiplayer/archive/refs/tags/v1.7.0.tar.gz
    tar -xvzf v1.7.0.tar.gz
    cd dmidiplayer-1.7.0 
    mkdir build
    cd build    
    cmake -G Ninja ../../dmidiplayer-1.7.0 -DCMAKE_INSTALL_PREFIX:PATH=/usr
    ninja
    sudo ninja install

    
Para desinstalar:

    sudo ninja uninstall

    
Log de instalación:

$ sudo ninja install
[0/1] Install the project...
-- Install configuration: ""
-- Installing: /usr/share/man/man1/dmidiplayer.1
-- Installing: /usr/share/dmidiplayer/haendel_hallelujah.mid
-- Installing: /usr/share/dmidiplayer/lindaamiga.mid
-- Installing: /usr/share/dmidiplayer/mozart_aveverum.mid
-- Installing: /usr/share/dmidiplayer/mozart_diesirae.mid
-- Installing: /usr/share/dmidiplayer/mozart_konigdernacht.mid
-- Installing: /usr/share/dmidiplayer/schubert_avemaria.mid
-- Installing: /usr/share/dmidiplayer/test.mid
-- Installing: /usr/share/dmidiplayer/Negra_Sombra.kar
-- Installing: /usr/share/dmidiplayer/twinkle.kar
-- Installing: /usr/share/dmidiplayer/examples.lst
-- Installing: /usr/share/icons/hicolor/24x24/apps/dmidiplayer.png
-- Installing: /usr/share/icons/hicolor/32x32/apps/dmidiplayer.png
-- Installing: /usr/share/icons/hicolor/48x48/apps/dmidiplayer.png
-- Installing: /usr/share/icons/hicolor/64x64/apps/dmidiplayer.png
-- Installing: /usr/share/icons/hicolor/128x128/apps/dmidiplayer.png
-- Installing: /usr/share/icons/hicolor/scalable/apps/dmidiplayer.svgz
-- Installing: /usr/bin/dmidiplayer
-- Installing: /usr/share/dmidiplayer/dmidiplayer_cs.qm
-- Installing: /usr/share/dmidiplayer/dmidiplayer_de.qm
-- Installing: /usr/share/dmidiplayer/dmidiplayer_es.qm
-- Installing: /usr/share/dmidiplayer/dmidiplayer_fr.qm
-- Installing: /usr/share/dmidiplayer/dmidiplayer_gl.qm
-- Installing: /usr/share/dmidiplayer/dmidiplayer_it.qm
-- Installing: /usr/share/dmidiplayer/dmidiplayer_ru.qm
-- Installing: /usr/share/applications/net.sourceforge.dmidiplayer.desktop
-- Installing: /usr/share/metainfo/net.sourceforge.dmidiplayer.metainfo.xml

    
    
# Antes:

## Compilando dmidiplayer 1.7.0

Ahora compilar dmidiplayer 1.7.0 entrando en su administrador de archivos en la carpeta:

/dmidiplayer-1.7-building/

y allí cree una subcarpeta:

/dmidiplayer-1.7-building/dmidiplayer-dev

y abra una terminal allí y ponga:

    wget -c https://github.com/pedrolcl/dmidiplayer/archive/refs/tags/v1.7.0.tar.gz
    tar -xvzf v1.7.0.tar.gz
    cd dmidiplayer-1.7.0
    mkdir build
    cd build
    cmake .. -DCMAKE_INSTALL_PREFIX:PATH=/usr
    make
    sudo make install
    cd
    



CONSULTAS
    
How to Use Ninja
https://gist.github.com/jrhemstad/811d1e41af9685670241fa472170ef32
Configure CMake to create Ninja build files
mkdir build && cd build
PARALLEL_LEVEL=N cmake -GNinja ..


How to Build ClickHouse on Linux
https://clickhouse.com/docs/en/development/build/
sudo apt update
sudo apt install git cmake ninja-build clang++ python
git clone --recursive https://github.com/ClickHouse/ClickHouse.git
mkdir build && cd build
cmake ../ClickHouse
ninja

https://ilyas-hamadouche.medium.com/build-your-c-projects-faster-using-ninja-3d7af9b418fc
Install
You can install Ninja using package managers, Linux Debian/Ubuntu: 
    sudo apt-get install ninja-build
To generate Ninja build files, we need to run CMake with the flag -G Ninja. Run the following command in the terminal:
    cmake -G Ninja
CMake will generate its own cache/settings files, build.ninja and rules.ninja. This image shows the output files:

www.deb-multimedia dmidiplayer dmo 1.7.0 debian
https://www.deb-multimedia.org/pool/main/d/dmidiplayer-dmo/dmidiplayer-dmo_1.7.0-dmo1.debian.tar.xz
/debian/rules
#!/usr/bin/make -f

%:
	dh $@ -Scmake+ninja

override_dh_clean:
	find docs -name index.html -delete

	dh_clean

override_dh_auto_test:
