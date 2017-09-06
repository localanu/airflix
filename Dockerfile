FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
      curl \
      php5 \
        && apt-get clean
RUN mkdir ~/bin ~/nganu
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar ~/composer
RUN ~/composer create-project --prefer-dist airflix/airflix airflix.local ~/nganu
RUN rm -r ~/nganu
