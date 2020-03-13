<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
<style type="background-color:light green"></style>
<title>Insert title here</title>
</head>
<body>

<div class="container">
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
			
		</tr>
</c:forEach>
	</table>
	
</div>

</body>
</html>