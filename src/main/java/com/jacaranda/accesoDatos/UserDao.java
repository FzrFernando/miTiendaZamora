package com.jacaranda.accesoDatos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.jacaranda.logica.User;

public class UserDao {
	
	public UserDao() {
		super();
	}
	
	public static boolean validateUser(String login, String password) {
		Session sesion=ConnectionBD.getSession();
		boolean valid = false;
		User u = (User) sesion.get(User.class,login);
		if (u==null) {
			u=new User();
		}else {
			if (u.getPass().toUpperCase().equalsIgnoreCase(password.toUpperCase())) {
				valid=true;
			}
		}
		return valid;
	}
	
	public static boolean addUser(User u) {
		Session sesion=ConnectionBD.getSession();
		boolean valid=false;
		try {
			sesion.getTransaction().begin();
			sesion.saveOrUpdate(u);
			sesion.getTransaction().commit();
			valid=true;
		}catch (Exception e) {
			e.getMessage();
		}
		return valid;
	}
	
	public static User findUser(String user) {
		Session sesion=ConnectionBD.getSession();
		User u=sesion.get(User.class, user);
		return u;
	}
}
