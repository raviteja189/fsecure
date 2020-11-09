<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
<link rel="stylesheet"type="text/css"href="aesencryption.css">
<script type="text/javascript">
function random()
{
var chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
var passwordlength=16;
var key="";
for(var i=0;i<passwordlength;i++)
{
  var random=Math.floor(Math.random()*chars.length);
  key+=chars.substring(random,random+1);
}
document.getElementById("pass").value=key;
return true;
}
</script>
</head>
<body>
<%
     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//1.1 http
     
     if(session.getAttribute("user")==null)
       {
    	   response.sendRedirect("login.jsp");
       }
      
     %>
<%@include file="startheader.jsp" %>

<div class="login">
<h1><div><span style="color:#00fff8;">A</span><span style="color:#00e8f9;">e</span><span style="color:#00d1fa;">s</span><span style="color:#00bafb;"> </span><span style="color:#00a2fc;">E</span><span style="color:#008bfd;">n</span><span style="color:#0074fe;">c</span><span style="color:#005dff;">r</span><span style="color:#1a4eff;">y</span><span style="color:#333eff;">p</span><span style="color:#4d2fff;">t</span><span style="color:#671fff;">i</span><span style="color:#8010ff;">o</span><span style="color:#9a00ff;">n</span></div></h1>
    
   
    <form action="AesEncryption" method="post" enctype="multipart/form-data">
         <input type="text" id="pass" name="key" placeholder="key" required>
         <button id="b" onClick="random()">Getkey</button>
         <span style="color:red"> click button to generate the key </span>
         &nbsp;&nbsp;<br>
         <input type="file" name="file"  required> 
         <input type="text" name="location" placeholder="paste the file location" required>
         <span style="color:white">NOTE : give the exact location of the file</span>
         <button type="submit" class="btn btn-primary btn-block btn-large">Encrypt</button>
    </form>
</div>
<%@include file="footer1.jsp" %>
</body>
</html>