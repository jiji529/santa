package com.sendandtake.www.main.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sendandtake.www.main.dao.MainDao;
import com.sendandtake.www.main.model.MemberVO;

@Repository
public class MainDaoImpl implements MainDao{

	@Autowired
	SqlSession sql;
	
	@Override
	public List<MemberVO> selectList() {

		return sql.selectList("member.list");
	}

	@Override
	public MemberVO selectLogin(MemberVO vo) {

		return sql.selectOne("member.login", vo);
	}


}
