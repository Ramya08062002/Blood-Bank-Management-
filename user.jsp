<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <% 
      String name1=request.getParameter("A");
      String pass1=request.getParameter("B");
      try{
           Class.forName("com.mysql.jdbc.Driver");
		
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","ram@465502");
		  java.sql.Statement a=con.createStatement();
	
         String query="select * from group2 where name='"+name1+"' and pass='"+pass1+"'";
		  ResultSet b=a.executeQuery(query);
		  if(b.next()){
		     response.sendRedirect("decide.html");
		  }else{
		     out.print("Register First");
		  }
	
      }catch(Exception a){
      
      }
   %> 
</body>
</html>