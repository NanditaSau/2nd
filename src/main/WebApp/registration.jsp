<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/mystyle2.css">
<link rel="stylesheet" href="bootstrap4.0/css/bootstrap.min.css">

  
  <script src="js/validation.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menubar.jsp"></jsp:include>
<h1> THIS IS registration.jsp PAGE</h1>
      <br/>
      <br/>
${regsuccessmsg}

<div class="container">
      <div class="row">
          <div class="col-md-6 col-sm-8 mx-auto">
               <div class="card">
                   <div class="card-body" style="background-color:#03fcf8">
                        <div class="mt-2 text-center">
                             <h2>Create Your Account</h2>
                         </div>
                   
                         <div class="mt-4">
                         
                         
                         
                         
                         
                           <form action="auser" method="post">
                           
                           
                           
                           
                           
                           
                           
                           
                             <div class="form-group">
                                 <label for="name" class="text-uppercase font-weight-bold text-primary">Name</label>
                                 <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Full Name" required="required" onblur="checkname()" onfocus= "clearname()">
                                 <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                             </div>
                             <div class="form-group">
                                 <label for="vill_town" class="text-uppercase font-weight-bold text-primary">Vill_Town</label>
                                 <input type="text" class="form-control" id="vill_town" name="vill_town" placeholder="Enter Your vill/town " required="required" onblur="checkvill_townname()" onfocus= "clearvill_town()">
                                 <div class="text-danger font-weight-bold" id="vill_townnameerrormessage"></div>
                                 
                                 
                             </div>
                             
                              <div class="form-group">
                                 <label for="district" class="text-uppercase font-weight-bold">District</label>
                                 <select name="district">
                                       <option value="HOWRAH">HOWRAH</option>
                                       <option value="KOLKATA">KOLKATA</option>
                                       <option value="NORTH 24 PARGANA">NORTH 24 PARGANA</option>
                                       <option value="SP">SOUTH 24 PARGANA</option>
                                       <option value="HG">HOOGHLY</option>
                                 </select>
                                 
                             </div>
                              
                             <div class="form-group">
                                 <label for="pincode" class="text-uppercase font-weight-bold text-primary">Pincode</label>
                                 <input type="pin" class="form-control" id="pincode" name="pincode" placeholder="Enter Your Pincode" required="required" onblur="checkpincode()" onfocus= "clearpincode()">
                                 <div class="text-danger font-weight-bold" id="pincodeerrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                 <label for="email" class="text-uppercase font-weight-bold text-primary">Email</label>
                                 <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email" required="required" onblur="checkemail()" onfocus= "clearemail()">
                                 <div class="text-danger font-weight-bold" id="emailerrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                 <label for="mobile_no" class="text-uppercase font-weight-bold text-primary">Mobile No</label>
                                 <input type="tel" class="form-control" id="mobile_no" name="mobile_no" placeholder="Enter Your Mobile No" required="required" onblur="checkmobile_no()" onfocus= "clearmobile_no()">
                                 <div class="text-danger font-weight-bold" id="mobile_noerrormessage"></div>
                             </div>
                             
                            
                             <!-- 
                             <div class="form-group">
                                 <label for="Address" class="text-uppercase font-weight-bold">Address</label>
                                 <input type="text" id="vill or town" name="english" value="vill or town" checked />
                                       <span>English</span>
                                 <input type="text" id="" name="bengali" value="bengali" />
                                       <span>Bengali</span>
                                 <input type="checkbox" id="hindi" name="hindi" value="hindi" />
                                       <span>Hindi</span>
                             </div>
                             -->
                             
                              <div class="form-group">
                                 <label for="gender" class="text-uppercase font-weight-bold">Gender</label>
                                 <input type="radio" name="gender" id="male" value="Male" />
                                      <span id="maledisp">Male</span>
                                 <input type="radio" name="gender" id="female" value="Female" />
                                      <span id="femaledisp">Female</span>
                                 <input type="radio" name="gender" id="other" value="Other" />
                                      <span id="otherdisp">Other</span>
                             
                             </div>
                             
                                                
                             <div class="form-group">
                                  <label for="password" class="text-uppercase font-weight-bold">Password</label>
                                  <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required="required" onblur="checkpassword()" onfocus= "clearpassword()">
                                  <div>Min 4 - Max 8</div>
                                  <div class="text-danger font-weight-bold" id="passerrormessage"></div>
                             </div>
                                        
                             <button type="submit" class="btn btn-primary btn-block">Create Account</button>
                         </form>
                       </div> <!-- Form tag div -->
                  </div> <!-- Card Body End -->
              </div> <!-- Card End -->
           </div> <!-- Col alignment end -->
         </div> <!-- Row End -->
     </div> <!-- Container End -->



</body>
</html>