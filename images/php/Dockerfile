FROM phpdockerio/php74-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php-memcached php7.4-mysql php7.4-pgsql php-redis php7.4-sqlite3 php-xdebug php7.4-bcmath php7.4-bz2 php7.4-dba php7.4-enchant php7.4-gd php-gearman php7.4-gmp php-igbinary php-imagick php7.4-imap php7.4-interbase php7.4-intl php7.4-ldap php-mongodb php-msgpack php7.4-odbc php7.4-phpdbg php7.4-pspell php-raphf php7.4-snmp php7.4-soap php-ssh2 php7.4-sybase php-tideways php7.4-tidy php7.4-xmlrpc php7.4-xsl php-yaml php-zmq  \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* \
    && echo "zend_extension=/usr/lib/php/20190902/xdebug.so" > /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_handler=dbgp" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_port=9000" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_autostart=on" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.remote_connect_back=0" >> /etc/php/7.4/mods-available/xdebug.ini \
    && echo "xdebug.idekey=docker" >> /etc/php/7.4/mods-available/xdebug.ini

# Install git
RUN apt-get update \
    && apt-get -y install git \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
