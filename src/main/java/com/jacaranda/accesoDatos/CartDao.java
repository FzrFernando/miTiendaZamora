package com.jacaranda.accesoDatos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class CartDao {
	StandardServiceRegistry sr;
	SessionFactory sf;
	Session session;
	
	public CartDao() {
		super();
		this.sr = new StandardServiceRegistryBuilder().configure().build();
		this.sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		this.session = sf.openSession();
	}
	
	
}
