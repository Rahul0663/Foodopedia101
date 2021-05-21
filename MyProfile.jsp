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
#Head a:hover{
    color: #2d313c;
}
#Head a{   
    font-size: 20px;
    float: right;
    text-decoration: none;
    color: white;
    font-family: "Varela Round";
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
    height: 70%;
}
#out
{
background-color: white;
padding: 40px;
border-radius: 20px;
}
#out:hover{
padding: 30px;
border-radius: 40px;
}
#in
{
background-color: #ffbe00; 
border-radius: 20px;
padding: 60px;
padding-left: 300px;
 font-family: "Varela Round";
}

#in h2{
font-size: 35px;
color:#2d313c;
border-bottom: 3px solid white;

}
#in p
{
font-size : 30px;

color: white;
}
#in h2,#in p{
display: inline;}
</style>
<script>

</script>
</head>
<body>
    <div id="Head">
<h1>FoodoPedia</h1>
<% while(rs.next()) {%>

<a href="Home.html" >Log Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="CPASS.jsp" >Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="MyProfile.jsp" >My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="Admin.jsp" >Hi,<%=rs.getString("Name")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

    </div>
    <hr style="color: #2d313c; width: 0px; height: 0px;">
<div id="topnav">
    <a href="RELIST.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    <a href="READD.jsp">Add Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 <a href="REMOD.jsp">Modify Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
   <a href="REREM.jsp">Remove Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
  </div>
<hr style="height: 0px; width: 0px;">
<div id="out">
<div id="in">
<h2>ID :-</h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("USERID") %></p><br><br>
<h2>NAME :-</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("NAME") %></p><br><br>
<h2>MOBILE :-</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("MOBILE") %></p><br><br>
<h2>E-MAIL :-</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("EMAIL") %></p><br><br>
<h2>ADDRESS :-</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("ADDRESS") %></p><br><br>
<h2>CITY :-</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("CITY") %></p><br><br>
<h2>STATE :-</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p><%= rs.getString("STATE") %></p><br><br>


</div>


</div>
<%
		}
        %>
		
		
        <%
		}
		 catch (Exception e) {
		e.printStackTrace();
		}
		%>
</body>

</html>