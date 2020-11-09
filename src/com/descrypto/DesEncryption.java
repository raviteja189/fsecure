package com.descrypto;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Key;
import java.util.Date;
import java.util.Properties;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.cryptography.Encrypt;
@MultipartConfig
@WebServlet("/DesEncryption")
public class DesEncryption extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key=request.getParameter("key");
		Part part=request.getPart("file");
		String fileName=part.getSubmittedFileName();
		String location=request.getParameter("location");
		HttpSession session=request.getSession();
		String email=(String) session.getAttribute("user");
//		PrintWriter p=response.getWriter();
//        p.print(key+" "+location);
		String data="<p>File you have encrypted : </p>"+fileName+"<h2>Your key is :</h2>"+key+"<p>the file is in this location :</p>"+location;
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

        
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };
        
        
        
        
        try
        {
        	Session session1 = Session.getInstance(properties, auth);

            // creates a new e-mail message
            Message msg = new MimeMessage(session1);

            msg.setFrom(new InternetAddress(from));
            InternetAddress[] toAddresses = { new InternetAddress(email) };
            msg.setRecipients(Message.RecipientType.TO, toAddresses);
            msg.setSubject("Encryption details");
            msg.setSentDate(new Date());
            // set plain text message
            msg.setContent(data,"text/html");
            

            // sends the e-mail
            Transport.send(msg);
        }
        catch(Exception e)
        {
      	  e.printStackTrace();
            
        }
        ency(key,location, response,fileName);
        Encrypt e=new Encrypt();
        if(e.insert(email, key, fileName,location))
        {
//          String message = "Your file has been encrypted successfully!";
//          PrintWriter out=response.getWriter();
//          out.println("<script language=\"javascript\">");
//          out.println("alert(" + message + ")");
//          out.println("</script>");
//
//          
//          response.sendRedirect("aesencryption.jsp");
        	PrintWriter p=response.getWriter();
            p.print("yes");
        }
	}
	private void ency(String inputKey, String location,HttpServletResponse response,String file) throws IOException {
		Key key = new SecretKeySpec(inputKey.getBytes(),"DES");
		try 
		{
			Cipher cipher=Cipher.getInstance("DES/ECB/PKCS5Padding");
			
			cipher.init(Cipher.ENCRYPT_MODE,key);
			
			FileInputStream fileInputStream = new FileInputStream(location+"/"+file);
	        byte[] inputBytes = new byte[(int)fileInputStream.available()];
	        fileInputStream.read(inputBytes);

	        // Process the byte array from the input file
	        byte[] outputBytes = cipher.doFinal(inputBytes);

	        // Write the output byte array to the output file
	        FileOutputStream fileOutputStream = new FileOutputStream(location+"/"+file);
	        fileOutputStream.write(outputBytes);

	        // Close file streams
	        fileInputStream.close();
	        fileOutputStream.close();

		     }
		catch(Exception e)
		{
			 PrintWriter p=response.getWriter();
			 p.println("check youre key or your file location");
			 
		}
		
		
	}

}
