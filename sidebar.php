<!DOCTYPE>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title><?php echo $titre; ?></title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <link rel="icon" href="img/index.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <script>
        /*$('sidebar').click(function(){
            $(this).addClass("active").siblings().removeClass("active");
        });*/
        </script>
  </head>
  <body>
  <div class="wrapper">
   
   <input type="checkbox" id="check">
    <!--header area start-->
    <header>
  
      <nav class="navbar navbar-dark bg-dark ">
      <div class="left_area">
        <h3>ENSA <span>Tanger</span></h3>
      </div>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <a href="index.php" class="btn btn-outline-danger my-2 my-sm-0">Logout</a>
</nav>

    </header>
    <!--header area end-->
    <!--sidebar start-->
  
    <div class="sidebar">
      <center>
        <img src="img/1.png" class="profile_image" alt=""> 
        <h4>ENSAT</h4>
      </center>
      <a href="dashboard.php"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a>
      <a href="exemplepdf.php"><i class="fas fa-poll-h"></i><span>Exemples de PDFs</span></a>
      <a href="about.php"><i class="fas fa-info-circle"></i><span>About</span></a>
    </div>
    