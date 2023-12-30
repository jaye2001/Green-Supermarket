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

import com.mysql.cj.Session;

import classes.Mailverification;
import code.dbconnection;
import classes.PinGenarate;
import classes.Backtopin;
/**
 * Servlet implementation class ForgetpswrdServlet
 */
@WebServlet("/ForgetpswrdServlet")
public class ForgetpswrdServlet extends HttpServlet {  
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response)  
    throws ServletException, IOException { 
	
	String Email = request.getParameter("email");
	boolean login = false;
	
	response.setContentType("text/html");  
    PrintWriter out = response.getWriter();
    
		try {
			Connection con = dbconnection.initializeDatabase();
			PreparedStatement st = con.prepareStatement("Select * from users where email = ?");
			st.setString(1, Email);
			ResultSet rs = st.executeQuery();
			
				while (rs.next()) {
					login = true;
				}
				
				Backtopin backtopin = new Backtopin();
				backtopin.setEmail(Email);
				backtopin.setSend(true);
				
				if (login == true) {
					
					PinGenarate PinNumber = new PinGenarate();
					PinNumber.setGenarate(true);
					int pin = PinNumber.getRandom();
					
				    String to= Email;  
				    String subject="change password";  
				    String msg="<h1 style = 'color:navy;'>OTP is "+ pin +"</h1>";  
				          
				    Mailverification.send(to, subject, msg, true); 
				    
				    HttpSession session = request.getSession();
				    session.setAttribute("pin", pin);
				    session.setAttribute("email", Email);
				    
				    request.setAttribute("backtopin", backtopin);
				    RequestDispatcher requestDispatcher = 
		 	    			request.getRequestDispatcher("/forgetpassword.jsp");
		 			requestDispatcher.include(request, response);
				    out.close();  
				}
				else {
					
					request.setAttribute("backtopin", backtopin);
					RequestDispatcher requestDispatcher = 
		 	    			request.getRequestDispatcher("/forgetpassword.jsp");
		 			requestDispatcher.include(request, response);
				}
				
				 
				
				
				
			st.close();
			con.close();
				
		} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
				e.printStackTrace();
			}
		out.close(); 
	
    
    }  
  
}  
