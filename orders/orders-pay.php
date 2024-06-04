<?php 
  include("../connection.php");
    $session_timeout = 100000;
    if(isset($_SESSION['valid'])){
        if(isset($_SESSION['last_activity']) && time() - $_SESSION['last_activity'] > $session_timeout){
            session_unset();
            session_destroy();
            header("Location: ../customer-page/user-timeout.php");
            exit();
        }else{
            $_SESSION['last_activity'] = time();
        }
    }else{
        header("Location: ../login.php");
        exit();
    }
 
  $customer_id = $_SESSION['customer_id'];
    $custom = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM customer WHERE customer_id = '$customer_id'"));
    $email = $custom['email'];
    $usernames = $custom['username'];

  $address = mysqli_query($conn, "SELECT * FROM customer_address WHERE customer_id = '$customer_id'"); 
  $topay = mysqli_query($conn, "SELECT * FROM topay WHERE customer_id = '$customer_id'"); 

  if(isset($_POST['submit'])){
    $search = $_POST['search'];
        
        $query = mysqli_query($conn, "SELECT * FROM topay WHERE customize_product = '$search'");
    }

    $topay2 = mysqli_query($conn, "SELECT * FROM topay");
        if ($topay2 && mysqli_num_rows($topay2) > 0) {
            $rowss = mysqli_fetch_assoc($topay2);
            $_SESSION['pay_id'] = $rowss['pay_id'];
            $reference_number = $rowss['reference_id'];
        } else {
            
            $_SESSION['pay_id'] = null;
        }
    
    $catalog = mysqli_query($conn, "SELECT * FROM product_catalog");
    $rowsss = mysqli_fetch_assoc($catalog);
    $_SESSION['catalog_id'] = $rowsss['catalog_id'];
    if(isset($_POST['yes'])){
        if(isset($_SESSION['pay_id'])){
            $customer_id1 = $_POST['customer_id'];
            $catalog_id = $_SESSION['catalog_id'];
            $pay_id = $_SESSION['pay_id'];

            $merge_image = $_POST['merge_image'];
            $customer_upload_image = $_POST['customer_upload_image'];
            $customer_name = $_POST['customer_name'];
            $customize_product = $_POST['customize_product'];
            $product_color = $_POST['product_color'];
            $product_type = $_POST['product_type'];
            $product_collar = $_POST['product_collar'];
            $product_print_area = $_POST['product_print_area'];
            $small = $_POST['small'];
            $medium = $_POST['medium'];
            $large = $_POST['large'];
            $xlarge = $_POST['xlarge'];
            $receive_type = $_POST['receive_type'];
            $payment_method = $_POST['payment_method'];
            $order_total = $_POST['order_total'];
            $quantity = $_POST['quantity'];
            $reference_id = $_POST['reference_id'];
            $names = $_POST['names'];
            $phone_number = $_POST['phone_number'];
            $city = $_POST['city'];
            $zipcode = $_POST['zipcode'];
            $country = $_POST['country'];
            $address = $_POST['address'];

            $merge_image2 = $_POST['merge_image2'];
            $customer_upload_image2 = $_POST['customer_upload_image2'];
            $product_print_area2 = $_POST['product_print_area2'];

            mysqli_query($conn, "INSERT INTO `admin_notification`(customer_id,actions) VALUES('$customer_id','Cancelled an order')");
            mysqli_query($conn, "INSERT INTO audit_rel(customer_id,email,username,customer_actions) VALUES('$customer_id','$email','$usernames','Cancelled an order')");
            mysqli_query($conn, "INSERT INTO `cancelled`(`customer_id`, `catalog_id`, `merge_image`,`merge_image2`, `customer_upload_image`,`customer_upload_image2`,`customize_product`, `product_color`, `product_type`, `product_collar`, `product_print_area`,`product_print_area2`, `small`, `medium`, `large`, `xlarge`, `receive_type`, `payment_method`, `order_total`,`quantity`,`reference_id`,`names`,`phone_number`,`address`,`city`,`zipcode`,`country`) VALUES ('$customer_id1','$catalog_id','$merge_image','$merge_image2','$customer_upload_image','$customer_upload_image2','$customize_product','$product_color','$product_type','$product_collar','$product_print_area','$product_print_area2','$small','$medium','$large','$xlarge','$receive_type','$payment_method','$order_total','$quantity','$reference_id','$names','$phone_number','$address','$city','$zipcode','$country')");
            mysqli_query($conn, "DELETE FROM `topay` WHERE reference_id = '$reference_id'");

            header("Location: orders-pay.php");
        }
    }

    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logo.png">
    <title>Pending | Print My Shirt</title>
