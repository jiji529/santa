package com.sendandtake.www.product.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sendandtake.www.product.dao.DealDao;
import com.sendandtake.www.product.model.DealVO;
import com.sendandtake.www.product.model.ProductVO;

@Repository
public class DealDaoImpl implements DealDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public DealVO imdSellPrice(ProductVO pvo) {
		
		return sql.selectOne("deal.imdSellPrice", pvo);
	}

}
