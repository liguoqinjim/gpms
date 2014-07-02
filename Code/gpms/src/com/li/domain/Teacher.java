package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private Integer id;
	private Major major;
	private Dept dept;
	private String teacherId;
	private String teacherName;
	private String teacherPwd;
	private Integer teacherGrade;
	private String teacherTel;
	private String teacherEmail;
	private Set teacherGroups = new HashSet(0);
	private Set subjects = new HashSet(0);
	private Set commentsForCommentMutualTeacher = new HashSet(0);
	private Set commentsForCommentReplyTeacher = new HashSet(0);
	private Set commentsForCommentSelfTeacher = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** minimal constructor */
	public Teacher(Major major, Dept dept, String teacherId,
			String teacherName, String teacherPwd,
			Integer teacherGrade, String teacherTel,
			String teacherEmail) {
		this.major = major;
		this.dept = dept;
		this.teacherId = teacherId;
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
		this.teacherGrade = teacherGrade;
		this.teacherTel = teacherTel;
		this.teacherEmail = teacherEmail;
	}

	/** full constructor */
	public Teacher(Major major, Dept dept, Integer id,String teacherId,
			String teacherName, String teacherPwd,
			Integer teacherGrade, String teacherTel,
			String teacherEmail, Set teacherGroups, Set subjects,
			Set commentsForCommentMutualTeacher,
			Set commentsForCommentReplyTeacher,
			Set commentsForCommentSelfTeacher) {
		this.major = major;
		this.dept = dept;
		this.id = id;
		this.teacherId = teacherId;
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
		this.teacherGrade = teacherGrade;
		this.teacherTel = teacherTel;
		this.teacherEmail = teacherEmail;
		this.teacherGroups = teacherGroups;
		this.subjects = subjects;
		this.commentsForCommentMutualTeacher = commentsForCommentMutualTeacher;
		this.commentsForCommentReplyTeacher = commentsForCommentReplyTeacher;
		this.commentsForCommentSelfTeacher = commentsForCommentSelfTeacher;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Major getMajor() {
		return this.major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getTeacherId() {
		return this.teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	public String getTeacherName() {
		return this.teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherPwd() {
		return this.teacherPwd;
	}

	public void setTeacherPwd(String teacherPwd) {
		this.teacherPwd = teacherPwd;
	}

	public Integer getTeacherGrade() {
		return this.teacherGrade;
	}

	public void setTeacherGrade(Integer teacherGrade) {
		this.teacherGrade = teacherGrade;
	}

	public String getTeacherTel() {
		return this.teacherTel;
	}

	public void setTeacherTel(String teacherTel) {
		this.teacherTel = teacherTel;
	}

	public String getTeacherEmail() {
		return this.teacherEmail;
	}

	public void setTeacherEmail(String teacherEmail) {
		this.teacherEmail = teacherEmail;
	}

	public Set getTeacherGroups() {
		return this.teacherGroups;
	}

	public void setTeacherGroups(Set teacherGroups) {
		this.teacherGroups = teacherGroups;
	}

	public Set getSubjects() {
		return this.subjects;
	}

	public void setSubjects(Set subjects) {
		this.subjects = subjects;
	}

	public Set getCommentsForCommentMutualTeacher() {
		return this.commentsForCommentMutualTeacher;
	}

	public void setCommentsForCommentMutualTeacher(
			Set commentsForCommentMutualTeacher) {
		this.commentsForCommentMutualTeacher = commentsForCommentMutualTeacher;
	}

	public Set getCommentsForCommentReplyTeacher() {
		return this.commentsForCommentReplyTeacher;
	}

	public void setCommentsForCommentReplyTeacher(
			Set commentsForCommentReplyTeacher) {
		this.commentsForCommentReplyTeacher = commentsForCommentReplyTeacher;
	}

	public Set getCommentsForCommentSelfTeacher() {
		return this.commentsForCommentSelfTeacher;
	}

	public void setCommentsForCommentSelfTeacher(
			Set commentsForCommentSelfTeacher) {
		this.commentsForCommentSelfTeacher = commentsForCommentSelfTeacher;
	}

}