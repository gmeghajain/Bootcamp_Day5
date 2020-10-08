#! /bin/bash

# 4. Write a program that reads 5 Random 2 Digit  values, then find their sum and the average

a=$(($RANDOM%90 + 10 ))
b=$(($RANDOM%90 + 10 ))
c=$(($RANDOM%90 + 10 ))
d=$(($RANDOM%90 + 10 ))
e=$(($RANDOM%90 + 10 ))
 
sum=$(( $a + $b + $c + $d + $e ))
avg=$(($sum / 5))
echo "Sum="$sum
echo "average="$avg

