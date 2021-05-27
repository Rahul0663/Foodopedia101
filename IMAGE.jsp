<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	try {
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "RAHUL", "R0A6H6U3L");
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM DISH";
		ResultSet rs = statement.executeQuery(sql);
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		while (rs.next())
		{

			
				Blob blob = rs.getBlob("Image");

				byte byteArray[] = blob.getBytes(1, (int) blob.length());

				response.setContentType("image/gif");

				OutputStream os = response.getOutputStream();

				os.write(byteArray);
				os.flush();
				os.close();
	%>


	<%
		}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>