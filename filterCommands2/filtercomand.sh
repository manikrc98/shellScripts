#! /bin/bash

while :
do
read -p "Select any option:
1. Demonstrate Filter Commands
2. Extract Character, Numeric Values, Special Characters to a different file. " input
case $input in
	1)
		if [ -f "file1.txt" ]; then
			echo "File exists, Working on the following data: "
		else
			echo "Creating a file for you.... "
			echo "Name Roll
			ManikChugh 1641118
			AshwinKhushlani 1641114
			AkshatAhuja 1641106
			ChahatAjmera 1641117
			Noman'sName 1640090
			ShivanshShrotriya 1641055
			AshutoshRajput 1641011
			AaditGupta 1641101
			AnujaMitruka 1641111
			PiyushAgarwal 1641155
			AviChanodia 1641115
			SarthakJain 1641168
			AmanAgarwal 1641107"> file1.txt
		fi
		cat file1.txt
		while :
		do
			read -p "Select The Option to demonstrate it's usage.
			1. Sort
			2. Head
			3. Tail
			4. Cut
			5. Paste
			6. Uniq
			7. TR (Translate)
			" inputOption
			case $inputOption in
				1)
				read -p "Select any option: 
				1. Sort 
				2. Sort in Reverse
				3. Sort by Column
				" sortOption
				case $sortOption in
					1)
						echo "------------------RESULT---------------------"
						sort file1.txt
						echo "---------------------------------------------"
						;;
					2)
						echo "------------------RESULT---------------------"
                                                sort -r file1.txt
                                                echo "---------------------------------------------"
						;;
					3)
						read -p "Enter the column no: " col
						echo "------------------RESULT---------------------"
                                                sort -k $col\n file1.txt
                                                echo "---------------------------------------------"
						;;
				esac
				;;
			2)
				read -p "Select any option:
                                1. Head.
                                2. Head with defined number of lines.
                                3. Head with defined number of characters.
                                " headOption
				case $headOption in
					1)
						echo "------------------RESULT---------------------"
                                                head file1.txt
                                                echo "---------------------------------------------"
                                                ;;
					2)
						read -p "Enter the number of lines to display with head: " noL 
						echo "------------------RESULT---------------------"
                                                head -$noL file1.txt
                                                echo "---------------------------------------------"
                                                ;;
					3)
						read -p "Enter the number of characters to display with head: " noL
                                                echo "------------------RESULT---------------------"
                                                head -c $noL file1.txt
                                                echo "---------------------------------------------"
                                                ;;

				esac
				;;
			3)
				read -p "Select any option:
                                1. Tail.
                                2. Tail with defined number of lines.
                                3. Tail with defined number of characters.
                                " tailOption                                
				case $tailOption in
					1)
                                                echo "------------------RESULT---------------------"
                                                tail file1.txt
                                                echo "---------------------------------------------"
                                                ;;
                                        2)
                                                read -p "Enter the number of lines to display with tail: " noL
                                                echo "------------------RESULT---------------------"
                                                tail -$noL file1.txt
                                                echo "---------------------------------------------"
                                                ;;
                                        3)
                                                read -p "Enter the number of characters to display with tail: " noL
                                                echo "------------------RESULT---------------------"
                                                tail -c $noL file1.txt
                                                echo "---------------------------------------------"
                                                ;;
				esac
				;;
			4)
				read -p "Select any option:
                                1. Cut Characters.
                                2. Cut Characters till end.
                                3. Cut Within Range.
                                " cutOption
                                case $cutOption in
                                        1)
						read -p "Enter the number of characters: " nC
						echo "------------------RESULT---------------------"
                                                cut -c$nC file1.txt   
                                                echo "---------------------------------------------"		
						;;
                                        2)
                                                read -p "Enter the number of words: " nW
                                                echo "------------------RESULT---------------------"
                                                cut -c$nW- file1.txt
                                                echo "---------------------------------------------"            
                                                ;;
                                        3)
                                                read -p "Enter the lower limit: " nol
						read -p "Enter the upper limit: " lower 
                                                echo "------------------RESULT---------------------"
                                                cut -c	$nol-$lower file1.txt
                                                echo "---------------------------------------------"
                                                ;;
					*)	echo "Invalid Choice !"
						;;
                                esac
				;;
			5)
				read -p "Select any option:
                                1. Simple Paste.
                                2. Paste Using Special Characer.
                                3. Paste Using Two Special Characters.
                                " cutOption
                                case $cutOption in
                                        1)	
						echo "------------------FILE 1---------------------"					
						cat file2.txt
						echo "---------------------------------------"
						echo "
							"
						echo "
							"
						echo "------------------FILE 2---------------------"
						cat file3.txt
						echo "---------------------------------------"
						echo "
							"
						echo "file2.txt and file3.txt is being pasted... "
						echo "
							"
						echo "------------------RESULT---------------------"
                                                paste file2.txt file3.txt  
                                                echo "---------------------------------------------"		
						;;
                                        2)
                                                read -p "Enter the special character you want to use: " nW
                                                echo "------------------RESULT---------------------"
                                                paste -d "$nW" file2.txt file3.txt
                                                echo "---------------------------------------------"            
                                                ;;
                                        3)
                                                read -p "Enter first character: " nol
						read -p "Enter second character: " nW
                                                echo "------------------RESULT---------------------"
                                                paste -d "$nol$nW" file2.txt file3.txt file4.txt
                                                echo "---------------------------------------------"
                                                ;;
					*)	echo "Invalid Choice !"
						;;
                                esac
				;;

			6)
				read -p "Select any option:
                                1. Display Count Of Duplicate Characters.
                                2. Display Unique Characters.
                                3. Comparison using fields.
                                " cutOption
                                case $cutOption in
                                        1)	
						echo "------------------FILE---------------------"					
						cat uniq1.txt
						echo "---------------------------------------"
						echo "
							"
						echo "------------------RESULT---------------------"
                                                uniq -c uniq1.txt  
                                                echo "---------------------------------------------"		
						;;
                                        2)                                             
						echo "------------------RESULT---------------------"
                                                uniq -u uniq1.txt
                                                echo "---------------------------------------------"            
                                                ;;
                                        3)					
						read -p "Enter the field number: " nol
                                                echo "------------------RESULT---------------------"
                                                uniq -D -f $nol uniq2.txt
                                                echo "---------------------------------------------"
                                                ;;
					*)	echo "Invalid Choice !"
						;;
                                esac
				;;
			7)
				read -p "Select any option:
                                1. Replace Characters.
                                2. Delete Characters.
                                3. Squeeze Characters.
                                " cutOption
                                case $cutOption in
                                        1)	
						echo "------------------FILE---------------------"					
						cat translate.txt
						echo "---------------------------------------"
						read -p "Enter the character you want to replace: " nW
						read -p "Enter the character to be replaced with: " nol
						echo "
							"
						echo "------------------RESULT---------------------"
                                                cat translate.txt| tr $nW $nol  
                                                echo "---------------------------------------------"		
						;;
                                        2)                                             
						echo "------------------FILE---------------------"					
						cat translate.txt
						echo "---------------------------------------"
						read -p "Enter the character you want to delete: " nW
						echo "
							"
						echo "------------------RESULT---------------------"
                                                cat translate.txt| tr --delete $nW 
                                                echo "---------------------------------------------"		
						;;
                                        3)					
						echo "Squeezing all repeated text.."
                                                echo "------------------RESULT---------------------"
                                              	cat translate.txt| tr --squeeze-repeats [a-z]
                                                echo "---------------------------------------------"
                                                ;;
					*)	echo "Invalid Choice !"
						;;				
				esac
			esac
		done
	;;
	2)
		while :
		do
			echo "1.Characters."
			echo "2.Numeric values."
			echo "3.Special characters."
			echo "4.Exit."
			read -p "Enter choice:" ch
			case $ch in
				1)
					echo "Characters Copied!"
					echo "------------------RESULT---------------------"
                                        cat char.txt | tr --delete "0-9*@$%#" > saved.txt
					cat saved.txt
                                        echo "---------------------------------------------"
				;;
				2)
					echo "Numbers Copied!"
					echo "------------------RESULT---------------------"
                                        cat char.txt | tr --delete "a-z*@$%#" > saved.txt
					cat saved.txt
                                        echo "---------------------------------------------"
				;; 
				3)
					echo "Characters Copied!"
					echo "------------------RESULT---------------------"
                                        cat char.txt | tr --delete "a-z0-9A-Z" > saved.txt
					cat saved.txt
                                        echo "---------------------------------------------"
				;;
				4)
					exit
				;; 
			esac
		done
	;;				
esac
done