</head>
<body>
    <?php include("website-orders-header.php"); ?>
    <div class="content">
        <ul class="content-header">
            
            <a href="orders-pay.php" class="active"><li>To Pay</li></a>
            <a href="orders-process.php"><li>To Process</li></a>
            <a href="orders-ship.php"><li>To Ship</li></a>
            <a href="orders-received.php"><li>To Receive</li></a>
            <a href="orders-received.php"><li>Received</li></a>
            <a href="orders-cancelled.php"><li>Cancelled</li></a>
        </ul>
    </div>
                    <center>
                            
                                <?php 
                                    while ($row3 = mysqli_fetch_assoc($topay)) {
                                        
                                ?>
                                    <div>
                                   
                                        <table width="98%">
                                            <tr>
                                                <th colspan="200%"><h1>Pending</h1></th>
                                            </tr>
                                            <tr>
                                                <th>Reference ID</th>
                                                <?php if(!empty($row3['merge_image'])){echo '<th>Finish Product</th>';}?>
                                                <?php if(!empty($row3['merge_image2'])){echo '<th>Finish Design</th>';}?>
                                                <?php if(!empty($row3['customer_upload_image'])){echo '<th>Upload Image</th>';}?>
                                                <?php if(!empty($row3['customer_upload_image2'])){echo '<th>Upload Image</th>';}?>
                                                <th>Product</th>
                                                <?php if(!empty($row3['product_color'])){echo '<th>Color</th>';}?>
                                                <?php if(!empty($row3['product_type'])){echo '<th>Type</th>';}?>
                                                <?php if(!empty($row3['product_collar'])){echo '<th>Collar</th>';}?>
                                                <?php if(!empty($row3['small'])){echo '<th>S</th>';}?>
                                                <?php if(!empty($row3['medium'])){echo '<th>M</th>';}?>
                                                <?php if(!empty($row3['large'])){echo '<th>L</th>';}?>
                                                <?php if(!empty($row3['xlarge'])){echo '<th>XL</th>';}?>
                                                <?php if(!empty($row3['quantity'])){echo '<th colspan="100%"> Quantity </th>';}?>
                                                <?php if(!empty($row3['product_print_area'])){echo '<th>Print Area</th>';}?>
                                                <?php if(!empty($row3['product_print_area2'])){echo '<th>Print Area</th>';}?>
                                                <th>Receive Type</th>
                                                <th>MOP</th>
                                                <th>Price</th>
                                                <th>Date and Time</th>
                                            </tr>
                                            <tr>
                                                <th><?= $row3['reference_id'] ?></th>
                                                   
                                                <?php if(!empty($row3['merge_image'])){echo "<th><img src='".$row3['merge_image']."' width='200'</th>";}?>
                                                    

                                                <?php if(!empty($row3['merge_image2'])){echo "<th><img src='".$row3['merge_image2']."' width='200'</th>";}?>
                                                    
                                                <?php if(!empty($row3['customer_upload_image'])){echo "<th><img src='".$row3['customer_upload_image']."' width='200'</th>";}?>
                                                <?php if(!empty($row3['customer_upload_image2'])){echo "<th><img src='".$row3['customer_upload_image2']."' width='200'</th>";}?>
                                                    

                                                <th><?= $row3['customize_product'] ?></th>
                                                    
                                                <?php if(!empty($row3['product_color'])){echo "<th>".$row3['product_color']."</th>";}?>
                                                    
                                                <?php if(!empty($row3['product_type'])){echo "<th>". $row3['product_type']. "</th>";}?> 
                                                    
                                                <?php if(!empty($row3['product_collar'])){echo "<th>". $row3['product_collar']. "</th>";}?> 
                                                    
                                                <?php if(!empty($row3['small'])){echo "<th>" .$row3['small']. "</th>";}?>
                                                    
                                                <?php if(!empty($row3['medium'])){echo "<th>" .$row3['medium']. "</th>";}?>
                                                    
                                                <?php if(!empty($row3['large'])){echo "<th>" .$row3['large']. "</th>";}?>
                                                   
                                                <?php if(!empty($row3['xlarge'])){echo "<th>" .$row3['xlarge']. "</th>";}?>
                                                    
                                                <?php if(!empty($row3['quantity'])){echo "<th colspan='100%'>" .$row3['quantity']. "</th>";}?>
                                                    
                                                <?php if(!empty($row3['product_print_area'])){echo "<th>".$row3['product_print_area']. "</th>";}?>
                                                 
                                                <?php if(!empty($row3['product_print_area2'])){ echo "<th>".$row3['product_print_area2']."</th>";}?>
                                                    
                                                <th><?= $row3['receive_type'] ?></th>
                                                    
                                                <th><?= $row3['payment_method'] ?></th>
                                                    
                                                <th><?= $row3['order_total'] ?></th>
                                                    
                                                <th><?= $row3['date_time']?></th>
                                            </tr>
                                            <tr>
                                                <th colspan=""><?= $row3['names']?></th>
                                                    
                                                <th colspan=""><?= $row3['phone_number']?></th>
                                                
                                                <th colspan=""><?= $row3['city']?></th>
                                                
                                                <th colspan=""><?= $row3['zipcode']?></th>
                                                
                                                <th colspan=""><?= $row3['country']?></th>
                                                 
                                                <th colspan="200%" width=""><?= $row3['address']?></th>
                                                
                                            </tr>
                                            <tr>        
                                                <th colspan="200%"><button class="showCancel" data-reference="<?= $row3['reference_id'] ?>" >Cancel</button></th>
                                            </tr>
                                            <div class="popupCancel" id="popupCancel<?= $row3['reference_id'] ?>">
                                                <div class="box">
                                                    <h2>Confirm to cancel your order? Upon cancelling, your order will not be processed any further and you will be unable to restore it.</h2>
                                                        <div class="btn">
                                                            <button class="no">Cancel</button>
                                                            <form action="" method="post">
                                                                    <input type="hidden" name="reference_id" value="<?= $row3['reference_id'] ?>">
                                                                    <input type="hidden" name="customer_id" value="<?= $row3['customer_id'] ?>">
                                                                    <input type="hidden" name="merge_image" value="<?= $row3['merge_image'] ?>">
                                                                    <input type="hidden" name="merge_image2" value="<?= $row3['merge_image2'] ?>">
                                                                    <input type="hidden" name="customer_upload_image2" value="<?= $row3['customer_upload_image2'] ?>">
                                                                    <input type="hidden" name="customer_upload_image" value="<?= $row3['customer_upload_image'] ?>">
                                                                    <input type="hidden" name="customize_product" value="<?= $row3['customize_product'] ?>">
                                                                    <input type="hidden" name="product_color" value="<?= $row3['product_color'] ?>">
                                                                    <input type="hidden" name="product_type" value="<?= $row3['product_type'] ?>">
                                                                    <input type="hidden" name="product_collar" value="<?= $row3['product_collar'] ?>">
                                                                    <input type="hidden" name="small" value="<?= $row3['small'] ?>">
                                                                    <input type="hidden" name="medium" value="<?= $row3['medium'] ?>">
                                                                    <input type="hidden" name="large" value="<?= $row3['large'] ?>">
                                                                    <input type="hidden" name="xlarge" value="<?= $row3['xlarge'] ?>">
                                                                    <input type="hidden" name="quantity" value="<?= $row3['quantity'] ?>">
                                                                    <input type="hidden" name="product_print_area" value="<?= $row3['product_print_area'] ?>">
                                                                    <input type="hidden" name="product_print_area2" value="<?= $row3['product_print_area2'] ?>">
                                                                    <input type="hidden" name="receive_type" value="<?= $row3['receive_type'] ?>">
                                                                    <input type="hidden" name="payment_method" value="<?= $row3['payment_method'] ?>">
                                                                    <input type="hidden" name="order_total" value="<?= $row3['order_total'] ?>">
                                                                    <input type="hidden" name="names" value="<?= $row3['names'] ?>">
                                                                    <input type="hidden" name="phone_number" value="<?= $row3['phone_number'] ?>">
                                                                    <input type="hidden" name="city" value="<?= $row3['city'] ?>">
                                                                    <input type="hidden" name="zipcode" value="<?= $row3['zipcode'] ?>">
                                                                    <input type="hidden" name="country" value="<?= $row3['country'] ?>">
                                                                    <input type="hidden" name="address" value="<?= $row3['address'] ?>">
                                                                    
                                                                    <button name="yes">Confirm</button>
                                                            </form>
                                                        </div>
                                                </div>
                                            </div>
                                        </table>
                                    </div>
                            <?php }?>
                    </center>

                    <script>
                        let cancelButtons = document.querySelectorAll(".showCancel");

                        cancelButtons.forEach(function(cancelButton) {
                            cancelButton.addEventListener("click", function(e) {
                                e.preventDefault();
                                let referenceId = cancelButton.getAttribute("data-reference");
                                document.getElementById("popupCancel" + referenceId).classList.add("show");
                            });
                        });

                        let noButtons = document.querySelectorAll(".no");

                        noButtons.forEach(function(noButton) {
                            noButton.addEventListener("click", function(event) {
                                event.preventDefault();
                                noButton.parentElement.parentElement.parentElement.classList.remove("show");
                            });
                        });
                    </script>
