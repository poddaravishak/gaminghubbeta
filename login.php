<?php
$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {

  $mysqli = require __DIR__ . "./database.php";

  $sql = sprintf(
    "SELECT * FROM usertable
                    WHERE email = '%s'",
    $mysqli->real_escape_string($_POST["email"])
  );

  $result = $mysqli->query($sql);

  $user = $result->fetch_assoc();

  if ($user) {

    if (password_verify($_POST["password"], $user["password_hash"])) {

      session_start();

      session_regenerate_id();

      $_SESSION["user_id"] = $user["id"];

      header("Location: mainpage.php");
      exit;
    }
  }

  $is_invalid = true;
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <!-- css link -->
 <link rel="stylesheet" href="./assets/css/login.css">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Document</title>
</head>

<body>
 <div class="hero">

  <div class="homelog">
   <a href="./index.html">
    <img src="./assets/images/ggh.svg">
   </a>


  </div>
  <div class="from-box">
   <?php
      session_start();
      if (isset($_SESSION['status'])) {
        echo $_SESSION['status'];
        unset($_SESSION['status']);
      }
      ?>
   <div class="button-box">
    <div id="btn"></div>
    <button type="button" class="toggle-btn" onclick="login()">Login</button>
    <button type="button" class="toggle-btn " onclick="register()">Signup</button>
   </div>
   <div class="social-icons">
    <img src="./assets/images/facebook.png">
    <img src="./assets/images/github.png">
    <img src="./assets/images/facebook.png">
   </div>
   <form method="post" id="login" class="input-group">
    <input type="email" class="input-field" id="email" name="email" placeholder="email" required
     value="<?= htmlspecialchars($_POST["email"] ?? "") ?>">
    <input type="text" class="input-field" id="password" name="password" placeholder="Enter Password" required>
    <input type="checkbox" class="ckeckbox"><span>Remember Password</span>
    <button type="submit" class="submit-btn">Login</button>
    <?php if ($is_invalid) : ?>
    <em>Invalid login</em>
    <?php endif; ?>

   </form>


   <form action="process-signup.php" method="post" id="register" class="input-group" novalidate>
    <input type="text" class="input-field" id="userid" name="userid" placeholder="User Id" required>
    <input type="email" class="input-field" id="email" name="email" placeholder="email" required>
    <input type="text" class="input-field" id="password" name="password" placeholder="Enter Password" required>
    <input type="checkbox" class="ckeckbox"><span>I agree to T&C</span>
    <button type="submit" class="submit-btn">Sign UP</button>


   </form>
  </div>



 </div>

 <script>
 var x = document.getElementById("login");
 var y = document.getElementById("register");
 var z = document.getElementById("btn");


 function login() {
  x.style.left = "50px";
  y.style.left = "450px";
  z.style.left = "0";
 }

 function register() {
  x.style.left = "-400px";
  y.style.left = "50px";
  z.style.left = "110px";
 }
 </script>
</body>

</html>