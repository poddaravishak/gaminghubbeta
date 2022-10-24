<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link rel="stylesheet" href="./fullturnament.css" />
 <title>Document</title>
</head>

<body>
 <?php
   include './basic.php' ?>
 <div class="container">
  <?php 
    include 'turnamentdb.php';
    $id=$_POST['id'];
    $sql="SELECT * from insert_tur where id='$id'";
    $query=mysqli_query($conn,$sql);
    while($info=mysqli_fetch_array($query)){
      ?>

  <div class="imgsection">
   <img src="turnament/<?php echo $info['photoup']; ?>" alt="loding" />
  </div>

  <div class="textview"><?php echo $info['title']; ?></div>

  <div class="textview2"><?php echo $info['about']; ?></div>
  <div class="textview3"><?php echo $info['turnamentid']; ?></div>

  <a href="./reg.php"> <button class="button-32" role="button">Registration</button></a>

  <?php
    }
    ?>
 </div>
</body>

</html>
<!-- HTML !-->