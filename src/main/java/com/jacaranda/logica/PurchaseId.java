package com.jacaranda.logica;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class PurchaseId implements Serializable {
	
	private String username;
	private int id_cars;
	private LocalDateTime date_of_purchase;
	
	public PurchaseId() {
		super();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getId_cars() {
		return id_cars;
	}

	public void setId_cars(int id_cars) {
		this.id_cars = id_cars;
	}

	public LocalDateTime getDate_of_purchase() {
		return date_of_purchase;
	}

	public void setDate_of_purchase(LocalDateTime date_of_purchase) {
		this.date_of_purchase = date_of_purchase;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id_cars, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PurchaseId other = (PurchaseId) obj;
		return id_cars == other.id_cars && Objects.equals(username, other.username);
	}
	
	
}
