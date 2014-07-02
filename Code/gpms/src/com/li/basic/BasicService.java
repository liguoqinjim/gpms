package com.li.basic;


import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class BasicService implements BasicServiceInter {

	@Resource
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public void add(Object object) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(object);
////		sessionFactory.openSession().save(object);
//		Session session = sessionFactory.getCurrentSession();
//		session.save(object);
	}
	
	/**
	 * get和load的区别
	 * 1.get在数据库中找不到记录的时候返回null,load则会报错exception
	 * 2.get在调用的时候会马上发送sql语句,load则是会在用的时候才发送sql语句
	 */
	@Override
	public Object findById(Class clazz, Serializable id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().load(clazz, id);
	}
	@Override
	public List executeQuery(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		if(parameters != null){
			for(int i = 0;i < parameters.length;i++){
				query.setParameter(i, parameters[i]);
			}
		}
		return query.list();
	}
	
	/**
	 * 查询的结果唯一
	 */
	@Override
	public Object uniqueQuery(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		if(parameters != null){
			for(int i = 0;i < parameters.length;i++){
				query.setParameter(i, parameters[i]);
			}
		}
		return query.uniqueResult();
	}
	@Override
	public List executeQueryByPage(String hql, Object[] parameters,
			int pageNow, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void delById(Class clazz, Serializable id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(this.findById(clazz, id));
	}
	
	/**
	 * 有懒加载的问题，把lazy设置为false是可以解决的
	 * 在spring中自然有openSessionInView来解决
	 */
	@Override
	public void update(Object object) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(object);
	}
	@Override
	public int queryPageCount(String hql, Object[] parameters, int pageSize) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List executeUpdate(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List executeQueryBySize(String hql, Object[] parameters, int size) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		if(parameters != null){
			for(int i = 0;i < parameters.length;i++){
				query.setParameter(i, parameters[i]);
			}
		}
		query.setMaxResults(size);
		return query.list();
	}

}
