<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
    <title>Home | Patient</title>
  </head>
  <% 
  String id = request.getParameter("id");
  try{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
		Statement st = con.createStatement();
		String s = "select * from patient where patientid = "+id+";";
		ResultSet rs = st.executeQuery(s);
		while(rs.next()){
		%>
		
  <body>
    <section style="background-color: #eee;">
  <div class="container py-5">
    

    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3"><%= rs.getString("name") %></h5>
            <p class="text-muted mb-1"><%= rs.getString("email") %></p>
            <p class="text-muted mb-4"><%= rs.getString("address") %></p>
            <div class="d-flex justify-content-center mb-2">
              <a type="button" class="btn btn-danger" href="../">LogOut</a>
            </div>
          </div>
        </div>
        
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= rs.getString("name") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= rs.getString("email") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= rs.getInt("contact") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Address</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= rs.getString("address") %></p>
              </div>
            </div>
          </div>
        </div>
        <%
		}
		con.close();	
		}catch(Exception e){
			out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
		}
  %>
  <% 
  try{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbsmedicareDB" , "root" , ""); 
		Statement st = con.createStatement();
		String s = "SELECT p.name AS patient_name, d.name AS doctor_name, mh.appointment_date, mh.status FROM medical_history mh JOIN patient p ON"+
				" mh.patient_id = p.patientid JOIN doctor d ON mh.doctor_id = d.docid WHERE mh.patient_id ="+id+" ORDER BY mh.appointment_date desc;";
		ResultSet rs = st.executeQuery(s);
		int temp = 1;
		while(rs.next()){
		%>
        <% if(temp == 1){
        	%>
        	<div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Appointment Status <br></span> Your Last Appointment is
                </p>
                <% String sts = rs.getString("mh.status");
                if(sts.equals("Confirmed")){ %>
                <h1 class="text-success"><%=sts  %></h1>
                <%}else if(sts.equals("Pending")){ %>
                <h1 class="text-warning"><%=sts  %></h1>
                <%}else{ %>
                <h1 class="text-danger"><%=sts  %></h1>
                <%} %>
              </div>
            </div>
          </div>
        	<%
        	break;
        }}
        
        %>
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Medical</span> History
                </p>
                <table class="table table-hover">
                  <thead>
                    <tr>

                      <th>Doctor Name</th>
                      <th>Appointment Date</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tbody>
                  <%ResultSet ss = st.executeQuery(s);
          		int temp2 = 1;
        		while(ss.next()){ 
        			if(temp2 == 3){
        	        	break;
        	        }
        			String stats = ss.getString("mh.status");
        			if(stats.equals("Confirmed")){
        		%>
                    <tr class="table-success">
                      <td><%= ss.getString("doctor_name") %></td>
                      <td><%= ss.getString("mh.appointment_date") %></td>
                      <td><%= stats  %></td>
                    </tr>
                    <%}else if(stats.equals("Pending")){ %>
                    <tr class="table-warning">
                      <td><%= ss.getString("doctor_name") %></td>
                      <td><%= ss.getString("mh.appointment_date") %></td>
                      <td><%= stats  %></td>
                    </tr>
                    <%}else{%>
                    <tr class="table-danger">
                      <td><%= ss.getString("doctor_name") %></td>
                      <td><%= ss.getString("mh.appointment_date") %></td>
                      <td><%= stats  %></td>
                    </tr>
                    <% }temp2++; }%>
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<%
		
		con.close();	
		}
  		catch(Exception e){
			out.print(e+"Error neeeeeeeee marija ja kichi hebani toh duara");
		}
  %>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <script src="script.js"></script>
  </body>
</html>