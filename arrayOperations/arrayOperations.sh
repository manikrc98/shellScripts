#! /bin/bash 
read -p "Enter the desirable size for the array: " arraySize
for(( i=0; i<$arraySize; i++ ))
do
	read -p "Enter element $((i+1)) : " arr[$i]
done
while :
do
read -p "Array Operation Commands:
1. DISPLAY ALL ARRAY ELEMENTS
2. DISPLAY ALL ELEMENTS IN A RANGE
3. DISPLAY THE NUMBER OF ARRAY ELEMENTS
4. REPLACE A SUBSTRING IN AN ARRAY ELEMENT
5. SORT AND DISPLAY THE ARRAY ELEMENT IN ASCENDING ORDER AND
DESCENDING ORDER
6. COPY AN ARRAY ELEMENTS TO ANOTHER ARRAY
7. DISPLAY THE SUM AND AVERAGE OF ODD POSITION ELEMENTS AND EVEN
POSITION ELEMENTS OF AN ARRAY AND FIND WHICH POSITION NUMBERS ARE
HAVING GREATER AVERAGE.	" input
case $input in
	1)
		echo "${arr[@]}"
		;;
	2)
		read -p "Enter the lower index: " lIndex
		read -p "Enter the upper index: " uIndex
		echo "${arr[@]:$lIndex:$uIndex}"
		;;
	3)
		echo "${#arr[*]}"
		;;
	4)
		read -p "Enter the location to replace the index value: " rLocation
		read -p "Enter the value to be replaced with: " rValue
		arr[rLocation]="$rValue"
		echo "New array : ${arr[@]}"
		;;
	5)
		read -p "Sort in:
		1. Ascending
		2. Descending" order
		case $order in
			1)
				for (( i=0;i<=arraySize;i++ ))
				do
					for (( j=$i;j<=arraySize;j++ ))
					do
					if [ ${arr[$i]} -gt ${arr[$j]} ]; then
						t=${arr[$i]}
						arr[$i]=${arr[$j]}
						arr[$j]=$t	
					fi
					done
				done
				echo "${arr[@]}"
				;;
			2)
				for (( i=0;i<=arraySize;i++ ))
                                do
                                        for (( j=$i;j<=arraySize;j++ ))
                                        do
                                        if [ ${arr[$i]} -lt ${arr[$j]} ]; then
                                                t=${arr[$i]}
                                                arr[$i]=${arr[$j]}
                                                arr[$j]=$t
                                        fi
                                        done
                                done
                                echo "${arr[@]}"
                                ;;

		esac
		;;
	6)
   		newArr=("${arr[@]}")
		echo "The Copied array is ${arr[@]}"		
		;;
	7)
		for(( i=0;i<=$arraySize;i++ ))
		do
			if [ `expr $((i+1)) % 2` -eq 0 ]; then
				let countEv=$countEv+arr[$((i+1))]
			else
				let countOdd=$countOdd+arr[$((i+1))]
			fi
		done
		echo "Sum of even:$countEv"
		echo "Sum of odd: $countOdd"
		let EvAvg=$countEv/$arraySize
		let OddAvg=$countOdd/$arraySize
		if [ $EvAvg > $OddAvg ]; then
			echo "Even Average is Greater"
		else
			echo "Odd Average is Greater"
		fi
		;;
esac
done
