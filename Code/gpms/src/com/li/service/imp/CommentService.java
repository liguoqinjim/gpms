package com.li.service.imp;

import com.li.basic.BasicService;
import com.li.domain.Comment;
import com.li.domain.Student;
import com.li.domain.Teacher;
import com.li.service.inters.CommentServiceInter;

public class CommentService extends BasicService implements CommentServiceInter{

	//id号，不是学号
	@Override
	public void inputFirst(String studentId, String studentScore,
			String studentComment,int teacher_id) {
		// TODO Auto-generated method stubId
		StringBuffer hql = new StringBuffer();
		hql.append("from Comment comment ");
		hql.append("where comment.student.studentId = ?");
		
		Object[] parameters = {studentId};
		
		Comment comment = (Comment) uniqueQuery(hql.toString(), parameters);
		if(comment == null){
			Student student = (Student) findById(Student.class, studentId);
			comment = new Comment(student);
			Teacher teacher = (Teacher) findById(Teacher.class, teacher_id);
			comment.setTeacherByCommentSelfTeacher(teacher);
			comment.setCommentSelfScore(Integer.parseInt(studentScore));
			comment.setCommentSelfOpinion(studentComment);
			add(comment);
		}
		else{
			Teacher teacher = (Teacher) findById(Teacher.class, teacher_id);
			comment.setTeacherByCommentSelfTeacher(teacher);
			comment.setCommentSelfScore(Integer.parseInt(studentScore));
			comment.setCommentSelfOpinion(studentComment);
			add(comment);
		}
		
	}

}
