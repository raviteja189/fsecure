<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fsecure</title>
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 100%;
  padding: 10px;
  height: 600px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.a
{
color:white;}
</style>
</head>
<body>

      <%@include file="startheader.jsp" %>
      
 <div class="row">
  <div class="column" style="background-color:black;">
    <center>
    
    <h2 style="color:red">Privacy Information</h2>
    
    </center>
    <div style="padding-left:160px;padding-top:30px;padding-right:50px">
    <hr>
    <p class="a">1) Data is encrypted using strong encryption algorithms </p>
    <p class="a">&nbsp;&nbsp;&nbsp;a)AES 128-bit</p>
    <p class="a">&nbsp;&nbsp;&nbsp;b)DES 64-bit</p>
    <hr>
    <p class="a">2)A random key will be generated at the moment to encrypt the file </p>
    <hr>
    <p class="a">3) After the encryption the filename,filepath and key will be sent to your email id </p>
    <hr>
    <p class="a">4) To decrpt the file use the same key sent to your email id </p>
    <hr>
    <p class="a">5) After the file decryption the data from the database will be removed and there is no chance to decrypt the file again</p>
   
    <hr>
    </div>
  </div>
 
</div>
<%@include file="footer1.jsp" %>
</body>
</html>