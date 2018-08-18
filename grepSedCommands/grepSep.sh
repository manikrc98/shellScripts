#! /bin/bash
while :
do
read -p "
1. Write a shell script to display the frequency of occurrence of each character present in the text document and display the character which has the maximum frequency of occurrences.
2. Write a shell script to display the words present between given strings.
3. Write a shell script to remove the lines with beginning and ending of a particular character.
4. Write a shell script to replace the string Christ University as CHRIST(Deemed to be University) in the given text document.
5. Create three text documents which contain details regarding Cricket, Movies and University. Also create three directories as Sports, Entertainment and Education. Based on the occurrence of the string, categorise the document and move the documents to respective directories.
6. Write a shell script to extract the OPTIONS and DESCRIPTION part of manual pages of grep, at and echo commands and store it in a separate file.(Complexity)
:>> " input
case $input in
	1)
		echo "The file has the data: "
		cat textfile.txt
		echo "Below is the frequency of occurence of every character present: "
		grep . -o textfile.txt | sort | uniq -c
		echo "The maximum repeated character is: "
		grep . -o textfile.txt | sort | uniq -c | sort -k 1n | tail -1 
		;;
	2)
		echo "Your File: "
                cat textfile.txt
                read -p "Enter the initial word: " iW
                read -p "Enter the last word: " lW
		grep -o -i '^'$iW'.*'$lW'$' textfile.txt
		;;
	3)
		echo "Your File: "
		cat textfile.txt
		read -p "Enter the starting character: " sC
		read -p "Enter the end character: " eC
		sed '/^'$sC'.*'$eC'$/d' textfile.txt
		;;
	4)
		echo "Your File: "
                cat textfile.txt
		sed 's/Christ University/CHRIST(Deemed to be University)/' textfile.txt 
		;;
	5)
		echo "Your Files: "
		echo "<=====Doc1.txt=====>"
		cat doc1.txt
		echo "<=====Doc2.txt=====>"
                cat doc2.txt
		echo "<=====Doc3.txt=====>"
                cat doc3.txt
		cp ` grep -i -c 'Cricket' doc1.txt doc2.txt doc3.txt |  sort -t $':' -k 2 | cut -d ':' -f 1 | tail -1 ` Sports
		cp ` grep -i -c 'University' doc1.txt doc2.txt doc3.txt |  sort -t $':' -k 2 | cut -d ':' -f 1 | tail -1 ` Education
		cp ` grep -i -c 'Movie' doc1.txt doc2.txt doc3.txt |  sort -t $':' -k 2 | cut -d ':' -f 1 | tail -1 ` Entertainment
		echo "Sports Directory"
		ls Sports
		echo "Education Directory"
                ls Education
		echo "Entertainment Directory"
                ls Entertainment
		;;	
esac
done
