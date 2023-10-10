package com.sendandtake.www.main.dao;

import java.util.List;

import com.sendandtake.www.main.model.MemberVO;

public interface MainDao {

	List<MemberVO> selectList();

	MemberVO selectLogin(MemberVO vo);

}
