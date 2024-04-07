#!/bin/bash

# Prompt user for desired location
read -p "Enter your desired location: " location

# Check if the location exists
if [ ! -d "$location" ]; then
    echo "Error: Location does not exist."
    exit 1
fi

# Change to the desired directory
cd "$location" || { echo "Error: Unable to change directory."; exit 1; }

# Prompt user for file name, extension, and number of files
read -p "Enter a base file name: " filename
read -p "Enter file extension: " extension
read -p "Enter the number of files you want to create: " num_files

# Loop to create files
for ((i = 1; i <= num_files; i++)); do
    touch "${filename}_${i}.${extension}" || { echo "Error: Unable to create file ${filename}_${i}.${extension}"; exit 1; }
done

# Display list of created files
echo "Files created in $location:"
ls -l "${filename}"*."${extension}"

