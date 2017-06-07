#！/bin/bash
echo "**********************************************************"
echo "             3D平台安装，Ubuntu16.04 LST"
echo "**********************************************************"
sudo apt-get update
sudo apt-get install g++ cmake subversion libfreetype6-dev libode-dev libsdl-dev ruby ruby-dev libdevil-dev libboost-dev libboost-thread-dev libboost-regex-dev libboost-system-dev qt4-default openjdk-8-jdk build-essential libgl1-mesa-dev automake libtool -y
echo "**********************************************************"
echo "                   安装ODE"
echo "**********************************************************"
cd ode-0.13
./bootstrap
./configure --enable-shared --disable-demos --enable-double-precision --disable-asserts --enable-molloc
make
sudo make install
cd ..
echo "**********************************************************"
echo "                   安装simspark"
echo "***********************************************************"
cd simspark-0.2.4/build
cmake ..
make
sudo make install
cd ../..
echo "**********************************************************"
echo "                  安装rcsssever"
echo "**********************************************************"
cd rcssserver3d-0.6.10/build
cmake ..
make
sudo make install
sudo  ldconfig
cd ../..
echo "**********************************************************"
echo "                  安装roboviz"
echo "**********************************************************"
cd RoboViz-dev/scripts/
./build-linux64.sh
cd ../..
echo "**********************************************************"
echo "请将以下内容复制，替换文件中第27行,并保存"
DIR="$( cd RoboViz-dev/bin/linux-amd64 && pwd)"
echo "MON=\"""$DIR/roboviz.sh\""
echo "**********************************************************"
sudo gedit /usr/local/bin/rcsoccersim3d
sudo apt-get clean
