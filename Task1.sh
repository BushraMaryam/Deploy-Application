#!/bin/bash
echo "Task: Automate GitHub File/Folder Upload with Bash Script:"

source .env

# Git Credentials
#fetching these credentials from env file to keep it secured

USERNAME=$USERNAME
TOKEN=$TOKEN

# Check if a commit message was provided as an argument, otherwise ask for input
if [ -z "$1" ]; then
    read -p "Enter commit message: " COMMIT_MSG
else
    COMMIT_MSG="$*"
fi


#creating a directory of tasks
mkdir tasks
#created a file within that directory
touch task1.py
echo "Compeleting task1 using automation, It's soo much fun" > task1.py

#now pushing data into the github repository
git add .
git commit -m "$COMMIT_MSG"

git config --global credential.helper cache

git push origin main
