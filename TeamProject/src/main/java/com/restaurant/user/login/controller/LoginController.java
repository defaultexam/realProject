package com.restaurant.user.login.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
	Logger logger = Logger.getLogger(LoginController.class);

	/**************************************************************
	 * 로그인 화면 보여주기 위한 메서드
	 **************************************************************/
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String login() {
		logger.info("login get 호출 성공");
		return "user/loginpage";
	}
}