
import java.io.IOException;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String UserID = request.getParameter("UserID");
		  
		  String Password = request.getParameter("Password");
		  String Role  = "Admin";
        try {
            Connection con=ConnectionUtil.getConnection();
            
            
            String query="select * from REGISTER where UserID='"+UserID+"' AND Password='"+Password+"' AND Role ='"+Role+"'";
            Statement stmt=con.createStatement();
            int i=stmt.executeUpdate(query);
          
            if(i==1)
            {  
            switch(Role)
            	{  
            case "Admin":
                {
             	RequestDispatcher rd =  request.getRequestDispatcher("Admin.jsp");
            	rd.forward(request,response);
                	
        	    break;
        	    }
            case "Owner":
            	{
            	RequestDispatcher rd1 =  request.getRequestDispatcher("Owner.html");
            	rd1.include(request,response);
            	break;
            	}
            case "User":
            	{
            	RequestDispatcher rd2 =  request.getRequestDispatcher("User.html");
            	rd2.include(request,response);
            	break;
            	}
            	}
            }
            else
            {
            	RequestDispatcher rd3 =  request.getRequestDispatcher("Login.html");
        		rd3.include(request,response);
        		
            }    
        }
        catch(ClassNotFoundException ce) {ce.printStackTrace();
        }
        catch(SQLException se) {se.printStackTrace();
        }  
	}
            protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
