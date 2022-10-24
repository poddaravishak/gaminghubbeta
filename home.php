<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="icon" href="./hedlogo.png" type="image/gif/png">
 <title>Home - Gaming Hub</title>

 <!-- favicon link -->

 <link rel="shortcut icon" href="favicon.ico" type="image/svg+xml">

 <!-- css link -->
 <link rel="stylesheet" href="./assets/css/style.css">


 <!-- google  front link -->
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link
  href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&family=Poppins:wght@400;500;700&display=swap"
  rel="stylesheet">


</head>

<body bgcolor-color="white">
 <div id="preloader"></div>

 <!-- #header -->


 <header class="header">

  <!-- overlay -->

  <div class="overlay" data-overlay></div>

  <div class="container">

   <a href="" class="logo">

    <img src="./assets/images/ggh.svg" alt="Gaming Hub">

   </a>

   <button class="nav-open-btn" data-nav-open-btn>
    <ion-icon name="menu-outline"></ion-icon>
   </button>

   <nav class="navbar" data-nav>

    <div class="navbar-top">
     <a href="#" class="logo">
      <img src="./assets/images/ggh.svg" alt="Gaming hub">
     </a>

     <button class="nav-close-btn" data-nav-close-btn>

      <ion-icon name="close-outline"></ion-icon>
     </button>

    </div>

    <ul class="navbar-list">

     <li>
      <a href="#" class="navbar-link">Home</a>
     </li>

     <li>
      <a href="./turnament.php" class="navbar-link">Tournament</a>
     </li>

     <li>
      <a href="./index.php" class="navbar-link">News</a>
     </li>

     <li>
      <a href="./shop.php" class="navbar-link">Shop</a>
     </li>

     <li>
      <a href="./aboutdev/aboutdev.html" class="navbar-link">About us</a>
     </li>
     <li>
      <a href="./userlogin/home.php" class="navbar-link">Profile</a>
     </li>




    </ul>
    <ul class="nav-social-list">

     <li>
      <a href="#" class="social-link">
       <ion-icon name="logo-twitter"></ion-icon>
      </a>
     </li>

     <li>
      <a href="#" class="social-link">
       <ion-icon name="logo-instagram"></ion-icon>
      </a>
     </li>

     <li>
      <a href="#" class="social-link">
       <ion-icon name="logo-github"></ion-icon>
      </a>
     </li>

     <li>
      <a href="#" class="social-link">
       <ion-icon name="logo-youtube"></ion-icon>
      </a>
     </li>

    </ul>

   </nav>
   <div class="header-actions">




    <a href="./userlogin/login.php">
     <button class="btn-sign_in">

      <div class="icon-box">
       <ion-icon name="log-in-outline"></ion-icon>
      </div>

      <span>Log_in</span>

     </button>
    </a>
   </div>

  </div>
 </header>

 <main>


  <article>

   <section class="hero" id="hero">
    <div class="container">

     <p class="hero-subtitle">Explore the Gaming World</p>

     <h1 class="h1 hero-title">Gaming Hub</h1>


     <a href="./userlogin/login.php">
      <button class="hero-subtitle">Log In to have full access</button></a>

    </div>


    </div>
   </section>



  </article>

 </main>


 <!-- custome js link -->

 <script src="./assets/js/script.js"></script>


 <!-- icon link -->

 <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/
ionicons/ionicons.esm.js"></script>
 <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/
ionicons/ionicons.js"></script>

 <!-- preeloder -->

 <script>
 var loader = document.getElementById("preloader");
 window.addEventListener("load", function() {
  loader.style.display = "none";
 })
 </script>
</body>

</html>