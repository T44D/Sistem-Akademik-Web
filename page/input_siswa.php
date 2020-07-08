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
                        <a href="import_siswa.php" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Import Data Siswa/i</a>
                    </div>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Formulir Tambah Siswa/i</h6>
                        </div>
                        <div class="card-body">
                            <form class="user" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Nama Lengkap" maxlength="100"
                                        required name="nama_siswa">
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Nomor Induk Siswa Nasional"
                                        required name="nisn">
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Nomor Induk Siswa" required
                                        name="nis">
                                </div>
                                <div class="form-check form-check-inline">
                                    <label class="form-check-label">
                                        Jenis Kelamin
                                    </label>
                                </div>
                                <div class="form-group">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" value="Laki-Laki"
                                            checked>
                                        <label class="form-check-label">
                                            Laki-Laki
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" value="Perempuan">
                                        <label class="form-check-label">
                                            Perempuan
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control" placeholder="Tempat Lahir"
                                            maxlength="30" required name="tempat_lahir">
                                    </div>
                                    <div class="col-sm-6">
                                        <input class="form-control" placeholder="Tanggal Lahir"
                                            onfocus="(this.type='date')" onblur="(this.type='date')" required
                                            name="tanggal_lahir">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" aria-label="With textarea"
                                        placeholder="Alamat Siswa/i" maxlength="300" required
                                        name="alamat_siswa"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Nama Lengkap Orang Tua</label>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Ayah" maxlength="100"
                                            required name="nama_ayah">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Ibu" maxlength="100"
                                            required name="nama_ibu">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Pekerjaan Orang Tua</label>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Ayah" maxlength="30"
                                            required name="pekerjaan_ayah">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Ibu" maxlength="30"
                                            required name="pekerjaan_ibu">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Alamat Rumah Orang Tua</label>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control" placeholder="Jalan" maxlength="300"
                                                required name="jalan">
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" placeholder="Kelurahan/Desa"
                                                maxlength="30" required name="kelurahan">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control" placeholder="Kecamatan"
                                                maxlength="30" required name="kecamatan">
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" placeholder="Kabupaten/Kota"
                                                maxlength="30" required name="kabupaten">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control" placeholder="Provinsi"
                                                maxlength="30" required name="provinsi">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Data Wali Siswa/i</label>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control" placeholder="Nama Wali"
                                                maxlength="100" name="nama_wali">
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" placeholder="Pekerjaan Wali"
                                                maxlength="30" name="pekerjaan_wali">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" aria-label="With textarea"
                                            placeholder="Alamat Wali" maxlength="300" name="alamat_wali"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <select class="custom-select" name="kelas_siswa" required>
                                        <option value="" disabled selected>Pilih Kelas untuk Siswa/i</option>
                                        <?php
                    $hasil = mysqli_query($conn, "SELECT * FROM kelas ORDER BY kode_kelas ASC");
                    while ($baris = mysqli_fetch_array($hasil)) {
                      ?>
                                        <option value="<?php echo $baris['kode_kelas']; ?>">
                                            <?php echo $baris['kode_kelas']; ?>
                                        </option>
                                        <?php
                    }
                  ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary btn-user btn-block" name="input_siswa"
                                        value="Input Data Siswa/i">
                                </div>
                            </form>
                        </div>
                    </div>

                    <?php 
            if (isset($_POST['input_siswa'])) {
              $nama_siswa = antiinjection($_POST['nama_siswa']);
              $nisn = antiinjection($_POST['nisn']);
              $nis = antiinjection($_POST['nis']);
              $gender = antiinjection($_POST['gender']);
              $tanggal_lahir = antiinjection($_POST['tanggal_lahir']);
              $tempat_lahir = antiinjection($_POST['tempat_lahir']);
              $alamat_siswa = antiinjection($_POST['alamat_siswa']);
              $nama_ayah = antiinjection($_POST['nama_ayah']);
              $nama_ibu = antiinjection($_POST['nama_ibu']);
              $pekerjaan_ayah = antiinjection($_POST['pekerjaan_ayah']);
              $pekerjaan_ibu = antiinjection($_POST['pekerjaan_ibu']);
              $jalan = antiinjection($_POST['jalan']);
              $kelurahan = antiinjection($_POST['kelurahan']);
              $kecamatan = antiinjection($_POST['kecamatan']);
              $kabupaten = antiinjection($_POST['kabupaten']);
              $provinsi = antiinjection($_POST['provinsi']);
              $nama_wali = antiinjection($_POST['nama_wali']);
              $alamat_wali = antiinjection($_POST['alamat_wali']);
              $pekerjaan_wali = antiinjection($_POST['pekerjaan_wali']);
              $kelas_siswa = antiinjection($_POST['kelas_siswa']);
              $defaultpass = "simak123";
              $hashed_password = password_hash($defaultpass, PASSWORD_BCRYPT);
              $tanggal = date("d-m-Y", strtotime($tanggal_lahir));
 
              $insert = mysqli_query($conn, "INSERT INTO siswa VALUES('$nisn', '$nama_siswa', '$nis', '$gender', '$tempat_lahir', '$tanggal', '$alamat_siswa', '$nama_ayah', '$nama_ibu', '$pekerjaan_ayah', '$pekerjaan_ibu', '$jalan', '$kelurahan', '$kecamatan', '$kabupaten', '$provinsi', '$nama_wali', '$pekerjaan_wali', '$alamat_wali', '$hashed_password', 1, '$kelas_siswa')");

              if ($insert) {
                echo "<script>alert('Berhasil Menambahkan Siswa dengan Nama $nama_siswa')</script>";
                ?>
                    <meta http-equiv="refresh" content="1;url=lihat_siswa.php">
                    <?php
              } else {
                echo "<script>alert('Gagal Menambahkan Siswa')</script>";
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