#! /bin/bash -x
#Add two Random Dice Number and Print the Result

x=$(($RANDOM%6 + 1))
y=$(($RANDOM%6 + 1))
result=$(( $x + $y ))

echo $result
