package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.SubjectType;
import com.li.service.inters.SubjectServiceInter;
import com.li.service.inters.SubjectTypeServiceInter;

public class SubjectTypeService extends BasicService implements SubjectTypeServiceInter{

	@Override
	public List<SubjectType> loadSubjectTypes() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from SubjectType");
		
		List<SubjectType> subjectTypes = this.executeQuery(hql.toString(), null);
		
		return subjectTypes;
	}

}
