

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


@WebServlet("/REMOD")
                public class REMOD extends HttpServlet
                {
            	private static final long serialVersionUID = 1L;
	            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	            {
		        String RestID = request.getParameter("RestID");
		        String Name = request.getParameter("Name");
		        String Mobile = request.getParameter("Mobile");
		        String Address =request.getParameter("Address");
		        String City = request.getParameter("City");
		        String State = request.getParameter("State");
		        String Ratings = request.getParameter("rating");
		        String Description  = request.getParameter("descp");
		        String Password = request.getParameter("Password");
		        
		        
		        
	            try 
	            {
	            Connection con=ConnectionUtil.getConnection();
	            String query="UPDATE RESTAURANT SET RestName=? , Ratings=?, Description=? ,Mobile=? ,  Address=?, City=? , State=? WHERE RestId=? AND password=?";
	            PreparedStatement pmt=con.prepareStatement(query);
	            pmt.setString(1,Name);
	            pmt.setString(2,Ratings);
	            pmt.setString(3,Description);
	            pmt.setString(4,Mobile);
	            pmt.setString(5,Address);
	            pmt.setString(6,City);
	            pmt.setString(7,State);
	            pmt.setString(8,RestID);
	            pmt.setString(9,Password);
	            
	           int n = pmt.executeUpdate();
	            if(n>0)
	            {
	            	
		            
	            	RequestDispatcher rd =  request.getRequestDispatcher("REMOD.jsp");
	        		rd.include(request,response);
		           
	        		
	            }
	            else
	            {
	            	System.out.print("RED");
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
