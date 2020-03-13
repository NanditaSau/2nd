<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">

 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String usern = (String)session.getAttribute("userid");
	
	if(usern == null)
		response.sendRedirect("login.jsp");
	
	
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
			 <td><a href="/deletebid?bid=${obj.bid}">CANCEL</a></td> 
          </tr>
</c:forEach>
	</table>
</div>

</body>
</html>