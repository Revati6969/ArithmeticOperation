##!/bin/bash -x
echo "Arithmetic Computation"

declare -A calculations

echo "Enter three inputs: "
read a
read b
read c

result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=$(( $c+$a/$b ))
result4=$(( $a%$b+$c ))

calculations[result1]="$result1"
calculations[result2]="$result2"
calculations[result3]="$result3"
calculations[result4]="$result4"
 
echo ${calculations[@]}
echo ${!calculations[@]}
