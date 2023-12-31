package greensuper;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;


import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;  
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.http.Part;

import code.dbconnection;
/**
 * Servlet implementation class RemoveproductServlet
 */
public class RemoveproductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int p_Id = Integer.parseInt(request.getParameter("productid"));
		
		try {
			Connection con = dbconnection.initializeDatabase();
			PreparedStatement st = con.prepareStatement("update products set status = '0' where prid = ?");
			st.setInt(1, p_Id );
			st.executeUpdate();
			st.close();
			
			RequestDispatcher requestDispatcher = 
	    			request.getRequestDispatcher("/home.jsp");
			requestDispatcher.forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
