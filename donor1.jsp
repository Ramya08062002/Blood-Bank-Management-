<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
  <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <%
     String name=request.getParameter("A");
   String age=request.getParameter("B");
   String group=request.getParameter("C");
   String dist=request.getParameter("D");
   String phno=request.getParameter("p");
   String gen=request.getParameter("E");
   
   try{
	   
	   Class.forName("com.mysql.jdbc.Driver");
		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
		  String query="insert into group1 values('"+name+"','"+age+"','"+group+"','"+dist+"','"+phno+"','"+gen+"')";
		  
	      int n=a.executeUpdate(query);
	      
	                        if(n>0)
	                        {
	                        	out.print("Donated Registered");
	                        	
	                        }
	                        else {
	                        	out.print("Not donated successfully");		                       
	                        	}
	                    
		
   } catch(Exception aa){
	   
   }
   %>
</body>
</html>