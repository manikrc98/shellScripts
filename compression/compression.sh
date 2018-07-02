#! /bin/bash
echo "Please Select One Menu-Option to process:
1. GZIP
2. GUNZIP
3. BZIP2
4. BUNZIP2
5. ZCAT
6. TAR
7. Group and compress the file based on their file extension.
8. Archive the files which are not accessed for past three months.
"
while :
do
  read inputOption
  case $inputOption in
	  1)
	  	   read -p "Enter File Name: " fileName
		  `gzip $fileName`
	  ;;
	  2)
		   read -p "Enter File Name: " fileName
          `gunzip $fileName`
          ;;
  	  3)
		   read -p "Enter File Name: " fileName
		  `bzip2 $fileName`
          ;;
 	  4)
	      read -p "Enter File Name: " fileName
		  `bunzip2 $fileName`
          ;;
 	  5)
		  read -p "Enter File Name: " fileName
		  echo `zcat $fileName`
	  ;;
 	  6)
	   	  read -p "Enter File Name: " fileName
		  echo `tar -cvf $fileName.tar file1.txt file2.txt file3.txt`
	  ;;
 	  7)
		  read -p "Enter your file extension: " ext
		  read -p "Enter the name for the tar folder: " tfolder
		  echo `tar -cvf $tfolder.tar *.$ext`
  	  ;;
	  8)
	  	  echo `find . -atime 1 -type f | xargs tar -cvf old.tar`
		  echo "Sucessfully Created Old.tar"
	  ;;

  esac
done
