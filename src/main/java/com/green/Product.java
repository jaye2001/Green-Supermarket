package com.green;

public class Product {
	
	private int id;
	private String image;
	private String name;
	private String description;
	private float price;
	
	public void Set_values(int _id, String _image, String _name, String _description, float _price) {
		
		id = _id;
		image = _image;
		name = _name;
		description = _description;
		price = _price;
		
	}
	public int GetId() {
		return id;
	}
	
	public String GetImage() {
		return image;
	}
	public String GetName() {
		return name;
	}
	public String GetDescription() {
		return description;
	}
	public float GetPrice() {
		return price;
	}

	
}
