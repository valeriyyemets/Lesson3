FROM php:5.6-apache

RUN apt-get update && apt-get  install -y \
        zlib1g-dev \
        zip

RUN docker-php-ext-install mysqli zip

CMD chown -R www-data:www-data /var/www/html

CMD apache2-foreground
