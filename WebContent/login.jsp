<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
<script src="login.js">


</script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
 <link rel="stylesheet" href="assets/css/style.css">
 <link rel="stylesheet" href="login.css">
</head>

</head>
</head>
<body>

 
      
      <%@include file="loginheader.jsp" %>
     <div class="login-dark">
       
        
          <form onsubmit="return validate()" action="Login" method="post">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="form-group"><input class="form-control" type="email" name="email" id="email" placeholder="Enter your e-mail" autofocus>
            <span style="color:red" id="emailerror">* required</span>
            </div>
            <div class="form-group"><input class="form-control" type="password" name="password" id="password" placeholder="Enter your password">
            <span style="color:red" id="passerror">* required</span>
            </div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div><a href="#" class="forgot">Forgot your email or password?</a>
            </form>
    </div>
   
      
      
      
      
     
      <%@include file="footer1.jsp" %>
      
</body>
</html>