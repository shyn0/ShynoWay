#!/bin/bash
#KellyShyno
#ShynoWay

#rise

changeMod() {
chmod -R a+rx *;
}
changeMod;




banner() {
clear
sleep 0.16;
echo "";
echo -e '\e[1;36m ____  _                    __        __\e[0m';
echo -e '\e[1;36m/ ___|| |__  _   _ _ __   __\ \      / /_ _ _   _\e[0m';
echo -e '\e[1;35m\___ \| "_ \| | | | "_ \ / _ \ \ /\ / / _` | | | |\e[0m';
echo -e '\e[1;35m ___) | | | | |_| | | | | (_) \ V  V / (_| | |_| |\e[0m';
echo -e '\e[1;36m|____/|_| |_|\__, |_| |_|\___/ \_/\_/ \__,_|\__, |\e[0m';
echo -e '\e[1;36m             |___/                          |___/\e[0m';
echo "";
echo -e "\e[1;31mversion: 2.3.2\e[0m";
echo -e "\e[1;35mvk:\e[0m" "\e[1;4;36mhttps://vk.com/linuxkelly\e[0m";
echo "";
}



error() {
#error module
  if [[ $lang == "ru" ]]; then
clear
echo -e "\e[1;31mERROR: введите верное число..\e[0m";
sleep 0.7;

  else
clear
echo -e "\e[1;31mERROR: write the correct number..\e[0m";
sleep 0.7;

  fi;
}




loadAll() {
#program names for array
programsName=("baseInstall" "customPanel" "customShell" "customKaliShell"
"sudoInTermux" "sshLocalhost" "killDevice" "passTime");

if [[ $lang == "ru" ]]; then
#forRu
    for item in ${programsName[@]};
     do
#checking directory exists
      if [[ -d downloads/$item ]]; then
clear
sleep 0.2;
echo -e "\e[1;31m$item\e[0m" "\e[1;36mуже была загружена\e[0m";
sleep 1.1;

      else
clear
sleep 0.2;
echo -e "\e[1;33mзагрузка\e[0m" "\e[1;31m$item..\e[0m";
sleep 1.1;
clear
sleep 0.2;
cd downloads/
git clone https://github.com/KellyShyno/$item
cd ..

      fi;

     done;

else
#forEng
    for item in ${programsName[@]};
     do
#checking directory exists
      if [[ -d downloads/$item ]]; then
clear
sleep 0.2;
echo -e "\e[1;31m$item\e[0m" "\e[1;36mhas already been downloaded\e[0m";
sleep 1.1;

      else
clear
sleep 0.2;
echo -e "\e[1;33mdownloading\e[0m" "\e[1;31m$item..\e[0m";
sleep 1.1;
clear
sleep 0.2;
cd downloads/
git clone https://github.com/KellyShyno/$item
cd ..

      fi;

     done;

fi;
}




chlang() {
#choosing text due language
  if [[ $lang == "ru" ]]; then
out="./data/info/ru/$info";
  elif [[ $lang == "eng" ]]; then
out="./data/info/eng/$info";
  fi;
}




checkLangBeforeLoad() {
    if [[ $lang == "ru" ]]; then
clear
echo -e "\e[1;31m$program\e[0m" "\e[1;36mуже была загружена\e[0m";
sleep 1.5;
output;
    else
clear
echo -e "\e[1;31m$program\e[0m" "\e[1;36mhas already been downloaded\e[0m";
sleep 1.5;
output;
    fi;
}




checkLangAfterLoad() {
    if [[ $lang == "ru" ]]; then
clear
sleep 0.4;
echo -e "\e[1;33mзагрузка\e[0m" "\e[1;31m$program..\e[0m";
sleep 1.5;
clear
sleep 0.7;
cd downloads/                                                                                                         git clone https://github.com/KellyShyno/$program
git clone https://github.com/KellyShyno/$program
cd ..
clear
sleep 0.7;
echo -e "\e[1;35mзагрузка\e[0m" "\e[1;31m$program\e[0m" "\e[1;35mзавершена\e[0m";
echo "";
echo -e "\e[1;36mВы можете найти\e[0m" "\e[1;31m$program\e[0m" "\e[1;36mв директории 'downloads'\e[0m";
sleep 7;

    else
clear
sleep 0.4;
echo -e "\e[1;33mdownloading\e[0m" "\e[1;31m$program..\e[0m";
sleep 1.5;
clear
sleep 0.7;
cd downloads/
git clone https://github.com/KellyShyno/$program
cd ..
clear
sleep 0.7;
echo -e "\e[1;35mdownloading\e[0m" "\e[1;31m$program\e[0m" "\e[1;35mis complete\e[0m";
echo "";
echo -e "\e[1;36mYou can find\e[0m" "\e[1;31m$program\e[0m" "\e[1;36min 'downloads' directory\e[0m";
sleep 7;

    fi;
}




output() {
banner;
echo -e " \e[43;30m $program \e[0m";
echo "";
$out;
echo "";
echo -e "\e[1;33m====================================\e[0m";
echo -en '\e[1;33m|  \e[0m'"\e[1;31m[ \e[0m""\e[1;36mx\e[0m""\e[1;31m ] \e[0m";
echo -en "\e[1;36mback\e[0m"'\e[1;33m  ||  ';
echo -en "\e[1;35m[ \e[0m""\e[1;36md\e[0m""\e[1;35m ] \e[0m";
echo -e "\e[1;36mdownload\e[0m"'\e[1;33m  |';
echo -e "\e[1;33m====================================\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read load
    if [[ $load == "d" ]]; then
        if [[ -d downloads/$program ]]; then
#checking language before load
checkLangBeforeLoad;

        else
#checking language after load
checkLangAfterLoad;
repo;
        fi;

    elif [[ $load == "x" ]]; then
repo;

    else
error;
output;

    fi;
}




