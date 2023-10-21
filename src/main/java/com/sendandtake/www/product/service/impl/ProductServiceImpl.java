package com.sendandtake.www.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendandtake.www.product.dao.ProductDao;
import com.sendandtake.www.product.dao.ReviewDao;
import com.sendandtake.www.product.model.SaleProductVO;
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
	public ProductVO selectProduct(int pNo) {
		
		return productDao.selectProduct(pNo);
	}

	@Override
	public List<ReviewVO> selectReviewList(int pNo) {

		return reviewDao.selectReviewList(pNo);
	}

	@Override
	public void insertReview(ReviewVO rvo) {
		reviewDao.insertReview(rvo);
		
	}

	@Override
	public List<SaleProductVO> selectXyList(int pNo) {

		return productDao.selectXyList(pNo);
	}

	@Override
	public ReviewVO selectReview(String rvNewImg) {

		return reviewDao.selectReview(rvNewImg);
	}

	@Override
	public List<SaleProductVO> selectPriceList(int pNo) {

		return productDao.selectPriceList(pNo);
	}

	@Override
	public List<SaleProductVO> selectSaleProduct(int pNo) {

		return productDao.selectSaleProduct(pNo);
	}

	@Override
	public int selectLikeCnt(int pNo) {
		return productDao.selectLikeCnt(pNo);
	}





}
