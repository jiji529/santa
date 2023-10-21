package com.sendandtake.www.product.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendandtake.www.product.dao.DealDao;
import com.sendandtake.www.product.model.DealVO;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.service.DealService;

@Service
public class DealServiceImpl implements DealService {

	@Autowired
	DealDao dealDao;
	
	@Override
	public DealVO imdSellPrice(ProductVO pvo) {

		return dealDao.imdSellPrice(pvo);
	}
	
	



}
