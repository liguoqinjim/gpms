package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private Integer id;
	private Clazz clazz;
	private String studentId;
	private String studentName;
	private String studentPwd;
	private String studentTel;
	private String studentEmail;
	private Set subjects = new HashSet(0);
	private Set volunteers = new HashSet(0);
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(Clazz clazz, Integer id,String studentId, String studentName,
			String studentPwd, String studentTel,
			String studentEmail) {
		this.clazz = clazz;
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentPwd = studentPwd;
		this.studentTel = studentTel;
		this.studentEmail = studentEmail;
	}

	/** full constructor */
	public Student(Clazz clazz, Integer id,String studentId, String studentName,
			String studentPwd, String studentTel,
			String studentEmail, Set subjects, Set volunteers,
			Set comments) {
		this.clazz = clazz;
		this.id = id;
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentPwd = studentPwd;
		this.studentTel = studentTel;
		this.studentEmail = studentEmail;
		this.subjects = subjects;
		this.volunteers = volunteers;
		this.comments = comments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Clazz getClazz() {
		return this.clazz;
	}

	public void setClazz(Clazz clazz) {
		this.clazz = clazz;
	}

	public String getStudentId() {
		return this.studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return this.studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentPwd() {
		return this.studentPwd;
	}

	public void setStudentPwd(String studentPwd) {
		this.studentPwd = studentPwd;
	}

	public String getStudentTel() {
		return this.studentTel;
	}

	public void setStudentTel(String studentTel) {
		this.studentTel = studentTel;
	}

	public String getStudentEmail() {
		return this.studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public Set getSubjects() {
		return this.subjects;
	}

	public void setSubjects(Set subjects) {
		this.subjects = subjects;
	}

	public Set getVolunteers() {
		return this.volunteers;
	}

	public void setVolunteers(Set volunteers) {
		this.volunteers = volunteers;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}