<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,javax.mail.*,javax.mail.internet.*,javax.activation.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
</head>
<body>
<%
           String to=request.getParameter("mail");
           String file=request.getParameter("file");
           String loc=request.getParameter("loc");
           File f=new File(file);
           HttpSession session1=request.getSession();
           String data=(String)session1.getAttribute("user")+"Sent you a mail";
           String from="fsecure.solutions999@gmail.com";
           final String username="fsecure.solutions999@gmail.com";
           final String password="fsecure$1234$";  
     	
           
           String host = "smtp.gmail.com";
           String port = "587";
           
           Properties properties = new Properties();
           properties.put("mail.smtp.host", host);
           properties.put("mail.smtp.port", port);
           properties.put("mail.smtp.auth", "true");
           properties.put("mail.smtp.starttls.enable", "true");
           
           
           Session session2 = Session.getInstance(properties,
                   new javax.mail.Authenticator() {
                       protected PasswordAuthentication getPasswordAuthentication() {
                           return new PasswordAuthentication(username, password);
                       }
                   });  
           try{  
        	    MimeMessage message = new MimeMessage(session2);  
        	    message.setFrom(new InternetAddress(username));  
        	    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
        	    message.setSubject("Encrypted file");  
        	    
        	    BodyPart messageBodyPart1 = new MimeBodyPart();  
        	    messageBodyPart1.setText(data);  
        	      
        	    MimeBodyPart messageBodyPart2 = new MimeBodyPart(); 
        	    //String fileloc = "E:\\check\\";
        	    String filename=f.getName();
                DataSource source = new FileDataSource(loc+"\\"+filename);
        	    
        	    
        	    messageBodyPart2.setDataHandler(new DataHandler(source));  
        	    messageBodyPart2.setFileName(filename);  
        	    
        	    Multipart multipart = new MimeMultipart();  
        	    multipart.addBodyPart(messageBodyPart1);  
        	    multipart.addBodyPart(messageBodyPart2);  
        	    
        	    message.setContent(multipart);  
        	     
        	  
        	    Transport.send(message);  
           
          
            
           }
           catch (MessagingException ex) {
        	   out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	            out.println("<script>");
	            out.println("$(document).ready(function(){");
	            out.println("swal ( 'Oops' ,  ' try again/some problem encountered try again!' ,  'error' )");
	            
	        	out.println("});");
	            out.println("</script>");
               RequestDispatcher rd=request.getRequestDispatcher("startpage.jsp");
               rd.include(request,response);
        	   }  
           
         %>
         
         <%
         out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
         out.println("<script>");
         out.println("$(document).ready(function(){");
         out.println("swal ( 'Mail sent ' ,  ' successfully!' ,  'success' )");
         
     	out.println("});");
         out.println("</script>");
         RequestDispatcher rd=request.getRequestDispatcher("startpage.jsp");
         rd.include(request,response);
         %>
</body>
</html>