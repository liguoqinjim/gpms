package com.li.web.domain;

public class DeptWeb implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private String deptName;
	private String deptTel;
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDeptTel() {
		return deptTel;
	}
	public void setDeptTel(String deptTel) {
		this.deptTel = deptTel;
	}
}
