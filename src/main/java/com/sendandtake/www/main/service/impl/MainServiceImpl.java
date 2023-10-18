package com.sendandtake.www.main.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendandtake.www.main.dao.MainDao;
import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.pager.Pager;
import com.sendandtake.www.main.service.MainService;
import com.sendandtake.www.product.dao.ProductDao;
import com.sendandtake.www.product.model.ProductVO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDao mainDao;

	@Autowired
	ProductDao productDao;
	
	@Override
	public List<MemberVO> selectMemberList() {

		return mainDao.selectList();
	}

	@Override
	public MemberVO selectLogin(MemberVO vo) {
		return mainDao.selectLogin(vo);
	}

	@Override
	public List<ProductVO> selectProductList() {
		
		return productDao.selectProductList();
	}

	@Override
	public List<ProductVO> selectProductList(Pager pager) {
		int total = productDao.total(pager);
		
		
		pager.setTotal(total);
		
		return productDao.selectProductList(pager);
	}

	

}
