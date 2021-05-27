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


@WebServlet("/DISHREM")
public class DISHREM extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String Id = request.getParameter("DishID");
	String RestID = request.getParameter("RestID");
	
	  try {
           Connection con=ConnectionUtil.getConnection();
     String query="DELETE FROM DISH WHERE DishId = ? AND RestID =?";
           PreparedStatement pmt=con.prepareStatement(query);
           pmt.setString(1,Id);
          pmt.setString(2 , RestID);
           
           
           int n =  pmt.executeUpdate();
           
           if(n>0)
           {
        	  
            
               
                 
        	   RequestDispatcher rd =  request.getRequestDispatcher("DISHREM.jsp?UserID="+RestID);
       		   rd.include(request,response);
           }
           
           
	  }
       catch(ClassNotFoundException ce) {ce.printStackTrace();}
       catch(SQLException se) {se.printStackTrace();}
       
   }
	
	

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
