

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



@WebServlet("/DISHMOD")
                public class DISHMOD extends HttpServlet
                {
            	private static final long serialVersionUID = 1L;
	            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	            {
		        String DishId = request.getParameter("DishID");
		        String Name = request.getParameter("Name");
		        String Details = request.getParameter("Details");
		        String RestID =request.getParameter("RestID");
		        String price = request.getParameter("price");
		        String Category = request.getParameter("category");
		        String Ratings = request.getParameter("rating");
		        
		       
		        
		        
		        
	            try 
	            {
	            Connection con=ConnectionUtil.getConnection();
	            String query="UPDATE DISH SET Name=? , Details=?, RestID=? ,price=? , Category=?, Ratings=?WHERE DishId=?";
	            PreparedStatement pmt=con.prepareStatement(query);
	           
	            pmt.setString(1,Name);
	            pmt.setString(2,Details);
	            pmt.setString(3, RestID);
	            pmt.setString(4,price);
	            pmt.setString(5, Category);
	            pmt.setString(6,Ratings);
	            
	            pmt.setString(7,DishId);
	           
	            
	           int n = pmt.executeUpdate();
	            if(n>0)
	            {
	            	
		            
	            	RequestDispatcher rd =  request.getRequestDispatcher("DISHMOD.jsp?UserID="+RestID);
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
