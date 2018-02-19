package com.restaurant.user.register.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/register")
public class RegisterController {
	Logger logger = Logger.getLogger(RegisterController.class);

	/**************************************************************
	 * 로그인 화면 보여주기 위한 메서드
	 **************************************************************/
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String login() {
		logger.info("register get 호출 성공");
		return "user/registerpage";
	}
}