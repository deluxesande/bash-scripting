#! /usr/bin/bash

echo Hello world

# VARIABLES
# UPPERCASE BY CONVENTION
NAME="Sean"

echo "$NAME"

# USER INPUT
read -p "Who are you? " USER
echo "Hello $USER"

# IF, IF ELSE, IF ELIF ELSE
if [ "$NAME" == "$USER" ]
then
	echo "You're in the system"
elif [ "$NAME" == "john" ]
then
	echo "Hello jack"
else
	echo "$USER NOT in the system"
fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

NUM1=3
NUM2=4

if [ "$NUM1" -eq "$NUM2" ]
then
	echo "$NUM1 is equal to $NUM2"
elif [ "$NUM1" -ne "$NUM2" ]
then
	echo "$NUM1 is NOT equal to $NUM2"
fi


########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="text.txt"

if [ -e "$FILE" ]
then
	echo "$FILE exists"
else
	echo "$FILE does NOT exist"
fi

read -p "Are you above 18? " AGE

case "$AGE" in
	[yY] | [yY][eE][sS])
		echo "welcome to the bar"
	;;
	[nN] | [nN][oO])
		echo "Please leave"
	;;
	*)
		echo "Please choose y/N"
	;;
esac

# FOR LOOPS
NAMES="john joe smith"

for NNAME in "$NAMES"
	do
		echo "Hello $NNAME"
done


FILES=$(ls *txt)
NEW="new"

for FILE in $FILES
	do
		mv $FILE $NEW-$FILE
done

