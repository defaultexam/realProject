package com.restaurant.user.login.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.restaurant.user.login.service.LoginService;
import com.restaurant.user.login.vo.LoginVO;

@Controller
@RequestMapping("/login")
public class LoginController {
	Logger logger = Logger.getLogger(LoginController.class);
	private LoginService loginService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String login() {
		logger.info("login get ȣ�� ����");
		return "loginpage";
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public ModelAndView loginProc(@ModelAttribute("LoginVO") LoginVO lvo, HttpSession session,
			HttpServletRequest request) {
		logger.info("login POST ȣ�� ����");
		ModelAndView mav = new ModelAndView();
		String userId = lvo.getId();
		int resultData = loginService.loginHistoryInsert(lvo);
		if (resultData == 1) {
			mav.addObject("errCode", 1);
			mav.setViewName("/login");
			return mav;
		} else {
			LoginVO vo = loginService.loginHistorySelect(userId);
			logger.info("�ֱ� �α��� �Ͻ� : " + new SimpleDateFormat("YYYY-MM-dd").format(vo.getLastSuccessedLogin()));
			logger.info("retry: " + vo.getRetry());
			/* �α��� �õ�Ƚ���� 5ȸ�� ������ 30�ʰ� �α��� ��� */
			if (vo.getRetry() >= 5) {
				if (new Date().getTime() - vo.getLastFailedLogin() < 30000) {
					mav.addObject("errCode", 6); /* 30�ʵ��� �α������ �˸� */
					mav.setViewName("/login");
					return mav;
				} else {
					vo.setRetry(0);
					vo.setLastFailedLogin(0);
					loginService.loginHistoryUpdate(vo);
				}
			}

			LoginVO loginCheckResult = loginService.loginSelect(lvo.getId(), lvo.getPassword());

			/*
			 * �α����� Ʋ����, �α��� �õ�Ƚ���� 1���� ��Ű��, �α��� ���� �ð��� DB�� ������Ʈ �Ѵ�.
			 */
			if (loginCheckResult == null) {
				vo.setRetry(vo.getRetry() + 1);
				vo.setLastFailedLogin(new Date().getTime());
				loginService.loginHistoryUpdate(vo);

				mav.addObject("retry", vo.getRetry());
				mav.addObject("errCode", 1);

				mav.setViewName("");
				return mav;

			}
			/*
			 * �α����� �����ϸ�, �α��� �õ�Ƚ���� 0�� reset, ���������� �α��� ���� �ð� 0���� reset, ������ Ŭ���̾�Ʈ IP�� DB��
			 * ������Ʈ,�α��� �����ð� DB�� ������Ʈ
			 */
			else {
				vo.setRetry(0);
				vo.setLastFailedLogin(0);
				vo.setLastSuccessedLogin(new Date().getTime());
				vo.setClientIP(request.getRemoteAddr());
				loginService.loginHistoryUpdate(vo);
				session.setAttribute("login", loginCheckResult);
				mav.setViewName("index");
				return mav;
			}

		}

	}
}