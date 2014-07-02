package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Major;
import com.li.domain.Teacher;
import com.li.service.inters.TeacherServiceInter;

public class TeacherService extends BasicService implements TeacherServiceInter{

	@Override
	public Teacher login(String teacher_id, String teacher_pwd) {
		// TODO Auto-generated method stub
		Object[] parameters = {teacher_id,teacher_pwd};
		
		StringBuffer hql = new StringBuffer();
		hql.append("from Teacher teacher ");
		hql.append("where teacher.teacherId = ? ");
		hql.append("and teacherPwd = ?");
		
		Teacher teacher = (Teacher) uniqueQuery(hql.toString(), parameters);
		return teacher;
	}
	
	@Override
	public Teacher resetPwd(java.io.Serializable id){
		Teacher teacher = (Teacher) findById(Teacher.class, id);
		teacher.setTeacherPwd("123456");
		update(teacher);
		
		return teacher;
	}

	@Override
	public List<Major> loadMajors(int id) {
		// TODO Auto-generated method stub
		Teacher teacher = (Teacher) findById(Teacher.class, id);
		int deptId = teacher.getDept().getDeptId();
		
		StringBuffer hql = new StringBuffer();
		hql.append("from Major  m where ");
		hql.append("m.dept.deptId = " + deptId);
		
		List<Major> majors = executeQuery(hql.toString(), null);
		
		return majors;
	}

	@Override
	public long hasTeacher(String teacherId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Teacher ");
		hql.append("where teacherId = ?");
		
		Object[] parameters = {teacherId};
		
		long i  = (Long) this.uniqueQuery(hql.toString(), parameters);
		
		return i;
	}

	@Override
	public boolean changePwd(Teacher teacher, String oldPwd, String newPwd) {
		// TODO Auto-generated method stub
		
		boolean success = false;
		System.out.println("TeacherService::changePwd::oldPwd=" + oldPwd + "  teacher.teacherPwd=" + teacher.getTeacherPwd());
		if (teacher.getTeacherPwd().equals(oldPwd)) {
			success = true;
//			student.setStudentPwd(newPwd);
			teacher.setTeacherPwd(newPwd);
			update(teacher);
		}
		return success;
	}

	@Override
	public List<Teacher> loadTeachersByDept(int deptId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Teacher teacher ");
		hql.append("where teacher.dept.deptId = ?");
		
		Object[] parameters = {deptId};
		
		List<Teacher> teachers = executeQuery(hql.toString(), parameters);
		
		return teachers;
	}
	
	
}
