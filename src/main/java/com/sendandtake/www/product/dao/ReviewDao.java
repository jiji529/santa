package com.sendandtake.www.product.dao;

import java.util.List;

import com.sendandtake.www.product.model.ReviewVO;

public interface ReviewDao {

	List<ReviewVO> selectReviewList(int pNo);

	void insertReview(ReviewVO rvo);

}
