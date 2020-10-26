#!/bin/bash

cd $PROJECT_FOLDER/

cat << EOF > $CORE/urls.py
from django.urls import path     
from . import views

urlpatterns = [
    path('', views.index),
]
EOF
echo "${green}>>> Created $CORE/urls.py.${reset}"

# Go up a folder to run the next script
cd ..
./5_editAppViews.sh