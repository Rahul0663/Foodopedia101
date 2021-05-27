<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap"
	rel="stylesheet">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
          
	try {
		String UID = request.getParameter("UserID");
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "RAHUL", "R0A6H6U3L");
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM REGISTER where UserID='"+UID+"'";
		
		ResultSet rs = statement.executeQuery(sql);
%>
<style>
body {
	background-color: #2d313c;
}

::-webkit-scrollbar {
	display: none;
}

#Head {
	background-color: #ffbe00;
	padding: 30px;
	color: #2d313c;
	border-radius: 30px;
	font-family: "Varela Round";
}

h1, #Head a {
	display: inline;
}

#Head a:hover {
	color: #2d313c;
}

#Head a {
	font-size: 20px;
	float: right;
	text-decoration: none;
	color: white;
	font-family: "Varela Round";
}

#topnav {
	background-color: whitesmoke;
	padding: 15px;
	border-radius: 20px;
	padding-left: 10px;
}

#topnav a {
	font-size: 20px;
	color: #2d313c;
	text-decoration: none;
	font-family: "Varela Round";
}

#topnav a:hover {
	color: #ffbe00;
}

img {
	border-radius: 20px;
	padding-left: 2.5%;
	width: 95%;
	height: 70%;
}
</style>
<script>
	
</script>
</head>
<body>
	<div id="Head">
		<h1>FoodoPedia</h1>

		<%
		while(rs.next())
		{
			
		%>

		<a href="Home.html">Log Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
		<a href="CPASSU.jsp?UserID=<%= rs.getString("UserID")%>">Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
		<a href="MyProfileU.jsp?UserID=<%= rs.getString("UserID")%>">My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
		<a href="User.jsp?UserID=<%= rs.getString("UserID")%>">Hi, <%= rs.getString("NAME") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	
		
       
	</div>
	<hr style="color: #2d313c; width: 0px; height: 0px;">
	<div id="topnav">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="CATEGORY.jsp?UserID=<%= rs.getString("UserID")%>">Category</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	<a href="LIST.jsp?UserID=<%= rs.getString("UserID")%>">Order List</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="ODHIST.jsp?UserID=<%= rs.getString("UserID")%>">Order History</a>
		
			</div>
	<hr style="height: 0px; width: 0px;">
	<img src="respic.jfif">
</body>
</html>
<%
	}
    %>
		
        <%
		 }
		 catch (Exception e)
         {
		 e.printStackTrace();
		 }

		%>