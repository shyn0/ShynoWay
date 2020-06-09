#!/bin/bash
#KellyShyno
#ShynoWay
#version: 1.0.1


changeMod()
{
chmod -R a+rx *;
}
changeMod;



banner()
{
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
echo -e "\e[1;31mversion: 1.0.1\e[0m";
echo -e "\e[1;35mvk:\e[0m" "\e[1;4;36mhttps://vk.com/linuxkelly\e[0m";
echo "";
}



error()
{
#error module
  case $lang in
"ru")
 clear
 echo -e "\e[1;31mERROR: введите верное число..\e[0m";
 sleep 0.6; ;;
*)
 clear
 echo -e "\e[1;31mERROR: write the correct number..\e[0m";
 sleep 0.6; ;;
  esac;
}



input()
{
echo "";
echo -en "\e[1;35m (\e[0m""\e[1;31m#\e[0m""\e[1;35m_\e[0m""\e[1;31m#\e[0m";
echo -en "\e[1;35m)\e[0m" "\e[1;31m> \e[0m";
}



loadAll()
{
#program names for array
programsName=("baseInstall" "customPanel"
"customShell" "sudoInTermux" "sshLocalhost");

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



programLink()
{
#linkArray
linkArray=( $(./data/dataBase/link.sh) );


    case $lang in
 "ru")
echo "";
echo -en "\e[1;1mПодробнее:\e[0m"; ;;

 "eng")
echo "";
echo -en "\e[1;1mMore details:\e[0m"; ;;
    esac;


#linkDisplay
linkId=$(($more - 1));
echo -e " \e[1;4;35m${linkArray[$linkId]}\e[0m";
#echo "";


#paidProgram
  if [[ $more > 5 ]]; then

    case $lang in
 "ru") echo -en "\e[1;1mДля покупки:\e[0m";
echo -e " \e[1;4;31mhttps://vk.com/shynofreak\e[0m"; ;;
 "eng") echo -en "\e[1;1mFor buying:\e[0m";
echo -e " \e[1;4;31mhttps://vk.com/shynofreak\e[0m"; ;;
    esac;

  fi;
}



chlang()
{
#choosing text due language
  case $lang in
"ru") out="./data/info/ru/$info"; ;;
"eng") out="./data/info/eng/$info"; ;;
  esac;
}



checkLangBeforeLoad()
{
    case $lang in
"ru")
 clear
 echo -e "\e[1;31m$program\e[0m" "\e[1;36mуже была загружена\e[0m";
 sleep 1.3; output; ;;
*)
 clear
 echo -e "\e[1;31m$program\e[0m" "\e[1;36mhas already been downloaded\e[0m";
 sleep 1.3; output; ;;
    esac;
}



checkLangAfterLoad()
{
    case $lang in

  "ru") clear; sleep 0.4;
echo -e "\e[1;33mзагрузка\e[0m" "\e[1;31m$program..\e[0m";
sleep 1.1; clear; sleep 0.2;
cd downloads/
git clone https://github.com/KellyShyno/$program
cd ..
clear; sleep 0.4;
echo -e "\e[1;35mзагрузка\e[0m" "\e[1;31m$program\e[0m" "\e[1;35mзавершена\e[0m";
echo "";
echo -e "\e[1;36mВы можете найти\e[0m" "\e[1;31m$program\e[0m" "\e[1;36mв директории 'downloads'\e[0m";
sleep 6; ;;

  *)
clear; sleep 0.4;
echo -e "\e[1;33mdownloading\e[0m" "\e[1;31m$program..\e[0m";
sleep 1.5; clear; sleep 0.7;
cd downloads/
git clone https://github.com/KellyShyno/$program
cd ..
clear; sleep 0.7;
echo -e "\e[1;35mdownloading\e[0m" "\e[1;31m$program\e[0m" "\e[1;35mis complete\e[0m";
echo "";
echo -e "\e[1;36mYou can find\e[0m" "\e[1;31m$program\e[0m" "\e[1;36min 'downloads' directory\e[0m";
sleep 7; ;;

    esac;
}



programBlockName()
{
#background and cost of program
    if [[ $more > 0 && $more < 6 ]]; then
echo -e " \e[43;30m $program \e[0m";
    else
costArray=( $(./data/dataBase/programCost.sh) );
costId=$(($more - 6));

echo -en " \e[41;1m $program \e[0m"'\e[1;31m |\e[0m';
        case $lang in
"ru") echo -e "\e[1;1m${costArray[$costId]} рублей\e[0m"'\e[1;31m|\e[0m'; ;;
"eng") echo -e "\e[1;1m${costArray[$costId]} rubles\e[0m"'\e[1;31m|\e[0m'; ;;
        esac;
    fi;
}



