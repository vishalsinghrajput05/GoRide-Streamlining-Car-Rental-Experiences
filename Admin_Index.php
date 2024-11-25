<?php
session_start();
include('includes/config.php');

if (isset($_POST['login'])) {
    $email = $_POST['username'];
    $password = $_POST['password'];

    // Prepare SQL query
    $sql = "SELECT UserName, Password FROM admin WHERE UserName=:email";
    $query = $dbh->prepare($sql);
    $query->bindParam(':email', $email, PDO::PARAM_STR);

    // Execute the query
    $query->execute();

    // Fetch the results
    $result = $query->fetch(PDO::FETCH_OBJ);

    // Check if user exists and verify password
    if ($result && password_verify($password, $result->Password)) {
        $_SESSION['alogin'] = $result->UserName;
        echo "<script type='text/javascript'> document.location = 'change-password.php'; </script>";
    } else {
        echo "<script>alert('Invalid Details');</script>";
    }
}
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,
maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>GoRide | Admin Login</title>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="login-page bk-img" style="background-image: url(img/adminlogo.jpeg);">
<div class="form-content">
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<h1 class="text-center text-bold text-light mt-4x">Sign in</h1>
<div class="well row pt-2x pb-3x bk-light">
<div class="col-md-8 col-md-offset-2">
<form method="post">
Username </label>
<label for="" class="text-uppercase text-sm">Your
<input type="text" placeholder="Username"
name="username" class="form-control mb">
sm">Password</label>
<label for="" class="text-uppercase text-
<input type="password" placeholder="Password"
name="password" class="form-control mb">
<button class="btn btn-primary btn-block" name="login"
type="submit">LOGIN</button>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- Loading Scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.min.js"></script>
<script src="js/Chart.min.js"></script>
<script src="js/fileinput.js"></script>
<script src="js/chartData.js"></script>
<script src="js/main.js"></script>
</body>
</html>