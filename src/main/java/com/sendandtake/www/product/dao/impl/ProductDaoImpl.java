package com.sendandtake.www.product.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sendandtake.www.product.dao.ProductDao;
import com.sendandtake.www.product.model.ProductVO;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<ProductVO> selectProductList() {

		return sql.selectList("product.list");
	}
	
	@Override
	public ProductVO selectProduct(int pNo) {
		
		return sql.selectOne("product.product", pNo);
		
	}

}
