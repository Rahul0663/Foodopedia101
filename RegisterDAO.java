
import java.sql.*;
import java.util.*;
public class RegisterDAO {
	
	
	

	public Register getRegisterById(String UserId) throws ClassNotFoundException, SQLException {
		Connection con=ConnectionUtil.getConnection();
		Register r=null;
		try {
		     PreparedStatement pmt=con.prepareStatement("select * from REGISTER where USERID=?");	
		     pmt.setString(1, UserId);
		     ResultSet rs=pmt.executeQuery();
		     if(rs.next())
		     {
		    	 r=new Register(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
		     }
		}
		catch(SQLException se) {se.printStackTrace();}
		return r;
	}//getEmployeeById
	
	
	
	
	
}//class









