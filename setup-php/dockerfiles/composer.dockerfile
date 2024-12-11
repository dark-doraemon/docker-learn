FROM composer:latest

#directory where our code will later be
WORKDIR /var/www/html 


ENTRYPOINT ["composer", "--ignore-platform-reqs"]
#we use custom image to use ENTRYPOINT
#run composer command with flag --ignore-....

