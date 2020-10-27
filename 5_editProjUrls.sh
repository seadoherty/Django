#!/bin/bash

cd $PROJECT_FOLDER/

sed -i "s/django.urls import path/&,include/" $PROJECT/urls.py
sed -i "/urlpatterns = \[/a\    path('', include('$CORE.urls'))," $PROJECT/urls.py
echo "${green}>>> Edited $PROJECT/urls.py"

# Go up a folder to run the next script
cd ..
./6_editAppUrls.sh