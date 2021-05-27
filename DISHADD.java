import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DISHADD")
@MultipartConfig(maxFileSize = 16177216)

public class DISHADD extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {  String DishId = request.getParameter("DishId");
       String Name = request.getParameter("Name");
       String Details = request.getParameter("Details");
       String RestID = request.getParameter("RestID");       
       String Price = request.getParameter("Price");
       String Category= request.getParameter("Category");
       String Ratings = request.getParameter("Ratings");
      
        try {
            Connection con=ConnectionUtil.getConnection();
            String query="insert into DISH values(?,?,?,?,?,?,?)";
            PreparedStatement pmt=con.prepareStatement(query);
			

            pmt.setString(1, DishId);
            pmt.setString(2, Name);
            pmt.setString(3, Details);
            pmt.setString(4, RestID);
            pmt.setString(5, Price);
            pmt.setString(6, Category);
            pmt.setString(7, Ratings);
            
           int n =  pmt.executeUpdate();
          
            if(n>0)
            {
                RequestDispatcher rd2 =  request.getRequestDispatcher("DISHADD.jsp?UserID="+RestID);
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