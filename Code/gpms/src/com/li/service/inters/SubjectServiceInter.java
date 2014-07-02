package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Student;
import com.li.domain.Subject;
import com.li.domain.Teacher;

public interface SubjectServiceInter extends BasicServiceInter{

	public List<Subject> loadSubjectsByMajor(int student_id);
	
	/**
	 * 找到该专业下的所有没有通过的题目
	 * @param teacher的ID号，不是学号
	 * @return
	 */
	public List<Subject> loadSubjectsNotYesByMajor(int teacher_id);
	
	/**
	 * 题目通过
	 * @param subjectId
	 */
	public void accessSubject(int subjectId);
	
	/**
	 * 题目不通过
	 * @param subjectId
	 * @param subjectSuggest
	 */
	public void notAccessSubject(int subjectId,String subjectSuggest);
	
	/**
	 * 得到总共有多少个题目
	 * @return
	 */
	public int getSubjectsNumber();
	
	/**
	 * 设置选择该Subject的学生
	 * @param subject
	 * @param student
	 */
	public void setStudent(Subject subject,Student student);
	
	/**
	 * 得到student的成绩
	 * @param student
	 */
	public Subject loadSubjectByStudent(String studentId);
	
	/**
	 * 得到最后一个subjectId
	 * @return
	 */
	public int getlastSubjectId();
	
	
	//teacherid，不是教师工号
	public long getSubjectsNumByTeacher(int teacher_id);
	
	
	//是id,不是学号
	public List<Subject> loadSubjectsCanSelectByMajor(int student_id);
}
