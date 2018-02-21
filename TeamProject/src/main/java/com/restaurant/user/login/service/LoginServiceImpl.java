package com.restaurant.user.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.restaurant.common.util.OpenCrypt;
import com.restaurant.user.login.dao.LoginDAO;
import com.restaurant.user.login.vo.LoginVO;
import com.restaurant.user.member.dao.MemberDAO;
import com.restaurant.user.member.vo.MemberSecurity;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDao;
	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public LoginVO userIdSelect(String userId) {
		return loginDao.userIdSelect(userId);
	}
	@Override
	public LoginVO loginSelect(String userId, String userPw) {
		LoginVO vo = null;
		MemberSecurity sec = memberDao.securitySelect(userId);
		if (sec != null) {
			userPw = new String(OpenCrypt.getSHA256(userPw, sec.getSalt()));
			LoginVO lvo = new LoginVO();
			lvo.setId(userId);
			lvo.setPassword(userPw);
			vo = loginDao.loginSelect(lvo);
		}
		return vo;
	}
	@Override
	public int loginHistoryInsert(LoginVO lvo) {
		int result;
		if (userIdSelect(lvo.getId()) == null) {
			result = 1;
		} else {
			LoginVO vo = loginHistorySelect(lvo.getId());
			if (vo == null) {
				loginDao.loginHistoryInsert(lvo);
			}
			result = 2;
		}
		return result;
	}

	@Override
	public int loginHistoryUpdate(LoginVO lvo) {
		return loginDao.loginHistoryUpdate(lvo);
	}

	@Override
	public LoginVO loginHistorySelect(String userId) {
		return loginDao.loginHistorySelect(userId);
	}

}
