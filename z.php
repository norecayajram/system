<?php
    include("connection.php");


    if(isset($_GET['apply'])){
        $image = $_GET['image'];
        $catalog_id = $_SESSION['catalog_id'];
        $customer_id = $_SESSION['customer_id'];

        mysqli_query($conn,"INSERT INTO sana(image_pick) VALUES('$image')");
        header("location:z.php?image=$image");


    }


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <form action="" method="get">
        <button id="show" name="show">show</button>
        <?php if(isset($_GET['image'])){ echo $_GET['image'];} ?>
        <button name="submit">submit</button>
            <div class="back">
                <button id="apply" name="apply">apply</button><br>

                <input type="hidden" name="">
                <label for="image1"><img src="images/mug-single.png" alt=""></label>
                <input type="radio" name="image" id="image1" value="mug-single"><br>
                <label for="image2"><img src="images/mug-wrap.png" alt=""></label>
                <input type="radio" name="image" id="image2" value="mug-wrap"><br>
            </div>
   </form>
 

    <script>
        let show = document.getElementById("show");
        let back = document.querySelector(".back");

        show.addEventListener("click", function(event) {
            event.preventDefault();
            back.classList.add("active");
        });
       
    </script>
</body>
<style>
    .back{
        width: 100%;
        background: red;
        height: 100%;
        display: none;
        position: absolute;
        left: 0;
        top: 0;
    }
    .back.active{
        display: block;
    }
    .back img{
        width: 200px;
    }
</style>
</html>