<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style type="text/css">

	form{
	 text-align:center;
	 border: 1px solid ;
	 width:30%;
	 margin-left: 35%;
	 margin-top:8%;
	 padding:1%;
	 
	}
	
	form input{
	display:block;
	margin:10px auto;
	padding:10px;
	width:50%;
	border:none;
	background:lightgreen;
	
	}
	input::placeholder{
		color:white;
	
	}
	
	form button{
		padding:2% 4%;
		font-family:sans-serif;
		
	
	}


</style>
</head>
<body>


<%




%>

<h2 align="center">Welcome <%= session.getAttribute("name") %>			</h2>

		<%
			ResultSet rs= (ResultSet)request.getAttribute("rs");
		
		%>

<h1 align="center">Update Page</h1>

<form action="update" method="post">
	<input type="number" value="<%=rs.getInt(1) %>" name="id" placeholder="Enter the new id ">
	<input type="text" value="<%=rs.getString(2) %>" name="name" placeholder="Enter the  new name">
	<input type="text" value="<%=rs.getString(3) %>" name="email" placeholder="Enter the new email">
	<input type="text" value="<%=rs.getDouble(4) %>" name="salary" placeholder="Enter the new salary">
	<input type="text" value="<%=rs.getInt(5) %>" name="dno" placeholder="Enter the new dno">
	<input type="text" value="<%=rs.getString(6) %>" name="password" placeholder="Enter the new password">
	<button type="submit">Update</button>


</form>

</body>
</html>