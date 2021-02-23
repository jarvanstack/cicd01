package com.cicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Jarvan
 * @version 1.0
 * @create 2021/2/23 10:00
 */
@RestController
public class CICDController {
    @GetMapping("/cicd")
    public String cicd() {
        return "welcome to Continuous Integration,Continuous Deployment";
    }
}
