package com.green;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import code.dbconnection;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
	    int userId = (int) session.getAttribute("UserId");
        int productId = Integer.parseInt(request.getParameter("prid"));
        int quantity = Integer.parseInt(request.getParameter("qty"));
        
        

//        String url = "jdbc:mysql://localhost:3306/greensupermarket";
//        String uname = "root";
//        String password = "";

        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = dbconnection.initializeDatabase()) {
                String insertCartQuery = "INSERT INTO cart (QTY, UserId, prid) VALUES (?, ?, ?);";

                try (PreparedStatement cartStmt = conn.prepareStatement(insertCartQuery)) {
                    cartStmt.setInt(1, quantity);
                    cartStmt.setInt(2, userId); // Replace with actual user ID when implemented
                    cartStmt.setInt(3, productId);
                    cartStmt.executeUpdate();
                }
            }
            response.sendRedirect("home.jsp"); // Redirect to cart page or another page as needed
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("productDetail.jsp"); // Redirect to product page on error
        }
    }
}
