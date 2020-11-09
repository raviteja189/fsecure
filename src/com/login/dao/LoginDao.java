package com.login.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

public class LoginDao {
	
	String url="jdbc:mysql://localhost:3306/fsecure";
	String user="root";
	String password="root";
	public boolean validate(String email,String pass)
	{
		
		try
		{
			
			    Class.forName("com.mysql.jdbc.Driver");
			   
			   
			    Connection con=(Connection) DriverManager.getConnection(url,user,password);
			    String query="select * from signup where email=? and password=?";
			    PreparedStatement ps=con.prepareStatement(query);
			    ps.setString(1, email);
			    ps.setString(2, pass);
			    ResultSet set=ps.executeQuery();
				while(set.next())
				{
					return true;
				}
			    
			    
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
