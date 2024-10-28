<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style type="text/css">
	#h1{
		text-decoration:underline;
		text-align:center;
	}

	.container{
		border:solid 1px black;
		background:gray;
		height:10vh;
		width:20%;
		text-align:center;
		margin:8% auto;
	}
	
	.container a{
		display:block;
		padding:10px;
		
	}


</style>
</head>
<body>

	<h1 id="h1">Welcome to EMS</h1>
	
	<h2><%=session.getAttribute("name") %></h2>
	
	<div class="container">
	
	<a href="reg.jsp"><button>Click here to Register</button></a>
	
	
	<a href="allemp"><button>View all the Employee details</button></a>
		
	</div>
	
	<script type="text/javascript">
	let msgEle=document.getElementById('msg')
	
	setTimeout(()=>{
		msgEle.style.display="none";
	},2000);
	
	</script>
</body>
</html>