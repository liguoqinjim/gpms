/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.li.struts.form.admin;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 06-08-2014
 * 
 * XDoclet definition:
 * @struts.form name="changeStatusForm"
 */
public class ChangeStatusForm extends ActionForm {
	private String status1;
	private String status2;
	private String status3;
	private String status4;
	public String getStatus1() {
		return status1;
	}
	public void setStatus1(String status1) {
		this.status1 = status1;
	}
	public String getStatus2() {
		return status2;
	}
	public void setStatus2(String status2) {
		this.status2 = status2;
	}
	public String getStatus3() {
		return status3;
	}
	public void setStatus3(String status3) {
		this.status3 = status3;
	}
	public String getStatus4() {
		return status4;
	}
	public void setStatus4(String status4) {
		this.status4 = status4;
	}
}