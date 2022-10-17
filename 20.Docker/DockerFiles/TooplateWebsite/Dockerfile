FROM ubuntu:latest
LABEL "Project"="LilFasion"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
WORKDIR /var/www/html/
#COPY lilfasion.tar.gz /var/www/html/
ADD lilfasion.tar.gz /var/www/html/
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
VOLUME /var/log/apache2
EXPOSE 80
