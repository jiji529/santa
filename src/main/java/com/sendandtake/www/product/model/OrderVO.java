package com.sendandtake.www.product.model;

import java.util.Date;

public class OrderVO {
	
	private int saleNo;
	private int userNo;
	private int adrNo;
	private String orderTrackingNo;
	private Date orderStart;
	private Date orderEnd;
	private String orderNote;
	
	private double realPrice;

	public int getSaleNo() {
		return saleNo;
	}

	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getAdrNo() {
		return adrNo;
	}

	public void setAdrNo(int adrNo) {
		this.adrNo = adrNo;
	}

	public String getOrderTrackingNo() {
		return orderTrackingNo;
	}

	public void setOrderTrackingNo(String orderTrackingNo) {
		this.orderTrackingNo = orderTrackingNo;
	}

	public Date getOrderStart() {
		return orderStart;
	}

	public void setOrderStart(Date orderStart) {
		this.orderStart = orderStart;
	}

	public Date getOrderEnd() {
		return orderEnd;
	}

	public void setOrderEnd(Date orderEnd) {
		this.orderEnd = orderEnd;
	}

	public String getOrderNote() {
		return orderNote;
	}

	public void setOrderNote(String orderNote) {
		this.orderNote = orderNote;
	}

	public double getRealPrice() {
		return realPrice;
	}

	public void setRealPrice(double realPrice) {
		this.realPrice = realPrice;
	}
	
}