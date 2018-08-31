echo "The available records are listed below: "
mysql studentDetails -u root -p <<EOFSQL
select * from personalDetails;
EOFSQL
read -p "Enter the field which you want to update: " updateField
read -p "Enter the register number where you want to update: " registerNum
read -p "Enter the new value which you want to update in $updateField: " newValue
mysql studentDetails -u root -p <<EOFSQL
UPDATE personalDetails set $updateField = '$newValue'  where Reg_No = '$registerNum';
select * from personalDetails;
EOFSQL
