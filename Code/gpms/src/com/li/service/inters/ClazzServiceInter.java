package com.li.service.inters;

import com.li.basic.BasicServiceInter;
import com.li.domain.Clazz;

public interface ClazzServiceInter extends BasicServiceInter{

	public Clazz findClazzByName(String name);
	
	public long hasClazz(String clazzName);
}
