#! /bin/bash
echo "Please Select One Menu-Option to process: 
1. Create File
2. Remove File
3. View Contents
4. Duplicate File
5. Add R-W-E Permission
6. Rename File
7. Move a File
8. Copy a File
"
while :
do 
  read inputOption 
  case $inputOption in 
	  1) 
		  echo "Enter the Name of new file"
		  read newFile
		  touch $newFile
		  ;;
	  2) 
		  read -p "Enter the name of the file to be removed" fileRemove
		  rm $fileRemove
		  ;;
	  3)
		  read -p "Enter the file name to view it's contents" fileName
		  cat $fileName
  		  ;;
	  4) 
		  echo "Enter the file name to make it's copy"
	       	  read fileinput
		  if [ -f $fileinput ]; then
			echo "Enter the name of the new file to be made"
      			read fileoutput
			cp $fileinput $fileoutput
		  else
		  	 echo "No such file exist"
		  
		  fi
		  ;;
	  5)
		  read -p "Enter the file name to give RWE permission to" filePerm
		  chmod +rwx $filePerm
		  ls -l $filePerm
		  echo "Successfully given permissions"
		  ;;
          6)
		  read -p "Enter the file name to rename it" fileinput
		  read -p "Enter the new name for $fileinput" fileoutput
		  mv $fileinput $fileoutput
		  echo "Successfully renamed $fileinput to $fileoutput"
		  ;;
          7)
		  read -p "Enter the file name to move" fileinput
		  read -p "Enter the directory to move in" fileoutput
		  mv $fileinput $fileoutput
		  ;;
	  8)
		  read -p "Enter the file name to copy" fileinput
		  read -p "Enter the directory to copy the file into" fileoutput
		  cp $fileinput $fileoutput
	  	  ;;	
      		 
	  *)
		  echo "That's Not Nice"
		  ;;
  esac
done
echo "End of Switch Statements"
