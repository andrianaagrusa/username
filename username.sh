#! /bin/bash
# username.sh
#Andriana Agrusa 
echo "The only characters that can be used are: "
echo "lower case letters, digits, and the underscore character"
echo "It must start with a lower case letter"
echo "It must contain at least three but no more than 12 characters"
read PASS 
while echo "$PASS" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
        echo "You must enter a valid password!"
        echo "Try again. Enter password: "
        read PASS
done
echo "Thank you"
