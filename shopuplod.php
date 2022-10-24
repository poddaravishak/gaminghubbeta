<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./shopup.css" />
    <link rel="icon" href="./hedlogo.png" type="image/gif/png">
    <title>Shop up - Gaming Hub</title>
  </head>
  <body>
  <?php include './sidebaradmin/sidebar.php'; ?>
  
    <div class="container">
    <img src="./admin/admin.png">
      <form
        class=""
        action="shopuplod.php"
        method="post"
        enctype="multipart/form-data"
      >
        <textarea
          name="game_name"
          id=""
          cols="12"
          rows="5"
          placeholder="enter Game Title"
          required
        ></textarea><br>

        <input class="hello" type="" name="price" value=""  placeholder="Game price must  use $" required /><br>
        <input   type="file" name="image" value=""  required /><br/><br>
        <input  class="btn" type="submit" name="submit" value="submit" />
      </form>
     <?php
      include'shopdb.php';
      if(isset($_POST['submit'])){
        $gamename=$_POST['game_name'];
        $gprice=$_POST['price'];
        $image=$_FILES['image']['name'];
        $image_type=$_FILES['image']['type'];
        $image_size=$_FILES['image']['size'];
        $image_tem_loc=$_FILES['image']['tmp_name'];
        $image_store="shop/".$image;


        move_uploaded_file($image_tem_loc,$image_store);

        $sql="INSERT shop_table(gamename,price,imageup) values('$gamename','$gprice','$image')";
        $query=mysqli_query($conn,$sql);
      }

     ?>

    </div>
  </body>
</html>
