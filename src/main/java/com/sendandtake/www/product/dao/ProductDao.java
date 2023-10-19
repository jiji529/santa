package com.sendandtake.www.product.dao;

import java.util.List;

import com.sendandtake.www.main.pager.Pager;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.SaleProductVO;

public interface ProductDao {

	List<ProductVO> selectProductList();
	
	ProductVO selectProduct(int pNo);

	List<SaleProductVO> selectXyList(int pNo);
	
	List<SaleProductVO> selectPriceList(int pNo);

	List<ProductVO> selectProductList(Pager pager);

	int total(Pager pager);



}
