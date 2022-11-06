package com.jacaranda.logica;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="USERS")
public class User {
	
	@Id
	private String username;
	private String pass;
	
	public User() {
		super();
	}

	public User(String username, String pass) {
		super();
		this.username = username;
		this.pass = pass;
	}
	
	
}
