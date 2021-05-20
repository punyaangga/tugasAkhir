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
</head>

<body style="background-color:#f2f7ff;">
    <div id="app">
        <div id="sidebar" class="active">
            <?php require_once('sidebar.php');?>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <h3>Informasi Lokasi Pemilih</h3>
            </div>
            <div class="page-content">
                <section class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8 ">
                        <div class="card col-sm-12 p-3" >
                            <form method="POST" action="<?php echo site_url('Validate/validasi');?>">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label>Masukan No TPS</label>
                                    </div>
                                    <div class="col-sm-8">
                                        <input type="number" name="noTps" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label>Masukan Nama Provinsi</label>
                                    </div>
                                    <div class="col-sm-8">
                                         <select name="namaProvinsi" class="selectpicker form-control">
                                            <?php 
                                            foreach ($dataProvinsi->result() as $dp ) {
                                            ?>
                                            <option value="<?php echo $dp->kodeProvinsi;?>"><?php echo $dp->namaProvinsi;?></option>
                                            <?php } ?>
                                         </select>
                                    </div>
                                </div> 
                                <button class="btn btn-primary mt-2" style="float:right;">Submit</button>
                                <!-- <a href="<?php echo base_url('Token/');?>"> Submit</a> -->
                            </form>
                        </div>
                       
                    </div>
                    <div class="col-sm-2"></div>
                </section>
            </div>

            <footer>
                <p><center class="footer clearfix mb-0 text-muted" >&copy; Angga Fantiya Hermawan - 3411171142</center></p>         
            </footer>
        </div>
    </div>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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