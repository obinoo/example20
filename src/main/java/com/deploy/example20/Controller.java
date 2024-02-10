package com.deploy.example20;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {


    @GetMapping("/greetings")
    public String greet(){
       return "Hello World";
    }
}
