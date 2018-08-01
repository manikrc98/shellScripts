#! /bin/bash
while :
do
read -p "Please Choose an Option: 
1. Execute the command to show the processes running by root user.
2. List the memory usage of running processes along with user name and Process ID.
3. As a System administrator, write a shell script to list the processes run by the given user.( get the user name in Command Line)
4. Exit
" option
case $option in
	1)
		ps -U root -u root 		
		;;
	2)
	        ps -aufx | awk '{print $1 " " $2 " "  $4 " "  $8}'
		;;
	3)
		read -p "Enter User Name: " usrName
		ps -U $usrName
		;;
	4)
		exit
		;;
esac
done
