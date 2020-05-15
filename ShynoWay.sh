#!/bin/bash
#KellyShyno
#ShynoWay

#rise

output() {
clear
sleep 0.16;
echo "";
echo -e '\e[1;36m ____  _                    __        __\e[0m'
echo -e '\e[1;36m/ ___|| |__  _   _ _ __   __\ \      / /_ _ _   _\e[0m'
echo -e '\e[1;35m\___ \| "_ \| | | | "_ \ / _ \ \ /\ / / _` | | | |\e[0m'
echo -e '\e[1;35m ___) | | | | |_| | | | | (_) \ V  V / (_| | |_| |\e[0m'
echo -e '\e[1;36m|____/|_| |_|\__, |_| |_|\___/ \_/\_/ \__,_|\__, |\e[0m'
echo -e '\e[1;36m             |___/                          |___/\e[0m'
echo "";
echo -e "\e[1;31mversion: 1.0.0\e[0m";
echo -e "\e[1;35mvk:\e[0m""\e[1;4;36m https://vk.com/linuxkelly\e[0m";
echo "";
echo -e " \e[43;30m $program \e[0m";
echo "";
$out;
echo "";
echo -e "\e[1;33m====================================\e[0m";
echo -en '\e[1;33m|  \e[0m'"\e[1;35m[ \e[0m""\e[1;36mx\e[0m""\e[1;35m ] \e[0m";
echo -en "\e[1;36mback\e[0m"'\e[1;33m  ||  ';
echo -en "\e[1;35m[ \e[0m""\e[1;36md\e[0m""\e[1;35m ] \e[0m";
echo -e "\e[1;36mdownload\e[0m"'\e[1;33m  |';
echo -e "\e[1;33m====================================\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read load
    if [[ $load == "d" ]]; then
        if [[ -d ~/$program ]]; then
clear
echo -e "\e[1;31m$program\e[0m" "\e[1;36mhas already been downloaded\e[0m";
sleep 2.1;
output;

        else
clear
sleep 0.4;
echo -e "\e[1;33mdownloading\e[0m" "\e[1;31m$program..\e[0m";
sleep 1.5;
clear
sleep 0.7;
git clone https://github.com/KellyShyno/$program
cp -r $program ~
rm -rf $program
clear
sleep 0.7;
echo -e "\e[1;35mdownloading\e[0m" "\e[1;31m$program\e[0m" "\e[1;35mis complete\e[0m";
echo "";
echo -e "\e[1;36mYou can find\e[0m" "\e[1;31m$program\e[0m" "\e[1;36min home directory\e[0m";
sleep 7;
output;
        fi;

    elif [[ $load == "x" ]]; then
repo;

    else
clear
echo -e "\e[1;31mERROR: write the correct number..\e[0m";
sleep 0.7;
output;

    fi;
}




