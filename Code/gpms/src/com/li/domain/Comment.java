package com.li.domain;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer commentId;
	private Student student;
	private Teacher teacherByCommentSelfTeacher;
	private Teacher teacherByCommentReplyTeacher;
	private Teacher teacherByCommentMutualTeacher;
	private String commentSelfOpinion;
	private Integer commentSelfScore;
	private String commentMutualOpinion;
	private Integer commentMutualScore;
	private String commentReplyOpinion;
	private Integer commentReplyScroe;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** minimal constructor */
	public Comment(Student student) {
		this.student = student;
	}

	/** full constructor */
	public Comment(Student student, Teacher teacherByCommentSelfTeacher,
			Teacher teacherByCommentReplyTeacher,
			Teacher teacherByCommentMutualTeacher,
			String commentSelfOpinion, Integer commentSelfScore,
			String commentMutualOpinion,
			Integer commentMutualScore, String commentReplyOpinion,
			Integer commentReplyScroe) {
		this.student = student;
		this.teacherByCommentSelfTeacher = teacherByCommentSelfTeacher;
		this.teacherByCommentReplyTeacher = teacherByCommentReplyTeacher;
		this.teacherByCommentMutualTeacher = teacherByCommentMutualTeacher;
		this.commentSelfOpinion = commentSelfOpinion;
		this.commentSelfScore = commentSelfScore;
		this.commentMutualOpinion = commentMutualOpinion;
		this.commentMutualScore = commentMutualScore;
		this.commentReplyOpinion = commentReplyOpinion;
		this.commentReplyScroe = commentReplyScroe;
	}

	// Property accessors

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Teacher getTeacherByCommentSelfTeacher() {
		return this.teacherByCommentSelfTeacher;
	}

	public void setTeacherByCommentSelfTeacher(
			Teacher teacherByCommentSelfTeacher) {
		this.teacherByCommentSelfTeacher = teacherByCommentSelfTeacher;
	}

	public Teacher getTeacherByCommentReplyTeacher() {
		return this.teacherByCommentReplyTeacher;
	}

	public void setTeacherByCommentReplyTeacher(
			Teacher teacherByCommentReplyTeacher) {
		this.teacherByCommentReplyTeacher = teacherByCommentReplyTeacher;
	}

	public Teacher getTeacherByCommentMutualTeacher() {
		return this.teacherByCommentMutualTeacher;
	}

	public void setTeacherByCommentMutualTeacher(
			Teacher teacherByCommentMutualTeacher) {
		this.teacherByCommentMutualTeacher = teacherByCommentMutualTeacher;
	}

	public String getCommentSelfOpinion() {
		return this.commentSelfOpinion;
	}

	public void setCommentSelfOpinion(String commentSelfOpinion) {
		this.commentSelfOpinion = commentSelfOpinion;
	}

	public Integer getCommentSelfScore() {
		return this.commentSelfScore;
	}

	public void setCommentSelfScore(Integer commentSelfScore) {
		this.commentSelfScore = commentSelfScore;
	}

	public String getCommentMutualOpinion() {
		return this.commentMutualOpinion;
	}

	public void setCommentMutualOpinion(String commentMutualOpinion) {
		this.commentMutualOpinion = commentMutualOpinion;
	}

	public Integer getCommentMutualScore() {
		return this.commentMutualScore;
	}

	public void setCommentMutualScore(Integer commentMutualScore) {
		this.commentMutualScore = commentMutualScore;
	}

	public String getCommentReplyOpinion() {
		return this.commentReplyOpinion;
	}

	public void setCommentReplyOpinion(String commentReplyOpinion) {
		this.commentReplyOpinion = commentReplyOpinion;
	}

	public Integer getCommentReplyScroe() {
		return this.commentReplyScroe;
	}

	public void setCommentReplyScroe(Integer commentReplyScroe) {
		this.commentReplyScroe = commentReplyScroe;
	}

}