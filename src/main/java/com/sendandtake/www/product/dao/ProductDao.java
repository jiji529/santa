package com.sendandtake.www.product.dao;

import java.util.List;

import com.sendandtake.www.product.model.ChartVO;
import com.sendandtake.www.product.model.ProductVO;

public interface ProductDao {

	List<ProductVO> selectProductList();
	
	ProductVO selectProduct(int pNo);

	List<ChartVO> selectXyList(int pNo);



}
