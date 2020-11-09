package com.cryptography;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

public class Decrypt {
	
	String url="jdbc:mysql://localhost:3306/fsecure";
	String user="root";
	String password="root";
	public boolean validate(String key,String fileName,String location )
	{
		
		try
		{
			
			    Class.forName("com.mysql.jdbc.Driver");
			   
			   
			    Connection con=(Connection) DriverManager.getConnection(url,user,password);
			    String query="select * from encryption where  filename=? and  encryptionkey=?";
			    PreparedStatement ps=con.prepareStatement(query);
			    ps.setString(1,fileName );
			    ps.setString(2,key );
			    ResultSet set=ps.executeQuery();
				while(set.next())
				{
					String query1="delete from encryption where  encryptionkey=?";
				    PreparedStatement ps1=con.prepareStatement(query1);
				    ps1.setString(1,key );
				    ps1.executeUpdate();
		            con.close();
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
