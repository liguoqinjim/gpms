package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Student;

public interface StudentServiceInter extends BasicServiceInter{

	public Student login(String student_id,String student_pwd);
	
	public Student resetPwd(java.io.Serializable id);
	
	public void setInfo(Student newStudent);
	
	public boolean changePwd(Student student,String oldPwd,String newPwd);
	
	public long hasStudent(String studentId);
	
	/**
	 * 通过学号得到学生
	 * @param studentId
	 * @return
	 */
	public List<Student> getStudentByStudentId(String studentId);
	
	public List<Student> getStudentByStudentName(String studentName);
	
	public List<Student> getStudentByMajor(String studentMajorId);
	
	public List<Student> getStudentByClazz(String studentClazzName);
}
