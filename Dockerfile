FROM ubuntu

MAINTAINER konaing


RUN apt-get update && apt-get -y install apache2 && apt-get clean


ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2/apache2.pid
ENV APACHE_RUN_DIR /var/www/html/
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

RUN service apache2 start
