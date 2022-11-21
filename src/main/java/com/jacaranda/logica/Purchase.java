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
	@ManyToOne
	@JoinColumn(name="date_of_purchase")
	private LocalDateTime date_of_purchase;
}
