package com.example.demo.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Copyright 2021 goclouds. All Rights Reserved.
 *
 * @Author LiJin
 * @Date 2022/3/19
 * @Description
 */
@RestController
@RequestMapping("/hello")
public class HelloControllerer {


    @GetMapping("/jenkins")
    public String hello()
    {
        return "hello maven";
    }
}
