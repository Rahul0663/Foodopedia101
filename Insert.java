

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  String UserID = request.getParameter("UserID");
	  String Name = request.getParameter("Name");
	  String  Mobile = request.getParameter("Mobile");
	  String Email = request.getParameter("Email");	   
	  String Address = request.getParameter("Address");
	   String City = request.getParameter("City");
	   String State = request.getParameter("State");
	   
	   String Role = "User";
	   String Password = request.getParameter("Password");
	 
	       
        try {
           Connection con=ConnectionUtil.getConnection();
            String query="insert into REGISTER values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1, UserID);
            pmt.setString(2, Name);
            pmt.setString(3, Mobile);
            pmt.setString(4, Email);
            pmt.setString(5, Address);
            pmt.setString(6, City);
            pmt.setString(7,State);
            
            pmt.setString(8, Role);
            pmt.setString(9,Password);
            
           
           
           int n =  pmt.executeUpdate();
            if(n>0)
            {
            	RequestDispatcher rd2 =  request.getRequestDispatcher("User.html");
        		rd2.forward(request,response);

            }
            
                
	  }
        catch(ClassNotFoundException ce) {ce.printStackTrace();}
        catch(SQLException se) {se.printStackTrace();}
        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,NumberFormatException, IOException {
		
		doGet(request, response);
	}

}
