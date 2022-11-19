# Basic Commands
systemctl status docker
docker run hello-world

docker images
docker ps
docker ps -a

# Run a container
docker run --name web01 -d -p 9080:80 nginx
docker ps
docker inspect web01
curl http://172.17.0.2:80

ip addr show
docker ps

# Go to browser enter IP:HostPort

# Building an Image
mkdir images
cd images/
vim Dockerfile

# Paste below content
FROM ubuntu:latest AS BUILD_IMAGE
RUN apt update && apt install wget unzip -y
RUN wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip
RUN unzip 2128_tween_agency.zip && cd 2128_tween_agency && tar -czf tween.tgz * && mv tween.tgz /root/tween.tgz

FROM ubuntu:latest
LABEL "project"="Marketing"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install apache2 git wget -y
COPY --from=BUILD_IMAGE /root/tween.tgz /var/www/html/
RUN cd /var/www/html/ && tar xzf tween.tgz
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
VOLUME /var/log/apache2
WORKDIR /var/www/html/
EXPOSE 80

# Build Image
docker build -t tesimg .
docker images

# Run container from our Image
docker run -P -d tesimg
docker ps


docker ps
ip addr show
docker ps

# Go to browser enter IP:HostPort


# CLEAN UP
docker ps
docker stop web01 heuristic_hugle
docker ps -a
docker rm heuristic_hugle web01 competent_gates elastic_ramanujan relaxed_sammet
clear
docker images
docker rmi a54ee9c44b3b 6130c26b5558 057d51c0049c 825d55fb6340 12766a6745ee feb5d9fea6a5


