FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
      git \ 
        && apt-get clean
RUN mkdir \var\www\airflix\
RUN cd \var\www\airfilx
RUN  git clone https://github.com/wells/airflix.git .
