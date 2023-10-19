package com.sendandtake.www.main.dao;

import com.sendandtake.www.main.model.MemberVO;

public interface MemberDao {

	void join(MemberVO mvo);

	MemberVO mvo(int userNo);

	void update(MemberVO mvo);

	void delete(int userNo);

	int emailCheck(String email);

}
