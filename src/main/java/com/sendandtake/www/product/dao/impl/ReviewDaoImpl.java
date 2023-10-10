package com.sendandtake.www.product.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sendandtake.www.product.dao.ReviewDao;
import com.sendandtake.www.product.model.ReviewVO;


@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<ReviewVO> selectReviewList(int pNo) {

		return sql.selectList("review.list", pNo);
	}

	@Override
	public void insertReview(ReviewVO rvo) {
		sql.insert("review.add", rvo);
		
	}
	

}
