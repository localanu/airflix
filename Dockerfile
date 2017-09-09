FROM ubuntu:14.04
MAINTAINER Mochammad Nur Afandi (localanu@gmail.com)
ADD . /var/www/airflix
FROM php:7.0-apache
RUN apt update && apt install -y \
libxml2
FROM php:7.0-apache
RUN docker-php-source extract && \
    ./configure --prefix=/usr/local \
    --with-xml \
    --with-mbstring \
    --with-openssl \
    --with-tokenizer \
    --with-pdo && \
    make -j4 && \
    make install \
    && docker-php-source delete
