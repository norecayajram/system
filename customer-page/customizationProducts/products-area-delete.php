<?php
    include("../connection.php");

    if(isset($_GET['catalog_id']) && isset($_GET['id'])){
        $id = $_GET['id'];
        $catalog_id = $_GET['catalog_id'];

        mysqli_query($conn, "DELETE FROM `sana` WHERE id = $id");
        header("location: products.php?catalog_id=$catalog_id");

    }
?>