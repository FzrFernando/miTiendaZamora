package com.jacaranda.logica;

import java.util.Objects;

public class ItemCart {
	
	private int idCar;
	private int cant;
	
	public ItemCart(int idCar, int cant) {
		super();
		this.idCar = idCar;
		this.cant = cant;
	}

	public int getIdCar() {
		return idCar;
	}

	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}

	public int getCant() {
		return cant;
	}

	public void setCant(int cant) {
		this.cant = cant;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cant, idCar);
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
		return cant == other.cant && idCar == other.idCar;
	}
	
	
}
