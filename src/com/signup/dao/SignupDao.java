package com.signup.dao;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class SignupDao {
	
	String url="jdbc:mysql://localhost:3306/FSecure";
	String user="root";
	String password="root";
	public boolean insert(String fname,String lname,String email,String pass)
	{
		
		try
		{
			
			   Class.forName("com.mysql.jdbc.Driver");
			   
			   
			    Connection con=(Connection) DriverManager.getConnection(url,user,password);
			    String str="insert into signup(firstname,lastname,email,password) values(?,?,?,?)";
			    PreparedStatement pstmt=(PreparedStatement) con.prepareStatement(str);
			    pstmt.setString(1,fname);
			    pstmt.setString(2,lname);
			    pstmt.setString(3,email);
			    pstmt.setString(4,pass);
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
