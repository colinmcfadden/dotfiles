#!/bin/bash

echo "Select config to copy to destination..."

#List configs
select dir in */; do
	if [ -n "$dir" ]; then
		# remove trailing backslash
		dir="${dir%}"
		break
	else
		echo "Invalid selection"
	fi
done

# Check if dir selected
if [ -z "$dir" ]; then
	echo "No directory selected"
	exit 1
fi

# Prompt user for destination path
read -p "Enter destination path: " dest_path

#Check if destination path is empty
if [ -z "$dest_path" ]; then
	echo "Destination path cannot be empty"
	exit 1
fi

cp -r "$dir" "$dest_path"

#Check if copy successful
if [ $? -eq 0 ]; then
	echo "Directory '$dir' copied to '$dest_path' successfully"
else
	echo "Error copying directory to destination"
fi
read -p "Press Enter to continue"
