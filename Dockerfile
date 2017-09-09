FROM php:7.0-apache
MAINTAINER Mochammad Nur Afandi (localanu@gmail.com)
ADD . /var/www/airflix
RUN apt update && apt install -y \
libxml2
RUN docker-php-ext-configure gd \
    --with-xml \
    --with-mbstring \
    --with-openssl \
    --with-tokenizer \
    --with-pdo 
#RUN docker-php-source extract && \
#    ./configure --prefix=/usr/local \
#    --with-xml \
#    --with-mbstring \
#    --with-openssl \
#    --with-tokenizer \
#    --with-pdo && \
#    make -j4 && \
#    make install \
#    && docker-php-source delete
