#!/bin/bash
username=$(whoami)
echo "Hello, $username! This is the Kaka Script."
echo "Welcome to the Kaka Script!"
echo -e "\nPlease enter your name: "
read -r username  
echo "Nice to meet you, $username!"
echo -e "\nPlease enter your favorite color: "
read -r color
echo "Your favorite color is $color!"  
echo "$color" is a beutiful color!

echo -e "\nListing files in your home directory:"
ls "/Downloads/kochi"
echo -e "\nHere are the files in your Downloads/kochi directory:"

echo -e "\nThank you for using the Kaka Script, $username! Goodbye!"
 
 sleep 3 

exit 0