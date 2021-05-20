<!DOCTYPE HTML>
<html>
<head>
    <title>eVoting</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
</head>
<body class="bg-light" style="font-family:arial">
<main class="container">
  
  <div class="jumbotron bg-light">
    <h3 class="p-3 text-center">Login Sistem eVoting</h3>
    <form action="<?php echo base_url('User/login');?>" method="POST">
        <div class="row p-1">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <input type="text" name="username" class="form-control" placeholder="Username">
            </div>
        </div>
        <div class="row p-1">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control" placeholder="Password">
            </div>
        </div>
        <div class="row p-1">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <button class="w-100 btn btn-primary btn-sm">Login</button>
            </div>
        </div>
        <p class="mt-4 text-muted text-center">© Angga Fantiya Hermawan - 3411171142</p>
    </form>
  </div>

  <?php
  // echo hash("sha256","123");
  // echo password_hash("123", PASSWORD_DEFAULT);
  ?>
</main>

    <script src="bootstrap.min.js"></script>
    <script src="bootstrap.js"></script>
</body>
</html>