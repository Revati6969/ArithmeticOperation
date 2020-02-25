##!/bin/bash -x
echo "Arithmetic Computation"

echo "Enter three inputs: "
read a
read b
read c
result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=$(( $c+$a/$b ))
result4=$(( $a%$b+$c ))
