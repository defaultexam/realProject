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
		logger.info("login get ȣ�� ����");
		return "user/loginpage";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String loginCheck() {
		logger.info("login POST ȣ�� ����");
		return "user/loginpage";
	}
}