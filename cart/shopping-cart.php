<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logo.png">
    <title>Document</title>
</head>
<body>
    <?php include("website-cart-header.php"); ?>
    <?php
   
    $result = mysqli_query($conn, "SELECT * FROM explore_add_to_cart");
    $rows = mysqli_fetch_assoc($result);
    
          
    if(isset($_SESSION['customer_id'])){
        $customer_id = $_SESSION['customer_id'];
        $query = mysqli_query($conn, "SELECT * FROM explore_add_to_cart WHERE customer_id = $customer_id");
    }
    ?>
    <center>
        <table> 
            <tr>
                <th>Check</th>
                <th>Image</th>
                <th>Name</th>
                <th>Color</th>
                <th>Description</th>
                <th>Quantity</th>
                <th>Price</th>  
                <th>Delete</th>
            </tr>
            <?php         
                $total = 0;
                   while($row = mysqli_fetch_assoc($query)){             
               ?>
            <tr>
               
                <td><form action="" method="post">
                    <input type="checkbox" name="" id="">
                </form></td>
                <td><img src="<?php echo $row['product_image']; ?>" alt=""></td>
                <td><?php echo $row['product_name']; ?></td>
                <td><?php echo $row['product_color']; ?></td>
                <td><?php echo $row['product_description']; ?></td>
                <td><?php echo $row['product_quantity']; ?></td>
                <td id="price"><?php echo number_format($row['product_price']*$row['product_quantity'],2); ?></td>
                <td><a href="shopping-cart-delete.php?id=<?=$id?>"><button name="delete">Delete</button></a></td>
            <?php 
                $total = $total + ($row["product_quantity"]*$row['product_price']);
                
            } ?>
            </tr>
        </table>
    </center>

    <div class="all-subtotal-checkout">
        <form action="" method="post">
            <div class="all">
                <input type="checkbox" name="allcheck" onchange="checkAll(this)" id="allcheck">
                <label for="allcheck">All</label>
            </div>
            <div class="subtotal">
                <h2>Subtotal: <span id="subtotal"> <?= number_format($total, 2); ?></span></h2>
            </div>
            <div class="checkout">
                <button name="checkout">Check Out</button>
            </div>
        </form>
    </div>

    <script>

        
        let checkboxes = document.querySelectorAll("input[type = 'checkbox']");
        function checkAll(myCheckbox){
            if(myCheckbox.checked == true){
                checkboxes.forEach(function(checkbox){
                    checkbox.checked = true;
                });
            }else{
                checkboxes.forEach(function(checkbox){
                    checkbox.checked = false;
                });
            }
        }
    </script>
</body>
<style>
    body{
        background: #eeeceb;
    }
    table, tr, th, td{
        border: 1px solid black;
    }
    table{
        width: 90%;
        padding: 5px;
        background: white;
        margin-top: 50px;
        margin-bottom: 70px;
    }
    table th, td{
        padding: 5px;
    }
    table td input{
        width: 30px;
        height: 30px;
        cursor: pointer;
    }
    table td{
        text-align: center;
    }
    table td img{
        width: 120px;
        height: 140px;
       
    }
    table td a button{
        padding: 5px 15px;
        font-size: 15px;
        cursor: pointer;
        background: red;
        color: white;
        border: none;
        border-radius: 5px;
    }
    .all-subtotal-checkout {
        position: fixed;
        bottom: 0;
        height: 65px;
        width: 100%;
        background: white;
    }
    .all-subtotal-checkout form{
        display: flex;
        justify-content: space-between;
        align-items: center;
        height: 100%;
        padding: 0 7%;
    }
    .all-subtotal-checkout form .all{
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .all-subtotal-checkout form .all input{
        width: 30px;
        height: 30px;
        cursor: pointer;
    }
    .all-subtotal-checkout form .all label{
        font-size: 19px;
    }
    .all-subtotal-checkout form .subtotal h2{
        font-weight: 400;
    }
    .all-subtotal-checkout form .checkout button{
        font-size: 17px;
        padding: 10px 10px;
        cursor: pointer;
        border-radius: 5px;
        border: none;
        background: #c84542;
        color: white;
    }
</style>
</html>