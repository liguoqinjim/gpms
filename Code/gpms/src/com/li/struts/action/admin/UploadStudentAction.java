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
import com.li.service.inters.ClazzServiceInter;
import com.li.service.inters.DeptServiceInter;
import com.li.service.inters.MajorServiceInter;
import com.li.service.inters.StudentServiceInter;
import com.li.web.domain.StudentWeb;

/** 
 * MyEclipse Struts
 * Creation date: 06-04-2014
 * 
 * XDoclet definition:
 * @struts.action
 */
public class UploadStudentAction extends Action {
	@Resource
	private StudentServiceInter studentServiceInter;
	@Resource
	private ClazzServiceInter clazzServiceInter;
	public void setStudentServiceInter(StudentServiceInter studentServiceInter) {
		this.studentServiceInter = studentServiceInter;
	}
	public void setClazzServiceInter(ClazzServiceInter clazzServiceInter) {
		this.clazzServiceInter = clazzServiceInter;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<StudentWeb> studentWebs = (List<StudentWeb>) request.getSession().getAttribute("students");
		for(StudentWeb studentWeb : studentWebs){
			Student student = new Student();
//			Student student2 = new Student(clazz, studentId, studentName, studentPwd, studentTel, studentEmail)
			student.setClazz(clazzServiceInter.findClazzByName(studentWeb.getStudentClazz()));
			student.setStudentId(studentWeb.getStudentId());
			student.setStudentName(studentWeb.getStudentName());
			student.setStudentPwd("123456");
			student.setStudentTel(studentWeb.getStudentTel());
			student.setStudentEmail(studentWeb.getStudentEmail());
			studentServiceInter.add(student);
		}
		request.getSession().removeAttribute("students");
		return mapping.findForward("adminMain");
	}
}