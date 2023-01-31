#!/bin/bash

# Function to encrypt a file
encrypt_file () {
  # Prompt the user for the file name and encryption key
  read -p "Enter file name: " file
  read -p "Enter encryption key: " key

  # Encrypt the file using OpenSSL
  openssl enc -aes-256-cbc -salt -in $file -out "$file.enc" -k $key
}

# Function to decrypt a file
decrypt_file () {
  # Prompt the user for the encrypted file name and encryption key
  read -p "Enter encrypted file name: " file
  read -p "Enter encryption key: " key

  # Decrypt the file using OpenSSL
  openssl enc -d -aes-256-cbc -in $file -out "${file%.enc}" -k $key
}

# Show menu to the user
PS3='Please enter your choice: '
options=("Encrypt a file" "Decrypt a file" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "Encrypt a file")
      encrypt_file
      ;;
    "Decrypt a file")
      decrypt_file
      ;;
    "Quit")
      break
      ;;
    *) echo "Invalid option, try again.";;
  esac
done
