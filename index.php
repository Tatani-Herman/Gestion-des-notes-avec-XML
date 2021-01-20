<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/style2.css" />
    <title>Sign in & Sign up Form</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="" class="sign-in-form" method="POST">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="login" required/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="pass" required/>
            </div>
            <button type="Submit" class="btn solid" name="valider"> login</button>
            <p class="social-text">Voir le code source</p>
            <div class="social-media">
              <a href="https://github.com/Tatani-Herman/Gestion-des-notes-avec-XML" class="social-icon" target="_blank">
                <i class="fab fa-github"></i>
              </a>
            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Bienvenue</h3>
            <p>
              Vous etes sur la plateforme de gestion des notes des etudiants de l'ENSAT
            </p>
          </div>
          <div class="image">
          <img src="img/ensat.jpg" class="roundedImage" alt="" />
          </div>
        </div>
      </div>
    </div>

    <script src="js/app.js"></script>
  </body>
</html>

<?php
	
	if(isset($_POST['valider'])){
     $login=$_POST['login'];
	   $pass=$_POST['pass'];
		if($login =='admin' && $pass=='admin'){
    header("location:dashboard.php");
    exit();
    }
		else{
    echo "mot de passe ou nom d'utilisateur invalide";
    header("location:index.php");
		}
	}
?>