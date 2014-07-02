package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.TeacherGroup;

public interface TeacherGroupServiceInter extends BasicServiceInter{
	public int getLastTeacherGroupId();
	
	public List<TeacherGroup> loadTeacherGroupsById(int teacherGroupId);
}
