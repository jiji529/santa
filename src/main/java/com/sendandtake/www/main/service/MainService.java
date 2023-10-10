package com.sendandtake.www.main.service;

import java.util.List;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.product.model.ProductVO;

public interface MainService {

	List<ProductVO> selectProductList();
	
	List<MemberVO> selectMemberList();

	MemberVO selectLogin(MemberVO vo);

}
