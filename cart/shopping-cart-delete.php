<?php
   include("../customer-page/connection.php");

   if(isset($_GET['id'])){
     $id = $_GET['id'];

     mysqli_query($conn, "DELETE FROM explore_add_to_cart WHERE id = $id");

     header("Location: shopping-cart.php");
   }
?>