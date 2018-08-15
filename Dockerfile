
FROM anapsix/alpine-java

WORKDIR /code/

RUN apk update && apk add bash && apk add bash

RUN mkdir HelloWorldJava && cd HelloWorldJava && mkdir target

COPY /HelloWorldJava/target/*.jar /code/HelloWorldJava/target/

COPY check_if_correct.sh /code/



