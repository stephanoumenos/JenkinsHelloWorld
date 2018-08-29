package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.ResponseBody;


@RestController
public class HealthCheckController {

    private HealthCheck status = new HealthCheck();

    @RequestMapping(path = "/healthCheck", produces = "application/json")
    public @ResponseBody HealthCheck healthCheck () {

	status.incrementTimesVisited();
	return status;
	
    }
    
    
}

