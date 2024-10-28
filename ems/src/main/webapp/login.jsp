<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style type="text/css">
		
		.container{
			border:solid 1px black;
			border-radius:20px;
			height:35vh;
			width:20%;
			background-color:gray;
			box-shadow: 10px 10px 8px gray;
			text-align:center;
			margin:8% auto;
		}
		
		.container input{
			padding:10px;
			margin:10px;
			border:none;
		
		}
		
		.container button{
			padding:10px;
		
		}



</style>
</head>
<body>


<h2 align="center">Welcome <%= session.getAttribute("name") %></h2>

<div class="container">

	<h1>Login Page</h1>
	
	<form action="login" method="post">
	<input type="mail" name="email" placeholder="Enter the email Id">
	<br>
	<input type="password" name="password" placeholder="Enter the password">
	<br>
	<a><button type="submit">Login</button></a>
	
	
	</form>

</div>

</body>
</html>