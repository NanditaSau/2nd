<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>
<jsp:include page="menubar.jsp"></jsp:include>
<!--  
<a href ="addfood.jsp">Add Food</a>
<a href ="searchdelete.jsp">Search food</a>
<a href="viewallfood.jsp">View all food</a>
<a href="logout.jsp">Logout</a>-->
	

	<table border="1">
		<tr>
			<th>FOOD ID</th>
			<th>FOOD NAME</th>
			<th>PRICE</th>
			<th>DESCRIPTION</th>
			
		</tr>
<c:forEach var="obj" items="${food}">
		<tr>
			<td>${obj.fid}</td>
			<td>${obj.fname}</td>
			<td>${obj.fprice}</td>
			<td>${obj.fdetails}</td>
			<td><a href="applybooking.jsp?fid=${obj.fid}&fprice=${obj.fprice}&fname=${obj.fname}">Order Here</a></td>
		</tr>
</c:forEach>
	</table>

</body>
</html>