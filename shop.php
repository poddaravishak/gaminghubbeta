<?php

include 'config.php';
session_start();
$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:/gaminghub/userlogin/login.php');
};

?>

<!DOCTYPE html>
<html lang="en">

<head>
 <style>
 @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap");
 </style>
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <!-- css link -->
 <link rel="stylesheet" href="./shop.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

 <link rel="icon" href="./hedlogo.png" type="image/gif/png" />
 <title>Shop - Gaming Hub</title>
</head>

<body>
 <?php
   include './basic.php' ?>

 <div class="gallery">
  <?php
    include 'shopdb.php';
       
    $sql="SELECT * from shop_table";
    $query=mysqli_query($conn,$sql);
    while($info=mysqli_fetch_array($query)){
       ?>

  <div class="container">
   <div class="cardBx">
    <div class="card" data-item="pc">
     <img src="shop/<?php echo $info['imageup']; ?>" alt="loding" />
     <div class="content">
      <h4><?php echo $info['gamename']; ?></h4>
      <div class="progress-line"><span></span></div>
      <div class="info">
       <p>
        pricing<br /><span>
         <?php echo $info['price']; ?>
         $</span>
       </p>
       <a href="./payment/index.php">Buy Now</a>

      </div>
     </div>
    </div>
   </div>
  </div>
  <?php
    }
    ?>
 </div>

 <?php
  include './footer/footer.php' ?>
</body>

</html>