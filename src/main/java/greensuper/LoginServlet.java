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
import java.sql.ResultSet;
import java.sql.SQLException;


import code.dbconnection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
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
			String email = request.getParameter("email");
			String paswrd = request.getParameter("password");
 			PreparedStatement st = con.prepareStatement("Select pswrd, UserId from users where email = ?");
 			st.setString(1, email);
 			ResultSet rs = st.executeQuery();
			boolean login = false;
 			
 			
 			while (rs.next()) {
 				login = true;
 				//System.out.println("lalalala");
 				//System.out.println(paswrd);
 				String pwString = rs.getString("pswrd");
 				//System.out.println(pwString);
 				
 				if (paswrd.equals(pwString)) {
 					//System.out.println("hahahah");
 					int id = rs.getInt("UserId");
 					System.out.println(id);
 					HttpSession session = request.getSession();
				    session.setAttribute("UserId", id );
 					RequestDispatcher requestDispatcher = 
 		 	    			request.getRequestDispatcher("/home.jsp");
 		 			requestDispatcher.forward(request, response);
 					
				}
 				
 			else {
 				request.setAttribute("validity", "false");
 				RequestDispatcher requestDispatcher = 
		 	    			request.getRequestDispatcher("/signin.jsp");
		 			requestDispatcher.include(request, response);
			}
 				
 			}
 	    		
 			if (login != true) {
 				request.setAttribute("validity", "false");
 				RequestDispatcher requestDispatcher = 
	 	    			request.getRequestDispatcher("/signin.jsp");
	 			requestDispatcher.include(request, response);
			}
	 	    		
 	    		rs.close();
 	            st.close();
 	            con.close();
 	    		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
