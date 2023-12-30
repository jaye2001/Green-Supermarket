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

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class submitFeedback
 */
@WebServlet("/submitFeedback")
public class submitFeedback extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jdbc:mysql://localhost:3306/greens";
	    String uname = "root";
	    String password = "";
	    int user_id = Integer.parseInt(request.getParameter("u_id"));
	    int product_id = Integer.parseInt(request.getParameter("p_id"));
	    String message = request.getParameter("message");
	    
	    try {
	    	
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn = DriverManager.getConnection(url, uname, password);
	    	Statement stmt= conn.createStatement();
	    	
//	    	String query = "INSERT INTO reviews (User_id, product_id, message, time) VALUES("+user_id+", "+ product_id +", '"+message+"', NOW())";
//	    	 try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
//                 preparedStatement.setInt(1, user_id);
//                 preparedStatement.setInt(2, product_id);
//                 preparedStatement.setString(3, message);
//                 preparedStatement.executeUpdate();
//             }
	    	String query = "INSERT INTO reviews (User_id, product_id, message, time) VALUES(?, ?, ?, NOW())";
	    	 try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
                preparedStatement.setInt(1, user_id);
                preparedStatement.setInt(2, product_id);
                preparedStatement.setString(3, message);
                preparedStatement.executeUpdate();
            }
	    	 
	    	 String feedbackQuery = "SELECT u.name, r.message FROM reviews r JOIN user u ON r.User_id = u.id WHERE r.product_id = ?";
	    	 try (PreparedStatement feedbackStatement = conn.prepareStatement(feedbackQuery)) {
	    	     feedbackStatement.setInt(1, product_id);
	    	     ResultSet rs = feedbackStatement.executeQuery();

	    	     List<FeedbackEntry> feedbackList = new ArrayList<>();
	    	     while (rs.next()) {
	    	    	 FeedbackEntry feedbackEn = new FeedbackEntry();
	    	    	 feedbackEn.Set_values(rs.getString("name"), rs.getString("message"));
	    	         
	    	         feedbackList.add(feedbackEn);
	    	     }

	    	     request.setAttribute("feedbackList", feedbackList);
	    	     response.sendRedirect("productdet?productid="+product_id);

	    	     RequestDispatcher rd = request.getRequestDispatcher("productDetail.jsp");
	 	    	 rd.forward(request, response);
	    	 }
	    	
	    	conn.close();
	    	
	    	
	    	
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	    
	    
	}  
	
}
