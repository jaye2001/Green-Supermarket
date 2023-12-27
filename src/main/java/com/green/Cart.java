package com.green;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import code.dbconnection;

public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Cart() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userId = 1;
		
		try (Connection conn = dbconnection.initializeDatabase()) {
            String selectCartQuery = "SELECT * FROM cart JOIN products ON cart.prid = products.prid WHERE cart.UserId = ?;";
            
            List<CartProduct> cartItemList = new ArrayList<CartProduct>();
            
            ResultSet rs = null;
            
            try (PreparedStatement cartStmt = conn.prepareStatement(selectCartQuery)) {
                cartStmt.setInt(1, userId); // Replace with actual user ID when implemented
                rs = cartStmt.executeQuery();
                while(rs.next()) {
                	CartProduct cartItem = new CartProduct(rs.getInt("prid"), rs.getString("image"), rs.getString("name"), rs.getString("description"), rs.getFloat("price"), rs.getInt("QTY"));
                	cartItemList.add(cartItem);
                }
            }
            
            
            request.setAttribute("cartItemList", cartItemList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
        rd.forward(request, response);
	}

}
