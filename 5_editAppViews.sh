#!/bin/bash

cd $PROJECT_FOLDER/

# exclude line 2 by views.py
sed -i "2d" $CORE/views.py
sed -i "2c\from django.http import HttpResponse\n\n\n#def home(request):\n    #return HttpResponse('<h1>Welcome to the Django.</h1>')\n\n" $CORE/views.py
echo "def index(request):" >> $CORE/views.py
echo "    context = {'title': 'First Page'}" >> $CORE/views.py
echo "    return render(request, 'index.html', context)" >> $CORE/views.py

echo "${green}>>> Updated $CORE/views.py.${reset}"

# Go up a folder to run the next script
cd ..
./9_startServer.sh