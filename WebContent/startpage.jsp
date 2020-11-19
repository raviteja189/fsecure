<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"type="text/css"href="startpage.css">

<title>FSecure</title>
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
      <h2 style="text-align:center">Choose your Encryption</h2>
      <div class="row">
		  <div class="column">
		   <h3 style="padding:20px">Advanced Encryption Standard (AES)</h3>
       <table>
         <tr>
            <td style="padding:10px;"><a href="aesencryption.jsp"><img src="encryption.png" width="220px" height="150px"></a></td>
            <td style="padding:10px;padding-left:40px"><a href="aesdecryption.jsp"><img src="decdes.png" width="180px" height="110px"></a></td>
         </tr>
         <tr>
         <td style="padding-left:120px">Encryption</td>
         <td style="padding-left:80px">Decryption</td>
         </tr>
       </table>
		  
		  </div>
		  <div class="column">
		    <h3 style="padding:20px;padding-left:100px">Data Encryption Standard (DES)</h3>
       <table>
         <tr>
            <td style="padding-left:20px;"><a href="desencryption.jsp"><img style="padding:20px"src="encdes.png" width="190px" height="180px"></a></td>
            
            <td style="padding-left:20px;"><a href="desdecryption.jsp"><img style="padding:20px"src="decdes.png" width="190px" height="180px"></a></td>
         </tr>
         <tr>
         <td style="padding-left:50px">Encryption</td>
         <td style="padding-left:60px">Decryption</td>
         </tr>
       </table>
		  
		  </div>
		  
		 
	  </div>
     <br>
		  <br><br>
		  <br>
       <center style="color:yellow;"><h2>Want to send your encrypted files to others </h2></center>
         <a href="mail.jsp" style="color:yellow"><center>Click here</center></a>
      
   
</body>
</html>