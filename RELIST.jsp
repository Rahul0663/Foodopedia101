<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
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
<style>
body
{
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

		 
#rest{
width: 620px;
height: 120px;
padding-left: 20px;
background-image: url("MicrosoftTeams-image (12).png");
border-radius: 20px;
	margin: auto;
	

font-family: "Varela Round";
}
#rest:hover{
border-radius: 50px;
height: 140px;
padding-top: 25px;
}

h2{
padding-top: 10px;
 color: #2d313c;
 font-family: "Varela Round";
}
p{
color:white;
font-family: "Varela Round";
font-size: 20px;
}


h2 , p{
display: inline;}
</style>
<script>

</script>
</head>
<body>
    <div id="Head">
<h1>FoodoPedia</h1>


<% while(rs.next()){ %>
<a href="Home.html" >Log Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="CPASS.jsp" >Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="MyProfile.jsp" >My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="Admin.jsp" >Hi, <%= rs.getString("Name") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<%}
rs.close();
String sql1 ="SELECT * FROM RESTAURANT order by RATINGS DESC";
ResultSet  rs1= statement.executeQuery(sql1);
%>
    </div>
    <hr style="color: #2d313c; width: 0px; height: 0px;">
<div id="topnav">
    <a href="RELIST.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    <a href="READD.jsp">Add Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 <a href="REMOD.jsp">Modify Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
   <a href="REREM.jsp">Remove Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 </div>
<hr style="height: 0px; width: 0px;">


        
        <% while(rs1.next()){ %>
		<div id="rest">
		<h2>Restaurant ID :</h2><p><%=rs1.getString("RestId") %></p><br>
		<h2>Restaurant Name :</h2><p><%=rs1.getString("RestName") %></p><br>
		<h2>Description :</h2><p><%=rs1.getString("Description")%></p><br>
		<h2>Ratings :</h2><p><%=rs1.getString("Ratings") %>&#11088;</p><br>
		
		</div>
		<hr>
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