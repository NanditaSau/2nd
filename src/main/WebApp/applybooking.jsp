<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
<body>
 <%
    // String id = (String)request.getParameter("id");
     String fid = (String)request.getParameter("fid");
     String fname = (String)request.getParameter("fname");
     String fprice = (String)request.getParameter("fprice");
     String userid = (String)session.getAttribute("userid");

	if (userid == null)
		response.sendRedirect("login.jsp");
		%>
<div class="container">
 <jsp:include page="menubar.jsp"></jsp:include>
 Today's date: <%= (new java.util.Date()).toLocaleString()%>

 <div class="row">
      <div class="col-md-6 col-sm-8 mx-auto">
           <div class="card">
               <div class="card-body" style="background-color: #eeefff">
                    <div class="mt-2 text-center">
                         <h3 style="color: red;">REGISTRATION</h3>
                         <h3 style="color: brown;">${massage}</h3>
                     </div>
               
                     <div class="mt-4 text-left">
                       <form action="food" method="POST">

				        <div class="form-group">
				         <label class="text-uppercase font-weight-bold text-primary">FOOD ID :</label>
				         <input type="text" value="<%= fid %>" name="fid" class="form-control" readonly="readonly">
				        </div>
    
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">CUSTOMER EMAIL:</label>
			             <input type="text" id="email" name="email" value="<%= userid %>" class="form-control" readonly="readonly">
			            </div>
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">DATE:</label>
			             <input type="text" value="<%=(new java.util.Date()).toLocaleString() %>" name="date" readonly="readonly">
						</div>
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">FOOD NAME:</label>
			             <input type="text" id="fname" name="fname" value="<%= fname %>" class="form-control" readonly="readonly">
			            </div>
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">FOOD PRICE:</label>
			             <input type="text" id="fprice" name="fprice" value="<%= fprice %>" class="form-control" readonly="readonly">
			            </div>
			            
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">QUANTITY</label>
			             <input type="text" id="quantity" name="quantity" class="form-control" required>
			            </div>
			            <input type="submit" class="btn btn-success btn-block" value="submit">


                     </form>
                   </div> <!-- Form tag div -->
              </div> <!-- Card Body End -->
          </div> <!-- Card End -->
       </div> <!-- Col alignment end -->
     </div> <!-- Row End -->
 </div> <!-- Container End -->
    

</body>
</html>