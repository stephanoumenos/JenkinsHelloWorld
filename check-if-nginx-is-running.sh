#!/bin/bash


output=$(curl -v --silent localhost:5000 2>%1 | grep 'Welcome to nginx!')

if [ "$output" != "" ]; then
    echo NGINX is up and running!
else
    echo NGINX isn\'t running, something went wrong
    exit 1
fi

echo Success, exiting...
