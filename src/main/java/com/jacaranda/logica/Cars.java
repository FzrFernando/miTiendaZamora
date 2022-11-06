package com.jacaranda.logica;

import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity(name="CARS")
public class Cars {
	@Id
	private int id;
	@Column(name="name")
	private String nombre;
	@Column(name="description")
	private String descripcion;
	@Column(name="price")
	private double precio;
	@ManyToMany
	List<Category> listCategory;
	
	public Cars() {
		super();
	}

	public Cars(int id, String nombre, String descripcion, double precio) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
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

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public List<Category> getListCategory() {
		return listCategory;
	}

	public void setListCategory(List<Category> listCategory) {
		this.listCategory = listCategory;
	}
	
	public boolean add(Category c) {
		return listCategory.add(c);
	}
	
	public boolean remove(Category c) {
		return listCategory.remove(c);
	}

	@Override
	public int hashCode() {
		return Objects.hash(descripcion, id, listCategory, nombre, precio);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cars other = (Cars) obj;
		return Objects.equals(descripcion, other.descripcion) && id == other.id
				&& Objects.equals(listCategory, other.listCategory) && Objects.equals(nombre, other.nombre)
				&& Double.doubleToLongBits(precio) == Double.doubleToLongBits(other.precio);
	}

	@Override
	public String toString() {
		return "Cars [id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", precio=" + precio
				+ ", listCategory=" + listCategory + "]";
	}
	
	
}
