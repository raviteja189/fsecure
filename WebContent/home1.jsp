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
  		<img style="margin:0"src="security.jpg" width="1519px" height="600px">
 		
  		<div class="top-left">
			<h2 style="color:green;text-align:left">Strong encryption</h2>
				File security with 128-bit AES or 64-bit Des <br>encryption.
		</div>
  		
  		<div class="bottom-right">
  		    <h2 style="color:green;text-align:left">Instant mailService</h2>
               send your files with your mailId to anyone <br>and decrypt your files from where you are.  </div>
  		<div class="centered"><h1>Advanced encryption is a<br> simply superbly setting</h1></div>
  		<div class="centered1">
			<h2 style="color:green;text-align:left">Collaboration</h2>
			 Allow secured files to be opened by other users with your key. </div>
		</div>   
   <%@include file="footer.jsp" %>
</body>
</html>