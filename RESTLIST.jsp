<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
					
		%>
		<style>
		body
		{
		 background-color: #2d313c;
		 color: #ffbe00; 
		}
		table td{
		color: white;
		}
		
		</style>
	
        
		<%
		try{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","RAHUL","R0A6H6U3L");
			Statement statement = connection.createStatement();
			String sql ="SELECT * FROM RESTAURANT";
			ResultSet  rs= statement.executeQuery(sql);
		
		%>
		<table>
        <tr>
        <th>Restuarant id</th>
        <th>Restuarant name</th>
        <th>Description</th>
        <th>Rating</th>
        </tr>
        <% while(rs.next()){ %>
		<tr>
		<td><%=rs.getString("RestId") %></td>
		<td><%=rs.getString("RestName") %></td>
		<td><%=rs.getString("Description") %></td>
		<td><%=rs.getString("Ratings") %></td>
		</tr>
		<%
		}
        %>
		</table>
		
        <%
		}
		 catch (Exception e) {
		e.printStackTrace();
		}
		%>
	
		</body>
		</html>	