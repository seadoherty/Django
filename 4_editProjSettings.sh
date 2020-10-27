#!/bin/bash

cd $PROJECT_FOLDER/

# # migrate
# python manage.py makemigrations
# python manage.py migrate

# # createuser
# echo "${green}>>> Creating a 'admin' user ...${reset}"
# echo "${green}>>> The password must contain at least 8 characters.${reset}"
# echo "${green}>>> Password suggestions: djangoadmin${reset}"
# python manage.py createsuperuser --username='admin' --email=''

sed -i "/django.contrib.staticfiles/a\    '$CORE'," $PROJECT/settings.py
echo "${green}>>> Edited settings.py"

# Go up a folder to run the next script
cd ..
./5_editProjUrls.sh