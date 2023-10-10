package com.sendandtake.www.main.model;

public class BannerVO {
	int banId;
	String banTitle;
	int banActivated;
	java.util.Date banEndDate;
	int userNo;
	String banUrl;
	int fileNo;
	
	public int getBanId() {
		return banId;
	}
	public void setBanId(int banId) {
		this.banId = banId;
	}
	public String getBanTitle() {
		return banTitle;
	}
	public void setBanTitle(String banTitle) {
		this.banTitle = banTitle;
	}
	public int getBanActivated() {
		return banActivated;
	}
	public void setBanActivated(int banActivated) {
		this.banActivated = banActivated;
	}
	public java.util.Date getBanEndDate() {
		return banEndDate;
	}
	public void setBanEndDate(java.util.Date banEndDate) {
		this.banEndDate = banEndDate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getBanUrl() {
		return banUrl;
	}
	public void setBanUrl(String banUrl) {
		this.banUrl = banUrl;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	
}
