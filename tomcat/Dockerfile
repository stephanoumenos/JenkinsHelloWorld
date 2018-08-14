

FROM tomcat

MAINTAINER stephanoumenos: 0.1

RUN rm -rf /usr/local/tomcat/webapps/*
RUN rm -rf /usr/local/tomcat/work/*

COPY server.xml /usr/local/tomcat/conf/server.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY ROOT /usr/local/tomcat/webapps/ROOT

EXPOSE 8000
