#! /bin/bash
read -p "Enter a String: " inputString
read -p "1. Reverse String
2. Duplicate Characters
3. Lower to Upper Case
" inputOption
case $inputOption in
	1)
		stringLen=${#inputString}
		for (( i=$stringLen;i>=0;i-- ))
		do
			reverseString="$reverseString${inputString:i:1}"
		done
		echo $reverseString
		;;
	2)
		echo $inputString | tr -s 'a-z'
		;;
	3) 
		echo $inputString | tr '[:lower:]' '[:upper:]'
		;;		
esac
