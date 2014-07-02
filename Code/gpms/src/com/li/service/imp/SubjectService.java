package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Student;
import com.li.domain.Subject;
import com.li.domain.Teacher;
import com.li.service.inters.SubjectServiceInter;

public class SubjectService extends BasicService implements SubjectServiceInter{


	@Override
	public List<Subject> loadSubjectsNotYesByMajor(int teacher_id) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Subject subject where subject.major.majorId = ? ");
		hql.append("and subject.subjectYes = 0 ");
		
		Teacher teacher = (Teacher) findById(Teacher.class, teacher_id);
		System.out.println("SubjectService::loadSubjectsNotYesByMajor::major=" + teacher.getMajor().getMajorId());
		Object[] params = {teacher.getMajor().getMajorId()};
		
		List<Subject> subjects = executeQuery(hql.toString(), params);
		System.out.println("SubjectService::loadSubjectsNotYesByMajor::subjects.size=" + subjects.size());
		return subjects;
	}

	@Override
	public void accessSubject(int subjectId) {
		// TODO Auto-generated method stub
		Subject subject = (Subject) findById(Subject.class, subjectId);
		
		subject.setSubjectYes(1);
		
		update(subject);
	}

	@Override
	public void notAccessSubject(int subjectId, String subjectSuggest) {
		// TODO Auto-generated method stub
		Subject subject = (Subject) findById(Subject.class, subjectId);
		
		subject.setSubjectYes(2);//不通过的题目设为2
		subject.setSubjectSuggest(subjectSuggest);
		
		update(subject);
	}

	@Override
	public int getSubjectsNumber() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from subject");
		
		int i = (Integer) uniqueQuery(hql.toString(), null);
		
		return i;
	}

	@Override
	public void setStudent(Subject subject, Student student) {
		// TODO Auto-generated method stub
		subject.setStudent(student);
		
		update(subject);
	}

	/**
	 * 使用的是学生的id，不是学生学号
	 */
	@Override
	public List<Subject> loadSubjectsByMajor(int student_id) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Subject subject ");
		hql.append("where subject.major.majorId = ?");
		
		Student student = (Student) findById(Student.class, student_id);
		
		Object[] parameters = {student.getClazz().getMajor().getMajorId()};
		
		List<Subject> subjects = executeQuery(hql.toString(), parameters);
		
		return subjects;
	}

	@Override
	public Subject loadSubjectByStudent(String studentId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Subject subject ");
		hql.append("where subject.student.studentId = ?");
		
		Object[] parameters = {studentId};
		
		Subject subject = (Subject) uniqueQuery(hql.toString(), parameters);
		
		return subject;
	}

	@Override
	public int getlastSubjectId() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Subject subject ");
		hql.append("order by subject.subjectId desc");
		
		List<Subject> subjects = executeQueryBySize(hql.toString(), null, 1);
		
		return subjects.get(0).getSubjectId();
	}

	@Override
	public long getSubjectsNumByTeacher(int teacher_id) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Subject subject ");
		hql.append("where subject.teacher.id = ?");
		
		Object[] parameters = {teacher_id};
		
		long i = (Long) uniqueQuery(hql.toString(), parameters);
		
		return i;
	}

	@Override
	public List<Subject> loadSubjectsCanSelectByMajor(int student_id) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Subject subject ");
		hql.append("where subject.major.majorId = ? ");
		hql.append("and subject.student = null");
		
		Student student = (Student) findById(Student.class, student_id);
		
		Object[] parameters = {student.getClazz().getMajor().getMajorId()};
		
		List<Subject> subjects = executeQuery(hql.toString(), parameters);
		
		return subjects;
	}

	
	
	
	
}