output()
{
banner;
programBlockName;
echo "";
$out;
programLink;
echo "";
echo -e "\e[1;33m====================================\e[0m";
echo -en '\e[1;33m|  \e[0m'"\e[1;31m[ \e[0m""\e[1;36mx\e[0m""\e[1;31m ] \e[0m";
echo -en "\e[1;36mback\e[0m"'\e[1;33m  ||  ';
echo -en "\e[1;35m[ \e[0m""\e[1;36md\e[0m""\e[1;35m ] \e[0m";
echo -e "\e[1;36mdownload\e[0m"'\e[1;33m  |';
echo -e "\e[1;33m====================================\e[0m";
input;
 read load

  case $load in
"d")
      if [[ -d downloads/$program ]]; then
        #checking language before load
        checkLangBeforeLoad;
      else
        #checking language after load
        checkLangAfterLoad; repo;
      fi; ;;

"x") repo; ;;
*) error; output; ;;
  esac;
}



repo()
{
#repositories
banner;
echo -e " \e[1;4;33mRepositories:\e[0m";
echo "";
#amount
#KellyShyno
echo -e "\e[1;35m/ \e[0m""\e[1;36m1\e[0m""\e[1;35m / \e[0m""\e[1;36mbaseInstall\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m2\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomPanel\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m3\e[0m""\e[1;35m / \e[0m""\e[1;36mcustomShell\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m4\e[0m""\e[1;35m / \e[0m""\e[1;36msudoInTermux\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m5\e[0m""\e[1;35m / \e[0m""\e[1;36msshLocalhost\e[0m";
echo -en "\e[1;31m/ \e[0m""\e[1;31m6\e[0m""\e[1;31m / \e[0m""\e[1;4;35mpassTime\e[0m";
echo -e "\e[1;35m (\e[0m""\e[1;31mpaid\e[0m""\e[1;35m)\e[0m";
echo "";
echo -e "\e[1;33m========================================\e[0m";
echo -en '\e[1;33m|  \e[0m'"\e[1;31m[ \e[0m""\e[1;36mx\e[0m""\e[1;31m ] \e[0m";
echo -en "\e[1;36mback\e[0m"'\e[1;33m  ||  ';
echo -en "\e[1;35m[ \e[0m""\e[1;36md\e[0m""\e[1;35m ] \e[0m";
echo -e "\e[1;36mdownload all\e[0m"'\e[1;33m  |';
echo -e "\e[1;33m========================================\e[0m";
input;
 read more

  case $more in
1) program="baseInstall"; info="baseInstall.sh"; chlang; output; ;;
2) program="customPanel"; info="customPanel.sh"; chlang; output; ;;
3) program="customShell"; info="customShell.sh"; chlang; output; ;;
4) program="sudoInTermux"; info="sudoInTermux.sh"; chlang; output; ;;
5) program="sshLocalhost"; info="sshLocalhost.sh"; chlang; output; ;;
#paid
6) program="passTime"; info="passTime.sh"; chlang; output; ;;
"d") loadAll; repo; ;;
"x") shyno; ;;
*) error; repo; ;;
  esac;
}



shyno()
{
#basic module
banner;
echo -e "\e[1;35m/ \e[0m""\e[1;36m1\e[0m""\e[1;35m / \e[0m""\e[1;36mrepositories\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m2\e[0m""\e[1;35m / \e[0m""\e[1;36mlanguage\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;36m3\e[0m""\e[1;35m / \e[0m""\e[1;36mabout us\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;31mu\e[0m""\e[1;35m / \e[0m""\e[1;35mupdate\e[0m";
echo -e "\e[1;35m/ \e[0m""\e[1;31mx\e[0m""\e[1;35m / \e[0m""\e[1;31mexit\e[0m";
input;
 read before

    case $before in
1) repo; ;;
2) clear; sleep 0.16; language; ;;
3) echo; ;;
#KellyShyno
"u") ./data/update/update.sh; shyno; ;;
"x") echo ""; exit 0; ;;
*) error; shyno; ;;
    esac;
}



language()
{
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
input;
 read langVar

    case $langVar in
0) clear; lang="ru"; shyno; ;;
1) clear; lang="eng"; shyno; ;;
"x") echo ""; exit 0; ;;
*) error; language; ;; #KellyShyno
    esac;
}
language;
