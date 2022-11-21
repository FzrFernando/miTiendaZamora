package com.jacaranda.logica;

import java.util.List;

public class Cart {
	
	private List<ItemCart> cart;

	public Cart() {
		super();
		cart = null;
	}

	public List<ItemCart> getCart() {
		return cart;
	}

	public boolean addCart(ItemCart ic) {
		return cart.add(ic);
	}
	
	
}
