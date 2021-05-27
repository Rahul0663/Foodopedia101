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
		String DID = request.getParameter("DishID");
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
.login-box{
padding: 30px;
 width: 320px;
 position: absolute;
 top: 70%;
 left: 50%;
 transform: translate(-50%,-50%);
 color: white;
  font-family: "Varela Round";
 border: 2px solid #ffbe00;
 border-radius: 10px;
 }
 #or{
 
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
 width: 86px;
 
 text-align: center;
  font-family: "Varela Round";
 }
 .textbox input{
 border: none;
 outline: none;
 background: none;
 color: white;
 font-size: 18px;
 width: 60%;
 
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
.textbox select{
 border: none;
 outline: none;
 background: none;
 color: grey;
 font-size: 18px;
 width: 70%;
 float: left;
 margin: 0 10px;
  font-family: "Varela Round";
  
 }
 .textbox option
 {
 color: #ffbe00;
 background: #2d313c;
 
 }
      #fas fa-lock2,#fas fa-lock
      {
          display: inline;
      }
</style>
<script>
	function Validate()
	{
		var q = document.getElementById("Quant").value;
		var p = document.getElementById("Price").value;
		
		var t  = p*q;
		
		alert("Your total bill is "+t);
		
		return true;
	}
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
	
	<div class="login-box">
	<form action="Order" method="post">
	<input type="hidden" name="UserID" value="<%= rs.getString("UserID")%>">
	<%} %>
	<%
	
	String sql1 = "SELECT * FROM DISH where DishID='"+DID+"'";
	
	ResultSet rs1 = statement.executeQuery(sql1);
	
	while(rs1.next()){
	%>
	
	
           <input type= "hidden" name="DishID" value="<%= rs1.getString("DishID")%>">
           <input type= "hidden" name="RestID" value="<%= rs1.getString("RestID")%>">
           <input type= "hidden" name="NAME" value="<%= rs1.getString("NAME")%>">
           
	      <div class="textbox">
          <%= rs1.getString("Name")%>
          </div>
	
	       <div class="textbox">
           Price: <input type= "number" name="Price" id="Price" value="<%= rs1.getString("Price")%>" readonly>
           </div>
           <div class="textbox">
           Quantity: <input type= "text" name="Quantity" id="Quant" value="1" onkeypress="return (event.charCode > 48 && 
event.charCode < 57)" >
           </div>
            
<input type="hidden"  value="<%= rs1.getString("RestID")%>">
            
	<input type="submit" class="btn" value="Place Order" onclick="return Validate()">
	
	</form>
	
	<%} %>
	</div></body>
</html>

		
        <%
		 }
		 catch (Exception e)
         {
		 e.printStackTrace();
		 }

		%>