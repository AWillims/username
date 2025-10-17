#!/bin/bash
# username.sh
# Avery Williams
# CENG298

echo "The idea is simple: make a username." 
echo "It has to be at least 3 characters but no more than 12"
echo "It has to start with a lowercase letter"
echo "The rest can be lowercase, uppercase, numbers, or an underscore"

while IFS= read -r line; do
    read -p "Type in a username: " user_name 
    if echo "$user_name" | grep -E -v '^[a-z][a-zA-Z0-9_]{2,11}$' > /dev/null 2>&1; then
        echo "Try again"
    else
        echo "Your username is '$user_name'"
    fi
done
echo "Thank you!"
