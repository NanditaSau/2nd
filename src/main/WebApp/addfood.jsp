<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
<style type="background-color:sky"></style>
<title>Insert title here</title>
</head>
<body>

		<div class="container">
<jsp:include page="menubar.jsp"></jsp:include>

<hr>


	<form action="adminaddfood" method="post">
	    <input type="number" name="fid" placeholder="FOOD ID" required><br><br>
		<input type="text" name="fname" placeholder="FOOD NAME" required><br><br>
		<input type="tel" name="fprice" placeholder="PRICE" required><br><br>
		<input type="text" name="fdetails" placeholder="SOMETHING ABOUT THAT FOOD" required><br><br>
	  <!-- <input type="text" name="date" placeholder="dd/mm/yyyy" required><br><br>  -->
		
		<input type="submit" value="ADD">
	</form>
	<br>
		${msg}
</div>
</body>
</html>