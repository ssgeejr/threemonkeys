FROM tomcat:7-jre8
# FROM tomcat:7.0.105-jdk8-openjdk-slim * Fails with some security error

LABEL maintainer="ioexcept@gmail.com"
LABEL version="1.1"

RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR /usr/local/tomcat/webapps/
RUN mkdir threemonkeys

COPY index.htm threemonkeys/index.htm
COPY hiddenfields.jsp threemonkeys/hiddenfields.jsp
ADD server.xml /usr/local/tomcat/conf/server.xml

RUN rm -rf /usr/local/tomcat/webapps/ROOT*