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
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link rel="stylesheet" href="./playgame/gamelist.css" />
 <link rel="icon" href="./hedlogo.png" type="image/gif/png">
 <title>Game List - Gaming Hub</title>
</head>

<body>
 <?php
  include './basic.php' ?>
 <div class="gallery">
  <?php
    include './playgamedb.php';
       
    $sql="SELECT * from gamelist";
    $query=mysqli_query($conn,$sql);
    while($info=mysqli_fetch_array($query)){
       ?>

  <div class="container">
   <div class="cardBx">
    <div class="card" data-item="pc">
     <img src="playgame/<?php echo $info['photo']; ?>" alt="loding" />
     <div class="content">
      <h4><?php echo $info['nameofgame']; ?></h4>
      <div class="progress-line"><span></span></div>
      <div class="info">
       <form class="hello" action="./playgame.php" method="post">
        <input type="hidden" name="id" value="<?php echo $info['id']; ?>" hidden />
        <input id="fullturnament" type="submit" name="fulltur" value="Paly Now" />
       </form>
       <!-- <a href="#">Join</a> -->
      </div>
     </div>
    </div>
   </div>
  </div>
  <?php
    }
    ?>
 </div>
</body>

</html>