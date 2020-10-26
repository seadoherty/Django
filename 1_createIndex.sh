#!/bin/bash

cd $PROJECT_FOLDER/

cat << EOF > $CORE/templates/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{title}}</title>
    {% load static %}
    <link rel="stylesheet" href="{% static '0_base.css' %}">
</head>
<body>
  <main>
    <h1>Hi</h1>
  </main>
</body>
</html>
EOF
echo "${green}>>> Created index.html.${reset}"

cat << EOF > $CORE/static/0_base.css
*{
  margin: 0;
  padding: 0;
}

body{
  background-color: grey;
}
EOF
echo "${green}>>> Created index.html.${reset}"

# Go up a folder to run the next script
cd ..
./2_editProjSettings.sh