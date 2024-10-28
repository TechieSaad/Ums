<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style type="text/css">
form{
	display:flex;
	width:40%;
	flex-direction:column;
	margin:auto;

}


</style>
</head>
<body>

	<h2>Welcome <%=session.getAttribute("name") %></h2>
	
<h1>Register Here</h1>


<form action="reg" method="post">
<input type="number" name="id" placeholder="Enter Id">
<input type="text" name="name" placeholder="Enter Name">
<input type="text" name="email" placeholder="Enter Email">
<input type="text" name="salary" placeholder="Enter Salary">
<input type="text" name="dno" placeholder="Enter department No">
<input type="text" name="password" placeholder="Enter password">
<button type="submit">Register</button>

</form>
</body>
</html>