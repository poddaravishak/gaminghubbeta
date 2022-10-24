<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./turnamentup.css" />
    <link rel="icon" href="./hedlogo.png" type="image/gif/png">
    <title>Tournament up - Gaming Hub</title>
  </head>
  <body>
  <?php include './sidebaradmin/sidebar.php'; ?>
     <div class="container">
      <img src="./admin/admin.png">
        <form action="turnament_up.php" method="post" enctype="multipart/form-data">
        <label class="label">Title of Turnament</label><br>
        <input type="" name="titles" value=""  placeholder="Title of turnament" required /> <br> <br>
        <label for="">Details of Turnamnet</Details></label><br>
        <textarea
          name="tur_ditils"
          id=""
          cols="12"
          rows="5"
          placeholder="enter Game Title"
          required
        ></textarea>
        </textarea><br>
        <input type="" name="turid" value=""  placeholder="Turnament id" required /> <br>
        <input class="chose"  type="file" name="image" value=""  required /><br />
        <input class="btn"  type="submit" name="submit2" value="submit" />
        </form>
    <?php
      include './turnamentdb.php';
     if (isset($_POST['submit2'])){
        @$turname=$_POST['titles'];
        @$turbody=$_POST['tur_ditils'];
        @$turid=$_POST['turid'];
       @ $image=$_FILES['image']['name'];
       @ $image_size=$_FILES['image']['size'];
       @ $image_tem_loc=$_FILES['image']['tmp_name'];
       @ $image_store="turnament/".$image;
        move_uploaded_file($image_tem_loc,$image_store);
        $sql="INSERT insert_tur(title,about,photoup,turnamentid) values('$turname','$turbody','$image','$turid')";
        $query=mysqli_query($conn,$sql);
     }
    ?>

    </div>
    
  </body>
</html>
