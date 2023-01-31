#!/bin/bash

# Prompt for the network range to scan
read -p "Enter the network range to scan (e.g. 192.168.1.0/24): " network

# Scan the network and store the results in a file
nmap -sn $network > results.txt

# Extract the IP addresses and hostnames from the results file
grep "Nmap scan report" results.txt | awk '{print $5, $6}'

# Clean up the results file
rm results.txt
