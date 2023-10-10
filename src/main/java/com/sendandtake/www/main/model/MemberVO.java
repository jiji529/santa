package com.sendandtake.www.main.model;

import java.util.Date;

public class MemberVO {
	
	
	private int userNo;
	private String userEmail;
	private String userPwd;
	
	private String userNickname;
	private Date userCreate;
	private Date userDelete;
	private String mngYn;
	private String userYn;
	private String useYn;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public Date getUserCreate() {
		return userCreate;
	}
	public void setUserCreate(Date userCreate) {
		this.userCreate = userCreate;
	}
	public Date getUserDelete() {
		return userDelete;
	}
	public void setUserDelete(Date userDelete) {
		this.userDelete = userDelete;
	}
	public String getMngYn() {
		return mngYn;
	}
	public void setMngYn(String mngYn) {
		this.mngYn = mngYn;
	}
	public String getUserYn() {
		return userYn;
	}
	public void setUserYn(String userYn) {
		this.userYn = userYn;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
}