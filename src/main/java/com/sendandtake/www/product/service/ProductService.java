package com.sendandtake.www.product.service;

import java.util.List;

import com.sendandtake.www.product.model.SaleProductVO;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.ReviewVO;

public interface ProductService {


	ProductVO selectProduct(int pNo);
	
	List<ReviewVO> selectReviewList(int pNo);
	
	void insertReview(ReviewVO rvo);

	List<SaleProductVO> selectXyList(int pNo);

	ReviewVO selectReview(String rvNewImg);

	List<SaleProductVO> selectPriceList(int pNo);

	List<SaleProductVO> selectSaleProduct(int pNo);

	int selectLikeCnt(int pNo);


}
