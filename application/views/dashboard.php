<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eVoting System</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.css');?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/vendors/iconly/bold.css');?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/vendors/perfect-scrollbar/perfect-scrollbar.css');?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/vendors/bootstrap-icons/bootstrap-icons.css');?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/app.css');?>">
    <link rel="shortcut icon" href="<?php echo base_url('assets/images/favicon.svg');?>" type="image/x-icon">
    <script src="<?php echo base_url('assets/js/jquery.min.js');?>"></script>
    <style type="text/css">
    .intro{
        color: red;
    }
    </style>
</head>

<body style="background-color:#f2f7ff;">
    <div id="app">
        <div id="sidebar" class="active">
            <?php require_once('Sidebar.php');?>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <h3>Profile Pemilih </h3>
            </div>
            <div class="page-content">
                <section class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8 ">
                        <?php foreach ($dataPemilih->result() as $dp) { ?>
                        <div class="card col-sm-12" >
                            <img class="card-img-top" src="<?php echo base_url('assets/images/faces/2.jpg');?>" alt="Foto Pemilih" style=" width: 63%; margin: auto; padding: 10px;">
                            <div class="card-body">
                              <h5 class="card-title"><center><?php echo $dp->nama;?></center></h5>
                              <table>
                                <tr>
                                    <td>NIK</td>
                                    <td style="padding:15px">:</td>
                                    <td><?php echo $dp->username;?></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td style="padding:15px">:</td>
                                    <td><?php echo $dp->email;?></td>
                                </tr>
                                <tr>
                                    <td>Telp</td>
                                    <td style="padding:15px">:</td>
                                    <td><?php echo $dp->telp;?></td>
                                </tr>
                              </table>
                              
                              <br>
                              <center><a href="<?php echo base_url('Validate/');?>" class="btn btn-primary">Mulai Voting</a></center>
                            </div>
                        </div>
                        <?php } ?>

                    </div>
                    <div class="col-sm-2"></div>
                </section>
            </div>
            <footer>
                <p><center class="footer clearfix mb-0 text-muted" >&copy; Angga Fantiya Hermawan - 3411171142</center></p>         
            </footer>
        </div>
    </div>
    <script src="<?php echo base_url('assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js');?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap.bundle.min.js');?>"></script>
    <script src="<?php echo base_url('assets/js/main.js');?>"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#dashboard").addClass("active");
        });
    </script>

</body>

</html>