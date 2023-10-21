package com.sendandtake.www.product.model;

public class DealVO {
	
	private int pNo;
	private int userNo;
	private String grade;
	private int desiredPrice;
	private String purYn;
	
	private int imdSellprice;
	private int imdbuyprice;
	
	private String type;
	
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getDesiredPrice() {
		return desiredPrice;
	}
	public void setDesiredPrice(int desiredPrice) {
		this.desiredPrice = desiredPrice;
	}
	public String getPurYn() {
		return purYn;
	}
	public void setPurYn(String purYn) {
		this.purYn = purYn;
	}
	public int getImdSellprice() {
		return imdSellprice;
	}
	public void setImdSellprice(int imdSellprice) {
		this.imdSellprice = imdSellprice;
	}
	public int getImdbuyprice() {
		return imdbuyprice;
	}
	public void setImdbuyprice(int imdbuyprice) {
		this.imdbuyprice = imdbuyprice;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}