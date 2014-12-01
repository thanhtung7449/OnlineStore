package com.vinhpq.dao.hibernate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ReflectionUtils;
import org.springframework.web.bind.annotation.InitBinder;

import com.vinhpq.dao.DAO;

@Repository("AbstractHbnDao")
@Transactional
public class AbstractHbnDao<T extends Object> implements DAO<T>{
	private Class<T> domainClass;
	
	@Autowired private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession(); 
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getDomainClass() { 
		if (domainClass == null) {
			ParameterizedType thisType = (ParameterizedType) getClass().getGenericSuperclass();
			this.domainClass = (Class<T>) thisType.getActualTypeArguments()[0];
		}
		return domainClass;
	}
	
	private String getDomainClassName() {
		return getDomainClass().getName();
	}
	
	public void create(T t) { 
		Method method = ReflectionUtils.findMethod(getDomainClass(), 
				"setDateCreated", new Class[] { Date.class });
		if (method != null) {
			try {
				method.invoke(t, new Date());
			} catch (Exception e) { 
				System.out.println("AbstractHbnDao Failed !");
			}
		}
		getSession().save(t);
	}
	
	@SuppressWarnings("unchecked")
	public T get(Serializable id) {
		return (T) getSession().get(getDomainClass(), id);
	}
	
	@SuppressWarnings("unchecked")
	public T load(Serializable id) {
		return (T) getSession().load(getDomainClass(), id);
	}
	
	@SuppressWarnings("unchecked")
	public List<T> getAll() {
		return getSession()
				.createQuery("from " + getDomainClassName())
				.list();
	}
	
	public void update(T t) { getSession().update(t); }
	
	public void delete(T t) { getSession().delete(t); }
	
	public void deleteById(Serializable id) { delete(load(id)); }
	
	public void deleteAll() {
		getSession()
			.createQuery("delete " + getDomainClassName())
			.executeUpdate();
	}
	
	public long count() { 
		return (Long) getSession()
						.createQuery("select count(*) from " + getDomainClassName())
						.uniqueResult();
	}
	
	public boolean exists(Serializable id) { 
		return (get(id) != null); 
	}
	
}
