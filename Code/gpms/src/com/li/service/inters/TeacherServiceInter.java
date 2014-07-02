package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Major;
import com.li.domain.Teacher;

public interface TeacherServiceInter extends BasicServiceInter{
	
	//登陆
	public Teacher login(String teacher_id,String teacher_pwd);
	//重设密码
	public Teacher resetPwd(java.io.Serializable id);
	
	public List<Major> loadMajors(int teacher_id);
	
	public long hasTeacher(String teacherId);
	
	public boolean changePwd(Teacher teacher,String oldPwd,String newPwd);
	
	public List<Teacher> loadTeachersByDept(int deptId);
}
