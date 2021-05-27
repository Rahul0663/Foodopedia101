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


@WebServlet("/CANCEL")
public class CANCEL extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String Id = request.getParameter("ORDERID");
	
	String UID =request.getParameter("USERID");
	  try {
           Connection con=ConnectionUtil.getConnection();
     String query="DELETE FROM ORDER2 WHERE ORDERID = ?";
           PreparedStatement pmt=con.prepareStatement(query);
           pmt.setString(1,Id);
         
           
           
           int n =  pmt.executeUpdate();
           
           if(n>0)
           {
        	  
            
               
                 
        	   RequestDispatcher rd =  request.getRequestDispatcher("LIST.jsp?UserID="+UID);
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
