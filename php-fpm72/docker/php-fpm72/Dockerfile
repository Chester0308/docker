FROM php:7.2-fpm

ADD ./settings/php.ini /usr/local/etc/php/conf.d/php.ini


RUN apt-get update \
    && apt-get -y install make wget gcc g++ rsync \
    && apt-get -y install openssh-server \
    && apt-get -y install cron


# mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql


# redis
RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis


# composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer


# cron
#COPY ./settings/cron.d/sample /etc/cron.d/sample


# memcached
#RUN apt-get update \
#  && apt-get install -y libmemcached-dev zlib1g-dev \
#  && pecl install memcached-2.2.0 \
#  && docker-php-ext-enable memcached


# mcrypt
#RUN apt-get update && apt-get -y install libmcrypt-dev
#RUN docker-php-ext-install mcrypt


# timecop
#RUN pecl install timecop-beta 

#logs
#RUN touch \
#    /var/log/sample.log
