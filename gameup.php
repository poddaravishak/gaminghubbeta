<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./playgame/gameup.css" />
    <link rel="icon" href="./hedlogo.png" type="image/gif/png">
    <title>Game Up - Gaming Hub</title>
  </head>
  <body>
  <?php include './sidebaradmin/sidebar.php'; ?>
     <div class="container">
      <img src="./admin/admin.png">
        <form action="gameup.php" method="post" enctype="multipart/form-data">
        <label class="label">Game Name</label><br>
        <input type="" name="titles" value=""  placeholder="Game Name" required /> <br> <br>
        <label for="">Game embeded Link</Details></label><br>
        <textarea
          name="tur_ditils"
          id=""
          cols="12"
          rows="5"
          placeholder="Enter your Link"
          required
        ></textarea>
        </textarea><br>
        <input class="chose"  type="file" name="image" value=""  required /><br />
        <input class="btn"  type="submit" name="submit2" value="submit" />
        </form>
    <?php
      include './playgamedb.php';
     if (isset($_POST['submit2'])){
        @$turname=$_POST['titles'];
        @$turbody=$_POST['tur_ditils'];
       @ $image=$_FILES['image']['name'];
       @ $image_size=$_FILES['image']['size'];
       @ $image_tem_loc=$_FILES['image']['tmp_name'];
       @ $image_store="playgame/".$image;
        move_uploaded_file($image_tem_loc,$image_store);
        $sql="INSERT gamelist(nameofgame,link,photo) values('$turname','$turbody','$image')";
        $query=mysqli_query($conn,$sql);
     }
    ?>

    </div>
    
  </body>
</html>
