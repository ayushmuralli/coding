#!/bin/bash
echo THE CALCULATOR
sum=0
i="y"
while [ $i = "y" ]
do
echo "enter first digit"
read n1 
echo "enter second digit"
read n2

echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter choice"
read ch
case $ch in
1)sum=`expr $n1 + $n2`
echo "Sum ="$sum;;
2)sub=`expr $n1 - $n2`
echo "Sub = "$sub;;
3)mul=`expr $n1 \* $n2`
echo "Mul = "$mul;;
4)div=`echo $n1 / $n2 | bc -l`
echo "Div = "$div;;
*)echo "Invalid choice";;
esac
read -p "Do you want to perform another calculation? (yes/no): " continue_calculation
    if [ "$continue_calculation" != "yes" ]; then
      break
    fi
done