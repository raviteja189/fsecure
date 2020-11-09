<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FSecure</title>
<link rel="stylesheet" type="text/css" href="homepage.css">
<style>
        table,td,th{
            
            border-collapse: collapse;
            font-size: 24px;
            
        }
        td{
            padding: 10px;
            text-align: center;
        }
        th,td{
        padding:15px;
        }
        </style>
</head>
<body style="background-image: linear-gradient( 109.6deg,  rgba(177,173,219,1) 11.2%, rgba(245,226,226,1) 91.1% );">

<div class="topnav" style="background-color:black">
      <a class="special"><span style="color:darkgreen">FSecure<span><span style="color:lightgreen"> solutions</span></a>
	  <a  href="home1.jsp">Home</a>
	  <a href="about.jsp">About</a>
	  <a href="privacy.jsp">Privacy</a>
	  <a href="startpage.jsp">Enc/Dec</a>
	  	<div class="topnav-right">
	  	
	   <a  href="logout.jsp">Logout</a> 	
	    	
	    	
	    </div>
</div>
   
   <%
     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//1.1 http
     
     if(session.getAttribute("user")==null)
       {
    	   response.sendRedirect("login.jsp");
       }
      
     %>
   
   <%
   
   
	HttpSession session2=request.getSession();
	String name1=(String)session2.getAttribute("user");
	response.setContentType("text/html");
    
    //out.print("<h1>Hello,Welcome back</h1>"+"<h3>"+name+"</h3>"); 
    Class.forName("com.mysql.jdbc.Driver");
   String s1="jdbc:mysql://localhost:3306/fsecure";
   String user1="root";
   String password1="root";
   
   Connection con1=DriverManager.getConnection(s1,user1,password1);
    String str1="select * from signup where email=?";

    PreparedStatement ps=con1.prepareStatement(str1);
    ps.setString(1,name1);
    
    ResultSet set1=ps.executeQuery();
    
	 while(set1.next())
	 {
		 
		 
		
		 out.print("<center><h1>Hello,Welcome back</h1></center>"); 
	 
   %>
   <div style="padding:30px;">
      <b>UserName :</b>  <%=set1.getString(1) %><%=set1.getString(2) %><br><br>
        <b>Email   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </b><%=set1.getString(3) %><br><br>
        
   </div>
      
   <%
   
	 }
   %>
   
   <br><br>
   <marquee > File details will be removed once decrypted !</marquee>
   <div style="padding:30px">
   <h2>Files you have Encrypted : </h2>
   
   <table border="1" >
     <tr> 
     <th>Email</th>
     <th>Filename</th>
     
     <th>FileLocation</th>

    </tr>
    <%
    HttpSession session1=request.getSession();
	String name=(String)session1.getAttribute("user");
	response.setContentType("text/html");
    Class.forName("com.mysql.jdbc.Driver");
    String s="jdbc:mysql://localhost:3306/fsecure";
    String user="root";
    String password="root";
    
    Connection con=DriverManager.getConnection(s,user,password);
  
    String str="select * from encryption where email=?";

     PreparedStatement ps1=con.prepareStatement(str);
     
     ps1.setString(1,name );
     
     ResultSet set=ps1.executeQuery();
     while(set.next())
	 {
     
%>
<tr>
<td><%=set.getString(1) %></td>
<td><%=set.getString(2) %></td>

<td><%=set.getString(4) %></td>
</tr>
<%
	 }
con.close();

%>
 
 </table>  
    </div>
             	
   <center><p>Note : All the encryption details will been sent to your email address when a file is encrypted</p></center>
</body>
</html>