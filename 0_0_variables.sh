#!/bin/bash

# Shell script for create a simple Django project.
# Type the following command, you can change the project name.
# source envNstack.sh myproject

# Set Colors
export yellow=`tput setaf 3`
export green=`tput setaf 2`
export reset=`tput sgr0`

export PROJECT_FOLDER=${1-myproject}
export PROJECT="${PROJECT_FOLDER}_proj"
export CORE="${PROJECT_FOLDER}_app"

./0_1_setProj.sh