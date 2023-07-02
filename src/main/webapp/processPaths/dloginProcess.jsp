<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>D Login process</title>
</head>
<body>
<%
String email = request.getParameter("email");
String pass = request.getParameter("password");
%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
	Statement st = con.createStatement();
	String s = "select email , password from doctor where email = '"+email+"' and password = '"+pass+"';";
	ResultSet rs = st.executeQuery(s);
	if(!rs.next()){
		out.print("<h1>Credential Error</h1>");
		out.print("<a href='"+"../hospitammanagement/dlogin.jsp"+"' >Try Again</a>");
	}else if(rs.next()){
		out.print("<h1>Done</h1>");
		out.print("<a href='"+"/MediCare/"+"' >Go Home</a>");
	}
	
	con.close();	
	}catch(Exception e){
		out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
	}%>
</body>
</html>