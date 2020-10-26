#!/bin/bash

rm -rf $PROJECT_FOLDER
echo "${green}>>> (if existed) removed $PROJECT_FOLDER${reset}"

mkdir $PROJECT_FOLDER
cd $PROJECT_FOLDER
echo "${green}>>> Created folder: $PROJECT_FOLDER.${reset}"

pip install django
pip freeze > requirements.txt
echo "${green}>>> Installed Django${reset}"

django-admin.py startproject $PROJECT .
echo "${green}>>> Created the project: '$PROJECT'${reset}"

# Go up a folder to run the next script
cd ..
./0_2_setApp.sh