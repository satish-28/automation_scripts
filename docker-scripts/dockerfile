FROM ubuntu

MAINTAINER satish

RUN apt-get update && apt-get upgrade -y
RUN apt-get install httpd -y

COPY index.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80
