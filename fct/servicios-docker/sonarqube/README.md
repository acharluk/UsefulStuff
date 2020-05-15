# SonarQube

## Enlaces

- [docker-compose.yml](https://raw.githubusercontent.com/acharluk/UsefulStuff/master/fct/servicios-docker/sonarqube/docker-compose.yml)

- [postgresql.Dockerfile](https://raw.githubusercontent.com/acharluk/UsefulStuff/master/fct/servicios-docker/sonarqube/postgresql.Dockerfile)

- [sonarqube.Dockerfile](https://raw.githubusercontent.com/acharluk/UsefulStuff/master/fct/servicios-docker/sonarqube/sonarqube.Dockerfile)

- [acl-pginit.sql](https://raw.githubusercontent.com/acharluk/UsefulStuff/master/fct/servicios-docker/sonarqube/acl-pginit.sql)

## Requisitos

Para poder montar el servidor de SonarQube es necesario todo lo que aparece en la siguiente lista:

- Paquetes:
  - docker
  - docker-compose

- Descargar los archivos que aparecen en la sección [Enlaces](#Enlaces) y guardarlos en la misma carpeta

## Instalación

La imagen por defecto de SonarQube viene con una base de datos básica, útil para poder probar SonarQube pero no escalable por lo que no es recomendable para entornos de producción.

Por ello, podemos utilizar SonarQube junto a una base de datos como PostgreSQL, lo cual es bastante sencillo realizarlo gracias a Docker.

## Docker Compose

Como se ha mencionado anteriormente, usaremos Docker para montar nuestro servidor de SonarQube. Concretamente haremos uso de la herramienta `docker-compose`.

Para crear todo el sistema, debemos acceder a la carpeta donde hemos descargado los archivos mencionados en los [Requisitos](#Requisitos).
A continuación, ejecutamos el siguiente comando `docker-compose up`.

Veremos como tanto el servicio de SonarQube como el de PostgreSQL comienzan a funcionar. Cuando se hayan iniciado, veremos un mensaje de SonarQube de que podemos ya acceder desde el navegador. Por defecto la ruta es `http://localhost:9000`.

> Nota: Debemos cambiar `localhost` por la ip del equipo donde se está Docker si no queremos acceder desde la misma máquina.