#!/bin/bash

cookies=45
machine_choice=""
user_input=""

echo "Welcome to Hai-Yushu Game!"
echo "You start with $cookies cookies"
echo "Type 'Hai' or 'Yushu' to play. Type 'quit' to exit."
echo ""

while true; do
    echo "Cookies: $cookies"
    read -p "Your turn (Hai/Yushu/quit): " user_input
    
    if [[ "$user_input" == "quit" ]]; then
        echo "Thanks for playing!"
        exit 0
    fi
    
    if [[ "$user_input" != "Hai" && "$user_input" != "Yushu" ]]; then
        echo "Invalid input! Type 'Hai' or 'Yushu'"
        continue
    fi
    
    machine_choice=$((RANDOM % 2))
    if [[ $machine_choice -eq 0 ]]; then
        machine_choice="Hai"
    else
        machine_choice="Yushu"
    fi
    
    echo "Machine: $machine_choice"
    
    if [[ "$user_input" == "$machine_choice" ]]; then
        echo "Match! You win!"
    else
        cookies=$((cookies - 2))
        echo "Mismatch! You lose 2 cookies."
    fi
    
    if [[ $cookies -le 0 ]]; then
        echo "Game Over! You ran out of cookies!"
        exit 0
    fi
    
    echo ""
done