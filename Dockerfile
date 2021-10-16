FROM php:5.6-apache

RUN apt-get update && apt-get  install -y \
        zlib1g-dev \
        zip

RUN docker-php-ext-install mysqli zip

ADD wpinstall.sh /

RUN chmod +x /wpinstall.sh

CMD ["/wpinstall.sh"]
