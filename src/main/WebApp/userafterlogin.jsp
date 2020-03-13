<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
<title>USER DASHBOARD</title>
<style type="background-color:light pink"></style>
</head>
<body>
<%
    String name = (String)session.getAttribute("username");
    
    if(name == null)
    	response.sendRedirect("login.jsp");
%>
<div class="container">
   <jsp:include page="menubar.jsp"></jsp:include>
   
   <h1> WELCOME <%= name %> </h1>

</div>
</body>
</html>