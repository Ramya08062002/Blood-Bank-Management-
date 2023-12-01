<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%
     String name=request.getParameter("A");
     String pass=request.getParameter("B");
     try{
    	 Class.forName("com.mysql.jdbc.Driver");
   		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
		  String query="insert into group2 values('"+name+"','"+pass+"')";
		  int aa=a.executeUpdate(query);
		  if(aa>0){
			  out.print("Registered successfully");
		  }else{
			  out.print("not Registered successfully");
		  }
	     
     }catch(Exception a){
    	 
     }
     %>
</body>
</html>