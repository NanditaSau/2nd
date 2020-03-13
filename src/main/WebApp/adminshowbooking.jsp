<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
 
 <style type="background-color:grey"></style>
<title>Insert title here</title>
</head>
<body>
<%
String admin = (String)session.getAttribute("adminuser");

if(admin == null)
	response.sendRedirect("adminlogin.jsp");

	
	
%>
<div class="container">
<jsp:include page="menubar.jsp"></jsp:include>
<br>
	

	<table border="1">
		<tr>
		<th>BOOKING ID</th>
		<th>FOOD ID</th>
		<th>FOOD NAME</th>
		<th>FOOD PRICE</th>
		<th>QUANTITY</th>
		<th>DATE</th>
		<th>EMAIL</th>
	</tr>
<c:forEach var="obj" items="${bookinglist}">
		<tr>
			<td>${obj.bid}</td>
			<td>${obj.fid}</td>
			<td>${obj.fname}</td>
			<td>${obj.fprice}</td>
			<td>${obj.quantity}</td>
			<td>${obj.date}</td>
			<td>${obj.email}</td>
          </tr>
</c:forEach>
	</table>
</div>

</body>
</html>