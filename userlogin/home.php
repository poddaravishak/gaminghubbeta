<?php

include 'config.php';
session_start();
$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
};

if(isset($_GET['logout'])){
   unset($user_id);
   session_destroy();
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <title>home</title>

 <!-- custom css file link  -->
 <link rel="stylesheet" href="profile.css" />
</head>

<body>
 <?php
   include './basic.php' ?>
 <div class="container">
  <div class="profile">
   <?php
         $select = mysqli_query($conn, "SELECT * FROM `user_form` WHERE id = '$user_id'") or die('query failed');
         if(mysqli_num_rows($select) >
        0){ $fetch = mysqli_fetch_assoc($select); } if($fetch['image'] == ''){
        echo '<img src="images/default-avatar.png" />'; }else{ echo '<img
          src="uploaded_img/'.$fetch['image'].'"
        />'; } ?>
   <h3><?php echo $fetch['name']; ?></h3>
   <a href="update_profile.php" class="btn">update profile</a>
   <a href="home.php?logout=<?php echo $user_id; ?>" class="delete-btn">logout</a>



  </div>

  <div class="title">
   <img src="./notification.png" alt="">
   <h2> Notification </h2>
  </div>
  <div class="shop">


   <?php include 'shopdb.php';
    
       
      $sql="SELECT * from shop_table";
     $query=mysqli_query($conn,$sql);
     while($info=mysqli_fetch_array($query)){
       ?>
   <div class="notify">
    <h2> <?php echo $info['gamename']; ?> </h2>
   </div>
   <?php
      }
       ?>
  </div>
 </div>
 </div>

</body>

</html>