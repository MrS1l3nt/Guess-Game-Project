#! /bin/bash
random=$(( (RANDOM%100)+1 ))
echo "I have a number between 1 and 100..."
echo -e "Guess the number:\c"
read guess
let guessnum=1
while (( guess != random ))
do
	if (( guess > random ))
	then
		echo "Number is smaller than you expected!"
	elif (( guess < random ))
	then
		echo "Number is greater than you expected!"
	fi
	echo -e "Enter the number between 1 and 100:\c"
	read guess
	let guessnum++
done
if [ $guessnum -lt 2 ]
then
	echo "You guess the number after $guessnum try..."
else
	echo "You guess the number after $guessnum tries..."
fi
