#!/bin/bash -x

read -p "Enter your number: " n
echo "Your number is $n"

randomnumber ()
{
rnum=$((RANDOM%4+4))
echo "Random number is: " $rnum
}

matchrandom ()
{
if [ $n -eq $rnum ]
then
   echo "---: CONGRATS :---"
   echo "Your number $n matches with random number $rnum"
else
   echo "---: SORRY :---"
   echo "Your number $n does not match with random number $rnum"
   echo "Please, try again"
fi
}

randomnumber
matchrandom
