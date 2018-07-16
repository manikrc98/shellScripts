#! /bin/bash
read -p "Select any option:
1. Demonstrate Filter Commands
2. Extract Character, Numeric Values, Special Characters to a different file. " input
if [ $input -eq 1 ]; then
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
fi
        cat file1.txt
while :
do
case $input in
	1)
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
                                                read -p "Enter the number of characters to display with tail: " noL
                                                echo "------------------RESULT---------------------"
                                                tail -c $noL file1.txt
                                                echo "---------------------------------------------"
                                                ;;
                                esac
				;;
		esac
		;;
	2)
		;;
esac
done
