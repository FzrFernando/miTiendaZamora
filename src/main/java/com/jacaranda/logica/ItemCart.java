package com.jacaranda.logica;

import java.util.Objects;

public class ItemCart {
	
	private int idCars;
	private int cant;
	
	public ItemCart(int idCars, int cant) {
		super();
		this.idCars = idCars;
		this.cant = cant;
	}

	public ItemCart() {
		super();
	}

	public int getIdCars() {
		return idCars;
	}

	public void setIdCars(int idCars) {
		this.idCars = idCars;
	}

	public int getCant() {
		return cant;
	}

	public void setCant(int cant) {
		this.cant = cant;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cant, idCars);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItemCart other = (ItemCart) obj;
		return cant == other.cant && idCars == other.idCars;
	}
	
	
}
