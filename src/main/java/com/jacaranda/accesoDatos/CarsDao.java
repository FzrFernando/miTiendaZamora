package com.jacaranda.accesoDatos;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import com.jacaranda.logica.Cars;

public class CarsDao {
	StandardServiceRegistry sr;
	SessionFactory sf;
	Session session;
	
	public CarsDao() {
		super();
		this.sr = new StandardServiceRegistryBuilder().configure().build();
		this.sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		this.session = sf.openSession();
	}
	
	public boolean addCars(Cars c) {
		boolean resul = false;
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(c);
			session.getTransaction().commit();
			resul = true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resul;
	}
	
	public boolean deleteCars(int id) {
		boolean resul = false;
		try {
			Cars c = (Cars) session.get(Cars.class, id);
			session.getTransaction().begin();
			session.delete(c);
			session.getTransaction().commit();
			resul = true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resul;
	}
	
	public Cars findCars(int id) {
		Cars c = (Cars) session.get(Cars.class, id);
		return c;
	}
	
	public List<Cars> getCars() {
		Query query = session.createQuery("SELECT c FROM com.jacaranda.logica.Cars c");
		List<Cars> coches = (List<Cars>) query.getResultList();
		return coches;
	}
}
