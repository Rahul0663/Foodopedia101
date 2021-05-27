

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/REREM")
public class REREM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String Id = request.getParameter("RestID");
	String Password = request.getParameter("Password");
	
	  try {
          Connection con=ConnectionUtil.getConnection();
           String query="DELETE FROM RESTAURANT WHERE RestID = ? AND Password=?";
           PreparedStatement pmt=con.prepareStatement(query);
           pmt.setString(1,Id);
           pmt.setString(2, Password);
           
           String query1="DELETE FROM REGISTER WHERE UserID = ? ";
           PreparedStatement pmt1=con.prepareStatement(query1);
           pmt1.setString(1,Id);
          
          
          
          int n =  pmt.executeUpdate();
          int m =  pmt1.executeUpdate();
           if(n>0)
           {
        	   if(m>0)
               {
            
               
                 
        	   RequestDispatcher rd =  request.getRequestDispatcher("REREM.jsp");
       		rd.include(request,response);
           }
           }
         
               
	  }
       catch(ClassNotFoundException ce) {ce.printStackTrace();}
       catch(SQLException se) {se.printStackTrace();}
       
   }
	
	

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
