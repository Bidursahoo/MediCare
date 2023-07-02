<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Registration | MediCare</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/pReg.css">
</head>
<body>
    <h1 class="form-heading">Doctor Registration</h1>
    <form action="docRegiProcess.jsp" method="post">
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="name">Name:</label>
          <input required type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group col-md-6">
            <label for="email">Email:</label>
            <input required type="email" class="form-control" id="email" name="email">
          </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
            <label for="password">Password:</label>
            <input required type="password" class="form-control" id="password" name="password">
          </div>
          <div class="form-group col-md-6">
            <label for="gender">Gender:</label>
            <select class="form-control" id="gender" name="gender">
              <option value="male">Male</option>
              <option value="female">Female</option>
              <option value="other">Other</option>
            </select>
          </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
      <label for="city">City:</label>
      <input required type="text" class="form-control" id="city" name="city">
    </div>
        
          <div class="form-group col-md-6">
        <label for="contact">Contact:</label>
        <input required type="number" class="form-control" id="contact" name="contact">
        </div>
      </div>
    <div class="form-group">
        <label for="address">Address:</label>
        <textarea class="form-control" id="address" name="address"></textarea>
      </div>
    
    <button type="submit" class="btn btn-outline-primary">Submit</button>
    <button type="reset" class="btn btn-outline-danger">Reset</button>
  </form>
      
</body>
</html>