repo() {
#repo
clear
sleep 0.16;
echo "";
echo -e '\e[1;36m ____  _                    __        __\e[0m'
echo -e '\e[1;36m/ ___|| |__  _   _ _ __   __\ \      / /_ _ _   _\e[0m'
echo -e '\e[1;35m\___ \| "_ \| | | | "_ \ / _ \ \ /\ / / _` | | | |\e[0m'
echo -e '\e[1;35m ___) | | | | |_| | | | | (_) \ V  V / (_| | |_| |\e[0m'
echo -e '\e[1;36m|____/|_| |_|\__, |_| |_|\___/ \_/\_/ \__,_|\__, |\e[0m'
echo -e '\e[1;36m             |___/                          |___/\e[0m'
echo "";
echo -e "\e[1;31mversion: 1.0.0\e[0m";
echo -e "\e[1;35mvk:\e[0m""\e[1;4;36m https://vk.com/linuxkelly\e[0m";
echo "";
echo -e "\e[1;33m Repositories:\e[0m";
echo "";

#amount
echo -e "\e[1;35m/ \e[0m""\e[1;36m1\e[0m""\e[1;35m / \e[0m""\e[1;36mbaseInstall\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m2\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomPanel\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m3\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomShell\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m4\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomKaliShell\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m5\e[0m""\e[1;35m / \e[0m""\e[1;36msudoInTermux\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m6\e[0m""\e[1;35m / \e[0m""\e[1;36msshLocalhost\e[0m";
echo -en "\e[1;31m/ \e[0m""\e[1;36m7\e[0m""\e[1;31m / \e[0m""\e[1;4;36mkillDevice\e[0m";
echo -e "\e[1;35m (\e[0m""\e[1;31mpaid\e[0m""\e[1;35m)\e[0m";
echo -en "\e[1;31m/ \e[0m""\e[1;36m8\e[0m""\e[1;31m / \e[0m""\e[1;4;36mpassTime\e[0m";
echo -e "\e[1;35m (\e[0m""\e[1;31mpaid\e[0m""\e[1;35m)\e[0m";
echo "";
echo -e "\e[1;33m================\e[0m";
echo -en '\e[1;33m|  \e[0m'"\e[1;35m[ \e[0m""\e[1;36mx\e[0m""\e[1;35m ] \e[0m";
echo -e "\e[1;36mback\e[0m"'\e[1;33m  |';
echo -e "\e[1;33m================\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read more
  if [[ $more == 1 ]]; then
program="baseInstall";
out="./data/info/baseInstall.sh";
output;

  elif [[ $more == 2 ]]; then
program="customPanel";
#toDo
output;

  elif [[ $more == 3 ]]; then
program="customShell";
out="./data/info/customShell.sh";
#toDo
output;

  elif [[ $more == 4 ]]; then
program="customKaliShell";
#toDo
output;

  elif [[ $more == 5 ]]; then
program="sudoInTermux";
#toDo
output;

  elif [[ $more == 6 ]]; then
program="sshLocalhost";
#toDo
output;

  elif [[ $more == 7 ]]; then
program="killDevice";
#toDo
output;

  elif [[ $more == 8 ]]; then
program="passTime";
#toDo
output;

  elif [[ $more == "x" ]]; then
shyno;
  else
    while [[ $more != [1..8] && $more != "x" ]];
      do
clear
echo -e "\e[1;31mERROR: write the correct number..\e[0m";
sleep 0.7;
repo;
      done;
  fi;
}




shyno() {
clear
sleep 0.16;
echo "";
echo -e '\e[1;36m ____  _                    __        __\e[0m'
echo -e '\e[1;36m/ ___|| |__  _   _ _ __   __\ \      / /_ _ _   _\e[0m'
echo -e '\e[1;35m\___ \| "_ \| | | | "_ \ / _ \ \ /\ / / _` | | | |\e[0m'
echo -e '\e[1;35m ___) | | | | |_| | | | | (_) \ V  V / (_| | |_| |\e[0m'
echo -e '\e[1;36m|____/|_| |_|\__, |_| |_|\___/ \_/\_/ \__,_|\__, |\e[0m'
echo -e '\e[1;36m             |___/                          |___/\e[0m'
echo "";
echo -e "\e[1;31mversion: 1.0.0\e[0m";
echo -e "\e[1;35mvk:\e[0m"" \e[1;4;36mhttps://vk.com/linuxkelly\e[0m";
echo "";
echo -e "\e[1;35m/ \e[0m""\e[1;36m1\e[0m""\e[1;35m / \e[0m""\e[1;36mrepositories\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m2\e[0m""\e[1;35m / \e[0m""\e[1;36mabout us\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m3\e[0m""\e[1;35m / \e[0m""\e[1;36mupdate\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36mx\e[0m""\e[1;35m / \e[0m""\e[1;36mexit\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read before

    if [[ $before == 1 ]]; then
repo;
    elif [[ $before == 2 ]]; then
echo
    elif [[ $before == 3 ]]; then
./data/update/update.sh;
shyno;

    elif [[ $before == "x" ]]; then
echo "";
exit 0;

    else
  while [[ $before != [1..3] && $before != "x" ]];
      do
clear
echo -e "\e[1;31mERROR: write the correct number..\e[0m";
sleep 0.7;
shyno;
      done;
    fi;
}
shyno;
