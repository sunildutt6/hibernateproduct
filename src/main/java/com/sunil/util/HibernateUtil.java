package com.sunil.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {

		if (sessionFactory != null)
			return sessionFactory;

		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");

		sessionFactory = configuration.buildSessionFactory();

		return sessionFactory;

	}

}
