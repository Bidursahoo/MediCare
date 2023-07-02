<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Login Process</title>
</head>
<body>
<%
String contact = request.getParameter("contact");
String pass = request.getParameter("password");
%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
	Statement st = con.createStatement();
	String s = "select * from patient where contact = "+contact+" and password = '"+pass+"';";
	ResultSet rs = st.executeQuery(s);
	if(!rs.next()){
		out.print("<h1>Credential Error</h1>");
		out.print("<a href='"+"../hospitammanagement/dlogin.jsp"+"' >Try Again</a>");
	}else{
		//while(rs.next()){
		response.sendRedirect("../Patient/patienthome.jsp?id="+rs.getString("patientid"));
		//}
		response.sendRedirect("../");
	}
	
	con.close();	
	}catch(Exception e){
		out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
	}%>
</body>
</html>