<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../css/dlogin.css">


  
  <link rel="stylesheet" href="css/style.css">
  <title>Doctor login</title>
</head>
<body>
	<div class="card">
    <div class="form">
      <h3>Doctor's Login</h3>
      <form action="../processPaths/dloginProcess.jsp" method="post">
      <div class="input-field">
          <i class="fa fa-envelope"></i>
          <input type="text" placeholder="Enter your email" name= "email">
      </div>
      <div class="input-field">
        <i class="fa fa-lock"></i>
        <input type="password" placeholder="Enter your password" name="password">
    </div>
    <!--<a href="#">Forgot password?</a>-->
    <br>
    
    <button type="submit">Login</button>
    </form>
    </div>
    <div class="image">
      <div class="overlay">
        <h3>Be careful of using the word normal around cancer patients, <br>whether they call themselves a survivor or not,<br> there is no 'back to normal'.”</h3>
        <p> ― Lynda Wolters</p>
        <p></p>
      </div>
    </div>
  </div>
</body>
</html>