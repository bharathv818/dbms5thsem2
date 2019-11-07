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
  <a href="index2.php" class="active">Items</a>
  <a href="employees.php">employees</a>
  <a href="delevaries.php">Delevaries</a>
  <a href="checkout.php">checkout</a>
 </div> 

<table>
  <tr>
    <th>item name</th>
    <th>item no</th>
    <th>stock</th>
    <th>price</th>
    <th>status</th>
  </tr>
  <?php
    require 'dbh.php';
    $sql= "SELECT * from items";
    $result= $conn -> query($sql);

     if($result-> num_rows>0)
    {
         while ($row =$result-> fetch_assoc())
        {
             echo "<tr><td>".$row["item_name"]."</td><td>".$row["item_no"]."</td><td>".$row["stock"]."</td><td>".$row["price"]."</td><td>".$row["status"]."</td></tr>";
        }
    }
    else    echo "table empty"
   ?> 
</table>
</body>
</html>
