package com.bytegriffin.weborz.controller;

import org.springframework.stereotype.Controller;

@Controller
public class ErrorController {

    ///@RequestMapping("error404")
    public String error404(){
        return "404";
    }

   // @RequestMapping("error500")
    public String error500(){
        return "500";
    }

}