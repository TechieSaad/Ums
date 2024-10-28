<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<style type="text/css">
	#create{
		margin-left:67.3%;
		
		
	}
	#create button{
	width:5%;
	height:4vh;
	
	}
	
	button{
	background:grey;
	border-radius:20px;
	color:white;
	cursor: pointer;
	
	}
	
	table th{
		background:grey;
		border: solid 1px black;
	
	}
	
	#h1{
		text-decoration:underline;
		
	}

</style>
</head>
<body>

	<h1 align="center" id="h1">All Employee Details</h1>
	
	<a href="reg.jsp" id="create"><button>Create</button></a>
	
	<h2 align="center"> Welcome <%= session.getAttribute("name") %>			</h2>

	<table border="2" cellpadding="10" rules="all" align="center">
		<thead>
			<tr>
				<th>id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Salary</th>
				<th>Department No</th>
				<th>Password</th>
				<th colspan="2">Action</th>

			</tr>
		</thead>

		<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		while (rs.next()) {
		%>

		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getDouble(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td>
				<a href="delete?id=<%=rs.getString(1)  %>"><button>Delete</button></a></td>
				<td><a href="update.jsp?id=<%=rs.getString(1)  %>"><button>Update</button></a></td>
		</tr>

		<%
			}
		%>
	</table>
	
	<br>
	<br>
	<hr>
	<center><a href="logout"><button>Logout</button></a></center>
	
	
	
	<script type="text/javascript">
	
const msgEle = document.getElementById("msg")
setTimeout(()=>{
	msgEle.style.display="none";
},2000)
	
	</script>
</body>
</html>