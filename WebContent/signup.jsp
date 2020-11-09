<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>FSecure</title>
<script src="signup.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
.login-dark {
  height:650px ;
  background:#475d62 url(sky.jpg);
  background-size:cover;
  position:relative;
}
body {
	color: #fff;
	
	
	font-family: 'Roboto', sans-serif;
}
.form-control {
	height: 40px;
	box-shadow: none;
	color: #969fa4;
}
.form-control:focus {
	border-color: #5cb85c;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signup-form {
	width: 450px;
	margin: 0 auto;
	padding: 30px 0;
  	font-size: 15px;
}
.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}
.signup-form h2:before, .signup-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}	
.signup-form h2:before {
	left: 0;
}
.signup-form h2:after {
	right: 0;
}
.signup-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}
.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background-color:#1e2833;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form .form-group {
	margin-bottom: 20px;
}

.signup-form .btn {        
	font-size: 16px;
	font-weight: bold;		
	min-width: 140px;
	outline: none !important;
}
.signup-form .row div:first-child {
	padding-right: 10px;
}
.signup-form .row div:last-child {
	padding-left: 10px;
}    	
.signup-form a {
	color: #fff;
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #5cb85c;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
} 
.footer{
   
   left: 0;
   bottom: 0;
   width: 100%;
   height:90px;
   background-color: black;
   color: white;
   text-align: center;
   padding:15px;
   position:relative;
}
</style>
</head>
<body>
      <%@include file="signheader.jsp" %>
      
      
    <div class="login-dark">
    <marquee style="color:red;font-size:30px">Please use your original email-id as we will use that to send encryption details</marquee>
    <div class="signup-form">
       <form onsubmit="return validate()" action="Signup" method="post">
          <h2>Register</h2>
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
		   <div class="form-group">
			<div class="row">
				<div class="col"><input type="text" name="first" id="first" placeholder="First Name" required></div>
				
				<div class="col"><input type="text" name="last" id="last"  placeholder="Last Name" required></div>
				</div>
			 </div>
			 <div class="form-group">
        	   <input type="email" class="form-control" name="email" id="email" placeholder="Email" >
        	   <span style="color:red" id="emailerror">* required</span>
            </div>
            <div class="form-group">
               <input type="password" class="form-control"  name="password" id="password" placeholder="Password" >
               <span style="color:red" id="passerror">* required</span>
            </div>
            <div class="form-group">
               <input type="password" class="form-control" name="confirmpassword" id="cpassword" placeholder="Confirm Password" >
               <span style="color:red" id="cpasserror">* required</span>
            </div>
            <div class="form-group">
                 <input type="submit" value="sign up" class="btn btn-success btn-lg btn-block">
                 
           </div>
           <div class="text-center">Already have an account? <a href="login.jsp">Sign in</a></div>
    </form> 
       
    </div>
    </div>
      <div class="footer">
Contact us
Talk to us! Please use our Community Forums for general questions, feedback and technical support.
You can also email directly to fsecure.solutions999@gmail.com</div> 
       
</body>
</html>