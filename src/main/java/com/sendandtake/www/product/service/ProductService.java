package com.sendandtake.www.product.service;

import java.util.List;

import com.sendandtake.www.product.model.ChartVO;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.ReviewVO;

public interface ProductService {


	ProductVO selectProduct(int pNo);
	
	List<ReviewVO> selectReviewList(int pNo);
	
	void insertReview(ReviewVO rvo);

	List<ChartVO> selectXyList(int pNo);



}
