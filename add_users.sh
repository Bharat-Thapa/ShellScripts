#!/bin/bash

read -p "How many users do you want to add? " num_users

for ((i=1; i<=$num_users; i++))
do	
    read -p "Enter username for user $i: " username
    sudo useradd -m $username
    echo "User '$username' added successfully"
done

echo "Users added successfully"

sudo cat /etc/passwd

