package com.li.service.imp;

import java.io.Serializable;
import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Student;
import com.li.service.inters.StudentServiceInter;

public class StudentService extends BasicService implements StudentServiceInter {

	@Override
	public Student login(String student_id, String student_pwd) {
		// TODO Auto-generated method stub
		Object[] parameters = { student_id, student_pwd };

		StringBuffer hql = new StringBuffer();
		hql.append("from Student student ");
		hql.append("where student.studentId = ? ");
		hql.append(" and student.studentPwd = ?");

		Student student = (Student) uniqueQuery(hql.toString(),
				parameters);

		return student;
	}

	@Override
	public Student resetPwd(Serializable id) {
		// TODO Auto-generated method stub
		Student student = (Student) findById(Student.class, id);
		student.setStudentPwd("123456");
		update(student);

		return student;
	}

	@Override
	public void setInfo(Student newStudent) {
		// TODO Auto-generated method stub
		update(newStudent);
	}

	@Override
	public boolean changePwd(Student student, String oldPwd, String newPwd) {
		// TODO Auto-generated method stub
		boolean success = false;
		if (student.getStudentPwd().equals(oldPwd)) {
			success = true;
			student.setStudentPwd(newPwd);
			update(student);
		}
		return success;
	}

	@Override
	public long hasStudent(String studentId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Student ");
		hql.append("where studentId = ?");

		Object[] parameters = { studentId };

		long i = (Long) this.uniqueQuery(hql.toString(), parameters);

		return i;
	}

	@Override
	public List<Student> getStudentByStudentId(String studentId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Student student ");
		hql.append("where student.studentId = ?");
		
		Object[] parameters = {studentId};
		
		List<Student> students = executeQuery(hql.toString(), parameters);
		
		return students;
	}

	@Override
	public List<Student> getStudentByStudentName(String studentName) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Student student ");
		hql.append("where student.studentName like ?");
		
		String name = "%" + studentName + "%";
		Object[] parameters = {name};
		
		List<Student> students = executeQuery(hql.toString(), parameters);
		
		return students;
	}

	@Override
	public List<Student> getStudentByMajor(String studentMajorId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Student student ");
		hql.append("where student.clazz.major.majorId = ?");
		
		int i = Integer.parseInt(studentMajorId);
		System.out.println("StudentService::getStudentByMajor::i=" + i);
		Object[] parameters = {i};
		
		List<Student> students = executeQuery(hql.toString(), parameters);
		System.out.println("StudentService::getStudentByMajor::students.size=" + students.size());
		
		return students;
	}

	@Override
	public List<Student> getStudentByClazz(String studentClazzName) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Student student ");
		hql.append("where student.clazz.clazzName = ?");
		
		Object[] parameters = {studentClazzName};
		
		List<Student> students = executeQuery(hql.toString(), parameters);
		
		return students;
	}

}
