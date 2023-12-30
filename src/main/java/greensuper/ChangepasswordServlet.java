package greensuper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import code.dbconnection;

/**
 * Servlet implementation class ChangepasswordServlet
 */
@WebServlet("/ChangepasswordServlet")
public class ChangepasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Connection con;
		try {
			con = dbconnection.initializeDatabase();
			
			HttpSession session = request.getSession();
		    boolean valid = (boolean) session.getAttribute("validate");
		    String emalString = (String) session.getAttribute("email");
		    String newpa = request.getParameter("newpassword");
			
		    if (valid == true) {
				
		    	PreparedStatement st = con.prepareStatement("update users set pswrd = ? where email = ?");
				st.setString(1, newpa);
				st.setString(2, emalString);
				
				session.removeAttribute("validate");
				session.removeAttribute("Email");
				
				//System.out.println("changed");
				//System.out.println(emalString);
				
				RequestDispatcher requestDispatcher = 
					request.getRequestDispatcher("/signin.jsp");
				requestDispatcher.forward(request, response);
				
				st.executeUpdate();
				st.close(); 
		      con.close();
		    	
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
