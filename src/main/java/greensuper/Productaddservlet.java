
package greensuper;
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
 * Servlet implementation class productaddservlet
 */
@WebServlet("/productaddservlet")
@MultipartConfig
public class Productaddservlet extends HttpServlet {
	
	public Productaddservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		Part filePart = request.getPart("photo");
		InputStream inputStream = filePart.getInputStream();
		//out.println("<html><body><b>Successfully Inserted"
         //       + "</b></body></html>");
		
		
		try {
			//out.println("<html><body><b>Successfully Inserted"
             //       + "</b></body></html>");
			Connection con = dbconnection.initializeDatabase();
			PreparedStatement st = con.prepareStatement("insert into products (name, description, quantity, status) values(?, ?, ?, ?)");
			st.setString(1, request.getParameter("productName"));
			st.setString(2, request.getParameter("productDescription"));
			st.setInt(3, Integer.valueOf(request.getParameter("productQty")));
			//st.setBlob(4, inputStream);
			boolean status = true;
			st.setBoolean(4, status);
			
			st.executeUpdate();
			st.close(); 
          con.close();
           
            out.println("<html><body><b>Successfully Inserted"
                        + "</b></body></html>"); 
	} 
		
		
		
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.getWriter().println("Error: " + e.getMessage());
			
		}
		
	}
	
	

}
