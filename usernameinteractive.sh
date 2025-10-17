#!/bin/bash
# username.sh
# Avery Williams
# CENG298

echo "The idea is simple: make a username." 
echo "It has to be at least 3 characters but no more than 12"
echo "It has to start with a lowercase letter"
echo "The rest can be lowercase, uppercase, numbers, or an underscore"

while true; do
    read -p "Type in a username: " user_name
    if [[ $user_name =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then
        echo "Your username is '$user_name'"
        break
    else
        echo "Try again"
    fi
done
echo "Thank you!"
