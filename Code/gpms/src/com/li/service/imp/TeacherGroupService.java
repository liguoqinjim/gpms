package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.TeacherGroup;
import com.li.service.inters.TeacherGroupServiceInter;

public class TeacherGroupService extends BasicService implements TeacherGroupServiceInter{

	@Override
	public int getLastTeacherGroupId() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from TeacherGroup teacherGroup ");
		hql.append("order by teacherGroup.teacherGroupId desc");
		
		List<TeacherGroup> teacherGroups = executeQueryBySize(hql.toString(), null, 1);
		
		
		return teacherGroups.get(0).getTeacherGroupId();
	}

	@Override
	public List<TeacherGroup> loadTeacherGroupsById(int teacherGroupId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from TeacherGroup teacherGroup ");
		hql.append("where teacherGroup.teacherGroupId = ?");
		
		Object[] parameters = {teacherGroupId};
		
		List<TeacherGroup> teacherGroups = executeQuery(hql.toString(), parameters);
		
		return teacherGroups;
	}

}
