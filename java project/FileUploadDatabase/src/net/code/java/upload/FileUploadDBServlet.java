package net.code.java.upload;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
     
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/jproject";
    private String dbUser = "root";
    private String dbPass = "toor";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
    	String id  = request.getParameter("id");
        String complain  = request.getParameter("complain");
        String mobile  = request.getParameter("mobile");
        String complainT  = request.getParameter("complainT");
        String location  = request.getParameter("location"); 
        String aadharno  = request.getParameter("aadharno"); 
        String email  = request.getParameter("email"); 
        String date  = request.getParameter("date"); 
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
    
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO contacts(complain , mobile , complainT, location ,aadharno , email,date)" + "values(?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, complain);
            statement.setString(2, mobile); 
            statement.setString(3, complainT);
            statement.setString(4, location);
            statement.setString(5, aadharno);
            statement.setString(6, email);
            statement.setString(7, date);

 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "THANK YOU!!YOUR COMPLAIN IS REGISTERED AND SUBMITED TO THE AUTHORITY NOW PLEASE INSERT THE IMAGE OF THE SAME COMPLAIN";
            
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
            getServletContext().getRequestDispatcher("/index1.jsp").forward(request, response);
        }
        }
    }