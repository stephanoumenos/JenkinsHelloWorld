#!/bin/bash

output=$(curl -v --silent localhost:8081 2>%1 | grep Session)

if [ "$output" != "" ]; then
    echo Tomcat is up and running!
else
    echo Tomcat isn\'t running, something went wrong
    exit 1
fi

echo Success, exiting...



