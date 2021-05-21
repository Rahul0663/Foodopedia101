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
	//String UserID = (String) request.getAttribute("userID");

	try {
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "RAHUL", "R0A6H6U3L");
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM RESTAURANT where RESTID='dg'";
		
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
.login-box{
 width: 320px;
 position: absolute;
 top: 60%;
 left: 50%;
 transform: translate(-50%,-50%);
 color: white;
  font-family: "Varela Round";
 
 }
 #or{
 float: left;
 font-size: 40px;
 border-bottom: 6px solid #ffbe00;
 margin-bottom: 50px;
 padding: 1px 0;
 color: white;
  font-family: "Varela Round";
 }
 .textbox{
 width: 100%;
 overflow: hidden;
 font-size: 20px;
 padding: 8px 0;
 margin: 8px 0;
 border-bottom: 1px solid #ffbe00;
 
 }
 .textbox i{
 width: 26px;
 float: left;
 text-align: center;
  font-family: "Varela Round";
 }
 #file{
 color: #ffbe00;
 
 
 }
 .textbox input{
 border: none;
 outline: none;
 background: none;
 color: white;
 font-size: 18px;
 width: 50%;
 float: left;
 margin: 0 10px;
  font-family: "Varela Round";
 }
 .btn{
 width: 60%;
 background: #ffbe00;
 border: 2px solid #ffbe00;
 color: white;
 padding: 5px;
 font-size: 18px;
 cursor: pointer;
 margin: 40px 0;
 float: left;
 position: initial;
  font-family: "Varela Round";
 border-radius: 20px;
 }
</style>
<script>
	
</script>
</head>
<body>
	<div id="Head">
		<h1>FoodoPedia</h1>

		<% while(rs.next()) {%>

		<a href="Home.html">Log Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
		<a href="CPASSO.jsp">Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
		<a href="MyProfile.html">My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
		<a href="Owner.jsp"><%= rs.getString("RESTNAME") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
	<hr style="color: #2d313c; width: 0px; height: 0px;">
	<div id="topnav">
		<a href="DISHLIST.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View
			Dish&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a href="DISHADD.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add
			Dish&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a href="DISHMOD.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Modify
			Dish&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a href="DISHREM.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Remove
			Dish&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<hr style="height: 0px; width: 0px;">
	<h1 id="or">Remove Dish</h1>
<div class="login-box">
    
<form action="DISHREM" method="post">
    
    
      <div class="textbox">
        <input type="text" placeholder="DISH ID" name="DISHID">
         </div>
         <div class="textbox">
     <input type="text" placeholder="Dish Name" name="Name">
      </div>
         
             
           
      <input type="submit" class="btn" value="Remove Dish" >
 </form>
 </div>
</body>
</html>