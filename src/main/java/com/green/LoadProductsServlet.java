package com.green;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LoadProducts")
public class LoadProductsServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7739890844078016143L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jdbc:mysql://localhost:3306/greensupermarket";
	    String uname = "root";
	    String password = "";
	    
	    try {
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn = DriverManager.getConnection(url, uname, password);
	    	Statement stmt= conn.createStatement();
	    	
	    	String query="SELECT * FROM products where status = 1;";
	    	ResultSet rs = stmt.executeQuery(query);
	    	
	    	List<Product> products = new ArrayList<Product>();
	    	
	    	while(rs.next()) {
	    		Product product = new Product();
	    		product.Set_values(rs.getInt("prid"), rs.getString("name"), rs.getString("description"), rs.getFloat("price"));
	    		
	    		products.add(product);
	    	}
	    	conn.close();
	    	request.setAttribute("products", products);
	    	RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
	    	rd.forward(request, response);
	    	
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	}

}

	
