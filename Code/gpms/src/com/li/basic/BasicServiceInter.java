package com.li.basic;

import java.util.List;

public interface BasicServiceInter {

	//添加对象
	public void add(Object object);
	//通过id取得对象
	public Object findById(Class clazz,java.io.Serializable id);
	//查询多行 hql
	public List executeQuery(String hql,Object[] parameters);
	
	public Object uniqueQuery(String hql,Object []parameters);
	
	public List executeQueryByPage(String hql,Object[] parameters,int pageNow,int pageSize);
	
	public void delById(Class clazz,java.io.Serializable id);
	
	public void update(Object object);
	
	public int queryPageCount(String hql,Object[] parameters,int pageSize);
	
	//统一的执行hql->删除,修改 hql="update domain对象 where ?"
	public List executeUpdate(String hql,Object []parameters);
	
//	public Object findByName(String name);
	
	public List executeQueryBySize(String hql,Object[] parameters,int size);
}
