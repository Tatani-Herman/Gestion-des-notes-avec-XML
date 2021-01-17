<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	
	<div class="container">
		<div class="img">
			<img class="roundedImage" src="img/ensat.jpg">
		</div>
		<div class="login-content">
			<form method="POST">
				<img src="img/avatar.svg">
				<h2 class="title">Bienvenue</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" name="login" required>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="pass" required>
            	   </div>
            	</div>
            	<input type="Submit" class="btn" value="Login" name="valider">
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
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
		}
	}
?>