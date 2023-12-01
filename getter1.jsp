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
    String phno=request.getParameter("E");
    String gen=request.getParameter("F");
    int count=0;
    
    try{
    	  Class.forName("com.mysql.jdbc.Driver");
  		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
		  String query= "select * from group1 where  blood_group='"+group+"' and district='"+dist+"'";
	      ResultSet ob=a.executeQuery(query);
	      
	      while(ob.next()){
	    	  count=1;
	      }
	     
	      if(count==1){
	    	  java.sql.Statement b=con.createStatement();
	    	  String query1="insert into getter values('"+name+"','"+age+"','"+group+"','"+dist+"','"+phno+"','"+gen+"')";
	          int c=b.executeUpdate(query1);
	          if(c>0){
	        	  out.print("blood found");
	          }else{
	        	  out.print("blood not found");
	          }
	      }else{
	    	  out.print("blood not found");
	      }
	    }catch(Exception a){
    	
    }
    %>
</body>
</html>