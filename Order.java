

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




@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String OrderID = "";
		String DishID = request.getParameter("DishID");
	   String RestID = request.getParameter("RestID");
	   String UserID = request.getParameter("UserID");
	   String  Price = request.getParameter("Price");
	   String Quantity = request.getParameter("Quantity");	   
	   int p = Integer.parseInt(Price);
	   int q = Integer.parseInt(Quantity);
	   int c = p*q;
	   String Cost = Integer.toString(c);
	   String Status = "Order Placed";
	   
     String Name= request.getParameter("NAME");
        try {
           Connection con=ConnectionUtil.getConnection();
            String query="insert into ORDER2 values(?,?,?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
            pmt.setString(1,OrderID);
            pmt.setString(2, DishID);
            pmt.setString(3, UserID);
            pmt.setString(4, RestID);
            pmt.setString(5,  Quantity);
            pmt.setString(6, Cost);
            pmt.setString(7, Status);
            pmt.setString(8,Name);
           int n =  pmt.executeUpdate();
            if(n>0)
            {
            	RequestDispatcher rd2 =  request.getRequestDispatcher("CATEGORY.jsp?UserID="+UserID);
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
