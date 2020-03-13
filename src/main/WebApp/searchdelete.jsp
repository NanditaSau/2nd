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
   <br/>
   <form action="search">
       <input type="number" name="fid" placeholder="ENTER ID" required>
       <input type="submit" value="SEARCH">
   </form>
    <table class="table table-dark">
        <thead>
          <tr>
            <th scope="col">FOOD ID</th>
            <th scope="col">FOOD NAME</th>
            <th scope="col">PRICE</th>
            <th scope="col">DETAILS </th>
            
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>${stinfo.fid}</td>
            <td>${stinfo.fname}</td>
            <td>${stinfo.fprice }</td>
             <td>${stinfo.fdetails }</td>
             <td><a href="/deletefood?fid=${stinfo.fid}">DELETE</a></td> 
          </tr>
</tbody>
      </table>

</body>
</html>