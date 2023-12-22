package com.green;

public class Product {

	private String image;
	private String name;
	
	public void Set_values(String _image, String _name) {
		
		image = _image;
		name = _name;
	}
	public String GetImage() {
		return image;
	}
	public String GetName() {
		return name;
	}
	
}
