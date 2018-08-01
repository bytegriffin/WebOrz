package com.bytegriffin.weborz.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bytegriffin.weborz.entity.User;
import com.bytegriffin.weborz.service.UserService;

@RestController
@EnableAutoConfiguration
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/user/{id}")
	public String userList(HttpServletRequest request) {
		User user = userService.getUserById("1");
		System.out.println(user.getLoginName()+"====");
		return "user/user_list";
	}

}
