#! /bin/bash
if [ $# -eq 2 ]; then
	if [[ ( -d $1 ) && ( -d $2 ) ]]; then
		ctr=0
		echo "Checking for duplicate files in $1 and $2: "
		for m in `ls $1`
		do
			for n in `ls $2`
			do
			if [ "$m" == "$n" ]; then
				ctr=`expr $ctr \+ 1 `	
			fi
			done
		done
	fi
fi
if [ $ctr>0 ]; then
	echo "$ctr files are same"
else
	echo "No similar files found"
fi

