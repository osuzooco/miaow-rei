#!/bin/bash

echo date: "$(date)"
echo -e "\nPlease enter the path to a directory: "
read -r roout_path
echo -e "\nThe directory you entered contains the following files and folders: "
ls "$roout_path"