<!DOCTYPE>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  </head>
  <body>

    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>ENSA <span>Tanger</span></h3>
      </div>
      <div class="right_area">
        <a href="#" class="logout_btn">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--sidebar start-->
    <div class="sidebar">
      <center>
        <img src="img/1.png" class="profile_image" alt=""> 
        <h4>ENSAT</h4>
      </center>
      <a href="#"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a>
      <a href="#"><i class="fad fa-file"></i><span>Demande/Suivi</span></a>
      <a href="#"><i class="fas fa-poll-h"></i><span>Notes et Résultats</span></a>
      <a href="#"><i class="fas fa-graduation-cap"></i><span>Stage</span></a>
      <a href="#"><i class="far fa-user"></i><span>Profile</span></a>
      <a href="#"><i class="fas fa-info-circle"></i><span>About</span></a>
    </div>
    <!--sidebar end-->

    <div class="content"></div>

  </body>
</html>