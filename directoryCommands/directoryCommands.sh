#! /bin/bash
echo "Please Select One Menu-Option to process: 
1. Create Directory
2. Check Directory
3. Remove Directory
4. Copy Directory
5. Add R-W-E Permission
6. Withdraw Permission
7. Hide Directory
8. Unhide Directory
"
while :
do 
  read inputOption 
  case $inputOption in 
	  1) 
		  echo "Enter the Name of new Directory"
		  read newDirectory
		  mkdir $newDirectory
		  ;;
	  2) 
		  echo "Enter the name of the directory to check whether it exists or not"
		  read checkdir
		  if [ -d $checkdir ]; then
			  echo "$checkdir Exists"
	          else
			  echo "$checkdir does not Exists"
		  fi
		  ;;
	  3)
		  echo "Enter the Name of the directory to be removed"
		  read remDirectory
		  if [ 	-d $remDirectory ]; then
			rmdir $remDirectory
	      	  else
			echo "Such Directory Doesn't Exist"
	       	  fi
  		  ;;
	  4) 
		  echo "Enter the Name of the directory to be copied"
	       	  read copyDirectory
		  if [ -d $copyDirectory ]; then
			echo "Enter the Location of the directory to be pasted"
      			read pasteLocation
			cp -R $copyDirectory $pasteLocation
		  fi
		  ;;
	  5)
		  read -p "Enter the directory name to give RWE permission to" dirPerm
		  chmod +rwx $dirPerm
		  ls -l $dirPerm
		  echo "Successfully given permissions"
		  ;;
          6)
		  read -p "Enter the directory name to remove RWE permission from" dirPerm
		  chmod -rwx $dirPerm
		  ls -l $dirPerm
		  echo "Successfully removed permissions"
		  ;;
          7)
		  echo "Enter the name of the directory to hide"
		  read hideDir
		  mv $hideDir .$hideDir
		  ;;
	  8)
		  read -p "Enter the name of the directory to show" showDir
		  mv .$showDir $showDir
	  	  ;;	
      		 
          *)
		  echo "That's Not Nice"
		  ;;
  esac
done
echo "End of Switch Statements"
