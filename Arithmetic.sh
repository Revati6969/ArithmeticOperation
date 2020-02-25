#!/bin/bash -x
echo "Arithmetic Computation"

echo "Enter three inputs: "
read a
read b
read c
result1=$(( $a+$b*$c ))
