package com.jacaranda.logica;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="PURCHASE")
@IdClass(PurchaseId.class)
public class Purchase {
	@Id
	@ManyToOne
	@JoinColumn(name="id_category")
	private int id_category;
	@Id
	@ManyToOne
	@JoinColumn(name="id_cars")
	private int id_cars;
	@Column(name="amount")
	private int amount;
	@Column(name="price")
	private double price;
	@Id
	@JoinColumn(name="date_of_purchase")
	private LocalDateTime date_of_purchase;
	
	public Purchase(int id_category, int id_cars, int amount, double price) {
		super();
		this.id_category = id_category;
		this.id_cars = id_cars;
		this.amount = amount;
		this.price = price;
		this.date_of_purchase = LocalDateTime.now();
	}

	public Purchase() {
		super();
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public int getId_cars() {
		return id_cars;
	}

	public void setId_cars(int id_cars) {
		this.id_cars = id_cars;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public LocalDateTime getDate_of_purchase() {
		return date_of_purchase;
	}

	public void setDate_of_purchase(LocalDateTime date_of_purchase) {
		this.date_of_purchase = date_of_purchase;
	}

	@Override
	public String toString() {
		return "Purchase [id_category=" + id_category + ", id_cars=" + id_cars + ", amount=" + amount + ", price="
				+ price + ", date_of_purchase=" + date_of_purchase + "]";
	}
	
	
	
	
}
