<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Patient</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="../css/home.css">
</head>
<body>
<h1 class="text-uppercase text-center adminHead">List of Patients</h1>
<table class="table table-hover">
  <thead>
    <tr>
      <th >Patient Id</th>
      <th >Name</th>
      <th >Email</th>
      <th >Gender</th>
      <th >Date of birth</th>
      <th >age</th>
      <th >Contact</th>
      <th >Address</th>
      <th >City</th>
      <th >Pincode</th>
      <th>Delete</th>
      <th>Update</th>
    </tr>
  </thead>
  <tbody>
  <%try{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
		Statement st = con.createStatement();
		String s = "Select * from patient;";
		ResultSet rs = (ResultSet) st.executeQuery(s);
		while(rs.next()) {%>
		<tr class="table-primary">
		<td ><%= rs.getString("patientid") %></td>
		<td ><%= rs.getString("name") %></td>
		<td ><%= rs.getString("email") %></td>
		<td ><%= rs.getString("gender") %></td>
		<td ><%= rs.getString("dob") %></td>
		<td ><%= rs.getInt("age") %></td>
		<td ><%= rs.getInt("contact") %></td>
		<td ><%= rs.getString("address") %></td>
		<td ><%= rs.getString("city") %></td>
		<td ><%= rs.getString("pincode") %></td>
		<td>
		<form method="post" action="./deleteProcess.jsp">
		<input type="hidden" name="db" value="pat">
		<input type="hidden" name="id" value="<%=rs.getString("patientid") %>" >
		<input class="btn btn-danger" type="submit" value="Delete">
		</form>
		</td>
		<td>
		<form method="post" action="./updateProcess.jsp">
		<input type="hidden" name="db" value="pat">
		<input type="hidden" name="id" value="<%=rs.getString("patientid") %>" >
		<input class="btn btn-success" type="submit" value="Update">
		</form>
		</td>
		</tr>
		<%
					
		}
			con.close();
		}catch(Exception e){
			out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
		}%>
		
	</tbody>
	</table>
	<a class="btn btn-primary" href="/MediCare/Admin.jsp" role="button">Dash Board</a>
		<a class="btn btn-info" href="/MediCare/" role="button">Home</a>
	
</body>
</html>