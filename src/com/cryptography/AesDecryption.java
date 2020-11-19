package com.cryptography;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet("/AesDecryption")
public class AesDecryption extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key=request.getParameter("key");
		String fileName=request.getParameter("filename");
		String location=request.getParameter("filelocation");
//		PrintWriter p=response.getWriter();
//		 p.println(key+""+fileName);
		String data="";
		
		    Decrypt ld=new Decrypt();
		    
		    
			if(ld.validate(key, fileName, location))
			{
				decrypt(key,location,fileName,response);
				PrintWriter out=response.getWriter();
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	            out.println("<script>");
	            out.println("$(document).ready(function(){");
	            out.println("swal ( 'Decrypted' ,  'successfully!' ,  'success' )");
	            
	        	out.println("});");
	            out.println("</script>");
	            RequestDispatcher rd=request.getRequestDispatcher("startpage.jsp");
	            rd.include(request,response);
				
				
			}
			else
			{
				PrintWriter out=response.getWriter();
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	            out.println("<script>");
	            out.println("$(document).ready(function(){");
	            out.println("swal ( 'Decryption failed' ,  ' try again!' ,  'error' )");
	            
	        	out.println("});");
	            out.println("</script>");
	            RequestDispatcher rd=request.getRequestDispatcher("aesdecryption.jsp");
	            rd.include(request,response);
			}
			
			
			

          
			
	
		
	}

	public void decrypt(String inputKey, String location, String file,HttpServletResponse response) throws IOException {
		Key key = new SecretKeySpec(inputKey.getBytes(),"AES");
		try 
		{
	    	Cipher cipher = Cipher.getInstance("AES");
	    	cipher.init(Cipher.DECRYPT_MODE,key);
			
			
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
