#! /usr/bin/bash

echo "Welcome to the password generator"

read -p "What is the password length: " PWD_LENGTH

# For space
echo ""

for p in $(seq 1 5)
	do
		openssl rand -base64 48 | cut -c1-"$PWD_LENGTH"
done
