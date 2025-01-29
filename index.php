<?php
    $emailmsg="";
    $pasdmsg="";
    $msg="";
    $ademailmsg="";
    $adpasdmsg="";


    if(!empty($_REQUEST['ademailmsg'])){
        $ademailmsg=$_REQUEST['ademailmsg'];
    }
    if(!empty($_REQUEST['adpasdmsg'])){
        $adpasdmsg=$_REQUEST['adpasdmsg'];
    }
    if(!empty($_REQUEST['emailmsg'])){
        $emailmsg=$_REQUEST['emailmsg'];
    }
    if(!empty($_REQUEST['pasdmsg'])){
        $pasdmsg=$_REQUEST['pasdmsg'];
    }
    if(!empty($_REQUEST['msg'])){
        $msg=$_REQUEST['msg'];
     }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container login-container d-flex justify-content-center align-items-center">
    <div class="row w-100">
        <div class="col-md-6 login-form-1">
            <h3>Student Login</h3>
            <form action="login_server_page.php" method="get">
                <input type="text" class="form-control mb-2" name="login_email" placeholder="Your Email">
                <label class="text-danger">*<?php echo $emailmsg; ?></label>
                <input type="password" class="form-control mb-2" name="login_pasword" placeholder="Enter Password">
                <label class="text-danger">*<?php echo $pasdmsg; ?></label>
                <input type="submit" class="btnSubmit mt-3" value="Login">
                <div class="mt-2">
                    <a href="#" class="ForgetPwd">Forgot Password?</a>
                </div>
            </form>
        </div>
        <div class="col-md-6 login-form-2">
            <h3>Admin Login</h3>
            <form action="loginadmin_server_page.php" method="get">
                <input type="text" class="form-control mb-2" name="login_email" placeholder="Your Email">
                <label class="text-danger">*<?php echo $ademailmsg; ?></label>
                <input type="password" class="form-control mb-2" name="login_pasword" placeholder="Enter Password">
                <label class="text-danger">*<?php echo $adpasdmsg; ?></label>
                <input type="submit" class="btnSubmit mt-3" value="Login">
                <div class="mt-2">
                    <a href="#" class="ForgetPwd">Forgot Password?</a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>



      <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css"> -->






