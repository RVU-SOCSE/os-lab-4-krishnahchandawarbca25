#!/bin/bash

echo "--- Simple File Manager ---"
echo "Choose an operation:"
echo "1) Create a new file"
echo "2) Copy a file"
echo "3) Move/Rename a file"
echo "4) Delete a file"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        read -p "Enter filename to create: " filename
        touch "$filename"
        echo "File '$filename' created successfully."
        ;;
    2)
        read -p "Enter source file: " source
        read -p "Enter destination: " dest
        cp "$source" "$dest"
        echo "Copied '$source' to '$dest'."
        ;;
    3)
        read -p "Enter source file: " source
        read -p "Enter new location/name: " dest
        mv "$source" "$dest"
        echo "Moved/Renamed '$source' to '$dest'."
        ;;
    4)
        read -p "Enter filename to delete: " filename
        rm -i "$filename"  # -i adds a safety confirmation
        echo "Operation complete."
        ;;
    *)
        echo "Invalid selection. Please run the script again and choose 1-4."
        ;;
esac

