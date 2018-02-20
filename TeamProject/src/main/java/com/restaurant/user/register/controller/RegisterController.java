package com.restaurant.user.register.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.restaurant.user.member.vo.MemberVO;

@Controller
@RequestMapping("/register")
public class RegisterController {
	Logger logger = Logger.getLogger(RegisterController.class);

	/* �ּ�/register (GET �޼ҵ�) */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String login() {
		logger.info("register get ȣ�� ����");
		return "user/registerpage";
	}
	/* �ּ�/register (POST �޼ҵ�) */
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ModelAndView memberInsert(@ModelAttribute MemberVO mvo) {
		logger.info("register post ��Ŀ� ���� �޼��� ȣ�� ����");
	/*	ModelAndView mav = new ModelAndView();
		int result = 0;
		result = memberService.memberInsert(mvo);
		switch (result) {
		case 1:
			mav.addObject("errCode", 1); // userId already exist
			mav.setViewName("member/join");
			break;
		case 3:
			mav.addObject("errCode", 3);
			mav.setViewName("member/join_success"); // success to add new member; move to login page
			break;
		default:
			mav.addObject("errCode", 2); // failed to add new member
			mav.setViewName("member/join");
			break;
		}
		return mav;*/
		return null;
	}
}