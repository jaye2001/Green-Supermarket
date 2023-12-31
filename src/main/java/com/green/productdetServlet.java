package com.green;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import code.dbconnection;
/**
 * Servlet implementation class productdet
 */
@WebServlet("/productdet")
public class productdetServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	    int p_Id = Integer.parseInt(request.getParameter("productid"));
	    
	    try {
	    	
	    	
	    	Connection conn = dbconnection.initializeDatabase();
	    	//Statement stmt= conn.createStatement();
	    	
	    	/*String query="SELECT * FROM product;";
	    	ResultSet rs = stmt.executeQuery(query);
	    	
	    	List<Product> products = new ArrayList<Product>();
	    	
	    	while(rs.next()) {
	    		Product product = new Product();
	    		product.Set_values(rs.getInt("id"), rs.getString("image"), rs.getString("name"), rs.getString("description"), rs.getFloat("price"));
	    		
	    		products.add(product);
	    	}*/
	    	
	    	String query="SELECT * FROM products where prid = ?;";

	    	List<Product> products = new ArrayList<Product>();
	    	Product product = new Product();
	    	List<FeedbackEntry> feedbackList = new ArrayList<>();


	    	try(PreparedStatement productStatement = conn.prepareStatement(query)){
	    		productStatement.setInt(1, p_Id);
	    		ResultSet rs = productStatement.executeQuery();

	    		rs.next();

	    		
	    		product.Set_values(rs.getInt("prid"),rs.getBlob("prpht"), rs.getString("name"), rs.getString("description"), rs.getFloat("price"));
	    	}
	    	String feedbackQuery = "SELECT u.Fname, u.Lname, r.message FROM reviews r JOIN users u ON r.UserId = u.UserId WHERE r.prid = ?";
	    	 try (PreparedStatement feedbackStatement = conn.prepareStatement(feedbackQuery)) {
	    	     feedbackStatement.setInt(1, p_Id);
	    	     ResultSet rs = feedbackStatement.executeQuery();

	    	     
	    	     while (rs.next()) {
	    	    	 FeedbackEntry feedbackEn = new FeedbackEntry();
	    	    	 feedbackEn.Set_values(rs.getString("Fname") + rs.getString("Lname"), rs.getString("message"));
	    	         
	    	         feedbackList.add(feedbackEn);
	    	     }
	    	 	}

	    	     
	    	conn.close();
	    	
	    	request.setAttribute("feedbackList", feedbackList);
	    	
	    	request.setAttribute("product", product);
	    	RequestDispatcher rd = request.getRequestDispatcher("productDetail.jsp");
	    	rd.forward(request, response);
	    	
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	}

	

}
