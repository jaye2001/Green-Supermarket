package com.green;

import java.io.InputStream;
import java.sql.Blob;

import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

public class Product {
	
	private int id;
	private Blob image;
	private String name;
	private String description;
	private float price;
	
	
	public void Set_values(int _id, Blob _image, String _name, String _description, float _price) {
		
		id = _id;
		image = _image;
		name = _name;
		description = _description;
		price = _price;
		
	}
	public int GetId() {
		return id;
	}
	
	public byte[] GetImage() {
		
		try {
	        // Assuming your BLOB column is named "image"
	        InputStream inputStream = image.getBinaryStream();
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	        byte[] buffer = new byte[4096];
	        int bytesRead = -1;

	        while ((bytesRead = inputStream.read(buffer)) != -1) {
	            outputStream.write(buffer, 0, bytesRead);
	        }

	        return outputStream.toByteArray();
	    } catch (Exception e) {
	        e.printStackTrace(); // Handle this exception properly in a real application
	        return null;
	    }
		
		
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
