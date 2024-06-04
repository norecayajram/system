<?php include("../connection.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logo.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
</head>

<body>
<?php

    if(isset($_GET['catalog_id']) && isset($_SESSION['customer_id'])){
        
        $catalog_id = $_GET['catalog_id'];
        $customer_id = $_SESSION['customer_id'];
        $products = mysqli_query($conn, "SELECT * FROM product_catalog INNER JOIN customer ON product_catalog.catalog_id=$catalog_id = customer.customer_id=$customer_id");
        $row1 = mysqli_fetch_assoc($products);
        
        if(isset($_POST['proceed'])){
            $hidden_catalog_image = $_POST['hidden_catalog_image'];
            $hidden_catalog_name = $_POST['hidden_catalog_name'];
            $hidden_catalog_id = $_POST['hidden_catalog_id'];
            $hidden_customer_id= $_POST['hidden_customer_id'];
            $color = $_POST['color'];
            $type = $_POST['type'];
            $collar = $_POST['collar'];
            $print_area = $_POST['print-area'];

            mysqli_query($conn, "INSERT INTO `product_process_checkout`(`catalog_image`, `catalog_name`, `product_color`, `product_type`, `product_collar`, `product_print_area`,`customer_id`,`catalog_id`) VALUES ('$hidden_catalog_image','$hidden_catalog_name','$color','$type','$collar','$print_area','$hidden_customer_id','$hidden_catalog_id')");

            $products = mysqli_query($conn, "SELECT * FROM product_catalog INNER JOIN customer ON product_catalog.catalog_id=$catalog_id = customer.customer_id=$customer_id");
            $row2 = mysqli_fetch_assoc($products);

            header("Location: ../checkout.php?catalog_name=$row2[catalog_name]");
        }
    }
    

?>
<?php include("website-product-header.php"); ?>

<section>
        <div class="section-header ">
            <h1><span><a href="../userpage.php">Home</a></span> > <?= $row1['catalog_name']; ?></h1>
        </div>

    <div class="content">

        <div class="section-left-image">
            <div class="display-image">
                    <img src="<?= $row1['catalog_image']; ?>" alt="" id="displayImage">
            </div>

        </div>

        <div class="section-right-content">
            <h1><?= $row1['catalog_name']; ?></h1>
  
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="color name">
                        <label for="color">Color</label>
                        <select name="color" id="color">
                            <option value="black">Black</option>
                            <option value="red">Red</option>
                            <option value="blue">Blue</option>
                            <option value="violet">Violet</option>
                        </select>
                    </div>

                    <div class="type name">
                        <label for="type">Type</label>
                        <select name="type" id="type">
                            <option value="cotton">Cotton</option>
                            <option value="drifit">Drifit</option>
                            <option value="contton-spandex">Contton Spandex</option>
                        </select>
                    </div>

                    <div class="collar name">
                        <label for="collar">Collar</label>
                        <select name="collar" id="collar">
                            <option value="crew-neck">Crew Neck</option>
                            <option value="v-neck">V Neck</option>
                        </select>
                    </div>

                    <div class="print-area name">
                        <label for="print-area">Print Area</label>
                        <select name="print-area" id="print-area">
                            <option value="select-print-area">Select print area</option>
                        </select>
                    </div>

                    <input type="hidden" name="hidden_catalog_image" value="<?= $row1['catalog_image']; ?>">
                    <input type="hidden" name="hidden_catalog_name" value="<?= $row1['catalog_name']; ?>">
                    <input type="hidden" name="hidden_catalog_id" value="<?= $row1['catalog_id']; ?>">
                    <input type="hidden" name="hidden_customer_id" value="<?= $row1['customer_id']; ?>">
                    <label for="upload_file">Upload File</label>
                    <input type="file" name="upload_file" id="upload_file">
                        <button name="proceed">Proceed to checkout</button>
                </form>
               
         </div>
    </div>
</section>


<script>

        document.onclick = function(e){
             if(e.target.id !== 'notifs' && e.target.id !== 'bell'){
                 notifs.classList.remove('active');
             }
             
             if(e.target.id !== 'settings_helpSupport_logout' && e.target.id !== 'usericon' ){
                 settings_helpSupport_logout.classList.remove('active');
             }
         }
 
 
         let bell = document.getElementById('bell');
         let notifs = document.getElementById('notifs');
 
         bell.onclick = function(){
             notifs.classList.toggle('active');
         }
 
 
 
         let settings_helpSupport_logout = document.getElementById('settings-helpSupport-logout');
         let usericon = document.getElementById('usericon');
 
         usericon.onclick = function(){
             settings_helpSupport_logout.classList.toggle('active');
         }
 
</script>
</body>
<style>
    section{
        width: 100%;
        height: calc(100vh - 65px);
        position: relative;
    }
    section .section-header{
        width: 100%;
        height: 50px;
        display: flex;
        align-items: center;
    }
    section .section-header h1{
        margin-left: 40px;
    }
    section .section-header h1 span a{
        color: #E16C69;
        text-decoration: none;
    }
    section .content{
        width: 100%;
        height: calc(100vh - 114.7px);
        display: flex;
    }
    section .content .section-left-image{
        width: 40%;
        display: flex;
        align-items: center;
        justify-content: space-evenly;
    }
    section .content .section-right-content{
        width: 60%;
        height: 90%;
    }
    section .content .section-left-image .display-image img{
        width: 300px;
        height: 470px;
    }
    
</style>
</html>