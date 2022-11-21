package com.jacaranda.logica;

import java.util.Objects;

public class ItemPurchase {
	private int id_category;
	private int amount;
	
	public ItemPurchase(int id_category, int amount) {
		super();
		this.id_category = id_category;
		this.amount = amount;
	}

	public ItemPurchase() {
		super();
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id_category);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItemPurchase other = (ItemPurchase) obj;
		return id_category == other.id_category;
	}
	
	
}
