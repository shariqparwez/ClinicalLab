package com.training.entity;

public class Member {
	private String userName;
	private String passWord;
	private String role;
	private String labCode;
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Member(String userName, String passWord, String role, String labCode) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
		this.labCode = labCode;
	}



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getLabCode() {
		return labCode;
	}

	public void setLabCode(String labCode) {
		this.labCode = labCode;
	}
	
}
