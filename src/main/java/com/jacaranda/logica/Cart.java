package com.jacaranda.logica;

import java.util.ArrayList;

public class Cart {
	
	private ArrayList<ItemCart> cart;

	public Cart() {
		super();
		cart = new ArrayList<ItemCart>();
	}

	public ArrayList<ItemCart> getCart() {
		return cart;
	}

	public boolean addCart(ItemCart ic) {
		return cart.add(ic);
	}
	
	
}
