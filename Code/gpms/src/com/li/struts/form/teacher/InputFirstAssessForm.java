/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.li.struts.form.teacher;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 06-09-2014
 * 
 * XDoclet definition:
 * @struts.form name="inputFirstAssessForm"
 */
public class InputFirstAssessForm extends ActionForm {
	
	private String studentId;
	private String studentScore;
	private String studentComment;
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getStudentScore() {
		return studentScore;
	}
	public void setStudentScore(String studentScore) {
		this.studentScore = studentScore;
	}
	public String getStudentComment() {
		return studentComment;
	}
	public void setStudentComment(String studentComment) {
		this.studentComment = studentComment;
	}
}