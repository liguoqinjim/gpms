package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Clazz entity. @author MyEclipse Persistence Tools
 */

public class Clazz implements java.io.Serializable {

	// Fields

	private Integer clazzId;
	private Major major;
	private String clazzName;
	private String clazzGrade;
	private Set students = new HashSet(0);

	// Constructors

	/** default constructor */
	public Clazz() {
	}

	/** minimal constructor */
	public Clazz(Major major, String clazzName, String clazzGrade) {
		this.major = major;
		this.clazzName = clazzName;
		this.clazzGrade = clazzGrade;
	}

	/** full constructor */
	public Clazz(Major major, String clazzName, String clazzGrade,
			Set students) {
		this.major = major;
		this.clazzName = clazzName;
		this.clazzGrade = clazzGrade;
		this.students = students;
	}

	// Property accessors

	public Integer getClazzId() {
		return this.clazzId;
	}

	public void setClazzId(Integer clazzId) {
		this.clazzId = clazzId;
	}

	public Major getMajor() {
		return this.major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public String getClazzName() {
		return this.clazzName;
	}

	public void setClazzName(String clazzName) {
		this.clazzName = clazzName;
	}

	public String getClazzGrade() {
		return this.clazzGrade;
	}

	public void setClazzGrade(String clazzGrade) {
		this.clazzGrade = clazzGrade;
	}

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

}