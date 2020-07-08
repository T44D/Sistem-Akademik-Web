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
        require_once '../vendor/PHPExcel-1.8/Classes/PHPExcel.php';
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
            <li class="nav-item">
                <a class="nav-link" href="dashboard_admin.php">
                    <i class="fas fa-fw fa-home"></i>
                    <span>Beranda</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
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
                    <a href="input_guru.php">
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

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <div class="mb-0 text-gray-800"></div>
                        <a href="download_file_guru.php" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Unduh File Template</a>
                    </div>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Import Data Siswa/i</h6>
                        </div>
                        <div class="card-body">
                            <form class="user" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <div class="custom-file">
                                        <input type="file" name="file_import" class="custom-file-input" required>
                                        <label class="custom-file-label">Import File Data Guru</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary btn-user btn-block" name="input_guru"
                                        value="Import Data Guru">
                                </div>
                            </form>
                        </div>
                    </div>

                    <?php
if (isset($_POST['input_guru'])) {
        $allowedFileType = [
            'application/vnd.ms-excel',
            'text/xls',
            'text/xlsx',
            'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
        ];
        if (in_array($_FILES['file_import']['type'], $allowedFileType)) {
        $defaultpass = "simak123";
        $hashed_password = password_hash($defaultpass, PASSWORD_BCRYPT);
        $excelreader = new PHPExcel_Reader_Excel2007();
        $target = basename($_FILES['file_import']['name']);
        move_uploaded_file($_FILES['file_import']['tmp_name'], $target);
        $loadexcel = $excelreader->load($target);
        $sheet = $loadexcel->getActiveSheet()->toArray(null, true, true, true);
        $sheetcount = 1;
        foreach ($sheet as $row) {
            $nik = antiinjection($row['A']);
            $nama_guru = antiinjection($row['B']);
            $gender = antiinjection($row['C']);
            $alamat_guru = antiinjection($row['D']);
            if($nik == "" && $nama_guru == "" && $gender == "" && $alamat_guru == "")
            continue;
            if ($sheetcount > 2) {
                mysqli_query($conn, "INSERT INTO guru VALUES('$nik', '$nama_guru', '$gender', '$alamat_guru', '$hashed_password', 2, NULL)");
            }
            $sheetcount++;
        }
        unlink($_FILES['file_import']['name']);
        
        ?>
                    <meta http-equiv="refresh" content="1;url=lihat_guru.php">
                    <?php
    } else {
        echo "<script>alert('File Harus berformat Excel!')</script>";
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