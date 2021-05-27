

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


@WebServlet("/CPASS")
                public class CPASS extends HttpServlet
                {
            	private static final long serialVersionUID = 1L;
	            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	            {
		        String ID = request.getParameter("ID");
		        
		        
		        String Npass= request.getParameter("NPassword");
		        
		        
	            try 
	            {
	            Connection con=ConnectionUtil.getConnection();
	            
	            
	            
	            String query1="UPDATE REGISTER SET Password=? WHERE UserId=?";
	            PreparedStatement pmt1=con.prepareStatement(query1);
	            
	           
	            pmt1.setString(1,Npass);
	            pmt1.setString(2,ID);
	           
	            
	           
	           int m = pmt1.executeUpdate();
	          
	            	if(m>0)
	            	{
		            
	            	RequestDispatcher rd =  request.getRequestDispatcher("CPASS.jsp?UserID="+ID);
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
