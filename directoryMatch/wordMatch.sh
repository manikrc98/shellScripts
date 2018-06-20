#! /bin/bash
if [ $# -eq 2 ] ; then
	if [[ ( -f $1 ) && ( -f $2 ) ]] ; then
		ctr = 0
		echo "Checking for duplicate files in $1 and $2"
		for m in `cat $1`
		do	
			for j in `cat $2`
			do
				if [ "$m" == "$j" ] ; then
					ctr=`expr $ctr \+ 1`
				fi
			done
			
		done	

	fi
fi
if [ $ctr>0 ] ; then
	echo "$ctr words are same"
elif [ $ctr == 0 ]; then
	echo "No similar words found"	
fi

