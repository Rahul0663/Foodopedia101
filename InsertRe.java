	


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




@WebServlet("/InsertRe")
public class InsertRe extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
	String RestId = request.getParameter("RestID");
	   String RestName = request.getParameter("Name");
	   String  Mobile = request.getParameter("Mobile");
	   	   
	   String Address = request.getParameter("Address");
	   String City = request.getParameter("City");
	   String State = request.getParameter("State");
	   String Ratings = request.getParameter("rating");
	   String Descp = request.getParameter("descp");
	   String Password = request.getParameter("Password");
	 String Role= "Rest";
	       
        try {
           Connection con=ConnectionUtil.getConnection();
            String query="insert into RESTAURANT values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            
         
            pmt.setString(1, RestName);
            pmt.setString(2, Ratings);
            pmt.setString(3, Descp);
            
            pmt.setString(4, RestId);
            pmt.setString(5, Address);
            pmt.setString(6, City);
            pmt.setString(7, State);
            pmt.setString(8, Mobile);
            pmt.setString(9,Password);
           
            String query1 ="insert into REGISTER(UserId ,Role, Password)  values(?,?,?)";
            PreparedStatement pmt1=con.prepareStatement(query1);
            pmt1.setString(1,RestId);
            pmt1.setString(2,  Role);
            pmt1.setString(3,Password);
            int m = pmt1.executeUpdate();
           int n =  pmt.executeUpdate();
            if(n>0)
            {
            	if(m>0)
            	{
            	RequestDispatcher rd2 =  request.getRequestDispatcher("READD.html");
        		rd2.forward(request,response);
            	}
            }
            
                
	  }
        catch(ClassNotFoundException ce) {ce.printStackTrace();}
        catch(SQLException se) {se.printStackTrace();}
        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,NumberFormatException, IOException {
		
		doGet(request, response);
	}

}
