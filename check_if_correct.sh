#!/bin/bash


program_output=$(java -cp HelloWorldJava/target/HelloWorldJava-1.0-SNAPSHOT.jar com.stephanoumenos.helloworld.App)


if [ "$program_output" == "Hello World!" ]; then
    echo Program executed correctly
else
    echo Error, program didn\'t execute correctly
    exit 1
fi

echo Exiting...
