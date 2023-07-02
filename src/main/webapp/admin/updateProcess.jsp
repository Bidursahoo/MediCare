<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String db = request.getParameter("db");
String id = request.getParameter("id");
%>
<%
if(db.equals("doc")){
	response.sendRedirect("docUpdate.jsp");
	
}
out.print("<h1>"+db+"</h1><br>");
out.print("<h1>"+id+"</h1>");

%>
<a class="btn btn-primary" href="/MediCare/Admin.jsp" role="button">Bhakkk</a>
</body>
</html>