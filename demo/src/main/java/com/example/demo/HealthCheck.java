
package com.example.demo;
import java.util.Date;

public class HealthCheck {
    private int timesVisited;
    private final long startTimeLong = System.currentTimeMillis();
    private final String greetingString = "Server running!";

    public void HealthCheck() {
	timesVisited = 0;
    }

    public int getTimesVisited() {
	return timesVisited;
    }

    public void incrementTimesVisited() {
	timesVisited++;
    }

    public String getGreetingString() {
	return greetingString;
    }

    public int getSecondsRunning() {
	long nowTimeMillis = System.currentTimeMillis();
	return (int) ((nowTimeMillis - startTimeLong)/1000);
    }

}
