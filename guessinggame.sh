#!/usr/bin/env bash
# File: guessinggame.sh

read -p "How many files are in the current directory: " num

files=$(ls -l | grep ^[-] | wc -l)
guest () {

	while [[ $files -ne $num ]]
	do
	
		if [[ $num -gt $files ]] && [[ $num =~ ^[0-9]$ ]]
		then
			read -p "Too big number. Try again: " num


		elif [[ $num -lt $files ]] && [[ $num =~ ^[0-9]$ ]]
		then
			read -p "Too small number.  Try again: " num
			
		elif [[ ! $num =~ ^[0-9]$ ]]
		then
			read -p "Invalid input.  Try again: " num

		fi
			
		
	
	done
}

guest

if [[ $files -eq $num ]]
then
	echo "Congratulations, $num is the correct number of files".
fi

