package com.green;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class productdet
 */
@WebServlet("/productdet")
public class productdet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String url = "jdbc:mysql://localhost:3306/greensupermarket";
        String uname = "root";
        String password = "";
        int p_Id = Integer.parseInt(request.getParameter("productid"));
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, uname, password);

            String productQuery = "SELECT * FROM products WHERE prid = ?;";

            Product product = new Product();
            List<FeedbackEntry> feedbackList = new ArrayList<>();

            // Fetching product details
            try (PreparedStatement productStatement = conn.prepareStatement(productQuery)) {
                productStatement.setInt(1, p_Id);
                ResultSet rs = productStatement.executeQuery();

                if (rs.next()) {
                    product.Set_values(rs.getInt("prid"), rs.getString("image"), rs.getString("name"), rs.getString("description"), rs.getFloat("price"));
                }
            }

            // Assuming you have a similar structure for fetching feedback
            // String feedbackQuery = "Your feedback query here";

            // Fetching feedback
            // Your feedback fetching code

            conn.close();
            
            request.setAttribute("product", product);
            request.setAttribute("feedbackList", feedbackList);
            RequestDispatcher rd = request.getRequestDispatcher("productDetail.jsp");
            rd.forward(request, response);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        RequestDispatcher rd = request.getRequestDispatcher("productDetail.jsp");
        rd.forward(request, response);

    }
}

