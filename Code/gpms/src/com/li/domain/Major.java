package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Major entity. @author MyEclipse Persistence Tools
 */

public class Major implements java.io.Serializable {

	// Fields

	private Integer majorId;
	private Dept dept;
	private String majorName;
	private Set teachers = new HashSet(0);
	private Set subjects = new HashSet(0);
	private Set clazzs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Major() {
	}

	/** minimal constructor */
	public Major(Dept dept, String majorName) {
		this.dept = dept;
		this.majorName = majorName;
	}

	/** full constructor */
	public Major(Dept dept, String majorName, Set teachers, Set subjects,
			Set clazzs) {
		this.dept = dept;
		this.majorName = majorName;
		this.teachers = teachers;
		this.subjects = subjects;
		this.clazzs = clazzs;
	}

	// Property accessors

	public Integer getMajorId() {
		return this.majorId;
	}

	public void setMajorId(Integer majorId) {
		this.majorId = majorId;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getMajorName() {
		return this.majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public Set getTeachers() {
		return this.teachers;
	}

	public void setTeachers(Set teachers) {
		this.teachers = teachers;
	}

	public Set getSubjects() {
		return this.subjects;
	}

	public void setSubjects(Set subjects) {
		this.subjects = subjects;
	}

	public Set getClazzs() {
		return this.clazzs;
	}

	public void setClazzs(Set clazzs) {
		this.clazzs = clazzs;
	}

}