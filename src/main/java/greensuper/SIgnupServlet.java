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
import java.text.SimpleDateFormat;


import jakarta.servlet.http.Part;
import java.sql.ResultSet;

import code.dbconnection;
import classes.Existingerr;

/**
 * Servlet implementation class SIgninServlet
 */

@WebServlet("/SignupServlet")
@MultipartConfig

public class SIgnupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Connection con;
		try {
			con = dbconnection.initializeDatabase();
			String email = request.getParameter("email");
 			PreparedStatement st = con.prepareStatement("Select * from users where email = ?");
 			st.setString(1, email);
 			ResultSet rs = st.executeQuery();
			boolean login = false;
			int userId = 0;
 			
 			Existingerr Existingerr = new Existingerr();
 			
 			while (rs.next()) {
 				login = true;
 				
 			}
 	    		
 			if (login == true) {
 				Existingerr.setPage("Signup");
 				Existingerr.setEmail(email);
				
				request.setAttribute("Existingerr", Existingerr);
	 			RequestDispatcher requestDispatcher = 
	 	    			request.getRequestDispatcher("/forgetpassword.jsp");
	 			requestDispatcher.forward(request, response);
			}
 			
 			else {
 				
 				//Part filePart = request.getPart("photo");
 				//InputStream inputStream = filePart.getInputStream();
 				
 				PreparedStatement st1 = con.prepareStatement("insert into users (Fname, Lname, Bdate, MbNumber, address, pswrd, roll, email) values(?, ?, ?, ?, ?, ?, ?, ?)");
 	 			
 				st1.setString(1, request.getParameter("Fname"));
 	 			st1.setString(2, request.getParameter("Lname"));
 	 		
 	 			String dateString = request.getParameter("Birthdate");
 	 			
 	 			java.util.Date utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
					java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
					
				
				//System.out.println(sqlDate);
				st1.setDate(3, sqlDate);
 	 			st1.setString(4, request.getParameter("MbNum"));
 	 			st1.setString(5, request.getParameter("address"));
 	 			st1.setString(6, request.getParameter("password"));
 	 			st1.setString(7, "user");
 	 			st1.setString(8, request.getParameter("email"));
 	 			
 	 			st1.executeUpdate();
 	 			
 	 			st1.close();
 	 			
 	 			Part filePart = request.getPart("photo");
 	 			InputStream inputStream = filePart.getInputStream();
 	 			
 	 				if (filePart != null && filePart.getSize() > 0) {
						
 	 					PreparedStatement st2 = con.prepareStatement("Select UserId from users where email = ?");
 	 		 			st2.setString(1, email);
 	 		 			ResultSet rs1 = st2.executeQuery();
 	 		 			
 	 					
 	 		 			boolean user = false;
 	 		 			
 	 		 			while (rs1.next()) {
 	 		 				user = true;
 	 		 				 userId = rs1.getInt("UserId");
 	 		 			}
 	 		 			
 	 		 			if (user == true) {
 	 		 				
 	 		 				
 	 	 					PreparedStatement st3 = con.prepareStatement("insert into userpht (UserId, pht) values(?, ?)");
 	 	 					
 	 	 					st3.setInt(1, userId);
 	 	 					st3.setBlob(2, inputStream);
 	 	 					
 	 	 					st3.executeUpdate();
 	 	 					
 	 	 					st3.close();
						}
 	 		 			
 	 					
 	 					st2.executeQuery();
 	 					
 	 					st2.close();
 	 					rs1.close();
					}
 	 			
 	 			
 	 			RequestDispatcher requestDispatcher = 
	 	    			request.getRequestDispatcher("/signin.jsp");
	 			requestDispatcher.forward(request, response);
			}
 				
	 	    		
 	    		rs.close();
 	            st.close();
 	            con.close();
 	    		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (java.text.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
