<?php
session_start();
if (isset($_SESSION['status'])) {
  echo $_SESSION['status'];
  unset($_SESSION['status']);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Gaming x Hub </title>

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
      <a href="./mainpage.php" class="navbar-link">Home</a>
     </li>

     <li>
      <a href="./shop/shop.php" class="navbar-link">About</a>
     </li>

     <li>
      <a href="#Tournament" class="navbar-link">Tournament</a>
     </li>

     <li>
      <a href="#Team" class="navbar-link">Team</a>
     </li>

     <li>
      <a href="#Gears" class="navbar-link">Gears</a>
     </li>

     <li>
      <a href="#Contact" class="navbar-link">Contact</a>
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

    <button class="search">
     <ion-icon name="search-outline"></ion-icon>
    </button>



   </div>

  </div>
 </header>

 <main>


  <article>

   <section class="hero" id="hero">
    <div class="container">

     <p class="hero-subtitle">Explore the Gaming World</p>

     <h1 class="h1 hero-title">Gaming Hub</h1>
     <button class="btn btn-primary">
      <span>Watch live</span>

      <ion-icon name="play-circle"></ion-icon>
     </button>



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