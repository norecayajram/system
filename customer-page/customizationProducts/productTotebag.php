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
<?php include("website-product-header.php"); ?>
<section>
        <div class="section-header">
            <h1><span><a href="../userpage.php">Home</a></span> > Totebag</h1>
        </div>

    <div class="content">

        <div class="section-left-image">
            <div class="display-image">
                    <img src="images/totebag.jpg" alt="" id="displayImage">
            </div>

        </div>

        <div class="section-right-content">
            <h1>Totebag</h1>
  
            <div class="edit-design">

              <div class="options">

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
              </div>

              <div class="upload-designing">

                <form action="" method="post" enctype="multipart/form-data">
                    <label for="upload_file">Upload File</label>
                    <input type="file" name="upload_file" id="upload_file">
              </form>
                <span>or</span>
                <a href="../checkout.html">Proceed to checkout</a>
              </div>
            </div>
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
    section .content .section-right-content h1{
        font-size: 45px;
    }
    section .content .section-right-content .edit-design{
        width: 100%;
        height: 100%;
    }
    section .content .section-right-content .edit-design .options .name{
        display: flex;
        align-items: center;
        justify-content: space-between;
        line-height: 50px;
    }
    section .content .section-right-content .edit-design .options .name label{
        font-size: 25px;
    }
    section .content .section-right-content .edit-design .options .name select{
        width: 500px;
        margin-right: 20px;
        font-size: 18px;
        padding: 5px;
        border: 2px solid black;
        cursor: pointer;
    }
    section .content .section-right-content .edit-design .upload-designing form{
        margin-top: 40px;
    }
    section .content .section-right-content .edit-design .upload-designing form label{
        width: 96%;
        display: flex;
        justify-content: center;
        padding: 6px;
        border-radius: 50px;
        font-size: 20px;
        border: 2px solid black;
        cursor: pointer;
    }
    section .content .section-right-content .edit-design .upload-designing form input{
       display: none;
    }
    section .content .section-right-content .edit-design .upload-designing span{
        display: flex;
        justify-content: center;
        height: 50px;
        align-items: center;
        font-size: 20px;
        width: 97.5%;
    }
    section .content .section-right-content .edit-design .upload-designing a{
        width: 97.5%;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 40px;
        font-size: 20px;
        border-radius: 50px;
        text-decoration: none;
        border: 2px solid black;
        color: black;
    }
</style>
</html>