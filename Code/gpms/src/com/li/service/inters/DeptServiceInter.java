package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Dept;

public interface DeptServiceInter extends BasicServiceInter{

	public Dept findDeptByName(String name);
	
	public long hasDept(String deptName);
	
	/**
	 * 得到所有的dept
	 * @return
	 */
	public List<Dept> loadDepts();
}
