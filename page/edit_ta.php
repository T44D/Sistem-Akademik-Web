<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistem Akademik</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

    <?php 
        include '../connect.php';
        date_default_timezone_set('Asia/Jakarta');
        function antiinjection($data){
            include '../connect.php'; 
            $filter_sql = mysqli_real_escape_string($conn, $data);
            return $filter_sql;
        }
    ?>

</head>

<?php
if (isset($_SESSION['login'])) {
    $admin = $_SESSION['login'];
    $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
    $cekdata = mysqli_fetch_array($cek);
    if ($cekdata['jenis_akun'] == 9) {
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
            <li class="nav-item active">
                <a class="nav-link" href="dashboard_admin.php">
                    <i class="fas fa-fw fa-home"></i>
                    <span>Beranda</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                    <i class="fas fa-fw fas fa-user-edit"></i>
                    <span>Input Data Pengguna</span>
                </a>
                <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Input Data</h6>
                        <a class="collapse-item" href="input_siswa.php">Siswa/i</a>
                        <a class="collapse-item" href="input_guru.php">Guru</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fas fa-list-alt"></i>
                    <span>Kelola Data Pengguna</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Lihat Data</h6>
                        <a class="collapse-item" href="lihat_siswa.php">Siswa/i</a>
                        <a class="collapse-item" href="lihat_guru.php">Guru</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
                    aria-expanded="true" aria-controls="collapseThree">
                    <i class="fas fa-fw fas fa-edit"></i>
                    <span>Input Data Akademik</span>
                </a>
                <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Input Data</h6>
                        <a class="collapse-item" href="input_mapel.php">Mata Pelajaran</a>
                        <a class="collapse-item" href="input_jadwal.php">Jadwal</a>
                        <a class="collapse-item" href="input_walikelas.php">Wali Kelas</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour"
                    aria-expanded="true" aria-controls="collapseFour">
                    <i class="fas fa-fw fas fa-clipboard-list"></i>
                    <span>Kelola Data akademik</span>
                </a>
                <div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Lihat Data</h6>
                        <a class="collapse-item" href="lihat_mapel.php">Mata Pelajaran</a>
                        <a class="collapse-item" href="lihat_jadwal.php">Jadwal Belajar</a>
                        <a class="collapse-item" href="lihat_walikelas.php">Wali Kelas</a>
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
                    <a href="dashboard_admin.php">
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
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                                <img class="img-profile rounded-circle" src="../img/avatar.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
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
                    <!-- Content Row -->
                    <div class="row">
                        <?php
                        $status = TRUE;
                        $query = mysqli_query($conn, "SELECT * FROM tahun_ajaran");
                        $ta = mysqli_fetch_array($query);
                        $tahun = $ta[0];
                        $cek = mysqli_query($conn, "SELECT * FROM kelas ORDER BY kode_kelas ASC");
                        while ($fetch = mysqli_fetch_array($cek)) {
                            $kelas = $fetch['kode_kelas'];
                            $kenaikankelas = mysqli_query($conn, "SELECT * FROM kenaikan_kelas WHERE kode_kelas = '$kelas' AND tahun = '$tahun' LIMIT 1");
                            $num = mysqli_num_rows($kenaikankelas);
                            if ($num > 0) {
                        ?>

                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Sudah</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php echo $kelas; ?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php
                            } else {
                                $status = FALSE;
                        ?>

                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                Belum</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php echo $kelas; ?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php
                            } 
                        }
                        ?>

                        <!-- Content Row -->

                    </div>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Formulir Edit Tahun Ajaran</h6>
                        </div>
                        <?php
                            $queryTahun = mysqli_query($conn, "SELECT * FROM tahun_ajaran");
                            $ta = mysqli_fetch_array($queryTahun);
                            $tahun = explode("/", $ta[0]);
                            $tahun_awal = $tahun[0];
                            $tahun_akhir = $tahun[1];
                        ?>
                        <div class="card-body">
                            <form class="user" method="POST" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <label for="inputYear1">Tahun Awal</label>
                                        <input type="text" pattern="\d*" class="form-control" id="inputYear1"
                                            maxlength="4" required name="tahun_awal" value="<?php echo $tahun_awal; ?>">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <label for="inputYear2">Tahun Akhir</label>
                                        <input type="text" pattern="\d*" class="form-control" id="inputYear2"
                                            maxlength="4" required name="tahun_akhir"
                                            value="<?php echo $tahun_akhir; ?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Kata Sandi Admin" required
                                        name="katasandi">
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-danger btn-user btn-block" name="update_ta"
                                        value="Ganti Tahun Ajaran"
                                        onclick="return confirm('Anda Yakin Ingin Mengganti Tahun Ajaran?')">
                                </div>
                            </form>
                        </div>
                    </div>

                    <?php 
                        if (isset($_POST['update_ta'])) {
                            $cek = mysqli_query($conn, "SELECT * FROM guru WHERE jenis_akun = 9");
                            $row = mysqli_fetch_array($cek);
                            $tahun_awal = antiinjection($_POST['tahun_awal']);
                            $tahun_akhir = antiinjection($_POST['tahun_akhir']);
                            $tahun_ajaran = $tahun_awal."/".$tahun_akhir;
                            $katasandi = antiinjection($_POST['katasandi']);
                            $kenaikankelas = mysqli_query($conn, "SELECT * FROM kenaikan_kelas WHERE tahun = '$tahun_ajaran' LIMIT 1");
                            $numkenaikankelas = mysqli_num_rows($kenaikankelas);
                            if(password_verify($katasandi, $row[4])) {
                                if ($numkenaikankelas > 0) {
                                    echo "<script>alert('Anda Tidak Boleh Menggunakan Tahun Ajaran Yang Sudah Ada')</script>";
                                } else {
                                    if ($status == TRUE) {

                                        $updatecek1 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '1A'");
                                        while ($updatefetch1 = mysqli_fetch_array($updatecek1)) {
                                            $nisn = $updatefetch1['nisn'];
                                            $updateKelas1A = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '2A' WHERE nisn = '$nisn' AND kode_kelas = '1A'");
                                        }

                                        $updatecek2 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '1B'");
                                        while ($updatefetch2 = mysqli_fetch_array($updatecek2)) {
                                            $nisn = $updatefetch2['nisn'];
                                            $updateKelas1B = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '2B' WHERE nisn = '$nisn' AND kode_kelas = '1B'");
                                        }

                                        $updatecek3 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '2A'");
                                        while ($updatefetch3 = mysqli_fetch_array($updatecek3)) {
                                            $nisn = $updatefetch3['nisn'];
                                            $updateKelas2A = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '3A' WHERE nisn = '$nisn' AND kode_kelas = '2A'");
                                        }

                                        $updatecek4 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '2B'");
                                        while ($updatefetch4 = mysqli_fetch_array($updatecek4)) {
                                            $nisn = $updatefetch4['nisn'];
                                            $updateKelas2B = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '3B' WHERE nisn = '$nisn' AND kode_kelas = '2B'");
                                        }

                                        $updatecek5 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '3A'");
                                        while ($updatefetch5 = mysqli_fetch_array($updatecek5)) {
                                            $nisn = $updatefetch5['nisn'];
                                            $updateKelas3A = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '4A' WHERE nisn = '$nisn' AND kode_kelas = '3A'");
                                        }

                                        $updatecek6 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '3B'");
                                        while ($updatefetch6 = mysqli_fetch_array($updatecek6)) {
                                            $nisn = $updatefetch6['nisn'];
                                            $updateKelas3B = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '4B' WHERE nisn = '$nisn' AND kode_kelas = '3B'");
                                        }

                                        $updatecek7 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '4A'");
                                        while ($updatefetch7 = mysqli_fetch_array($updatecek7)) {
                                            $nisn = $updatefetch7['nisn'];
                                            $updateKelas4A = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '5A' WHERE nisn = '$nisn' AND kode_kelas = '4A'");
                                        }

                                        $updatecek8 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '4B'");
                                        while ($updatefetch8 = mysqli_fetch_array($updatecek8)) {
                                            $nisn = $updatefetch8['nisn'];
                                            $updateKelas4B = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '5B' WHERE nisn = '$nisn' AND kode_kelas = '4B'");
                                        }

                                        $updatecek9 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '5A'");
                                        while ($updatefetch9 = mysqli_fetch_array($updatecek9)) {
                                            $nisn = $updatefetch9['nisn'];
                                            $updateKelas5A = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '6A' WHERE nisn = '$nisn' AND kode_kelas = '5A'");
                                        }

                                        $updatecek10 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '5B'");
                                        while ($updatefetch10 = mysqli_fetch_array($updatecek10)) {
                                            $nisn = $updatefetch10['nisn'];
                                            $updateKelas5B = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '6B' WHERE nisn = '$nisn' AND kode_kelas = '5B'");
                                        }

                                        $updatecek11 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '6A'");
                                        while ($updatefetch11 = mysqli_fetch_array($updatecek11)) {
                                            $nisn = $updatefetch11['nisn'];
                                            $updateKelas6A = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '-' WHERE nisn = '$nisn' AND kode_kelas = '6A'");
                                        }

                                        $updatecek12 = mysqli_query($conn, "SELECT nisn FROM kenaikan_kelas WHERE status = 'Naik' AND kode_kelas = '6B'");
                                        while ($updatefetch12 = mysqli_fetch_array($updatecek12)) {
                                            $nisn = $updatefetch12['nisn'];
                                            $updateKelas6B = mysqli_query($conn, "UPDATE siswa SET kode_kelas = '-' WHERE nisn = '$nisn' AND kode_kelas = '6B'");
                                        }
                                        
                                        $query = mysqli_query($conn, "UPDATE tahun_ajaran SET tahun = '$tahun_ajaran'");
                                        if($query) {
                                            echo "<script>alert('Tahun Ajaran Berhasil Dirubah')</script>";
                                            ?>
                    <meta http-equiv="refresh" content="1;url=dashboard_admin.php">
                    <?php
                                        } else {
                                            echo "<script>alert('Gagal Mengubah Tahun Ajaran')</script>";
                                        }
                                    } else {
                                        echo "<script>alert('Gagal, Ada Wali Kelas Yang Belum Input Kenaikan Kelas')</script>";
                                    }
                                }
                            } else {
                                echo "<script>alert('Kata Sandi Anda Salah')</script>";
                            }
                        }
                    ?>

                </div>
                <!-- End of Content Wrapper -->

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

</body>

<?php
} else {
      ?>
<meta http-equiv="refresh" content="1;url=../404.php">
<?php
  die();
 } 
} else {
  ?>
<meta http-equiv="refresh" content="1;url=../404.php">
<?php
  die();
}
?>

</html>