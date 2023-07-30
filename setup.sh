#!/bin/bash

while :
do

clear

banner(){
echo


echo -e "\033[32m __________                                           _________.__           .__  .__    \033[0m"
echo -e "\033[32m \______   \ _______  __ ___________  ______ ____    /   _____/|  |__   ____ |  | |  |   \033[0m"
echo -e "\033[32m  |       _// __ \  \/ // __ \_  __ \/  ___// __ \   \_____  \ |  |  \_/ __ \|  | |  |   \033[0m"
echo -e "\033[32m  |    |   \  ___/\   /\  ___/|  | \/\___ \\  ___/   /        \|   Y  \  ___/|  |_|  |__ \033[0m"
echo -e "\033[32m  |____|_  /\___  >\_/  \___  >__|  /____  >\___  > /_______  /|___|  /\___  >____/____/ \033[0m"
echo -e "\033[32m         \/     \/          \/           \/     \/          \/      \/     \/            \033[0m"

}

banner

int_handler (){
    clear
    echo
    echo -e "\033[1m [+] Adios \033[0m"
    kill $PPID
    exit 1
}

trap 'int_handler' INT

   echo
   echo -e "   \033[1m [1] Instalar Requisitos \033[0m"
   echo -e "   \033[1m [2] Salir \033[0m"
   echo

   read -p $'\033[1m [+] Seleccione una opción: \033[0m' opcion

   case $opcion in

           1) echo
           sudo apt-get update && sudo apt install -y python3-pip xclip lolcat figlet && python3 -m pip install --upgrade colorama
           sudo apt-get install Netcat
           sudo apt install python-is-python3
           sudo apt install python3-pip
           git clone https://github.com/brentvollebregt/auto-py-to-exe.git
           cd auto-py-to-exe
           sudo python setup.py install
           pip install auto-py-to-exe
           cd ..
           sudo rm -r auto-py-to-exe;;

           2) echo
           clear
           echo -e "\033[1m [+] Adios\033[0m"
           echo
           exit;;

esac

done
