package com.li.service.imp;

import org.springframework.transaction.annotation.Transactional;
import com.li.basic.BasicService;
import com.li.domain.Clazz;
import com.li.service.inters.ClazzServiceInter;

@Transactional
public class ClazzService extends BasicService implements ClazzServiceInter {

	@Override
	public Clazz findClazzByName(String name) {
		// TODO Auto-generated method stub
		Object[] parameters = { name };

		StringBuffer hql = new StringBuffer();
		hql.append("from Clazz ");
		hql.append("where clazz_name = ?");

		Clazz clazz = (Clazz) uniqueQuery(hql.toString(), parameters);
		return clazz;
	}

	@Override
	public long hasClazz(String clazzName) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Clazz ");
		hql.append("where clazzName = ?");

		Object[] parameters = { clazzName };

		long i = (Long) this.uniqueQuery(hql.toString(), parameters);

		return i;
	}
}
