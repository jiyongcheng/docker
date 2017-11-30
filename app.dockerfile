FROM php:7.1-fpm

RUN \
    apt-get update && \
    apt-get install -y \
    curl git imagemagick libcurl4-gnutls-dev libmagickcore-dev libmagickwand-dev libmcrypt-dev libpng-dev \
    libssh2-1-dev libssl-dev libxml2-dev wget

RUN docker-php-ext-install bcmath curl gd mbstring mcrypt pcntl pdo pdo_mysql soap sockets xml zip

# Install pecl packages
RUN pecl install imagick-3.4.3 mongodb-1.2.10 redis-3.1.3 ssh2-1.1.2 && \
    docker-php-ext-enable imagick mongodb redis ssh2