package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Dept;
import com.li.service.inters.DeptServiceInter;

public class DeptService extends BasicService implements DeptServiceInter {

	@Override
	public Dept findDeptByName(String name) {
		// TODO Auto-generated method stub
		Object[] parameters = { name };

		StringBuffer hql = new StringBuffer();
		hql.append("from Dept ");
		hql.append("where dept_name = ?");

		Dept dept = (Dept) uniqueQuery(hql.toString(), parameters);
		return dept;
	}

	@Override
	public long hasDept(String deptName) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Dept ");
		hql.append("where deptName = ?");

		Object[] parameters = { deptName };

		long i = (Long) this.uniqueQuery(hql.toString(), parameters);

		return i;
	}

	@Override
	public List<Dept> loadDepts() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Dept");
		
		List<Dept> depts = executeQuery(hql.toString(), null);
		
		return depts;
	}
}
