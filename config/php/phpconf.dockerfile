FROM php:8.0-fpm

RUN docker-php-ext-install pdo pdo_mysql

RUN apt-get update && \
    apt-get install -y \
        libzip-dev \
        && docker-php-ext-install zip

RUN apt-get update && \
    apt-get install -y git

RUN apt-get update && \
    apt-get install -y unzip

RUN pecl install xdebug && docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
