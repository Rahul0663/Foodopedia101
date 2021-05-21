<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
					
		%>
		<style>
    /* Google fonts - Open Sans */
    @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);
    /* colors */
    $blue:rgba(79,192,210,1);
    $green:rgba(82,210,154,1);
    $yellow:rgba(231,196,104,0.7);
    $orange:rgba(235,118,85,1);
    $dark-bg:rgba(0,0,0,0.9);
    $light-bg:rgba(255,255,255,0.1);
    $text:rgba(255,255,255,0.9);
    /* body */
    body {
      background:$dark-bg;
      font-family: 'Open Sans', sans-serif;
    }
    
    /* links */
    .nfl a, .mlb a, .nhl a, .pga a {text-decoration:none;transition: color 0.2s ease-out;}
    .nfl a {color:$blue;}
    .nfl a:hover {color:darken($blue, 20%);}
    
    
    /* wrapper */
    .wrapper {
      width:100%;
      max-width:1000px;
      margin:20px auto 100px auto;
      padding:0;
      background:$light-bg;
      color:$text;
      overflow:hidden;
      position:relative;
    }
    
    /* lists */
    .row ul {
      margin:0;
      padding:0;
    }
    .row ul li  {
      margin:0;
      font-size:16px;
      font-weight:normal;
      list-style:none;
      display:inline-block;
      width:20%;
        box-sizing:border-box;
      @media only screen and (max-width:767px) and (min-width:480px) {
        font-size:13px;
      }
      @media only screen and (max-width:479px) {
        font-size:13px;
      }
    }
    
    .title ul li {
      padding:15px 13px;
    }
    .row ul li {
      padding:5px 10px;
    }
    
    /* rows */
    .row {
      padding:20px 0;
      height:30px;
      font-size:0;
      position:relative;
      overflow:hidden;
      transition:all 0.2s ease-out;
      border-top:1px solid darken($light-bg, 100%);
    }
    .row:hover {
      background-color:lighten($dark-bg, 10%);
      height:65px;
      @media only screen and (max-width : 767px) {
        height:85px;
      }
      @media only screen and (max-width : 359px) {
        height:105px;
      }
    }
    .title {
      padding:25px 0 5px 0;
      height:45px;
      font-size:0;
      background-color:$light-bg;
      border-left:3px solid lighten($light-bg, 100%);
    }
    .title:hover {
      height:45px;
      background-color:$light-bg;
      border-left:3px solid lighten($light-bg, 100%);
    }
    
    .title-hide {
      @media only screen and (max-width:767px) {
        display:none;
      }
    }
    
    .nfl {border-left:3px solid darken($blue, 30%);}
    .nfl:hover {border-left:3px solid $blue;}
    
    
    /* row one - fadeIn */
    .row-fadeIn-wrapper {
      opacity:0;
      font-size:0;
      height:0;
      overflow:hidden;
      position:relative;
      transition:all 0.2s ease-out;
      animation:fadeIn 0.4s ease-out 2s 1 alternate;
      animation-fill-mode:forwards;
    }
    .row-fadeIn-wrapper:hover {
      height:35px;
      @media only screen and (max-width : 767px) {
        height:55px;
      }
      @media only screen and (max-width : 359px) {
        height:75px;
      }
    }
    
    .fadeIn {
      padding:20px 0;
      font-size:0;
      position:absolute;
      transition:all 0.2s ease-out;
      width:100%;
    }
    .fadeIn:hover {
      background-color:lighten($dark-bg, 10%);
    }
    
    /* row two - fadeOut */
    .row-fadeOut-wrapper {
      font-size:0;
      overflow:hidden;
      position:relative;
      transition:all 0.2s ease-out;
      animation:fadeOut 0.4s ease-out 8s 1 alternate;
      animation-fill-mode:forwards;
      opacity:1;
      height:65px;
    }
    .row-fadeOut-wrapper:hover {
      height:100px;
    }
    
    /* update content */
    .update-row {
      animation:update 0.5s ease-out 12s 1 alternate;
    }
    .update1 {
      position:absolute;
      top:25px;
      display:inline-block;
      opacity:1;
      animation:update1 1s ease-out 12s 1 alternate;
      animation-fill-mode:forwards;
    }
    .update2 {
      position:absolute;
      top:25px;
      display:inline-block;
      opacity:0;
      animation:update2 4s ease-out 13s 1 alternate;
      animation-fill-mode:forwards;
    }
    
    /* more content */
    ul.more-content li {
      position:relative;
      top:22px;
      font-size:13px;
      margin:0;
      padding:10px 13px;
      display:block;
      height:50px;
      width:100%;
      color:darken($text,50%);
      @media only screen and (max-width:767px) {
        font-size:11px;
      }
    }
    
    /* small content */
    .small {
      color:darken($text,60%);
      font-size:10px;
      padding:0 10px;
      margin:0;
      @media only screen and (max-width:767px) {
        display:none;
      }
    }
    
    /* keyframe animations */
    @keyframes fadeIn {
      from {background:$light-bg;opacity:0;padding:0;}
      to {background:darken($light-bg,80%);opacity:1;padding:0 0 65px 0;}
    }
    @keyframes fadeOut {
      from {background:darken($light-bg,80%);opacity:1;height:65px;}
      to {background:$light-bg;opacity:0;height:0;}
    }
    @keyframes update {
      0% {background:darken($light-bg,80%);}
      50% {background:$light-bg;}
      100% {background:darken($light-bg,80%);}
    }
    @keyframes update1 {
      0% {opacity:0;}
      0% {opacity:1;}
      100% {opacity:0;}
    }
    @keyframes update2 {
      0% {opacity:0;color:$text;}
      20% {opacity:1;color:$green;}
      100% {opacity:1;color:$text;}
    }
    
    </style>
<section class="wrapper">
    <!-- Row title -->
    <main class="row title">
      <ul>
        <li>Restuarant id</li>
        <li>Restuarant name</li>
        <li><span class="title-hide"></span> Description</li>
        <li>Rating</li>
      </ul>
    </main>
    <!-- Row 1 - fadeIn -->
    <section class="row-fadeIn-wrapper">
      <article class="row fadeIn nfl">
        
      </article>
    </section>
    
    
  </section>
		<%
		try{
			Connection connection = null;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            connection = DriverManager.getConnection("jdbc:odbc:data", "system", "desh15bhushan");
			Statement statement = connection.createStatement();
			String sql ="SELECT * FROM users";
			ResultSet  rs= statement.executeQuery(sql);
		while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("first_name") %></td>
		<td><%=rs.getString("last_name") %></td>
		<td><%=rs.getString("city_name") %></td>
		<td><%=rs.getString("email") %></td>
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		</table>
		</body>
		</html>	