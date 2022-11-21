package com.jacaranda.logica;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class IdCart implements Serializable{

	private String user;
	private int car;
	private LocalDateTime date;
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public int getCar() {
		return car;
	}
	public void setCar(int car) {
		this.car = car;
	}
	public LocalDateTime getDate() {
		return date;
	}
	public void setDate(LocalDateTime date) {
		this.date = date;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(car, user);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		IdCart other = (IdCart) obj;
		return car == other.car && Objects.equals(user, other.user);
	}
	
	
}
