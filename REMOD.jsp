<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
		try{
			String UID = request.getParameter("UserID");
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
.login-box{
 width: 320px;
 position: absolute;
 top: 100%;
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
function myFunction() {
      var x = document.getElementById("Password");
      if (x.type === "password") {
        x.type = "text";
      } else {
        x.type = "password";
      }
    }
    function Validate() {
        
        	alert("Restaurant Modified Successfully");
        return true;
    
    }
</script>



</head>
<body>
    <div id="Head">
<h1>FoodoPedia</h1>
<% while(rs.next()) {%>

<a href="Home.html" >Log Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="CPASS.jsp" >Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="MyProfile.jsp" >My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<a href="Admin.jsp" >Hi, <%=rs.getString("Name")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
<%
		}
rs.close();
        %>
		
		
       
    </div>
    <hr style="color: #2d313c; width: 0px; height: 0px;">
<div id="topnav">
    <a href="RELIST.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    <a href="READD.jsp">Add Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 <a href="REMOD.jsp">Modify Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
   <a href="REREM.jsp">Remove Restaurant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
  </div>
<hr style="height: 0px; width: 0px;">
<h1 id="or">Modify Restaurant </h1>
<div class="login-box">
    
<form action="REMOD" method="post">
    
    
      
         <div class="textbox">
           <select  name="RestID" required>
        <%
    Statement statement1 = connection.createStatement();
	String sql1 = "SELECT * FROM RESTAURANT ";
	ResultSet rs1 = statement.executeQuery(sql1);
    %>
           <option >RESTAURANT ID</option>
          <% while(rs1.next()){ %>
          <option value="<%= rs1.getString("RestID") %>"><%= rs1.getString("RestID") %></option>
          <%} 
          %>
          </select>
           </div>
          
          <%
          rs1.close();%>
           
           <div class="textbox">
           <input type="text"  name="Name" placeholder="New Name" required>
            </div>
          
          <div class="textbox">
           <input type="tel" id="phone" name="New Mobile" placeholder="Mobile Number" required>
            </div>
           
         <div class="textbox">
            <input type="text" placeholder="New Address" name="Address" required>
           </div>
           <div class="textbox">
          <input type="text" placeholder="New City" name="City" required>
         </div>
         <div class="textbox">
            <input type="text" placeholder="New State" name="State" required>
           </div>
                <div class="textbox">
            <input type="text" placeholder="New Rating" name="rating" required>
           </div>
                <div class="textbox">
            <input type="text" placeholder="New Description" name="descp" required>
           </div>
        <div class="textbox">
       <input type="password" placeholder="Password" name="Password" id="Password" required>
      </div>
           <input type="checkbox" onclick="myFunction()">Show Password
  <%
		}
		 catch (Exception e) {
		e.printStackTrace();
		}
		%>
   
  <input type="submit" class="btn" value="Modify Restaurant" onclick="return Validate()">
 </form>
 </div>
</body>

</html>