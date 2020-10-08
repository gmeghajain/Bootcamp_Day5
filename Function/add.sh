#! /bin/bash -x


function addTwoNumber(){
	local a=$1;
	local b=$2;
	local add=$(( $a + $b ));
	echo $add

}
a=5;
b=6;

result=$( addTwoNumber $a $b)
