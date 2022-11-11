
# Creando el deb de dmidiplayer 1.7.0 con ninja

Dependencias:

    sudo apt install libasound2-dev doxygen libpulse-dev git \
    libfluidsynth-dev qttools5-dev cmake qttools5-dev pandoc \
    libxorg-gtest-dev libgmock-dev xsltproc graphviz \
    libuchardet-dev dh-make ninja-build


les aconsejo hacer lo siguiente, cree de una carpeta principal, ejemplo yo usaré una llamada:

🗀 /dmidiplayer-1.7-ninja/

y dentro cree subcarpetas


# Compilando sonivox con ninja
alli dentro de la carpeta principal creo una subcarpeta con el nombre:

🗀 /sonivox-ninja/

entro en una terminal allí y pongo los comandos:

    wget -c https://github.com/pedrolcl/sonivox/archive/refs/tags/v3.6.11.tar.gz
    tar -xvzf v3.6.11.tar.gz
    tar -czvf sonivox-3.6.11.tar.gz sonivox-3.6.11
    tar -xvzf sonivox-3.6.11.tar.gz
    cd sonivox-3.6.11
    mkdir -p build
    cd build
    cmake -G Ninja ../../sonivox-3.6.11 -DCMAKE_INSTALL_PREFIX:PATH=/usr
    ninja
    sudo ninja install
    cd ..
    

**Descargando carpeta debian de Christian Marillat**
    
Debemos descargar la carpeta **debian** que hizo Christian Marillat de deb-multimedia entrando en la siguiente dirección:

[https://www.deb-multimedia.org/pool/main/s/sonivox-dmo/](https://www.deb-multimedia.org/pool/main/s/sonivox-dmo/)

el enlace directo es:

[sonivox-dmo_3.6.11-dmo1.debian.tar.xz](https://www.deb-multimedia.org/pool/main/s/sonivox-dmo/sonivox-dmo_3.6.11-dmo1.debian.tar.xz)

podemos descargar ese archivo dentro de la carpeta principal:

🗀 /dmidiplayer-1.7-ninja/

creando una subcarpeta llamada;

🗀 /deb-multimedia.org/

el archivo a esta fecha 2022-11-11 se llama:

sonivox-dmo_3.6.11-dmo1.debian.tar.xz

pero como puede que en el futuro ya no esté ese archivo he sacado un respaldo:

[dmidiplayer-272-ninja-christian-marillat](https://github.com/wachin/dmidiplayer-272-ninja-christian-marillat)

Si luego lo necesiten pueden clonar ese repositorio en la carpeta principal.

Después de descargado el archivo usted debe descomprimirlo con clic derecho Extraer aquí:

y copiar la carpeta: 

🗀 /debian/

y la pegarla dentro de la carpeta:

🗀 /dmidiplayer-1.7-ninja/sonivox-ninja/sonivox-3.6.11/

le debe quedar así:

🗀 /dmidiplayer-1.7-ninja/sonivox-ninja/sonivox-3.6.11/debian/

y en la terminal estando ubicados en:

🗀 /dmidiplayer-1.7-ninja/sonivox-ninja/sonivox-3.6.11/

allí ponemos el comando:

    dpkg-buildpackage -uc -b

y esperamos un rato, y luego en carpeta anterior, o sea en:

🗀 /dmidiplayer-1.7-ninja/sonivox-ninja/

se crearán los deb:

/dmidiplayer-1.7-ninja/sonivox-ninja/libsonivox-dev_3.6.11-dmo1_i386.deb
/dmidiplayer-1.7-ninja/sonivox-ninja/libsonivox3_3.6.11-dmo1_i386.deb
/dmidiplayer-1.7-ninja/sonivox-ninja/libsonivox3-dbgsym_3.6.11-dmo1_i386.deb

el archivo debug no lo necesitamos, lo podemos borrar


Ahora debemos desinstalar el sonivox compilado desde codigo fuente, en su administrador de archivos estando ubicados en:

🗀 /dmidiplayer-1.7-ninja/sonivox-ninja/sonivox-3.6.11/build/

abrimos una terminal allí y ponemos:

    sudo ninja uninstall

ahora si debemos instalar los deb:

/dmidiplayer-1.7-ninja/sonivox-ninja/libsonivox-dev_3.6.11-dmo1_i386.deb
/dmidiplayer-1.7-ninja/sonivox-ninja/libsonivox3_3.6.11-dmo1_i386.deb

debemos instalarlos si por si pues de lo contrario no habrá información de la dependecia de estos archivos para los siguientes deb que vamos a crear



# Compilando drumstick 2.7.2 con ninja
Pongo en la terminal:
    
    wget -c https://sourceforge.net/projects/drumstick/files/2.7.2/drumstick-2.7.2.tar.gz
    tar -xvzf drumstick-2.7.2.tar.gz
    cd drumstick-2.7.2
    mkdir -p build
    cd build
    cmake -G Ninja ../../drumstick-2.7.2 -DCMAKE_INSTALL_PREFIX:PATH=/usr
    ninja
    sudo ninja install
    cd ..




https://www.deb-multimedia.org/pool/main/d/drumstick-dmo/
https://www.deb-multimedia.org/pool/main/d/drumstick-dmo/drumstick-dmo_2.7.2-dmo1.debian.tar.xz



    dpkg-buildpackage -uc -b




# Compilando dmidiplayer 1.7.0 con ninja
En su administrador de archivos en la carpeta:

🗀 /dmidiplayer-1.7-building/

y allí cree una subcarpeta:

🗀 /dmidiplayer-ninja/

y abra una terminal allí y ponga:

    wget -c https://github.com/pedrolcl/dmidiplayer/archive/refs/tags/v1.7.0.tar.gz
    tar -xvzf v1.7.0.tar.gz
    cd dmidiplayer-1.7.0 
    mkdir build
    cd build    
    cmake -G Ninja ../../dmidiplayer-1.7.0 -DCMAKE_INSTALL_PREFIX:PATH=/usr
    ninja
    sudo ninja install
    cd ..

    


    
Ahora compilar dmidiplayer 1.7.0 entrando en su administrador de archivos en la carpeta:



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
    
ahora descargue la carpeta debian de Christian Marillat:

https://www.deb-multimedia.org/pool/main/d/dmidiplayer-dmo/dmidiplayer-dmo
https://www.deb-multimedia.org/pool/main/d/dmidiplayer-dmo/dmidiplayer-dmo_1.7.0-dmo1.debian.tar.xz

descomprímala y péguela en:

🗀 /dmidiplayer-1.7-building/dmidiplayer-dev/




Para desinstalar:

    sudo ninja uninstall
    




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
