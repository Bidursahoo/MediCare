<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/home.css">
    <title>Medic Cure</title>
</head>
<body>
	<nav class="navbar flex">
        <img src="./images/medical-team.png" alt="">
        <span class="fs-3 fw-bolder text-uppercase">Medi Care</span>
        <ul class="flex nav-links">
            <li><a href="./hospitammanagement/plogin.jsp">Patient Login</a></li>
            <li><a href="./hospitammanagement/dlogin.jsp">Doctor Login</a></li>
            <li><a href="">Feedback</a></li>
        </ul>
    </nav>



    
    <div class="flex intro">
        <div class="intro-content">
            <h1>Welcome to most Affordable<br>Health Care system</h1>
            <p>Your body is a temple, treat it with respect. A healthy body leads to a healthy mind, and together they create a harmonious and balanced life. Invest in your health and well-being, and you'll reap the rewards for years to come.</p>
            <button class="btn btn-primary"><a href="./hospitammanagement/Signup.jsp" class="text-light">Get Started</a></button>
        </div>
        <div class="intro-img">
            <img src="./images/hero-image.png" alt="">
        </div>
    </div>




  <div class="container px-4 py-5" id="custom-cards">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./images/doctors.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-primary text-shadow-1  ">
            <h3 class="pt-5 pb-0 mt-5 mb-4 display-6 lh-1 fw-bolder ">High Quality Doctors</h3>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./images/ambulange.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-primary text-shadow-1">
            <h3 class="pt-5 pb-0 mt-5 mb-4 display-6 lh-1 fw-bolder ">On Time Service</h3>
            
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./images/beds.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-primary text-shadow-1">
            <h3 class="pt-5 pb-0 mt-5 mb-4 display-6 lh-1 fw-bolder">High Capacity</h3>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./images/meds.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-primary text-shadow-1">
            <h3 class="pt-5 pb-0 mt-5 mb-4 display-6 lh-1 fw-bolder">Pharmacy Services</h3>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('./images/high\ tech.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-primary text-shadow-1">
            <h3 class="pt-5 pb-0 mt-5 mb-4 display-6 lh-1 fw-bolder">Advanced Tools</h3>
          </div>
        </div>
      </div>
    </div>
  </div>



  <div class="container ">
    <footer class="py-3 my-4 ">
      <ul class="nav justify-content-center border-bottom pb-3 mb-3 ">
        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
      </ul>
      <p class="text-center text-muted">&copy; 2023 Medical Care, Inc</p>
    </footer>
  </div>
</body>
</html>