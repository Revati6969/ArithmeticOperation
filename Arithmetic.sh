#!/bin/bash -x
echo "Arithmetic Computation"

declare -A calculations

#variable
temp=0

echo "Enter three inputs: "
read a
read b
read c

result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=$(( $c+$a/$b ))
result4=$(( $a%$b+$c ))

calculations[1]="$result1"
calculations[2]="$result2"
calculations[3]="$result3"
calculations[4]="$result4"
 
size=${#calculations[@]}

for(( index=1; index<=$size; index++ ))
do
	array[index]=${calculations[$index]}
done

for (( index1=1; index1<=size; index1++ ))
do
	for (( index2=1; index2<=size; index2++ ))
	do
		if [[ ${array[index1]} -gt ${array[index2]} ]]
		then
				temp=${array[index1]}
				array[index1]=${array[index2]}
				array[index2]=$temp
		fi
	done
done

echo ${array[@]} 
