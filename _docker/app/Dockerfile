FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    apt-utils \
    libpq-dev \
    libpng-dev \
    libzip-dev \
    zip unzip \
    libbz2-dev \
    libcurl4-openssl-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libonig-dev \
    libssl-dev \
    git \
    && docker-php-ext-install \
    bz2 \
    curl \
    fileinfo \
    mbstring \
    pdo_mysql \
    bcmath \
    gd \
    zip \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


COPY ./_docker/app/php.ini /usr/local/etc/php/conf.d/php.ini

#Install composer
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- \
    --filename=composer \
    --install-dir=/usr/local/bin

WORKDIR /var/www
