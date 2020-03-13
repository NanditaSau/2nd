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
<jsp:include page="menubar.jsp"></jsp:include>
   <br/>
   <form action="searchfood">
       <input type="number" name="fid" placeholder="ENTER ID" required>
       <input type="submit" value="SEARCH">
       <br><br/>
     <!--   <input type="number" name="quantity" placeholder="Enter Quantity" required>
       <br/><br/>
       </form>
       
   <br/>
   <br/>-->
   
   ${msg}
   
   <table border="1">
       <tr>
         <th>ID</th>
         <th> NAME </th>
         <th> PRICE </th>
         <th> DETAILS </th>
         
      </tr>
      
      <tr>
         <td>${stinfo.fid}</td>
         <td>${stinfo.fname}</td>
         <td>${stinfo.fprice}</td>
         <td>${stinfo.fdetails}</td>
         
         
       
       
      </tr>
   
   </table>

</body>
</html>