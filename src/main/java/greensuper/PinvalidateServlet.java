package greensuper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Decoder.Text;

import java.io.IOException;
import java.io.PrintWriter;

import classes.Backtopin;
import classes.PinGenarate;
/**
 * Servlet implementation class PinvalidateServlet
 */
@WebServlet("/PinvalidateServlet")
public class PinvalidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();
	    
	    String pin = request.getParameter("pin1") + request.getParameter("pin2") + request.getParameter("pin3") +
	    		request.getParameter("pin4") + request.getParameter("pin5") + request.getParameter("pin6");
	    int pinNumber = Integer.parseInt(pin);
	    //System.out.println(pinNumber);
	    HttpSession session = request.getSession();
	    int random = (int) session.getAttribute("pin");
	    
	    if (random == pinNumber) {
			
	    	//System.out.println("hehe");
	    	session.removeAttribute("pin");
	    	session.setAttribute("validate", true);
		    RequestDispatcher requestDispatcher = 
 	    			request.getRequestDispatcher("/Newpassword.jsp");
 			requestDispatcher.forward(request, response);
		    out.close();
		} 
	    
	    else {
			//System.out.println("wrong pin");
			RequestDispatcher requestDispatcher = 
 	    			request.getRequestDispatcher("/forgetpassword.jsp");
 			requestDispatcher.include(request, response);
		    out.close();
		}
	    
	}

}
