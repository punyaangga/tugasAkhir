<div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <img src="<?php echo base_url('assets/images/logo/logo.png');?>" style="height:1.3em">
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-title">Menu</li>

                        <li id="dashboard" class="sidebar-item">
                            <a href="<?php echo base_url('Dashboard/dataPemilih');?>" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item  ">
                            <a href="form-layout.html" class='sidebar-link'>
                                <i class="bi bi-file-earmark-medical-fill"></i>
                                <span>Hasil Perhitungan</span>
                            </a>
                        </li>
                         <li class="sidebar-item  ">
                            <a href="<?php echo site_url('User/logout')?>" class='sidebar-link'>
                                <i class="bi bi-key-fill"></i>
                                <span>Logout</span>
                            </a>
                        </li>


                       
                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>