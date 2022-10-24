<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link rel="stylesheet" href="reg.css" />
 <link rel="icon" href="./hedlogo.png" type="image/gif/png">
 <title>Regestation - Gaming Hub</title>
</head>

<body>

 <div class="div1">
  <img src="./registration-form.png" />
  <form action="reg.php" method="post" enctype="multipart/form-data">
   <div class="inputBox">
    <input type="text" name="teamname2" value="" required />
    <span>Team Name</span>
   </div>

   <div class="inputBox">
    <input type="text" name="teamnameleader" value="" required />
    <span>Team Leader Name</span>
   </div>

   <div class="inputBox">
    <input type="email" name="email" value="" required />
    <span>Enter your Email</span>
   </div>

   <div class="inputBox">
    <input type="number" name="igno" value="" required />
    <span>IG No.</span>
   </div>

   <div class="inputBox">
    <input type="text" name="noofmember" value="" required />
    <span>Number of Team Member</span>
   </div>

   <div class="inputBox">
    <input type="text" name="turnamentid" value="" required />
    <span>TOURNAMENT ID</span>
   </div>

   <div class="inputBox">
    <input type="number" name="phoneno" value="" required />
    <span>Phone no</span>
    <div class="tacbox">
     <input id="checkbox" type="checkbox" />
     <label for="checkbox">
      I agree to these <a
       href="https://www.privacypolicygenerator.info/live.php?token=NTzDK0yEMPkIfkcCXBrcJ41UguIh743t">Terms and
       Conditions</a></label>
    </div>

   </div>
   <input class="btn" type="submit" name="hello" value="Regestation" />

  </form>
  <?php
      include './turregbd.php';
      if (isset($_POST['hello'])){
        $jfbnk=$_POST['teamname2'];
        $regr=$_POST['teamnameleader'];
        $rger=$_POST['email'];
        $fgerg=$_POST['igno'];
        $efses=$_POST['noofmember'];
        $efwf=$_POST['turnamentid'];
        $ererg=$_POST['phoneno'];
       
        $sql="INSERT user(teamname,teamleadername,email,igno,numberofmember,phoneno,turnamentid) values('$jfbnk','$regr','$rger','$fgerg','$efses','$efwf','$ererg')";
        $query=mysqli_query($conn,$sql);
    }
    ?>

 </div>

</body>

</html>