#!/bin/bash

# Define the file to modify
file="$HOME/.config/waybar/style.css"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File $file not found!"
    exit 1
fi

# Check if the changes have already been made
if grep -q 'CozetteHiDpi' "$file" && grep -q 'font-size: 21px' "$file"; then
    # Reverse the changes
    sed -i 's/CozetteHiDpi/Cozette/g' "$file"
    sed -i 's/font-size: 21px/font-size: 15px/g' "$file"
    echo "Reversed changes."
else
    # Apply the changes
    sed -i 's/Cozette/CozetteHiDpi/g' "$file"
    sed -i 's/font-size: 15px/font-size: 21px/g' "$file"
    echo "Applied changes."
fi
