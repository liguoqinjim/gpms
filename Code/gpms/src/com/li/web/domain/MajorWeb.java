package com.li.web.domain;

public class MajorWeb implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private String majorName;
	private String majorDept;
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getMajorDept() {
		return majorDept;
	}
	public void setMajorDept(String majorDept) {
		this.majorDept = majorDept;
	}
	
}
