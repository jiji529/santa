package com.sendandtake.www.main.service;

import java.util.List;

import com.sendandtake.www.main.model.MemberVO;

public interface MainService {

	List<MemberVO> selectList();

	MemberVO selectLogin(MemberVO vo);

}
