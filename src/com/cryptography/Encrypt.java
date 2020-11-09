package com.cryptography;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Encrypt {
	
	String url="jdbc:mysql://localhost:3306/FSecure";
	String user="root";
	String password="root";
	public boolean insert(String email,String key1,String filename,String location)
	{
		
		try
		{
			
			   Class.forName("com.mysql.jdbc.Driver");
			   
			   
			    Connection con=(Connection) DriverManager.getConnection(url,user,password);
			    String str="insert into encryption(email,filename,encryptionkey,location,encrypted) values(?,?,?,?,?)";
			    PreparedStatement pstmt=(PreparedStatement) con.prepareStatement(str);
			    pstmt.setString(1,email);
			    pstmt.setString(2,filename);
			    pstmt.setString(3,key1);
			    pstmt.setString(4,location);
			    pstmt.setInt(5,1);
			    pstmt.executeUpdate();
			    return true;
			    
		}
		catch(Exception e)
		{
			 e.printStackTrace();
		}
		return false;
		
	}


}
