#!/bin/bash

cd $PROJECT_FOLDER/
echo "${green}>>> In $PROJECT now${reset}"

python manage.py startapp $CORE
echo "${green}>>> Created the app '$CORE'${reset}"

mkdir $CORE/templates
echo "${green}>>> Created templates directory.${reset}"

mkdir $CORE/static
echo "${green}>>> Created static directory.${reset}"

# Go up a folder to run the next script
cd ..
./1_createIndex.sh