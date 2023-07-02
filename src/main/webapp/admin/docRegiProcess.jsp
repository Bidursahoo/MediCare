<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String name = request.getParameter("name");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
String pass = request.getParameter("password");
String contact = request.getParameter("contact");
String address = request.getParameter("address");
String city = request.getParameter("city");

%>
<%try{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
		Statement st = con.createStatement();
		String s = "insert into doctor(name , email , password , gender , contact , address , city) values"
		+"('"+ name +"' , '"+ email+"' , '"+pass+"' ,  '"+gender +"' , "+contact+" , '"+address+"' , '"+city+"');";
		if(!st.execute(s)){
			out.print("<h1>Done</h1>");
			out.print("<a href='"+"/MediCare/Admin.jsp"+"' >Go Home</a>");
		}
		
		con.close();	
		}catch(Exception e){
			out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
		}%>
</body>
</html>