</body>
<style>
    .content{
        width: 100%;
        height: 100%;
    }
    .content .content-header{
        display: flex;
        list-style: none;
        padding: 0 70px;
        align-items: center;
        justify-content: space-between;
        height: 60px;
        margin-top: 65px;
        position: fixed;
        width: 90%;
        left: 0;
        top: 0;
        background: beige;
        z-index: -1;
    }
    .content .content-header a.active{
        text-decoration: underline;
    }
    table{
        margin-top: 130px;
    }
    table,tr,th,td{
        border: 1px solid black;
    }
    tr,th,td{
        padding: 2px;
    }
    table tr button{
        padding: 7px 9px;
        font-size: 17px;
        cursor: pointer;
    }
    .popupCancel{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: none;
        align-items: center;
        justify-content: center;
        background: rgba(0,0,0,.4);
        z-index: 99999;
    }
    .popupCancel.show{
        display: flex;
    }
    .popupCancel .box{
        background: #c84542;
        border-radius: 10px;
        padding: 30px;
        width: 400px;
    }
    .popupCancel .box h2{
        color: white;
        margin-bottom: 20px;
        text-align: justify;
    }
    .popupCancel .box .btn{
        display: flex;
        justify-content: center;
        gap: 20px;
    }
    .popupCancel .box .btn button{
        font-size: 20px;
        padding: 7px 40px;
        border-radius: 50px;
        border: none;
        outline: none;
        cursor: pointer;
    }
</style>
</html>