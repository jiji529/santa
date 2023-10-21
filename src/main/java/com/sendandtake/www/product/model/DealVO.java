package com.sendandtake.www.product.model;

public class DealVO {
	
	private int pNo;
	private int userNo;
	private String grade;
	private int desiredPrice;
	private String purYn;
	
	private int imdBuyPrice;
	private int imdSellPrice;
	
	private String type;
	
	private int saleTerm;
	
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
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getImdBuyPrice() {
		return imdBuyPrice;
	}
	public void setImdBuyPrice(int imdBuyPrice) {
		this.imdBuyPrice = imdBuyPrice;
	}
	public int getImdSellPrice() {
		return imdSellPrice;
	}
	public void setImdSellPrice(int imdSellPrice) {
		this.imdSellPrice = imdSellPrice;
	}
	public int getSaleTerm() {
		return saleTerm;
	}
	public void setSaleTerm(int saleTerm) {
		this.saleTerm = saleTerm;
	}
	
}