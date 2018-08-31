#! /bin/bash
while :
do
read -p "
1. PERSONAL DETAILS
2. ACADEMIC DETAILS
3. SUBJECT DETAILS
4. STUDENT MARK DETAILS
5. SEARCH
6. RESULT ANALYSIS
" input
case $input in
	1)
		while :
		do
		read -p "
		 1. INSERT
		 2. UPDATE
		 3. BACK
			 " personalInput	
		 	case $personalInput in
				1)
					sh ./insertPersonalData.sh
					;;	
				2) 
					sh ./updatePersonalData.sh
					;;
				3)
					break
					;;
			esac
		 done
		 clear
		;;
esac
done
