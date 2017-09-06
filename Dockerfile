FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
        php5 \
        && apt-get clean
RUN mkdir ~/bin
RUN curl -s http://getcomposer.org/installer | php && \
    mv composer.phar ~/bin/composer
ENV PATH ~/bin 
RUN mkdir ~/nganu
RUN composer create-project --prefer-dist airflix/airflix airflix.local ~/nganu
RUN rm -r ~/nganu
RUN rm -r ~/bin
