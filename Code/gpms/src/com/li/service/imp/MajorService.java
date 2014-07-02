package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Major;
import com.li.service.inters.MajorServiceInter;

public class MajorService extends BasicService implements MajorServiceInter {

	@Override
	public Major findMajorByName(String name) {
		// TODO Auto-generated method stub
		Object[] parameters = { name };

		StringBuffer hql = new StringBuffer();
		hql.append("from Major ");
		hql.append("where major_name = ?");

		return (Major) uniqueQuery(hql.toString(), parameters);
	}

	@Override
	public long hasMajor(String majorName) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Major ");
		hql.append("where majorName = ? ");

		Object[] parameters = { majorName };

		long i = (Long) this.uniqueQuery(hql.toString(), parameters);

		return i;
	}

	@Override
	public List<Major> loadMajors() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Major");
		
		List<Major> majors = executeQuery(hql.toString(), null);
		
		return majors;
	}

}
