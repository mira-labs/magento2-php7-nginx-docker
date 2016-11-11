FROM ubuntu:16.04

MAINTAINER RadicalRad <rad@mira-digital.com>

ENV DEBIAN_FRONTEND noninteractive

#Install nginx and php
RUN apt-get update
RUN apt-get install -y curl 
RUN apt-get install -y nginx 
RUN apt-get install -y php 
RUN apt-get install -y php-fpm 
RUN apt-get install -y php-curl 
RUN apt-get install -y php-mysql 
RUN apt-get install -y php-mcrypt
RUN apt-get install -y php-mbstring 
RUN apt-get install -y php-gd 
RUN apt-get install -y php-intl
RUN apt-get install -y php-zip 
RUN apt-get install -y php-xml 
RUN apt-get install -y supervisor

#Install phalcon
RUN curl -s https://packagecloud.io/install/repositories/phalcon/nightly/script.deb.sh | bash
RUN apt-get install php7.0-phalcon

#Create web folder
RUN mkdir -p /var/www/html /var/run/php /var/log/supervisor

#Add supervisord.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Share web folder
VOLUME ["/var/www/html"]

#Update nginx config
COPY default /etc/nginx/sites-available/default

#Set port
EXPOSE 80 443

#Start supervisor
CMD ["/usr/bin/supervisord"]
