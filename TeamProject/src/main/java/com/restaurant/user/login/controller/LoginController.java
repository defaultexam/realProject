package com.restaurant.user.login.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
	Logger logger = Logger.getLogger(LoginController.class);

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String login() {
		logger.info("login get 호출 성공");
		return "user/loginpage";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String loginCheck() {
		logger.info("login POST 호출 성공");
		return "user/loginpage";
	}
}