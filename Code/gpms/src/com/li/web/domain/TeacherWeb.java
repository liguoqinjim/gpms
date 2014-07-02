package com.li.web.domain;

public class TeacherWeb implements java.io.Serializable{

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	<th>#</th>
//	<th>工号</th>
//	<th>姓名</th>
//	<th>学院</th>
//	<th>职务</th>
//	<th>电话</th>
//	<th>Email</th>
	private String teacherId;
	private String teacherName;
	private String teacherGrade;
	private String teacherDept;
	private String teacherMajor;
	private String teacherTel;
	private String teacherEmail;
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getTeacherGrade() {
		return teacherGrade;
	}
	public void setTeacherGrade(String teacherGrade) {
		this.teacherGrade = teacherGrade;
	}
	public String getTeacherDept() {
		return teacherDept;
	}
	public void setTeacherDept(String teacherDept) {
		this.teacherDept = teacherDept;
	}
	public String getTeacherTel() {
		return teacherTel;
	}
	public void setTeacherTel(String teacherTel) {
		this.teacherTel = teacherTel;
	}
	public String getTeacherEmail() {
		return teacherEmail;
	}
	public void setTeacherEmail(String teacherEmail) {
		this.teacherEmail = teacherEmail;
	}
	public String getTeacherMajor() {
		return teacherMajor;
	}
	public void setTeacherMajor(String teacherMajor) {
		this.teacherMajor = teacherMajor;
	}
}
