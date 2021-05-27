

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



@WebServlet("/status")
                public class status extends HttpServlet
                {
            	private static final long serialVersionUID = 1L;
	            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	            {
		        String OrderId = request.getParameter("OrderID");
		        
		        String UserId= request.getParameter("UserID");
		       
		        
		        
		        
	            try 
	            {
	            Connection con=ConnectionUtil.getConnection();
	            String query="UPDATE ORDER2 SET Status='Order Completed' WHERE OrderId=?";
	            PreparedStatement pmt=con.prepareStatement(query);
	           
	            pmt.setString(1,OrderId);
	            System.out.print(UserId);
	           
	            
	           int n = pmt.executeUpdate();
	            if(n>0)
	            {
	            	
		            
	            	RequestDispatcher rd =  request.getRequestDispatcher("LISTD.jsp?UserID="+UserId);
	        		rd.include(request,response);
		           
	        		
	            }
	            
	                 
		        }
	            catch(ClassNotFoundException ce)
	            {
	            ce.printStackTrace();
	            }
	            catch(SQLException se) 
	            {
	            se.printStackTrace();
	            }
	            }
                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        doGet(request, response);
             	}
                }
