#! /bin/bash
read -p "Enter Any String:  " stringInput
while :
do
read -p "String Operation Commands:

1. String Length
2. String Copy
3. String Concatination
4. Reverse String
5. Sub String
6. Check the given String is Palindrome or Not
7. Display the presence of the character in the string.
8. Replace the string 
9. Eliminate the duplicate character in the string.
10. Lower Case to Upper Case Conversion
" input

case $input in
	1)
		echo ${#stringInput} 
		;;
	2)
		string2="$stringInput"
		echo "String 2 ->[$string2]"
		;;
	3)
		read -p "Enter the new string to concat $stringInput with: " newString
		concatString="$stringInput $newString"
		echo $concatString
		;;
	4)
		for (( i=${#stringInput}-1 ; i>=0; i-- ))
		do
			reverse=$reverse${stringInput:$i:1}
		done
		echo $reverse
		;;
	5)
		read -p "Enter the position: " pos
		read -p "Enter the length: " lend
		echo ${stringInput:$pos:$len}
		;;
	6) 
		for(( i=${#stringInput}-1;i>=0;i-- ))
		do
			reverse=$reverse${stringInput:$i:1}
		done
		if [ "$reverse" = "$stringInput" ]; then
			echo "$stringInput is a palindrome"
		else
			echo "$stringInput is not a palindrome"
		fi
		;;
	7)
		read -p "Please Enter a Character to check whether it exists in $stringInput or not" c
		for(( i=0;i<${#stringInput};i++ ))
		do
			if [ "$c" = "${#stringInput:$i:1}" ]; then
				echo "$c Exists"
			fi
		done
		;;
	8)
		echo "Enter a String"
		read str
		echo "Enter replace word"
		read wd
		echo "Enter new word"
		read nwd
		fn="${str//$wd/$nwd}"
		echo "New String"
		echo "$fn"
	;;
	9)
		echo "Enter a string"
		read str
		echo "Duplicate CHARACTER ELIMINATE"
		echo $str | tr -s 'a-z'
	;;
	10)
		echo "Enter a string"
		read str
		echo "LOWER TO UPPER CASE"
		echo $str | tr '[:lower:]' '[:upper:]'
	;;	
	*)
		echo "invalid option"
	;;

esac
done