# P17
Script aprovisionamiento vagrant.

Este script provee a la maquina creada con el box Ubuntu/Trusty64.
Contiene una pila LAMP y el Adminer para gestionarla desde WebApp.
Además, hay un ejemplo de script con getopts.
#Necessitem més codi Markdown
Para iniciarlo:

vagrant up, dentro de la carpeta con los archivos.

vagrant ssh

//Iniciar servicios y comprobar su estado.

/etc/init.d/apache2 start
/etc/init.d/apache2 status

/etc/init.d/mysql start
/etc/init.d/mysql status
