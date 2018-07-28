package com.bytegriffin.weborz.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

	
	@RequestMapping("/user/list")
	public String userList(HttpServletRequest request) {
		return "user/user_list";
	}

}
