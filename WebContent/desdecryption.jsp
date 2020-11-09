<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
<link rel="stylesheet"type="text/css"href="desdecryption.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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

<div class="row">
  <div class="column left" >
    <span style="color:#87fc46"><b><i>Important:</i></b></span>
    <span style="color:yellow">  <p>1) If you are using the laptop/Pc with which you have encrypted your files</p>
      <p>-Enter the details that are sent to your mail Id during file encryption</p></span>
    <span style="color:orange">  <p>2) If you are using the laptop/Pc with which you have not encrypted your files</p>
    <p>Follow the steps :</p>
    <ul>
      <li>Goto the file location in your laptop/pc </li>
      <li>Right click on file and click on properties</li>
      <li>Copy file location and paste in the filelocation field</li>
      <li>Enter key and file name that are sent to your mailId during file encryption</li>
    </ul>
      </span>
       
  </div>
  <div class="column right" >
 <div class="login">
    <h1><div><span style="color:#ff0000;">D</span><span style="color:#db1a24;">e</span><span style="color:#b63449;">s</span><span style="color:#924e6d;"> </span><span style="color:#6d6992;">D</span><span style="color:#4983b6;">e</span><span style="color:#249ddb;">c</span><span style="color:#00b7ff;">r</span><span style="color:#2bc3d5;">y</span><span style="color:#55cfaa;">p</span><span style="color:#80db80;">t</span><span style="color:#aae755;">i</span><span style="color:#d5f32b;">o</span><span style="color:#ffff00;">n</span></div></h1>
    <form action="DesDecryption" method="post" enctype="multipart/form-data">
    
        <input type="text" name="key" placeholder="Enter your key" required="required" autofocus/>
        <input type="text" name="filename" placeholder="FileName" required="required" />
        <input type="text" name="filelocation" placeholder="Filelocation" required="required" />
        
        <button type="submit" class="btn btn-primary btn-block btn-large">Decrypt</button>
        
         </form>
</div>
</div>
</div>


<%@include file="footer1.jsp" %>
</body>
</html>