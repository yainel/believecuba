# Web Believecuba construida con Docker Compose

La instalación contiene las siguientes imágenes de docker:

* PHP 7.1
* Apache 2.4
* MySQL 5.7

## Instalación

Clonar el repositorio, entrar al directorio clonado con el nombre de `believecuba` y ejecutar el comando `docker-compose up -d`. Estos son los pasos:

```consola
git clone https://github.com/yainel/believecuba.git
cd believecuba/
docker-compose up -d
```

El servidor web está configurado con el puerto 80, así que se puede acceder vía `http://localhost`.


## Configuración [opcional]

#### Módulos de Apache

Por defecto los siguientes módulos están habilitados

* rewrite
* headers

> Si desea habilitar más modulos, agréguelos al archivo `./bin/webserver/Dockerfile`.
> Después de agregar un nuevo módulo es necesario reconstruir la imagen de docker con el comando `docker-compose build` y reiniciar los contenedores.

#### Conectarse vía SSH

Puede conectarse via ssh al servidor web usando el comando `docker exec`:

```shell
docker exec -it yga-webserver /bin/bash
```

#### Extensiones

Por defecto las siguientes extensiones de php vienen instaladas.

* mysqli
* mbstring
* zip
* intl
* mcrypt
* curl
* json
* iconv
* xml
* xmlrpc
* gd

> Si desea habilitar más extensiones, agréguelas al archivo `./bin/webserver/Dockerfile`.
> Después de agregar una nueva extension es necesario reconstruir la imagen de docker con el comando `docker-compose build` y reiniciar los contenedores.
