package com.jacaranda.logica;

import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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
	@Column(name="stock")
	private int stock;
	@ManyToOne
	@JoinColumn(name = "id_category")
	private Category id_categoria;
	

	public Cars(int id, String nombre, String descripcion, double precio, Category id_categoria) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
		this.stock = 99;
		this.id_categoria = id_categoria;
	}
	
	public Cars() {
		super();
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
	
	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Category getId_categoria() {
		return id_categoria;
	}

	public void setId_categoria(Category id_categoria) {
		this.id_categoria = id_categoria;
	}

	@Override
	public int hashCode() {
		return Objects.hash(descripcion, id, id_categoria, nombre, precio);
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
				&& Objects.equals(id_categoria, other.id_categoria) && Objects.equals(nombre, other.nombre)
				&& Double.doubleToLongBits(precio) == Double.doubleToLongBits(other.precio);
	}

	@Override
	public String toString() {
		return "Cars [id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", precio=" + precio
				+ ", id_categoria=" + id_categoria + "]";
	}

	
	
}
