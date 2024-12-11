FROM php

WORKDIR /var/www/html

#install extra tool
RUN docker-php-ext-install pdo pdo_mysql 

#if dockerfile don't have CMD or ENTRYPOINT at the end
#then the command or entrypoint of the 'base image' will be used if it has any
#so that in this dockerfile it will use CND or ENTRYPOINT of base image