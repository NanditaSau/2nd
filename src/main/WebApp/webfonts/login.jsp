<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mystyle2.css">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">
 <script src="js/validation.js"></script>
 <script>
 
  function passwordvisible() 
  {
    var obj = document.getElementById("password");
    if (obj.type === "password") 
	{
       obj.type = "text";
    } 
	else 
	{
       obj.type = "password";
    }
  }

  </script>
</head>
<body>
<h1> THIS IS login.jsp PAGE</h1>
      <br/>
      <br/>
						
${regsuccessmsg}

<div class="container">
      <div class="row">
          <div class="col-md-6 col-sm-8 mx-auto">
               <div class="card">
                   <div class="card-body" style="background-color:#03fcf8">
                        <div class="mt-2 text-center">
                             <h2>Log in here</h2>
                         </div>
                   
                         <div class="mt-4">
                           <form action="auser" method="post">
                             <div class="form-group">
                                 <label for="name" class="text-uppercase font-weight-bold text-primary">Username</label>
                                 <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Full Name" required="required" onblur="checkname()" onfocus= "clearname()">
                                 <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                             </div>
                              <div class="form-group">
                                  <label for="password" class="text-uppercase font-weight-bold">Password</label>
                                  <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required="required" onblur="checkpassword()" onfocus= "clearpassword()">
                                  <div>Min 4 - Max 8</div>
                                  <div class="text-danger font-weight-bold" id="passerrormessage"></div>
                             </div>
                             <input type="checkbox" name="check1" onclick="passwordvisible()"> SHOW PASSWORD
  <br/>
                                        
                             <button type="submit" class="btn btn-primary btn-block">LOG IN</button>
                         </form>
                       </div> <!-- Form tag div -->
                  </div> <!-- Card Body End -->
              </div> <!-- Card End -->
           </div> <!-- Col alignment end -->
         </div> <!-- Row End -->
     </div> <!-- Container End -->
</body>
</html>