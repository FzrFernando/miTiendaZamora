package com.jacaranda.logica;

import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity(name="CATEGORY")
public class Category {
	
	@Id
	private int id;
	@Column(name="name")
	private String nombre;
	@Column(name="description")
	private String descripcion;
	@ManyToMany
	List<Cars> listCars;
	
	public Category() {
		super();
	}

	public Category(int id, String nombre, String descripcion) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public List<Cars> getListCars() {
		return listCars;
	}

	public void setListCars(List<Cars> listCars) {
		this.listCars = listCars;
	}
	
	public boolean add(Cars c) {
		return listCars.add(c);
	}
	
	public boolean remove(Cars c) {
		return listCars.remove(c);
	}

	@Override
	public int hashCode() {
		return Objects.hash(descripcion, id, listCars, nombre);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		return Objects.equals(descripcion, other.descripcion) && id == other.id
				&& Objects.equals(listCars, other.listCars) && Objects.equals(nombre, other.nombre);
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", listCars=" + listCars
				+ "]";
	}
	
	
}
