# Multistage Dockerfile

FROM openjdk:8 AS BUILD_IMAGE
RUN apt update && apt install maven -y
RUN git clone -b vp-docker https://github.com/imranvisualpath/vprofile-repo.git
RUN cd vprofile-repo && mvn install

FROM tomcat:8-jre11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=BUILD_IMAGE vprofile-repo/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]


cd git clone -b docker https://github.com/devopshydclub/vprofile-project.git
cd vprofile-project/Docker-files/app/
ls
cd multistage/
ls
cat Dockerfile
docker build -t appimg:v1 .
docker images
