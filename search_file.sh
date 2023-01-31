#!/bin/bash

# Prompt the user for the search string
read -p "Enter search string: " search_string

# Search for files that contain the search string in their name
results=$(find . -type f -name "*$search_string*")

# Print the results
echo "Search results:"
echo "$results"