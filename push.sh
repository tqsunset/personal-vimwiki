#!/bin/bash

git add .
git status

echo "want to keep going and commit?[y/n]"
read answer

if [[ $answer == "y" ]]   
then
	echo "OK"      
else
	echo "Exit..."
	exit 100
fi

git commit
git push
