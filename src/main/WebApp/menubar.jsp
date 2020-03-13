<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!--  <a href="/">HOME</a>
	<a href="/reg">REGISTRATION</a>
	<a href="/login">USER_LOGIN</a>
	<a href="/adminlogin">ADMIN_LOGIN</a>
	<a href="/about">ABOUT</a>
	<a href="/alldb">VIEW ALL FOOD</a> |
    <a href="/searchdelete">SEARCH_DELETE fOOD</a> |
    <a href="/searchbyname">USER SEARCH FOOD BY NAME</a> |
	<a href="/addfood">ADD FOOD</a> |-->
	
	<br/>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  
    <ul class="navbar-nav">

<%
    String auname = (String)session.getAttribute("adminuser");
    String userid = (String)session.getAttribute("userid");

    if (auname != null && auname.equalsIgnoreCase("ADMIN"))
    {
%>
      <li class="nav-item">
        <a class="nav-link" href="/adminhome">ADMIN HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/searchdelete">SEARCH_DELETE FOOD</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/addfood">ADD FOOD</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/viewall">VIEW ALL FOOD</a>
        </li>
      <li class="nav-item">
        <a class="nav-link" href="/adminshowallbooking">VIEW ALL BOOKINGS</a>
      
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/adminlogout">LOGOUT</a>
      </li>
<%
    }
    else if(userid != null)
    {
 %>
        <li class="nav-item">
        <a class="nav-link" href="/userhome">USER HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/viewallfood">VIEW ALL FOOD</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/usershowallbooking">BOOKINGS</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="/userlogout">LOGOUT</a>
      </li>
 <%   	
    }
    else
    {
%>
       <li class="nav-item">
        <a class="nav-link" href="/"><font color="white">HOME</font></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/reg"><font color="white">REGISTRATION</font></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/login"><font color="white">LOGIN</font></a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="/about"><font color="white">ABOUT US</font></a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="/contactus"><font color="white">CONTACT US</font></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/adminlogin"><font color="white">ADMIN</font></a>
      </li>    
  <%
    }
  %>    
    </ul>
  </nav>
    
   <br/>
	
</body>
</html>