package com.sendandtake.www.main.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendandtake.www.main.dao.MainDao;
import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.service.MainService;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDao mainDao;
	
	@Override
	public List<MemberVO> selectList() {

		return mainDao.selectList();
	}

	@Override
	public MemberVO selectLogin(MemberVO vo) {
		return mainDao.selectLogin(vo);
	}

	

}
