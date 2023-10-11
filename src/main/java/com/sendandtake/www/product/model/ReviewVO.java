package com.sendandtake.www.product.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class ReviewVO {
	
	private int rvNo;
	private int pNo;
	private int userNo;
	private Date rvDate;
	private MultipartFile rvImg;
	private String rvContent;
	private String rvImgPath;
	private String rvNewImg;
	private String rvExtn;
	private String userEmail;

	public MultipartFile getRvImg() {
		return rvImg;
	}
	public void setRvImg(MultipartFile rvImg) {
		this.rvImg = rvImg;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getRvNo() {
		return rvNo;
	}
	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}
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
	public Date getRvDate() {
		return rvDate;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public String getRvImgPath() {
		return rvImgPath;
	}
	public void setRvImgPath(String rvImgPath) {
		this.rvImgPath = rvImgPath;
	}
	public String getRvNewImg() {
		return rvNewImg;
	}
	public void setRvNewImg(String rvNewImg) {
		this.rvNewImg = rvNewImg;
	}
	public String getRvExtn() {
		return rvExtn;
	}
	public void setRvExtn(String rvExtn) {
		this.rvExtn = rvExtn;
	}
	
	
	
}