package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * SubjectType entity. @author MyEclipse Persistence Tools
 */

public class SubjectType implements java.io.Serializable {

	// Fields

	private Integer subjectTypeId;
	private String subjectTypeName;
	private Set subjects = new HashSet(0);

	// Constructors

	/** default constructor */
	public SubjectType() {
	}

	/** minimal constructor */
	public SubjectType(String subjectTypeName) {
		this.subjectTypeName = subjectTypeName;
	}

	/** full constructor */
	public SubjectType(String subjectTypeName, Set subjects) {
		this.subjectTypeName = subjectTypeName;
		this.subjects = subjects;
	}

	// Property accessors

	public Integer getSubjectTypeId() {
		return this.subjectTypeId;
	}

	public void setSubjectTypeId(Integer subjectTypeId) {
		this.subjectTypeId = subjectTypeId;
	}

	public String getSubjectTypeName() {
		return this.subjectTypeName;
	}

	public void setSubjectTypeName(String subjectTypeName) {
		this.subjectTypeName = subjectTypeName;
	}

	public Set getSubjects() {
		return this.subjects;
	}

	public void setSubjects(Set subjects) {
		this.subjects = subjects;
	}

}