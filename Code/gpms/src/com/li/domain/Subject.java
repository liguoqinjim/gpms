package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Subject entity. @author MyEclipse Persistence Tools
 */

public class Subject implements java.io.Serializable {

	// Fields

	private Integer subjectId;
	private Student student;
	private Teacher teacher;
	private Major major;
	private SubjectType subjectType;
	private String subjectName;
	private String subjectGrade;
	private String subjectInfo;
	private Integer subjectYes;
	private String subjectSuggest;
	private Set volunteers = new HashSet(0);

	// Constructors

	/** default constructor */
	public Subject() {
	}

	/** minimal constructor */
	public Subject(Teacher teacher, Major major, SubjectType subjectType,
			String subjectName, String subjectGrade,
			String subjectInfo) {
		this.teacher = teacher;
		this.major = major;
		this.subjectType = subjectType;
		this.subjectName = subjectName;
		this.subjectGrade = subjectGrade;
		this.subjectInfo = subjectInfo;
	}

	/** full constructor */
	public Subject(Student student, Integer subjectId,Teacher teacher, Major major,
			SubjectType subjectType, String subjectName,
			String subjectGrade, String subjectInfo,
			Integer subjectYes, String subjectSuggest,
			Set volunteers) {
		this.student = student;
		this.subjectId = subjectId;
		this.teacher = teacher;
		this.major = major;
		this.subjectType = subjectType;
		this.subjectName = subjectName;
		this.subjectGrade = subjectGrade;
		this.subjectInfo = subjectInfo;
		this.subjectYes = subjectYes;
		this.subjectSuggest = subjectSuggest;
		this.volunteers = volunteers;
	}

	// Property accessors

	public Integer getSubjectId() {
		return this.subjectId;
	}

	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Major getMajor() {
		return this.major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public SubjectType getSubjectType() {
		return this.subjectType;
	}

	public void setSubjectType(SubjectType subjectType) {
		this.subjectType = subjectType;
	}

	public String getSubjectName() {
		return this.subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getSubjectGrade() {
		return this.subjectGrade;
	}

	public void setSubjectGrade(String subjectGrade) {
		this.subjectGrade = subjectGrade;
	}

	public String getSubjectInfo() {
		return this.subjectInfo;
	}

	public void setSubjectInfo(String subjectInfo) {
		this.subjectInfo = subjectInfo;
	}

	public Integer getSubjectYes() {
		return this.subjectYes;
	}

	public void setSubjectYes(Integer subjectYes) {
		this.subjectYes = subjectYes;
	}

	public String getSubjectSuggest() {
		return this.subjectSuggest;
	}

	public void setSubjectSuggest(String subjectSuggest) {
		this.subjectSuggest = subjectSuggest;
	}

	public Set getVolunteers() {
		return this.volunteers;
	}

	public void setVolunteers(Set volunteers) {
		this.volunteers = volunteers;
	}

}