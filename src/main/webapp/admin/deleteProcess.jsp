<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Delete</title>
</head>
<body>
<% String db = request.getParameter("db");
String id = request.getParameter("id");
%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
	Statement st = con.createStatement();
	String sDoc = "delete from doctor where docid = "+id+";";
	String sPat = "delete from patient where patientid = "+id+";";
	if(db.equals("doc")){
		if(!st.execute(sDoc)){
			out.print("<h1>Done</h1>");
			out.print("<a href='"+"MediCare/admin/viewDoctor.jsp"+"' >Go Back</a>");
		}
	}else if(db.equals("pat")){
		if(!st.execute(sPat)){
			out.print("<h1>Done</h1>");
			out.print("<a href='"+"viewPatient.jsp"+"' >Go Back</a>");
		}
	}
	else{
		out.print("Error");
		out.print("<a href='"+"/MediCare/Admin.jsp"+"' >Return to Dash Board</a>");
	}
	con.close();
}catch(Exception e){
	out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
}
%>
</body>
</html>