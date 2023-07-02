<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Process</title>
</head>
<body>
<%
 String name = request.getParameter("name");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String pass = request.getParameter("password");
String conPass = request.getParameter("confirm-password");
String age = request.getParameter("age");
String contact = request.getParameter("contact");
String address = request.getParameter("address");
String city = request.getParameter("city");
String pincode = request.getParameter("pincode");

%>
<%try{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
		Statement st = con.createStatement();
		String s = "insert into patient(name , email , password , gender , dob , age , contact , address , city ,  pincode) values"
		+"('"+ name +"' , '"+ email+"' , '"+pass+"' ,  '"+gender +"' , '"+dob+"' , "+age+" , "+contact+" , '"+address+"' , '"+city+"', '"+pincode+"' );";
		if(!pass.equals(conPass)){
			out.print("<h1>Password Not Matching with confirm password</h1>");
			out.print("<a href='"+"../hospitammanagement/Signup.jsp"+"' >Try Again</a>");
		}else{
			if(!st.execute(s)){
				out.print("<h1>Done</h1>");
				out.print("<a href='"+"/MediCare/"+"' >Go Home</a>");
			}
		}
		con.close();	
		}catch(Exception e){
			out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
		}%>
</body>
</html>