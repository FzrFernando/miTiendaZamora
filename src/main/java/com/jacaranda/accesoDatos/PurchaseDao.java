package com.jacaranda.accesoDatos;

import org.hibernate.Session;

import com.jacaranda.logica.Purchase;

public class PurchaseDao {

	public PurchaseDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public static boolean addPurchase(Purchase p) {
		boolean purchase = false;
		Session sesion = ConnectionBD.getSession();
		try {
			sesion.getTransaction().begin();
			sesion.saveOrUpdate(p);
			sesion.getTransaction().commit();
			purchase = true;
		}
		catch (Exception e){
			e.getMessage();
			sesion.getTransaction().rollback();
		}
		return purchase;
	}
}
