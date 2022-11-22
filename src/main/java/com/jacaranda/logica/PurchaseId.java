package com.jacaranda.logica;

import java.io.Serializable;
import java.time.LocalDateTime;

public class PurchaseId implements Serializable {
	
	private int id_category;
	private int id_cars;
	private LocalDateTime date_of_purchase;
	
	public PurchaseId() {
		super();
	}
	
	
}
