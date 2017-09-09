FROM ubuntu:14.04
MAINTAINER Mochammad Nur Afandi (localanu@gmail.com)
ADD . /var/www/airflix
FROM php:7.0-apache
RUN apt update && apt install -y \
libxml2
RUN docker-php-ext-configure gd --with-xml-dir=/usr/bin --with-jpeg-dir=/usr/bin
RUN docker-php-ext-install pdo mbstring tokenizer xml
