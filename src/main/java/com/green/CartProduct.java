package com.green;

import com.green.Product;

public class CartProduct extends Product {
	
	private int added_qty = 0;
	
	public CartProduct (int _id, String _image, String _name, String _description, float _price, int _added_qty) {
		super();
		this.Set_values(_id, _image, _name, _description, _price);
		this.added_qty = _added_qty;
	}
	
	public int getCartQty() {
		return this.added_qty;
	}
}
