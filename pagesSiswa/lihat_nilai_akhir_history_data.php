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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

    <?php 
        include '../connect.php';
        function tampilkan() {
            include '../connect.php';
            $output = '';
            if (isset($_SESSION['login'])) {
                $nisn = $_SESSION['login'];
                $query = mysqli_query($conn, "SELECT * FROM siswa WHERE nisn = '$nisn'");
                $data = mysqli_fetch_array($query);
                $kodekelas = $_GET['kodekelas'];
                $result = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kodekelas' AND semester = 1 ORDER BY kode_mata_pelajaran ASC");  
                $row = mysqli_num_rows($result);
                if ($row > 0) {
                    $head = "<table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                        <thead>
                        <tr>
                        <th>Mata Pelajaran</th>
                        <th>Nilai Pengetahuan</th>
                        <th>Predikat Nilai Pengetahuan</th>
                        <th>Deskripsi Nilai Pengetahuan</th>
                        <th>Nilai Keterampilan</th>
                        <th>Predikat Nilai Keterampilan</th>
                        <th>Deskripsi Nilai Keterampilan</th>
                        </tr>
                        </thead>
                        <tbody>";
                    $low = "</tbody>
                        </table>";
                    $body = "";
                    while($baris = mysqli_fetch_array($result)) {  
                        $kodemapel = $baris[7];
                        $mapel = mysqli_query($conn, "SELECT * FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kodemapel'");
                        $getmapel = mysqli_fetch_array($mapel);
                        $nama_mapel = $getmapel['nama_mata_pelajaran'];
                        $body .= "<tr>
                        <th>".$nama_mapel."</th>
                        <th>".$baris[1]."</th>
                        <th>".$baris[2]."</th>
                        <th>".$baris[3]."</th>
                        <th>".$baris[4]."</th>
                        <th>".$baris[5]."</th>
                        <th>".$baris[6]."</th>
                        </tr>";
                    }  
                    $output .= $head.$body.$low;
                } else {
                    $output .= "Tidak Ada Data";
                }
            }  
            return $output;  
        } 
    ?>

</head>

<?php
if (isset($_SESSION['login'])) {
  $nisn_login = $_SESSION['login'];
  $kodekelas = $_GET['kodekelas'];
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
            <li class="nav-item active">
                <a class="nav-link" href="nilai.php">
                    <i class="fas fa-fw fas fa-chart-pie"></i>
                    <span>Nilai</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="presensi.php">
                    <i class="fas fa-fw far fa-calendar-alt"></i>
                    <span>Presensi</span></a>
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
                    <a href="lihat_nilai_akhir_history.php">
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
                      $query = mysqli_query($conn, "SELECT * FROM siswa WHERE nisn = '$nisn_login'");
                      $data = mysqli_fetch_array($query);
                    ?>
                                <span
                                    class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $data['nama_siswa']; ?></span>
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

                <form method="POST" id="form"></form>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <div class="form-group d-sm-inline-block">
                            <label for="select_semester">Semester</label>
                            <select class="custom-select" name="semester" id="select_semester" form="form">
                                <option value="1" selected>1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabel Nilai Siswa/i</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive" id="tampilkan">
                                <?php echo tampilkan(); ?>
                            </div>
                        </div>
                        <button type="submit" name="print" form="form"
                            class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-calendar-alt fa-sm text-white-50"></i> Print Rapot PAS</button>
                        <?php 
                        if (isset($_POST['print'])) {
                            $kelas = $kodekelas;
                            $semester = $_POST['semester'];
                        ?>
                        <meta http-equiv="refresh"
                            content="1;url=print_pas.php?nisn=<?php echo $nisn_login; ?>&kelas=<?php echo $kelas; ?>&semester=<?php echo $semester; ?>">
                        <?php
                        }
                        ?>
                    </div>

                </div>
                <!-- End of Main Content -->

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

        <script>
        $(document).ready(function() {
            $('#select_semester').change(function() {
                var semester = $(this).val();
                var nisn = "<?php echo $nisn_login; ?>";
                var kodekelas = "<?php echo $kodekelas = $_GET['kodekelas']; ?>";
                $.ajax({
                    url: "load_data_nilai_akhir.php",
                    method: "POST",
                    data: {
                        semester: semester,
                        nisn: nisn,
                        kodekelas: kodekelas
                    },
                    success: function(data) {
                        $('#tampilkan').html(data);
                    }
                });
            });
        });
        </script>

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