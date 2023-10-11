package com.sendandtake.www.main.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendandtake.www.main.dao.MemberDao;
import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao memberdao;
	
	//회원가입
	@Override
	public void join(MemberVO mvo) {
		memberdao.join(mvo);
	}

	//회원정보 불러오기
	@Override
	public MemberVO mvo(int userNo) {
		return memberdao.mvo(userNo);
	}

	//회원정보 수정
	@Override
	public void update(MemberVO mvo) {
		memberdao.update(mvo);
	}

	//회원 탈퇴
	@Override
	public void delete(int userNo) {
		memberdao.delete(userNo);
	}

}
