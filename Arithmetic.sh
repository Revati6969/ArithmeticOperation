#!/bin/bash -x
echo "Arithmetic Computation"

declare -A calculations
declare -a array

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

calculations[0]="$result1"
calculations[1]="$result2"
calculations[2]="$result3"
calculations[3]="$result4"
 
size=${#calculations[@]}

for(( index=0; index<$size; index++ ))
do
   array[index]=${calculations[$index]}

done

#Descending order
for (( index1=0; index1<$size; index1++ ))
do
   for (( index2=0; index2<$size; index2++ ))
   do
      if [[ ${array[index1]} -gt ${array[index2]} ]]
      then
	   temp=${array[index1]}
	   array[index1]=${array[index2]}
	   array[index2]=$temp
      fi
   done

done

echo "Descending---> " ${array[@]} 

#ascending order
ascending()
{
array=("$@")
for (( index3=$size-1; index3>=0; index3-- ))
do
   echo  ${array[$index3]}
done
}

AscendingOrder=$( ascending ${array[@]} )
echo "Ascending--->" $AscendingOrder

