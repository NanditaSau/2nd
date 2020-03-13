<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
<style>
body{
	background:url(../image/e.jpg)no-repeat;
	background-size: cover;
}
</style>
<title>Insert title here</title>
</head>
<body>
 
<%
    String auname = (String)session.getAttribute("adminuser");
    
    if(auname == null)
    	response.sendRedirect("adminlogin.jsp");
%>
  <div class="container">
       <jsp:include page="menubar.jsp"></jsp:include>
       
     <h3> WELCOME <%= auname %> </h3>
     
     
    
  </div>

</body>
</html>