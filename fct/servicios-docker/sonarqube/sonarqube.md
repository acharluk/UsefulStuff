# SonarQube

## Paquetes necesarios

- docker
- docker-compose

## Instalación

La imagen por defecto de SonarQube viene con una base de datos básica, útil para poder probar SonarQube pero no escalable por lo que no es recomendable para entornos de producción.

Por ello, podemos utilizar SonarQube junto a una base de datos como PostgreSQL, lo cual es bastante sencillo realizarlo gracias a Docker.

## Docker Compose

Como se ha mencionado anteriormente, usaremos Docker para montar nuestro servidor de SonarQube. Concretamente haremos uso de la herramienta `docker-compose`.