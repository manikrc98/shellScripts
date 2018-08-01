#! /bin/bash
echo "Please Select One Menu-Option to process:
1. Calculate the sum and difference.
2. Find The Fibonacci series number.
3. Find The Factorial of a Number."
sum() {
    let sum=$1+$2
    return $sum
}
diff() {
    let diff=$1-$2
    return $diff
}
factorial() {
    if [ $1 -gt 1 ]; then
        let c=$1-1
        factorial $c
        let c=$1*$c
        return $c
    fi
}
fib() 
{
    echo $1
    if [ $2 -gt $3 ]; then 
        return
    fi
        fib $2 $(expr $1 + $2) $3 
}
while :
do
  read inputOption
  case $inputOption in
    1)
        read -p "Enter 1st Value: " x
        read -p "Enter 2nd Value; " y
        sum $x $y
        sumOf=$?
        diff $x $y
        diffOf=$?
        echo "The sum and difference of $x and $y is $sumOf and $diffOf"
        ;;
    2)
        read -p "Enter the upper-limit for fibonacci series starting from 0-? : " n
        fib 0 1 $n
        ;;
    3)
        read -p "Enter the number: " n
        factorial $n
        echo $?
        ;;
  esac
done