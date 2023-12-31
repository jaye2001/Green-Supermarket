package com.green;

import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import code.dbconnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import code.dbconnection;
/**
 * Servlet implementation class submitFeedback
 */
@WebServlet("/submitFeedback")
public class submitFeedbackServlet extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    
	    
	    HttpSession session = request.getSession();
	    int user_id = (int) session.getAttribute("UserId");
	    int product_id = Integer.parseInt(request.getParameter("p_id"));
	    String message = request.getParameter("message");
	    
	    try {
	    	
	    	
	    	Connection conn = dbconnection.initializeDatabase();
	    	Statement stmt= conn.createStatement();
	    	
//	    	String query = "INSERT INTO reviews (User_id, product_id, message, time) VALUES("+user_id+", "+ product_id +", '"+message+"', NOW())";
//	    	 try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
//                 preparedStatement.setInt(1, user_id);
//                 preparedStatement.setInt(2, product_id);
//                 preparedStatement.setString(3, message);
//                 preparedStatement.executeUpdate();
//             }
	    	String query = "INSERT INTO reviews (UserId, prid, message, time) VALUES(?, ?, ?, NOW())";
	    	 try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
                preparedStatement.setInt(1, user_id);
                preparedStatement.setInt(2, product_id);
                preparedStatement.setString(3, message);
                preparedStatement.executeUpdate();
            }
	    	 
//	    	 String feedbackQuery = "SELECT u.Fname, r.message FROM reviews r JOIN users u ON r.User_id = u.id WHERE r.product_id = ?";
//	    	 try (PreparedStatement feedbackStatement = conn.prepareStatement(feedbackQuery)) {
//	    	     feedbackStatement.setInt(1, product_id);
//	    	     ResultSet rs = feedbackStatement.executeQuery();
//
//	    	     List<FeedbackEntry> feedbackList = new ArrayList<>();
//	    	     while (rs.next()) {
//	    	    	 FeedbackEntry feedbackEn = new FeedbackEntry();
//	    	    	 feedbackEn.Set_values(rs.getString("name"), rs.getString("message"));
//	    	         
//	    	         feedbackList.add(feedbackEn);
//	    	     }
//
//	    	     request.setAttribute("feedbackList", feedbackList);
//	    	     
//	    	 }
	    	 
	    	 response.sendRedirect("productdet?productid="+product_id);

    	     RequestDispatcher rd = request.getRequestDispatcher("productDetail.jsp");
 	    	 rd.forward(request, response);
	    	
	    	conn.close();
	    	
	    	
	    	
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	    
	    
	}  
	
}
