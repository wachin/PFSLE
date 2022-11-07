
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

