#!/bin/bash
#KellyShyno
#ShynoWay

clear
sleep 0.4;
echo "";
echo -e "\e[1;33mUpdating ShynoWay..\e[0m";
echo "";
sleep 0.4;
mkdir tmp
cd tmp
#reload repository
git clone https://github.com/KellyShyno/ShynoWay
cd ShynoWay/
chmod -R a+rx *
cp -r * ../../
cd ../../
rm -rf tmp
clear
sleep 0.4;
echo "";
echo -e "\e[1;32mUpdating complete\e[0m";
echo "";
sleep 0.4;
#break a leg (&_&)
