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
	 * �α��� ȭ�� �����ֱ� ���� �޼���
	 **************************************************************/
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String login() {
		logger.info("register get ȣ�� ����");
		return "user/registerpage";
	}
}