<!DOCTYPE html>
<html lang="en">

<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap"
	rel="stylesheet">


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food & Restaurant Homepage</title>


<style>
* {
	margin: 0;
	padding: 0;
}

::-webkit-scrollbar {
	display: none;
}

.d_flex, header {
	width: 100%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

body {
	background-color: #2d313c;
	width: 100%;
	height: 100%;
	overflow: hidden;
	font-family: "Varela Round";
}

.bg_img {
	position: fixed;
	right: 0;
	top: 0;
	height: 100%;
}

.bg_img img {
	width: 70vh;
	display: block;
	position: relative;
}

.bg_img .social {
	position: absolute;
	width: 50px;
	top: 50%;
	right: 0;
	background-color: #fff;
	color: #000;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	z-index: 2;
	padding: 25px 0px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
	-webkit-box-shadow: -3px 10px 10px rgba(0, 0, 0, 0.3);
	box-shadow: -3px 10px 10px rgba(0, 0, 0, 0.3);
}

.bg_img .social .fa {
	font-size: 20px;
}

.bg_img .social .fa+.fa {
	margin-top: 25px;
}

.container {
	display: block;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	max-width: 1650px;
	width: 100%;
	padding: 50px 110px 130px;
	position: relative;
	z-index: 1;
	margin: auto;
	font-family: "Varela Round";
}

header {
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	font-family: "Varela Round";
}

header .logo {
	width: 20%;
	font-size: 20px;
	color: #ffbe00;
}

header ul {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	width: 60%;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	justify-content: flex-start;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	list-style-type: none;
}

header ul li {
	font-size: 16px;
	color: #ffbe00;
	position: relative;
}

header ul li+li {
	margin-left: 50px;
}

header ul li.active {
	color: #babbbf;
}

header ul li.active:after {
	content: "";
	position: absolute;
	left: 50%;
	bottom: -5px;
	width: 20px;
	height: 2px;
	background-color: #babbbf;
	-webkit-transform: translateX(-50%);
	transform: translateX(-50%);
}

header .search_nav {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: end;
	-ms-flex-pack: end;
	justify-content: flex-end;
	color: #2d313c;
	width: 20%;
}

header .search_nav .fa {
	font-size: 20px;
}

header .search_nav .fa+.fa {
	margin-left: 30px;
}

.content_container {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	margin-top: 80px;
	width: 100%;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	height: calc(100vh - 330px);
}

.content_container .dish_img {
	position: absolute;
	top: 50%;
	right: 4vh;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 65vh;
}

@media ( max-width : 1600px) {
	.content_container .dish_img {
		width: 63vh;
		top: 55%;
		right: 18vh;
	}
}

.content_container .dish_img img {
	width: 100%;
}

.content_container .dish_img:after {
	content: "";
	width: 103%;
	height: 103%;
	border: 1px solid #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	border-radius: 100%;
}

.content_container .content {
	font-family: "Varela Round";
	color: #fff;
}

.content_container .content h3 {
	font-size: 30px;
	font-weight: 400;
}

.content_container .content h1 {
	font-size: 100px;
	font-weight: 400;
}

.content_container .content p {
	font-size: 20px;
	color: #ffbe00;
	margin: 0;
	padding: 0;
}

.content_container .content .cta {
	display: inline-block;
	padding: 5px 10px;
	border-radius: 25px;
	border: 1px solid #fff;
	margin-top: 15px;
}

.thumb_ {
	position: absolute;
	bottom: -20px;
	left: 100px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	width: 50%;
	padding: 0 50px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	font-family: "Varela Round";
}

.thumb_ .item {
	width: 50%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-pack: distribute;
	justify-content: space-around;
}

.thumb_ .item .item_img {
	width: 10vh;
	position: relative;
}

.thumb_ .item .item_img:after {
	content: "";
	width: 12vh;
	height: 7vh;
	background-color: #eee;
	position: absolute;
	left: 50%;
	top: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	z-index: 1;
}

.thumb_ .item .item_img img {
	width: 100%;
	position: relative;
	z-index: 2;
}

.thumb_ .item .item_content {
	width: calc(100% - 120px);
}

.thumb_ .item .item_content {
	margin-left: 3vh;
}

.thumb_ .item .item_content h3 {
	font-size: 14px;
	color: #fff;
	margin-bottom: 5px;
}

.thumb_ .item .item_content h3 .fa {
	font-size: 10px;
	color: #fff;
	margin-right: 8px;
}

.thumb_ .item .item_content p {
	margin-left: 16px;
	color: #fff;
	font-size: 10px;
}

.thumb_ .nav {
	position: absolute;
	width: 25px;
	height: 100%;
	background-color: #ffbe00;
	color: #000;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.thumb_ .nav.left_ {
	left: 0;
}

.thumb_ .nav.right_ {
	right: 0;
	background-color: #000;
	color: #ffbe00;
}

.bottom_info {
	position: absolute;
	bottom: 20px;
	left: 10vh;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	z-index: 10;
	width: 100%;
}

.bottom_info .item {
	font-family: "Varela Round";
	width: 50%;
}

.bottom_info .item h3 {
	font-size: 12px;
	margin-bottom: 5px;
}

.bottom_info .item h3 .fa {
	font-size: 8px;
	margin-right: 5px;
}

.bottom_info .item .info_ {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	justify-content: flex-start;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.bottom_info .item .info_ .box {
	width: 30px;
	height: 30px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	border: 1px solid #000;
	margin-right: 8px;
}

.bottom_info .item .info_ p {
	font-size: 10px;
}
/*# sourceMappingURL=style.css.map */
a {
	color: white;
	text-decoration: none;
}

a:hover {
	color: #ffbe00;
}

.login-box {
	width: 280px;
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: white;
}

.textbox {
	width: 70%;
	overflow: hidden;
	font-size: 10px;
	padding: 10px 0;
	margin: 15px 0;
	border-bottom: 2px solid #ffbe00;
	font-family: "Varela Round";
}

.textbox i {
	width: 56px;
	float: left;
	text-align: center;
	font-family: "Varela Round";
}

.textbox input {
	border: none;
	outline: none;
	background: none;
	color: white;
	font-size: 26px;
	width: 70%;
	float: left;
	margin: 0 10px;
	font-family: "Varela Round";
}

.btn {
	width: 60%;
	background: #ffbe00;
	border: 2px solid #ffbe00;
	color: white;
	padding: 5px;
	font-size: 22px;
	cursor: pointer;
	margin: 40px 0;
	float: left;
	position: initial;
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
	
</script>
<script src="js/jquery3.1.0.min.js"></script>
</head>

<body>
	<div class="bg_img">
		<img src="bg_.png">
	</div>

	<div class="container">
		<header>
			<div class="logo">
				<h2>FoodoPedia</h2>
			</div>

			<ul>
				<li><a href="Home.html">Home</a></li>&nbsp;&nbsp;&nbsp;
				<li><a href="Login.jsp">Login</a></li>
				<li><a href="Registration.html">Sign up</a></li>
			</ul>
			<div class="search_nav">
				<i class="fa fa-search" aria-hidden="true"></i> <i
					class="fa fa-bars" aria-hidden="true"></i>
			</div>
		</header>
		<div class="content_container">
			<div class="content">
				<form action="Login" method="post" >

					<div class="textbox">
						<i class="fas fa-user"></i> <input type="text" name="UserID"
							placeholder="UserID" required>
					</div>
					<div class="textbox">
						<i class="fas fa-lock"></i> <input type="password" name="Password"
							placeholder="Password" id="Password" required>
					</div>
					<input type="checkbox" onclick="myFunction()" style="float: left;"><span
						style="float: left; font-size: 20px">Show Password</span> <br>
					<button class="btn"  style="float: left;" >Log In</button>

				</form>

			</div>
			<div class="dish_img">
				<img src="sample_1.png">
			</div>
		</div>

	</div>
	</div>
	</div>
</body>

</html>