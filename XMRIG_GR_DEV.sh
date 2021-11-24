#!/usr/bin/env bash

echo
echo 
echo
echo 
##Updating Repos & Installing dependencies
echo      ++++++++++ XMRIG_GHOSTRIDER_BUILDER ++++++++++++
echo        ----------- MINE RTM ON THE GO -----------
echo --------------------------------------------------------
echo 
echo
echo 
echo                 follow me on 
echo          https://github.com/ch3332xr
echo  [......////////\\\ This May Take a While.........@#$%^*]
echo  [+++  Updating repos and  installing dependencies +++]
 
apt update
apt upgrade -y
apt install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev git libnuma-dev cmake automake libtool autoconf
wget https://github.com/xmrig/xmrig/archive/refs/heads/dev.zip
unzip dev.zip
echo  [+++  Now Building +++]
cd xmrig-dev/scripts
./build_deps.sh
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
echo 
echo
echo 
echo 
echo        [+++  Build Complete +++]
echo  [********** Lets Get Mining!!! **********]