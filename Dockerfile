FROM php:7.0-apache
MAINTAINER Mochammad Nur Afandi (localanu@gmail.com)
ADD . /var/www/airflix
RUN apt update && apt install -y \
libxml2
RUN docker-php-ext-install pdo mbstring tokenizer xml
