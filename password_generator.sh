#!/bin/bash

# Ask the user for password length
read -p "Enter password length: " length

# Generate random data using OpenSSL
password=$(openssl rand -base64 $length | tr -dc 'a-zA-Z0-9')

# Print the generated password
echo "Generated password: $password"