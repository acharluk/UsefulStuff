#!/bin/bash

function __mysql {
    echo "Instalando MySQL"
    yum install mysql-server -y
    service mysqld start
    echo "Configurando MySQL"
    echo 'CREATE USER usuario@localhost IDENTIFIED BY "usuario";
CREATE DATABASE `wpdatabase`;
GRANT ALL PRIVILEGES ON `wpdatabase`.* TO usuario@localhost;
FLUSH PRIVILEGES;' > creaWPdb.sql
    mysql --user="root" --password="" < creaWPdb.sql
    rm creaWPdb.sql

}

function __apache2 {
    echo "Instalando Apache2"
    yum install httpd24 php72 php72-gd php72-pear php72-mysqlnd -y
    echo "Configurando Apache2"
    sed -i '151s/None/All/' /etc/httpd/conf/httpd.conf
}

function __wordpress {
    echo "Descargando y configurando WordPress"
    wget https://wordpress.org/latest.tar.gz
    tar -xzf latest.tar.gz
    echo "Configurando WordPress"
    sed -e 's/database_name_here/wpdatabase/' \
        -e 's/username_here/usuario/'         \
        -e 's/password_here/usuario/'         \
        wordpress/wp-config-sample.php > wordpress/wp-config.php
    cp -r wordpress/* /var/www/html/

    chown -R apache:apache /var/www
    chmod 2775 /var/www
    find /var/www -type d -exec sudo chmod 2775 {} \;
    find /var/www -type f -exec sudo chmod 0664 {} \;
    sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 100M/' /etc/php.ini
    sed -i 's/post_max_size = 8M/post_max_size = 128M/' /etc/php.ini

    echo "Reiniciando Apache2"
    service httpd restart
}

echo "Preparando la maquina virtual"
__mysql
__apache2
__wordpress
echo -e "\033[0;32mLa maquina ya esta lista! Ya puedes acceder a WordPress utilizando la IP publica\033[0m"

