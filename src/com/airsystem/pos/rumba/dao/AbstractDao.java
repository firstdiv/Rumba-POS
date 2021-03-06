package com.airsystem.pos.rumba.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author Budi Oktaviyan Suryanto <budi.oktaviyan@icloud.com>
 * 
 * @param <T>
 *            	   Bean Object
 * @param <ID>
 *            	   PK ID from Bean Object
 */

public abstract class AbstractDao<T, ID extends Serializable> {

	protected final Logger log = Logger.getLogger(getClass().getSimpleName());

	@Autowired
	protected SessionFactory sessionFactory;

	protected Class<T> beanClass;

	public AbstractDao() {
	}

	public List<T> findAll() {
		List<?> criteria = sessionFactory.getCurrentSession().createCriteria(beanClass).list();

		List<T> list = new ArrayList<T>();
		for (Object result : criteria) {
			list.add(beanClass.cast(result));
		}

		return list;
	}

	@SuppressWarnings("unchecked")
	public T findById(ID id) {
		return (T) sessionFactory.getCurrentSession().get(beanClass, id);
	}

	public T save(T bean) {
		sessionFactory.getCurrentSession().saveOrUpdate(bean);

		return bean;
	}

	public void delete(T bean) {
		sessionFactory.getCurrentSession().delete(bean);
	}

	public void deleteById(ID id) {
		delete(findById(id));
	}
}