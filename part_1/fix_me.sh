#!/bin/bash

# Reading data from the user's input
echo 'Enter one integer (a): '
read a
echo 'Enter a second integer (b): '
read b

${a:?"You did not enter anything for a! Aborting..."}
${b:?"You did not enter anything for b! Aborting..."}

if [[ $a == ?(-)+([0-9]) ]] ; then 
    echo "Variable a is an integer."
else
    echo "Error: Variable a is not an integer. Aborting..."
    exit 1
fi 

if [[ $b == ?(-)+([0-9]) ]] ; then
    echo "Variable b is an integer."
else
    echo "Error: Variable b is not an integer. Aborting..."
    exit 1
fi


add=$((a + b))

echo Addition of a and b are $add

sub=$((a - b))
echo Subtraction of a and b are $sub

mul=$((a * b))
echo Multiplication of a and b are $mul

div=$((a / b))
echo division of a and b are $div

mod=$((a % b))
echo Modulus of a and b are $mod

((++a))
echo Increment operator when applied on "a" results into a = $a

((--b))
echo Decrement operator when applied on "b" results into b = $b

((--c))
echo What was the default value \ of c if its value is now $c\?
echo The default value of c was 0
