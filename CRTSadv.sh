#!/bin/bash

green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"



linkFunction(){

ingresado="$1"

curl -s https://crt.sh/?q=$ingresado > output

var=$(grep -o "[[:alnum:].-]*\.$ingresado\|[[:alnum:].-]*$ingresado\.[[:alnum:].-]*" output | sort | uniq)

echo "$var" | while read -r line; do
    if [ -n "$line" ]; then
        echo -e "${green}[+]${end} ${turquoise}${line}${end}"
    fi
done

rm output
}



helpPanel(){

echo -e "${yellow}-h${end} ${turquoise}Help panel${end}"
echo -e "${yellow}-l${end} ${turquoise}Type the domain (Ex. google.com, microsoft.com) to search for subdomains.${end}"

}


declare -i parameter_counter=0

while getopts "l:h" opt; do
case $opt in 

l) link="$OPTARG" ; ((parameter_counter++)) 
;;
h) 
;;

esac 
done

if [ $parameter_counter -eq 1 ]; then

linkFunction "$link"

else
	helpPanel

fi


