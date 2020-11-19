<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>FSecure</title>
<script src="signup.js">

</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
 <link rel="stylesheet" href="assets/css/style.css">

<style>
.login-dark {
  height:600px ;
  background:#475d62  1000px url(sky.jpg);
  background-size:cover;
  position:relative;
}

.login-dark form {
  max-width:400px;
  width:100%;
  background-color:#1e2833;
  padding:20px;
  border-radius:4px;
  transform:translate(-50%, -50%);
  position:absolute;
  top:53%;
  left:50%;
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}

.login-dark .illustration {
  text-align:center;
  padding:15px 0 20px;
  font-size:100px;
  color:#2980ef;
}

.login-dark form .form-control {
  background:none;
  border:none;
  border-bottom:1px solid #434a52;
  border-radius:0;
  box-shadow:none;
  outline:none;
  color:inherit;
}

.login-dark form .btn-primary {
  background:#214a80;
  border:none;
  border-radius:4px;
  padding:11px;
  box-shadow:none;
  margin-top:20px;
  text-shadow:none;
  outline:none;
}

.login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
  background:#214a80;
  outline:none;
}

.login-dark form .forgot {
  display:block;
  text-align:center;
  font-size:12px;
  color:#6f7a85;
  opacity:0.9;
  text-decoration:none;
}

.login-dark form .forgot:hover, .login-dark form .forgot:active {
  opacity:1;
  text-decoration:none;
}

.login-dark form .btn-primary:active {
  transform:translateY(1px);
}

.footer{
   
   left: 0;
   bottom: 0;
   width: 100%;
   height:170px;
   background-color: black;
   color: white;
   text-align: center;
   padding:15px;
}
</style>

</head>
<body>
      <%@include file="signheader.jsp" %>
      
      <div class="login-dark" style="background-image:"sky.jpg";">
       
        <marquee style="color:red;font-size:30px">Please use your original email-id as we will use that to send encryption details</marquee>
    
          <form onsubmit="return validate()" action="Signup" method="post">
          
              <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
              <div class="form-group"><input class="form-control" type="text" name="first" id="first" placeholder="First Name" autofocus>
              <span style="color:yellow" id="fir"></span>
              </div>
              <div class="form-group"><input class="form-control" type="text" name="last" id="last"  placeholder="Last Name">
              <span style="color:yellow" id="las"></span>
              </div>
              <div class="form-group"><input type="email" class="form-control" name="email" id="email" placeholder="Email">
              <span style="color:yellow" id="emailerror"></span>
              </div>
              <div class="form-group"><input class="form-control" type="password"  name="password" id="password" placeholder="Password">
              <span style="color:yellow" id="passerror"></span>
              </div>
              <div class="form-group"><input class="form-control" type="password" name="confirmpassword" id="cpassword" placeholder="Confirm Password">
              <span style="color:yellow" id="cpasserror"></span>
              </div>
              <div class="form-group">
                   <span style="color:red">All fields are required</span>
                 <input type="submit" value="sign up"class="btn btn-success btn-lg btn-block">
                 
           </div>
           </form>
      </div>
    
 <div class="footer">

<p>Contact us :fsecure.solutions999@gmail.com</p>
<p>&copy; Copyright 2020 fsecure.com
</p></div>
</body>
</html>