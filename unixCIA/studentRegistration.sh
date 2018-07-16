#! /bin/bash
echo "---------------Welcome to CHRIST University's Student Registration Portal-----------------------"
while :
do
	read -p "Enter Username: " userName
	read -p "Enter Password: " password
	if [ $userName = "admin" -a $password = "password" ]; then
	   echo "Login Sucessful!"
	   while :
	   do
read -p "Choose an Option: 
  1. Enter Student Details
  2. Exit
  " input            
  	   courseFee=0
  	   case $input in
		   1)
  	  		 read -p "Enter the name of the student: " name
			 read -p "Enter the Date of Birth of $name: " dob
			 read -p "Enter the Academic Year, $name has applied for(1/2/3): " y
			 read -p "Choose the Course for $name:
			 1. BBA
			 2. BCA
			 3. BCOM
			 4. MBA
			 5. MCA
			 6. MCOM" course
			 case $course in
				 1)
					courseFee=150000
			 		if [ $y=1 ]; then
					   let totalFee=3000+$courseFee
				        elif [ $y=2 ]; then
					   let totalFee=$courseFee
					elif [ $y= 3]; then
					   let totalFee=$courseFee
					fi
					;;
				2)
					courseFee=70000
					if [ $y=1 ]; then
                                           let totalFee=3000+$courseFee
                                        elif [ $y=2 ]; then
                                           let totalFee=$courseFee
                                        elif [ $y= 3]; then
                                           let totalFee=$courseFee
                                        fi
					;;
				3)
					courseFee=40000
                                        if [ $y=1 ]; then
                                           let totalFee=5000+$courseFee
                                        elif [ $y=2 ]; then
                                           let totalFee=$courseFee
                                        elif [ $y= 3]; then
                                           let totalFee=$courseFee
                                        fi
                                        ;;
				4)
					courseFee=240000
                                        if [ $y=1 ]; then
                                           let totalFee=5000+$courseFee
                                        elif [ $y=2 ]; then
                                           let totalFee=$courseFee
                                        elif [ $y= 3]; then
                                           let totalFee=$courseFee
                                        fi
					;;
				5)
					courseFee=120000
                                        if [ $y=1 ]; then
                                           let totalFee=5000+$courseFee
                                        elif [ $y=2 ]; then
                                           let totalFee=$courseFee
                                        elif [ $y= 3]; then
                                           let totalFee=$courseFee
                                        fi
					;;
				6)
					 courseFee=140000
                                        if [ $y=1 ]; then
                                           let totalFee=5000+$courseFee
                                        elif [ $y=2 ]; then
                                           let totalFee=$courseFee
                                        elif [ $y= 3]; then
                                           let totalFee=$courseFee
                                        fi
					;;
			 esac
			 read -p "Enter $name's Marks in HSC(%): " marks
			 discount=0
			 if [ $marks>75 -a $marks<85 ]; then
			    discount=3000
			 elif [ $marks>85 ]; then
			    discount=8000
			 fi
			 read -p "For which option would he ($name) like to opt for:
		 	 1. Hostelite
			 2. Scholar
			 " studentType
			 case $studentType in
				 1)
				    accomodationCharge=65000
				    ;;
				 2)
			            read -p "Enter $name's Distance from CHRIST UNIVERSITY in kms: " distance
				    if [ $distance -lt 5 ]; then
				    	accomodationCharge=4000
				    elif [ $distance -gt 5 -a $distance -lt 10 ]; then
					accomodationCharge=9000
				    elif [ $distance -gt 10  ]; then
					accomodationCharge=15000
				    fi
				    ;;
			 esac
			 infrastructureCharges=10000
			 let finalFees=$totalFee+$accomodationCharge+$infrastructureCharges-$discount
			 echo " Sucessfully Registered $name
			 Full Name:                    $name
			 Date of Birth:                $dob
			 Academic Year: 	       $y
			 Course: 		       $course
		 	 Course Fee: 		       $totalFee	 
			 Discount:		       $discount
			 Accomodation Charge:	       $accomodationCharge
			 Infrastrucuture Charges:      $infrastructureCharges
			 Total Fee: 		       $finalFees
			 "
			 ;;  
		 2)
		  	exit 
	   		;;
		esac 
	   done	   
     else
     	echo "Invalid Credentials! "	     
     fi
done

