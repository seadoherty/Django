#!/bin/bash

cd $PROJECT_FOLDER/

sleep 2
echo "${green}>>> Done${reset}"
sleep 2

# run
python manage.py runserver