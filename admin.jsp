<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
  body{
    text-align:center;
  }
  table,tr,td,th{
    border:2px solid red;
    border-collapse:collapse;
  }
  table{
    align:center;
  }
  .table1 table{
       position:relative;
       left:560px;
  }
   .table2 table{
       position:relative;
       left:450px;
  }
     .table3 table{
       position:relative;
       left:460px;
  }
  h2{font-size:180%;}
  
  
</style>
<body>
   <div class="table1">
    <h2>Registeration Details</h2>
 <%
     try{
    	 Class.forName("com.mysql.jdbc.Driver");
   		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
		  String query="select * from group2 ";
	      ResultSet ob=a.executeQuery(query);
	     
	      out.print("<html><body><table><tr><th>UserName</th><th>Password</th></tr>");
	      while(ob.next())
             out.println("<tr><td>"+ob.getString("name")+"</td><td>"+ob.getString("pass")+"</td></tr>");
	      
	      out.print("</table></body></html>");
     }catch(Exception ae){
    	 
     }
 %>
 </div>
 <div class="table2">
 <h2>Donor Details</h2>
 <%
     try{
    	 Class.forName("com.mysql.jdbc.Driver");
   		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
		  String query="select * from group1 ";
	      ResultSet ob=a.executeQuery(query);
	     
	      out.print("<html><body><table><tr><th>Name</th><th>Age</th><th>Blood group</th><th>Location</th><th>Phone no</th><th>Gender</th></tr>");
	      while(ob.next())
             out.println("<tr><td>"+ob.getString("name1")+"</td><td>"+ob.getString("age1")+"</td><td>"+ob.getString("blood_group")+"</td><td>"+ob.getString("district")+"</td><td>"+ob.getString("phno")+"</td><td>"+ob.getString("gender")+"</td></tr>");
	      
	      out.print("</table></body></html>");
     }catch(Exception ae){
    	 
     }
  %>
  </div>
  <div class="table3">
  <h2>Blood Getter Details</h2>
 <%
     try{
    	 Class.forName("com.mysql.jdbc.Driver");
   		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
		  String query="select * from getter ";
	      ResultSet ob=a.executeQuery(query);
	     
	      out.print("<html><body><table><tr><th>Name</th><th>Age</th><th>Blood group</th><th>District</th><th>Phone no</th><th>Gender</th></tr>");
	      while(ob.next())
             out.println("<tr><td>"+ob.getString("UserName")+"</td><td>"+ob.getString("Age")+"</td><td>"+ob.getString("blood_group")+"</td><td>"+ob.getString("District")+"</td><td>"+ob.getString("phoneno")+"</td><td>"+ob.getString("gender")+"</td></tr>");
	      
	      out.print("</table></body></html>");
     }catch(Exception ae){
    	 
     }
  %>
  </div>
  
</body>
</html>