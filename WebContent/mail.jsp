<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
</head>
<body>
<%@include file="startheader.jsp" %>
<div style="padding:130px;" >
  <img alt="mail" src="mail.JPG" width="220px" height="150px">
    <br><br>
    <form action="send.jsp" >
      Enter Email:<input type="text" name="mail" required><br><br>
      
      attach file:&nbsp;<input type="file" name="file" required ><br><br>
      Enter File location:<input type="text" name="loc" required><br><br>
      <input type="submit" value="send" >
      </form><br>
       Note : For file location goto location of the file in your Pc/laptop and right click on file ,click on properties.
      </div>
     
      <%@include file="footer1.jsp" %>
</body>
</html>