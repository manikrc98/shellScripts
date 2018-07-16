#! /bin/bash
read -p "
1. Sort Based on RegNo
2. Sort Based on RegNo and Total
3. Display top 10 Students
4. List the regno and name of the student who secured first rank.
5. List the students failed in the class and store it in a separate text file.
6. Display the content in Reverse order
" input
case $input in
	1)
		if [ -f "studentData.txt" ]; then
			sort -n -k1 studentData.txt >> regSortData.txt
		else
			echo "No such file exists"
		fi
		;;
	2)
		if [ -f "studentData.txt" ]; then
                        sort -n -k5 -k1 studentData.txt
                else
                        echo "No such file exists"
                fi
		;;
	3)
		if [ -f "studentData.txt" ]; then
                        head -10 studentData.txt
                else
                        echo "No such file exists"
                fi
		;;
	4)
		if [ -f "studentData.txt" ]; then
                        sort -nr -k5 studentData.txt | head -2 | cut -d ' ' -f1,2
                else
                        echo "No such file exists"
                fi
                ;;
	5)
		if [ -f "studentData.txt" ]; then
                        awk -F ' ' '$6 =="Fail"' studentData.txt | awk '{ print $2 }' > failedStudent.txt
                else
                        echo "No such file exists"
                fi
		;;
	6)
		if [ -f "state.txt" ]; then
                        sort -r state.txt
                else
                        echo "No such file exists"
                fi
		;;
esac
