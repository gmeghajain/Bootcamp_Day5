#! /bin/bash -x
#CONTANTS 
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_HRS_IN_MONTH=50
NUM_WORKING_DAYS=20

#VARIABLES
totalEmpHR=0
totalWorkingDays=0

function getEmpHour(){
	local empHrs
	case $1 in
                $IS_FULL_TIME )
                        empHrs=8;;
                $IS_PART_TIME )
                         empHrs=4;;
                *)
                         empHrs=0;;
        esac
	echo $empHrs

}
while [[ $totalEmpHR -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	employeeCheck=$((RANDOM%3))
	empHrs=$(getEmpHour $employeeCheck)
	totalEmpHR=$((totalEmpHR+empHrs))
done
salary=$((EMP_RATE_PER_HR*totalEmpHR))
echo "The salary is $salary"
