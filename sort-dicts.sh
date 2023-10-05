#! /usr/bin/bash

function sort_folders() {
	# $1 is the directory path
	AVAILABLE_DIRS=$(ls -tr "$1")
	echo "$AVAILABLE_DIRS"
}

read -p "Enter path: " FOLDER_PATH
sort_folders "$FOLDER_PATH"
