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
	}
	
	public static boolean addCars(Cars c) {
		Session sesion=ConnectionBD.getSession();
		boolean resul = false;
		try {
			sesion.getTransaction().begin();
			sesion.saveOrUpdate(c);
			sesion.getTransaction().commit();
			resul = true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resul;
	}
	
	public static boolean deleteCars(int id) {
		Session sesion=ConnectionBD.getSession();
		boolean resul = false;
		try {
			Cars c = (Cars) sesion.get(Cars.class, id);
			sesion.getTransaction().begin();
			sesion.delete(c);
			sesion.getTransaction().commit();
			resul = true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resul;
	}
	
	public static Cars findCars(int id) {
		Session sesion=ConnectionBD.getSession();
		Cars c = (Cars) sesion.get(Cars.class, id);
		return c;
	}
	
	public static List<Cars> getCars() {
		Session sesion=ConnectionBD.getSession();
		Query query = sesion.createQuery("SELECT c FROM com.jacaranda.logica.Cars c");
		List<Cars> coches = (List<Cars>) query.getResultList();
		return coches;
	}
}
