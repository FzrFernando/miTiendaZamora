package com.jacaranda.accesoDatos;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.logica.Cars;

public class CarsDao {
	
	public static Cars getCars(String name) {
		Session session = Connection.getSession();
		Cars cars = (Cars) session.get(Cars.class,name);
		return cars;
	}
	
	public static boolean saveCars(Cars cars) {
		boolean resultado = false;
		Session session = Connection.getSession();
		
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(cars);
			session.getTransaction().commit();
			resultado=true;			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	public  static boolean  deleteCars(Cars cars) {
		boolean resultado = false;
		Session session = Connection.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.delete(cars);
			session.getTransaction().commit();;
			resultado=true;
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		
		return resultado;
	}
	
	public static ArrayList<Cars> getCars(){
		Session session = Connection.getSession();
		
		Query<Cars> query = session.createQuery("SELECT p FROM com.jacaranda.logica.Cars p");
		ArrayList<Cars> movie = (ArrayList<Cars>) query.getResultList();
		
		return movie;
	}
	
}
