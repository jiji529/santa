package com.sendandtake.www.product.model;

import java.util.Date;

public class ChartVO {
	
	private String grade;
	private Date saleEnd;
	private int salePrice;
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Date getSaleEnd() {
		return saleEnd;
	}
	public void setSaleEnd(Date saleEnd) {
		this.saleEnd = saleEnd;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}


}
