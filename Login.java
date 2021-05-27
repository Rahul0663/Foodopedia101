
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String UserID = request.getParameter("UserID");
		String Password = request.getParameter("Password");
		
		 
         
		try {
			Connection con = ConnectionUtil.getConnection();
			String query = "select * from REGISTER where UserID='" + UserID + "' AND Password='" + Password + "'";
			PreparedStatement pmt= con.prepareStatement(query);
			Statement stmt = con.createStatement();
			int i = pmt.executeUpdate(query);

			ResultSet rs = stmt.executeQuery(query);
			if (i == 1) 
			{
			while(rs.next())
			{
				String Role = rs.getString("Role");
		
				
					switch (Role)
					{
					case "Admin": 
					{
						RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
						rd.forward(request, response);

						break;
					}
					case "Rest": 
					{
						RequestDispatcher rd1 = request.getRequestDispatcher("Owner.jsp?UserID="+UserID);
						rd1.forward(request, response);
						break;
					}
					case "User": 
					{
						RequestDispatcher rd2 = request.getRequestDispatcher("User.jsp?UserID="+UserID);
						rd2.forward(request, response);
						break;
					}
					case "Dile" :
					{
						System.out.print("hii");
						RequestDispatcher rd3 = request.getRequestDispatcher("Delivery.jsp?UserID="+UserID);
						rd3.forward(request, response);
						break;
					}
					
					}
					}
			}
			
			else {
				System.out.print("hii");				
					
					RequestDispatcher rd3 = request.getRequestDispatcher("Login.jsp");
					
					rd3.forward(request, response);

				}
			
		
		}
		catch (ClassNotFoundException ce) 
		{
			ce.printStackTrace();
			System.out.println("class");
		} 
		catch (SQLException se) 
		{
			se.printStackTrace();
			System.out.println("class");
		}
		}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
