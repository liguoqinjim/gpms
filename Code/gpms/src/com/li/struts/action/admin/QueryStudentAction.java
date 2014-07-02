/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.li.struts.action.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.li.domain.Student;
import com.li.service.inters.StudentServiceInter;
import com.li.struts.form.admin.QueryStudentForm;
import com.sun.mail.util.QEncoderStream;

/** 
 * MyEclipse Struts
 * Creation date: 06-05-2014
 * 
 * XDoclet definition:
 * @struts.action
 */
public class QueryStudentAction extends Action {
	@Resource
	private StudentServiceInter studentServiceInter;
	public void setStudentServiceInter(StudentServiceInter studentServiceInter) {
		this.studentServiceInter = studentServiceInter;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		QueryStudentForm queryStudentForm = (QueryStudentForm)form;
		List<Student> students = null;
		if(!queryStudentForm.getStudentId().equals("")){
			students = studentServiceInter.getStudentByStudentId(queryStudentForm.getStudentId());
		}
		else if(!queryStudentForm.getStudentName().equals("")){
			students = studentServiceInter.getStudentByStudentName(queryStudentForm.getStudentName());
		}
		else if(!queryStudentForm.getStudentMajorId().equals("0")){
			students = studentServiceInter.getStudentByMajor(queryStudentForm.getStudentMajorId());
		}
		else if(!queryStudentForm.getStudentClazzName().equals("")){
			students = studentServiceInter.getStudentByClazz(queryStudentForm.getStudentClazzName());
		}
		request.getSession().setAttribute("students", students);
		
		//ActionForward actionForward = new ActionForward();
//		actionForward.setPath("/deanUrl.do?flag=deanCheckQuestion");
		ActionForward	 actionForward = new ActionForward();
		actionForward.setPath("/adminUrl.do?flag=adminQueryStudent");
		
		return actionForward;
	}
}