# Django Bash Starter

These bash scripts provide a starter setup, good for if you want to spin something basic up to test out Django

As the script runs it provides a running update in the console, in a nutshell:
* Installs Django
* Creates a basic Django project with a user given project name
* Creates the templates and static directories
* Creates urls.py, index.html and 0_base.css starter files
* Updates the project settings.py and urls.py files as well as the app's views.py file
* Starts the server

To run: 
1.  Start your venv ([how to here](https://docs.python.org/3/library/venv.html))<br/>
(make sure these script files are executable, if not, here's [how](https://www.andrewcbancroft.com/blog/musings/make-bash-script-executable/))<br/>
1.  Type `source 0_variables.sh {{project name}}`
1.  Replace **{{project name}}** with whatever you want ~ `source 0_variables.sh awesomesauce`<br/>