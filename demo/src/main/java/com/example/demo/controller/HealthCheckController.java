package com.example.demo;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {

    private final String greetingString = "Server running!";
    private int timesVisited = 0;
    private final long startTimeLong = System.currentTimeMillis();

    @RequestMapping(path = "/greeting")
    public String greeting () {
	timesVisited++;

	String returnString = "";
	returnString += greetingString;
	returnString += "... Times visited: ";
	returnString += Integer.toString(timesVisited);
        returnString += " Time running... " + Integer.toString(getSecondsRunning()) + " seconds";

	return returnString;
    }
    
    private int getSecondsRunning() {
	long nowTimeMillis = System.currentTimeMillis();
	return (int) ((nowTimeMillis - startTimeLong)/1000);
    }
}

