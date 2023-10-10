package com.sendandtake.www.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendandtake.www.product.dao.ProductDao;
import com.sendandtake.www.product.dao.ReviewDao;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.ReviewVO;
import com.sendandtake.www.product.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	ReviewDao reviewDao;
	
	@Override
	public List<ProductVO> selectProductList() {
		
		return productDao.selectProductList();
	}

	@Override
	public List<ReviewVO> selectReviewList(int pNo) {

		return reviewDao.selectReviewList(pNo);
	}

	@Override
	public void insertReview(ReviewVO rvo) {
		reviewDao.insertReview(rvo);
		
	}

}
