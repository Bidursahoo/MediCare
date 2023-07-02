<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <title>Medic Admin</title>
</head>
<body>
	<nav class="navbar flex">
        <img src="./images/medical-team.png" alt="">
        <span class="fs-3 fw-bolder text-uppercase">Medi Care</span>
        <ul class="flex nav-links">
            <li ><a href="">Feedback</a></li>
        </ul>
    </nav>
    <div class="welcome flex">
        <h1>Welcome Back System Admin <i class='far fa-grin-beam'></i></h1>
    </div>
    <div class="container px-4 py-5" id="featured-3">
        <h1 class="pb-2 border-bottom text-center">Select Your Actions</h1>
        <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
           <div class="feature col">
              <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
                 <svg class="bi" width="1em" height="1em">
                    <use xlink:href="#collection"/>
                 </svg>
              </div>
              <h1 class="fs-2 fw-bold">Add Doctors</h1>
              <p class="fw-semibold">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus veritatis quam eaque obcaecati eligendi neque ipsum ipsa, quis quasi dolores iure, veniam adipisci? Omnis suscipit tenetur accusantium, nihil error iste.</p>
              <a href="admin/docRegi.jsp" class="icon-link d-inline-flex align-items-center">
                 Add Doctors
              </a>
           </div>
           <div class="feature col">
              <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
              </div>
              <h1 class="fs-2 fw-bold">Doctor Details</h1>
              <p class="fw-semibold">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus veritatis quam eaque obcaecati eligendi neque ipsum ipsa, quis quasi dolores iure, veniam adipisci? Omnis suscipit tenetur accusantium, nihil error iste.</p>
              <a href="./admin/viewDoctor.jsp" class="icon-link d-inline-flex align-items-center">
                 View Details
              </a>
           </div>
           <div class="feature col">
              <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
                 <svg class="bi" width="1em" height="1em">
                    
                 </svg>
              </div>
              <h1 class="fs-2 fw-bolder">Patient Details</h1>
              <p class="fw-semibold">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus veritatis quam eaque obcaecati eligendi neque ipsum ipsa, quis quasi dolores iure, veniam adipisci? Omnis suscipit tenetur accusantium, nihil error iste.</p>
              <a href="./admin/viewPatient.jsp" class="icon-link d-inline-flex align-items-center">
                 View Details
              </a>
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