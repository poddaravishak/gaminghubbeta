<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./playgame/playgame.css" />
    <link rel="icon" href="./hedlogo.png" type="image/gif/png">
    <title>Game Play - Gaming Hub</title>
</head>
<body>

      <?php 
    include 'playgamedb.php';
    $id=$_POST['id'];
    $sql="SELECT * from gamelist where id='$id'";
    $query=mysqli_query($conn,$sql);
    while($info=mysqli_fetch_array($query)){
      ?>

      <div class="imgsection">
        <?php echo $info['link']; ?>

      <?php
    }
    ?>
    
</body>
</html>