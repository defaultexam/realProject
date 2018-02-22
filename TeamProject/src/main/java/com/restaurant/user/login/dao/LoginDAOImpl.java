package com.restaurant.user.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.restaurant.user.login.vo.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	private SqlSession session;

	@Override
	public LoginVO userIdSelect(String userid) {
		return (LoginVO) session.selectOne("userIdSelect", userid);
	}

	@Override
	public LoginVO loginSelect(LoginVO lvo) {
		return (LoginVO) session.selectOne("loginSelect", lvo);
	}

	@Override
	public int loginHistoryInsert(LoginVO lvo) {
		return session.insert("loginHistoryInsert", lvo);
	}

	@Override
	public int loginHistoryUpdate(LoginVO lvo) {
		return session.update("loginHistoryUpdate", lvo);
	}

	@Override
	public LoginVO loginHistorySelect(String userid) {
		return (LoginVO) session.selectOne("loginHistorySelect", userid);
	}

}
