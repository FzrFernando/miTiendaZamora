package com.jacaranda.accesoDatos;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.jacaranda.logica.Category;

public class CategoryDao {
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session sesion;
	
	public CategoryDao() {
		super();
		this.sr = new StandardServiceRegistryBuilder().configure().build();
		this.sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();;
		this.sesion = sf.openSession();
	}
	
	public Category findCategory(int id) {
		Category c = null;
		try {
			c = sesion.get(Category.class,id);
		} catch (Exception e) {
			e.getMessage();
		}
		return c;
	}
	
	public List<Category> returnCategory(){
		Query query = sesion.createQuery("SELECT c FROM com.jacaranda.logica.Category c");
		List<Category> category = (List<Category>) query.getResultList();
		return category;
	}
}
