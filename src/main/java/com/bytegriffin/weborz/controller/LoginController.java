package com.bytegriffin.weborz.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {
	
	@GetMapping("/abc")
	String home(){
		return "abcss";
	}

}
