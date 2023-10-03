#!/bin/bash
echo enter a number
read num
og=$num
reverse=0
rem=0
while [ $num -gt 0 ]
do
rem=`expr $num % 10`
reverse=`expr $reverse \* 10 + $rem`
num=`expr $num / 10`
done
echo "reverse of $og is $reverse"