repo() {
#repositories
banner;
echo -e "\e[1;33m Repositories:\e[0m";
echo "";
#amount
#KellyShyno
echo -e "\e[1;35m/ \e[0m""\e[1;36m1\e[0m""\e[1;35m / \e[0m""\e[1;36mbaseInstall\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m2\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomPanel\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m3\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomShell\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m4\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomKaliShell\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m5\e[0m""\e[1;35m / \e[0m""\e[1;36msudoInTermux\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m6\e[0m""\e[1;35m / \e[0m""\e[1;36msshLocalhost\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m7\e[0m""\e[1;35m / \e[0m""\e[1;36mkillDevice\e[0m";
echo -en "\e[1;31m/ \e[0m""\e[1;31m8\e[0m""\e[1;31m / \e[0m""\e[1;4;36mpassTime\e[0m";
echo -e "\e[1;35m (\e[0m""\e[1;31mpaid\e[0m""\e[1;35m)\e[0m";
echo "";
echo -e "\e[1;33m========================================\e[0m";
echo -en '\e[1;33m|  \e[0m'"\e[1;31m[ \e[0m""\e[1;36mx\e[0m""\e[1;31m ] \e[0m";
echo -en "\e[1;36mback\e[0m"'\e[1;33m  ||  ';
echo -en "\e[1;35m[ \e[0m""\e[1;36md\e[0m""\e[1;35m ] \e[0m";
echo -e "\e[1;36mdownload all\e[0m"'\e[1;33m  |';
echo -e "\e[1;33m========================================\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read more
  if [[ $more == 1 ]]; then
program="baseInstall";
info="baseInstall.sh";
chlang;
output;

  elif [[ $more == 2 ]]; then
program="customPanel";
info="customPanel.sh";
chlang;
output;

  elif [[ $more == 3 ]]; then
program="customShell";
info="customShell.sh";
chlang;
output;

  elif [[ $more == 4 ]]; then
program="customKaliShell";
info="customKaliShell.sh";
chlang;
output;

  elif [[ $more == 5 ]]; then
program="sudoInTermux";
info="sudoInTermux.sh";
chlang;
output;

  elif [[ $more == 6 ]]; then
program="sshLocalhost";
info="sshLocalhost.sh";
chlang;
output;

  elif [[ $more == 7 ]]; then
program="killDevice";
info="killDevice.sh";
chlang;
output;

  elif [[ $more == 8 ]]; then
program="passTime";
info="passTime.sh";
chlang;
output;

  elif [[ $more == "d" ]]; then
loadAll;
repo;

  elif [[ $more == "x" ]]; then
shyno;

  else
error;
#KellyShyno
repo;

  fi;
}




shyno() {
#basic module
banner;
echo -e "\e[1;35m/ \e[0m""\e[1;36m1\e[0m""\e[1;35m / \e[0m""\e[1;36mrepositories\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m2\e[0m""\e[1;35m / \e[0m""\e[1;36mabout us\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m3\e[0m""\e[1;35m / \e[0m""\e[1;36mupdate\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;31mx\e[0m""\e[1;35m / \e[0m""\e[1;31mexit\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read before

    if [[ $before == 1 ]]; then
repo;

    elif [[ $before == 2 ]]; then
echo
#toDo

    elif [[ $before == 3 ]]; then
./data/update/update.sh;
#KellyShyno
./ShynoWay.sh;

    elif [[ $before == "x" ]]; then
echo "";
exit 0;

    else
error;
shyno;

    fi;
}




language() {
#select language
banner;
echo -e "\e[1;35m    --------------------\e[0m";
echo -e "\e[1;35m    | \e[0m""\e[1;36mSelect language:""\e[1;35m |\e[0m";
echo -e "\e[1;35m    --------------------\e[0m";
echo "";

#language.#0#1
echo -e "\e[1;35m[ \e[0m""\e[1;36m0\e[0m""\e[1;35m ] \e[0m""\e[1;36mru\e[0m";
echo -e "\e[1;35m[ \e[0m""\e[1;36m1\e[0m""\e[1;35m ] \e[0m""\e[1;36meng\e[0m";
echo -e "\e[1;35m[ \e[0m""\e[1;31mx\e[0m""\e[1;35m ] \e[0m""\e[1;31mexit\e[0m";
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
 read langVar
    if [[ $langVar == 0 ]]; then
clear
echo -e "\e[1;35mSelected\e[0m" "\e[1;36mrussian\e[0m" "\e[1;35mlanguage\e[0m";
sleep 0.9;
lang="ru";
shyno;

    elif [[ $langVar == 1 ]]; then
clear
echo -e "\e[1;35mSelected\e[0m" "\e[1;36menglish\e[0m" "\e[1;35mlanguage\e[0m";
sleep 0.9;
lang="eng";
shyno;

    elif [[ $langVar == "x" ]]; then
echo "";
exit 0;

    else
error;
#KellyShyno
language;

    fi;


}
language;
