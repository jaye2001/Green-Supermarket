import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.sql.DataSource;

@WebServlet("/ProductDetails")
public class ProductDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ProductDetails() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve product details from the form
        String productName = request.getParameter("productName");
        double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        // Calculate the total price
        double totalPrice = unitPrice * quantity;

        // Get a database connection
        Connection con = null;
        try {
            con = dbconnection.initializeDatabase();

            // Perform database operations here, e.g., insert product details into the cart table
            // You can use PreparedStatement to safely insert data into the database

            // Example code to insert data into the cart table
            String insertQuery = "INSERT INTO cart (ProductName, QTY, UserId, Price) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(insertQuery);
            preparedStatement.setString(1, productName);
            preparedStatement.setInt(2, quantity);
            preparedStatement.setInt(3, 1); // You can set the UserId as needed
            preparedStatement.setDouble(4, totalPrice);
            preparedStatement.executeUpdate();

            // Close the PreparedStatement and database connection
            preparedStatement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect the user to a success page or back to the product page
        response.sendRedirect("success.jsp");
    }
}