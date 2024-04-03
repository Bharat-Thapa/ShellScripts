#!/bin/bash

read -p "Enter the source directory: " src
read -p "Enter the target directory: " tgt

filename=$(date +'%d-%m-%Y-%H-%M-%S').tar.gz

echo "Backup started for $filename"
tar -cvf "$tgt/$filename" "$src"
echo "Backup completed"
