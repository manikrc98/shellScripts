#! /bin/bash
while :
do
read -p "
1. Display the file access permission assigned to all the files.
2. Demonstrate the command to assign the file access permissions to the users, group and others separately.
3. Demonstrate the command to revoke the file access permission to the users, group and others separately.
4. Demonstrate the octal permission notation to assign the file access permissions to the users, group and others separately.
5. Demonstrate the commands to change the ownership of a file.
6. Demonstrate the commands to change the group of user.
7. Demonstrate the recursive option to assign file permission.
==>" input
	case $input in
		1)
			ls -la
			;;
		2)
			ls
			read -p "Enter the file name: " fName
			if [ -f $fName ] ; then
				read -p "Please Enter the Permission(rwx): " permission 
				read -p "Please Select the Owner:
				1. User
				2. Group
				3. Others
				" owner
				case $owner in
					1)
						chmod u+$permission $fName 
					;;
					2)
						chmod g+$permission $fName
					;;
					3)
						chmod o+$permission $fName
					;;
				esac
				ls -la
			else
				echo "The Entered File Doesn't Exist!!"
			fi
		        ;;
		3)
			ls
		        read -p "Enter the file name: " fName
                        if [ -f $fName ] ; then
                                read -p "Please Enter the Permission(rwx): " permission
                                read -p "Please Select the Owner:
                                1. User
                                2. Group
                                3. Others
                                " owner
                                case $owner in
                                        1)
                                                chmod u-$permission $fName
                                        ;;
                                        2)
                                                chmod g-$permission $fName
                                        ;;
                                        3)
                                                chmod o-$permission $fName
                                        ;;
                                esac
                                ls -la
                        else
                                echo "The Entered File Doesn't Exist!!"
                        fi
               	        ;;
		4)
			ls
			read -p "Enter the file name: " fName
                        if [ -f $fName ] ; then
                                read -p "Please Select the Permission: 
				0. No Permission
				1. Execute
				2. Write
				3. Execute + Write
				4. Read
				5. Read + Execute
				6. Read + Write
				7. Read + Write + Execute" permission
                                read -p "Please Select the Owner:
                                1. User
                                2. Group
                                3. Others
                                " owner
				case $owner in
                                        1)
						permission="$permission"00
                                                chmod $permission $fName
                                        ;;
                                        2)
						let permission=0"$permission"0
                                                chmod $permission $fName
                                        ;;
                                        3)
						let permission=00"$permission"
                                                chmod $permission $fName
                                        ;;
                                esac
				ls -la $fName

			fi
			;;
		5)
			ls
			read -p "Please Select a file from above list: " fileName
			cut -d: -f1 /etc/passwd
			read -p "Please Select a user from above: " uName
			sudo chown $uName $fileName
			ls -l $fileName
			;;
		6)
			cut -d: -f1 /etc/passwd
			read -p "Please Select a user from the above list: " uName
			echo "Currently $uName is present in: "
			groups $uName
			cut -d: -f1 /etc/group
			read -p "Please Select a group from the above list: " group
			sudo usermod $uName -aG $group
			echo "Now $uName is present in these groups: "
			groups $uName		
			;;
		7)
			ls
			read -p "Enter the directory name: " dName
                        if [ -d $dName ] ; then
                                read -p "Please Enter the Permission(rwx): " permission
                                read -p "Please Select the Owner:
                                1. User
                                2. Group
                                3. Others
                                " owner
                                case $owner in
                                        1)
                                                sudo chmod -R u+$permission $dName
                                        ;;
                                        2)
                                                sudo chmod -R g+$permission $dName
                                        ;;
                                        3)
                                                sudo chmod -R o+$permission $dName
                                        ;;
                                esac
                                ls -la $dName
                        else
                                echo "The Entered Directory Doesn't Exist!!"
                        fi
			;;
	esac
done
