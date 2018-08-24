read -p "Enter Student Register Number: " regNo
read -p "Enter Student's First Name:  " fName
read -p "Enter $fName's Middle Name: " mName
read -p "Enter $fName's Last Name: " lName
read -p "Enter $fName $lName's Mobile Number: " mNum
read -p "Enter $fName's City: " city
read -p "Enter $fName's State: " state
mysql studentDetails -u root -p <<EOFSQL
insert into personalDetails VALUES($regNo,'$fName','$mName','$lName',$mNum,'$city','$state');
select * from personalDetails;
EOFSQL
