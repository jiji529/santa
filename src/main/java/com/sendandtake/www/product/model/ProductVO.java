package com.sendandtake.www.product.model;

public class ProductVO {
	
	private int pNo;
	private int cNo;
	private String pCode;
	private String pName;
	private String pInfo;
	private String pImg1;
	private String pImg2;
	private String pImg3;
	private String pDetail;
	private String releasePrice;
	
	//'최근거래가' -> selectProduct 메소드 실행 시 가져옴.
	private int recentPrice;
	
	//'즉시구매가' -> selectProduct 메소드 실행 시 가져옴.
	private int immediatePurchacePrice;
	
	//'즉시판매가' -> selectProduct 메소드 실행 시 가져옴.
	private int immediateSellingPrice;
	
	public int getImmediateSellingPrice() {
		return immediateSellingPrice;
	}
	public void setImmediateSellingPrice(int immediateSellingPrice) {
		this.immediateSellingPrice = immediateSellingPrice;
	}
	public int getImmediatePurchacePrice() {
		return immediatePurchacePrice;
	}
	public void setImmediatePurchacePrice(int immediatePurchacePrice) {
		this.immediatePurchacePrice = immediatePurchacePrice;
	}
	public int getRecentPrice() {
		return recentPrice;
	}
	public void setRecentPrice(int recentPrice) {
		this.recentPrice = recentPrice;
	}
	public String getReleasePrice() {
		return releasePrice;
	}
	public void setReleasePrice(String releasePrice) {
		this.releasePrice = releasePrice;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpInfo() {
		return pInfo;
	}
	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
	}
	public String getpImg1() {
		return pImg1;
	}
	public void setpImg1(String pImg1) {
		this.pImg1 = pImg1;
	}
	public String getpImg2() {
		return pImg2;
	}
	public void setpImg2(String pImg2) {
		this.pImg2 = pImg2;
	}
	public String getpImg3() {
		return pImg3;
	}
	public void setpImg3(String pImg3) {
		this.pImg3 = pImg3;
	}
	public String getpDetail() {
		return pDetail;
	}
	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	
}