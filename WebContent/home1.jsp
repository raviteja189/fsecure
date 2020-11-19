<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
<link type="text/css" rel="stylesheet" href="Home.css">

</head>
<body>
<%
     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//1.1 http
     %>
   <%@include file="startheader.jsp" %>
     <div class="container">
				  <img  style="margin:0"src="security.jpg" width="1519px" height="700px">
				  
				  <div class="top-left">
						<h2 style="color:green;text-align:left">Strong encryption</h2>
							File security with 128-bit AES or 64-bit DES <br>encryption.
				  </div>
				  
				  <div class="bottom-right">
  		    		<h2 style="color:green;text-align:left">Instant mailService</h2>
             			   send your Encrypted files to anyone.  
                  </div>  
                  <div class="bottom-right1">
  		    		<h2 style="color:green;text-align:left">Platform Independent</h2>
             			 You can Encrypt your files on one platform <br>and Decrypt on another platform.
                  </div> 	
                  
				  <div class="centered">
				     <h2 style="color:green;text-align:left">Collaboration</h2>
			 				Allow other users to read your encrypted files with your key. 
				   </div>
				   </div>
   <%@include file="footer.jsp" %>
</body>
</html>