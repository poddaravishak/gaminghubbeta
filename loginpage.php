<?php

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {

  $mysqli = require __DIR__ . "/database.php";

  $sql = sprintf(
    "SELECT * FROM usertable
                    WHERE email = '%s'",
    $mysqli->real_escape_string($_POST["email"]) ); 
    $result =$mysqli->query($sql); 
    $user = $result->fetch_assoc();
     if ($user){
       if(password_verify($_POST["password"], $user["password_hash"])) { 
       
        session_start();

        session_regenerate_id(); 
        
        $_SESSION["user_id"] = $user["id"]; 
        
        header("Location:home.php");
        
        exit;
      }
     }

     $is_invalid = true;
 }
 ?>


<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link rel="stylesheet" href="./loginpage.css" />
 <title>Document</title>
</head>

<body>
 <div>
  <a href="./home.php"> <img src="./ggh.svg" /></a>
 </div>
 <!-- ========main page======== -->
 <main>
  <div class="container">
   <h1>Welcome to Gaming Hub</h1>

  </div>

  <div class="button-group">
   <!-- ======LOGIN __button======= -->

   <button class="glow-on-hover" type="button" id="show-login">
    L O G I N
   </button>

   <!-- ======Signup __button======= -->

   <button class="glow-on-hover" type="button" id="show-signup">
    S I G N U P
   </button>
  </div>
  <!-- ====popup for login form======== -->
  <div class="popup">
   <div class="close-btn">&times;</div>
   <div class="form">
    <form method="post" id="login" class="input-group">
     <h2>Log in</h2>
     <!-- -------- login email---------- -->
     <div class="form-element">
      <label for="email">Email</label>
      <input type="text" id="email" name="email" placeholder="Enter
              email" required value="<?= htmlspecialchars($_POST["email"] ?? "") ?>">
     </div>
     <!-- -------- login Password---------- -->
     <div class="form-element">
      <label for="password">password</label>
      <input type="password" name="password" placeholder="Enter valid password" />
     </div>
     <!-- -------- login check box for remember password---------- -->
     <div class="form-element">
      <input type="checkbox" id="remember me" />
      <label for="remember-me">Remember me</label>
     </div>
     <!-- -------- login Button---------- -->
     <div class="form-element">
      <a> <button>sign in</button> </a>
     </div>

     <div class="form-element1">
      <a href="#">I dont have an accout</a>
     </div>
     <!-- -------- login page forgot password text---------- -->
     <div class="form-element">
      <a href="#">Forgot Password</a>
     </div>
    </form>
   </div>
  </div>

  <!-- ====popup for signup======== -->
  <div class="popup2">
   <div class="close-btn2">&times;</div>
   <div class="form">
    <form action="process-signup.php" method="post" id="register" class="input-group" novalidate>
     <h2>Signup</h2>
     <!-- -------- Signup user name ---------- -->
     <div class="form-element">
      <label for="name">User full name</label>
      <input type="text" id="userid" name="userid" placeholder="Enter your full name" />
     </div>
     <!-- -------- Signup user  email---------- -->
     <div class="form-element">
      <label for="email">Email</label>
      <input type="text" id="email" name="email" placeholder="Enter email" />
     </div>
     <!-- -------- Signup user password---------- -->
     <div class="form-element">
      <label for="password">password</label>
      <input type="password" id="password" name="password" placeholder="Enter valid password" />
     </div>
     <div class="form-element1">
      <a href="./loginpage.php"> Already I have an account</a>
     </div>
     <!-- -------- Signup button ---------- -->
     <div class="form-element">
      <a> <button>sign up</button> </a>
     </div>
    </form>
   </div>
  </div>
 </main>

 <!-----  ----- javascript for popup -----  ------->

 <script src="./popup.js"></script>
</body>

</html>