#!/bin/bash
#KellyShyno
#ShynoWay

echo ""
echo -e "\e[1;33mUpdating ShynoWay..\e[0m"
echo ""
mkdir tmp
cd tmp
#reload repository
git clone https://github.com/KellyShyno/ShynoWay
cd ShynoWay/
chmod -R a+rx *
cp -r * ../../
cd ../../
rm -rf tmp
echo ""
echo -e "\e[1;32mUpdating complete\e[0m"
#break a leg (&_&)
