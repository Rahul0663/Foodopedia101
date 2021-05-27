
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

 

public class ConnectionUtil 
{
    
    public static Connection getConnection()throws ClassNotFoundException,SQLException 
    {
        
        Connection con=null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","RAHUL","R0A6H6U3L");
        return con;
        
    }
 

}    