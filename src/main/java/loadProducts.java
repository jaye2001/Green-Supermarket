package com.green;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loadProducts")
public class loadProducts extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jdbc:mysql://localhost:3306/greens";
	    String uname = "root";
	    String password = "";
	    
	    try {
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn = DriverManager.getConnection(url, uname, password);
	    	Statement stmt= conn.createStatement();
	    	
	    	String query="SELECT * FROM product;";
	    	ResultSet rs = stmt.executeQuery(query);
	    	
	    	List<Product> products = new ArrayList<Product>();
	    	
	    	while(rs.next()) {
	    		Product product = new Product();
	    		product.Set_values(rs.getString("image"), rs.getString("name"));
	    		
	    		products.add(product);
	    	}
	    	
	    	request.setAttribute("products", products);
	    	RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
	    	rd.forward(request, response);
	    	
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	}

}

	
