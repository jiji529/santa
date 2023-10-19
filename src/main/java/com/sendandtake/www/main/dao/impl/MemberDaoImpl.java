package com.sendandtake.www.main.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sendandtake.www.main.dao.MemberDao;
import com.sendandtake.www.main.model.MemberVO;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void join(MemberVO mvo) {
		sql.insert("member.join", mvo);
	}

	@Override
	public MemberVO mvo(int userNo) {
		return sql.selectOne("member.mvo", userNo);
	}

	@Override
	public void update(MemberVO mvo) {
		sql.update ("member.update", mvo);
	}

	@Override
	public void delete(int userNo) {
		sql.delete("member.delete", userNo);
	}

	@Override
	public int emailCheck(String email) {
		return sql.selectOne("member.emailCheck",email);
	}

}
