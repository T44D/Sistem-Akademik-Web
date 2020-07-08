<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="daescription" content="">
    <meta name="author" content="">

    <title>Sistem Akademik</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <?php 
        include '../connect.php'; 
        function antiinjection($data){
            include '../connect.php'; 
            $filter_sql = mysqli_real_escape_string($conn, $data);
            return $filter_sql;
        }
    ?>

</head>

<?php
if (isset($_SESSION['login'])) {
  $nik_login = $_SESSION['login'];
  $kodejadwal = $_GET['kodejadwal'];
  $no_nilai = $_GET['no_nilai'];
  ?>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard_admin.php">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-book"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Sistem Akademik</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="dashboard.php">
                    <i class="fas fa-fw fa-home"></i>
                    <span>Beranda</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="profil.php">
                    <i class="fas fa-fw far fa-address-card"></i>
                    <span>Profil</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item  active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fas fa-chart-pie"></i>
                    <span>Nilai</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="input_nilai.php">Input Nilai</a>
                        <a class="collapse-item" href="lihat_nilai.php">Lihat Nilai</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
                    aria-expanded="true" aria-controls="collapseThree">
                    <i class="fas fa-fw far fa-calendar-alt"></i>
                    <span>Presensi</span>
                </a>
                <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="input_presensi.php">Input Presensi</a>
                        <a class="collapse-item" href="lihat_presensi.php">Lihat Presensi</a>
                    </div>
                </div>
            </li>

            <hr class="sidebar-divider">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <a href="lihat_nilai_data.php?kodejadwal=<?php echo $kodejadwal;?>">
                        <i class="fas fa-arrow-alt-circle-left fa-2x"></i></a>

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <?php 
                      $query = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$nik_login'");
                      $data = mysqli_fetch_array($query);
                    ?>
                                <span
                                    class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $data['nama_guru']; ?></span>
                                <img class="img-profile rounded-circle" src="../img/avatar.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <!--                   <a class="dropdown-item" href="#">
                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                Profil
              </a>
              <a class="dropdown-item" href="#">
                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                Pengaturan
              </a>
              <div class="dropdown-divider"></div> -->
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <?php 
                        $data = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE no_nilai = $no_nilai");
                        $row = mysqli_fetch_array($data);
                    ?>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Formulir Sunting Nilai Siswa/i</h6>
                        </div>
                        <div class="card-body">
                            <form class="user" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label>Nilai Pengetahuan 1</label>
                                    <input type="number" class="form-control" placeholder="Nilai Pengetahuan 1"
                                        maxlength="3" name="np1" value="<?php echo $row[1]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Pengetahuan 2</label>
                                    <input type="number" class="form-control" placeholder="Nilai Pengetahuan 2"
                                        maxlength="3" name="np2" value="<?php echo $row[2]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Pengetahuan 3</label>
                                    <input type="number" class="form-control" placeholder="Nilai Pengetahuan 3"
                                        maxlength="3" name="np3" value="<?php echo $row[3]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Pengetahuan 4</label>
                                    <input type="number" class="form-control" placeholder="Nilai Pengetahuan 4"
                                        maxlength="3" name="np4" value="<?php echo $row[4]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Pengetahuan 5</label>
                                    <input type="number" class="form-control" placeholder="Nilai Pengetahuan 5"
                                        maxlength="3" name="np5" value="<?php echo $row[5]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Keterampilan 1</label>
                                    <input type="number" class="form-control" placeholder="Nilai Keterampilan 1"
                                        maxlength="3" name="nk1" value="<?php echo $row[6]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Keterampilan 2</label>
                                    <input type="number" class="form-control" placeholder="Nilai Keterampilan 2"
                                        maxlength="3" name="nk2" value="<?php echo $row[7]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Keterampilan 3</label>
                                    <input type="number" class="form-control" placeholder="Nilai Keterampilan 3"
                                        maxlength="3" name="nk3" value="<?php echo $row[8]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Keterampilan 4</label>
                                    <input type="number" class="form-control" placeholder="Nilai Keterampilan 4"
                                        maxlength="3" name="nk4" value="<?php echo $row[9]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Nilai Keterampilan 5</label>
                                    <input type="number" class="form-control" placeholder="Nilai Keterampilan 5"
                                        maxlength="3" name="nk5" value="<?php echo $row[10]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Penilaian Tegah Semester</label>
                                    <input type="number" class="form-control" placeholder="Penilaian Tegah Semester"
                                        maxlength="3" name="pts" value="<?php echo $row[11]; ?>">
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary btn-user btn-block" name="input_nilai"
                                        value="Perbarui Nilai Siswa/i">
                                </div>
                            </form>
                        </div>
                    </div>

                    <?php
                    if (isset($_POST['input_nilai'])) {
                        $np1 = antiinjection($_POST['np1']);
                        $np2 = antiinjection($_POST['np2']);
                        $np3 = antiinjection($_POST['np3']);
                        $np4 = antiinjection($_POST['np4']);
                        $np5 = antiinjection($_POST['np5']);
                        $nk1 = antiinjection($_POST['nk1']);
                        $nk2 = antiinjection($_POST['nk2']);
                        $nk3 = antiinjection($_POST['nk3']);
                        $nk4 = antiinjection($_POST['nk4']);
                        $nk5 = antiinjection($_POST['nk5']);
                        $pts = antiinjection($_POST['pts']);

                        if($np1 == "") {
                            $np1 = "NULL";
                        }
                        if ($np2 == "") {
                            $np2 = "NULL";
                        }
                        if ($np3 == "") {
                            $np3 = "NULL";
                        }
                        if ($np3 == "") {
                            $np3 = "NULL";
                        }
                        if ($np4 == "") {
                            $np4 = "NULL";
                        }
                        if ($np5 == "") {
                            $np5 = "NULL";
                        }
                        if ($nk1 == "") {
                            $nk1 = "NULL";
                        }
                        if ($nk2 == "") {
                            $nk1 = "NULL";
                        }
                        if ($nk3 == "") {
                            $nk1 = "NULL";
                        }
                        if ($nk4 == "") {
                            $nk4 = "NULL";
                        }
                        if ($nk5 == "") {
                            $nk5 = "NULL";
                        }
                        if ($pts == "") {
                            $pts = "NULL";
                        }

                        $update = mysqli_query($conn, "UPDATE nilai_harian SET np1 = $np1, np2 = $np2, np3 = $np3, np4 = $np4, np5 = $np5, nk1 = $nk1, nk2 = $nk2, nk3 = $nk3, nk4 = $nk4, nk5 = $nk5, pts = $pts WHERE no_nilai = $no_nilai");

                        if ($update) {
                            echo "<script>alert('Berhasil Mengupdate Data')</script>";
                            ?>
                    <meta http-equiv="refresh"
                        content="1;url=lihat_nilai_data.php?kodejadwal=<?php echo $kodejadwal;?>">
                    <?php
                        } else {
                            echo "<script>alert('Gagal Mengupdate Data')</script>";
                        }

                    }
                    ?>

                </div>
                <!-- End of Main Content -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Apakah Anda Yakin Ingin Keluar?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Pilih Logout Jika Anda Yakin Ingin Keluar</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                            <a class="btn btn-primary" href="logout.php">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="../vendor/jquery/jquery.min.js"></script>
            <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="../js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
            <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="../js/demo/datatables-demo.js"></script>

</body>

<?php
}
else {
  ?>
<meta http-equiv="refresh" content="1;url=../404.php">
<?php
  die();
}
?>

</html>