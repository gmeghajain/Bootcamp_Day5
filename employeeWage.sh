#! /bin/bash -x

#constants
IS_PRESENT_FULLTIME=1
IS_PRESENT_PARTTIME=2
WAGE_PER_HOUR=20
MONTH=30

for ((i=1;i<=MONTH;i++))
do
	randomCheck=$((RANDOM%3))

	case $randomCheck in
		1)  empHrs=8
			;;
		2) empHrs=4
			;;
		0) empHrs=0
			;;
	esac

salary=$((empHrs*WAGE_PER_HOUR))
echo "The salary is $salary"
echo $i
done

