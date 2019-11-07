<?php
  session_start();
 ?>
<!DOCTYPE html>
<html>
<head>
<title>Movies!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">

</head>
<body>

  <div class="titlebar">
    <h2 style="color:black" align="center">WareHouse</h2>
  </div>

<div class="topnav" id="myTopnav">
  <a href="index.php" class="active">Home</a>
  

  <!--Login form -->
  <?php
  include 'lappearordis.php'
 ?>
 </div>

<?php
  if (isset($_GET['error'])) {
        echo '<h1 style="font-size:30px;padding:0px;margin:0px;color:red;" align="center">'.$_GET['error'].'</h1>';
     }
 ?>


<!-- SignUp form: 
  <form class="modal-content" action="signup.php" method="POST">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Username" name="uid" required>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="mail" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>

      <label for="pwd-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="pwd-repeat" required>

      <p>By creating an account you agree to our <a href="termsandconditions.html" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="submit" class="signupbtn" value="signup" name="submit">Sign Up</button>
      </div>
    </div>
  </form>
</div>-->

</body>
</html>
