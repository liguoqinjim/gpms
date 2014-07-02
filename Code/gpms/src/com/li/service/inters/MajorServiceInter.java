package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Major;

public interface MajorServiceInter extends BasicServiceInter{
	
	public Major findMajorByName(String name);
	
	public long hasMajor(String majorName);
	
	/**
	 * 得到所有的major
	 * @return
	 */
	public List<Major> loadMajors();
}
