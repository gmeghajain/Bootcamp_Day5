#! /bin/bash -x

#2. Use Random to get Dice Number between 1 to 6

diceNum=$((RANDOM%6))
diceNum=$(($diceNum+1))
echo $diceNum
