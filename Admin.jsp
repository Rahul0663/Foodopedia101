<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
		try{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","RAHUL","R0A6H6U3L");
			Statement statement = connection.createStatement();
			String sql ="SELECT * FROM REGISTER where ROLE='Admin'";
			ResultSet  rs= statement.executeQuery(sql);
		
		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">

<head>
<style>
body{
    background-color: #2d313c;
    
}
::-webkit-scrollbar{
    display: none;
}
#Head{
    background-color: #ffbe00;
    padding: 30px;
    color: #2d313c;
    border-radius: 30px;
        font-family: "Varela Round";
    
}
h1, #Head a{
    display: inline;
}
#a1:hover
{
color: #2d313c;
}
#Head a{   
    font-size: 20px;
    float: right;
    text-decoration: none;
    color: white;
    font-family: "Varela Round";
}
#log:hover
{
color: red;
}
#topnav{
    
    background-color: whitesmoke;
    padding: 15px;
    border-radius: 20px;
    padding-left: 10px;
        font-family: "Varela Round";
    
}
#topnav a{
    font-size: 20px;
    color: #2d313c;
    text-decoration: none;
}
#topnav a:hover
{
    color: #ffbe00;
}
img{
    border-radius: 20px;
    padding-left: 2.5%;
    width: 95%;
    height: 500PX;
}
</style>
<script>

</script>
</head>
<body>
    <div id="Head">
<h1>FoodoPedia</h1>
<% while(rs.next()) {%>
<a href="Home.html" id="log" >Log Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="CPASS.jsp" id="a1">Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="MyProfile.jsp" id="a1">My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="Admin.jsp" id="a1">Hi, <%=rs.getString("Name")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<%
		}
        %>
		
		
        <%
		}
		 catch (Exception e) {
		e.printStackTrace();
		}
		%>
    </div>
    <hr style="border : 1px solid #2d313c;">
<div id="topnav">
    <a href="RELIST.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    <a href="READD.jsp">Add Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 <a href="REMOD.jsp">Modify Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
   <a href="REREM.jsp">Remove Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
  </div>
<hr style="border : 1px solid #2d313c;">
<img src="adminimg.png">
</body>

</html>