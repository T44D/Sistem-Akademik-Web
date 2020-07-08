<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistem Akademik</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <?php 
        include 'connect.php'; 
        function antiinjection($data){
            include 'connect.php'; 
            $filter_sql = mysqli_real_escape_string($conn, $data);
            return $filter_sql;
        }
        function cekStatus() {
        $status = " ";
            $currentTime = (int) date('G');
            if ($currentTime >= 0) {
                $status = "Selamat Datang";
            }
            if ($currentTime > 5) {
                $status = "Selamat Pagi";
            }
            if ($currentTime > 11) {
                $status = "Selamat Siang";
            }
            if ($currentTime > 14) {
                $status = "Selamat Sore";
            }
            if ($currentTime > 18) {
                $status = "Selamat Malam ";
            }
            return $status;
        }
        date_default_timezone_set('Asia/Jakarta');
    ?>

</head>

<body
    style="background :url('img/blur.png') no-repeat center center fixed; background-size: cover; height: 100%; overflow: hidden;">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <img src="img/default.jpg" class="col-lg-6 d-none d-lg-block">
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4"><?php echo cekStatus(); ?></h1>
                                    </div>
                                    <form class="user" method="POST">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" maxlength="15"
                                                placeholder="NISN/NIK" name="username" pattern="\S+" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                placeholder="Kata Sandi" name="password" required>
                                        </div>
                                        <input type="submit" name="login" class="btn btn-primary btn-user btn-block"
                                            value="Masuk">
                                        <hr>
                                        <a href="download.php?link=simak.apk"
                                            class="btn btn-success btn-user btn-block">
                                            <i class="fab fa-android fa-fw"></i> Unduh Aplikasi Android
                                        </a>
                                        <div class="text-center">
                                            *Aplikasi Khusus Login dengan NISN
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <?php
        if (isset($_POST['login'])) {
          $user = antiinjection($_POST['username']);
          $pass = antiinjection($_POST['password']);
          $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$user'");
          $cek2 = mysqli_query($conn, "SELECT * FROM siswa WHERE nisn = '$user'");
          if ($cek) {
              $cekrowGuru = mysqli_num_rows($cek);
          }
          if ($cek2) {
              $cekrowSiswa = mysqli_num_rows($cek2);
          }
          if ($cekrowGuru > 0) {
                $cekdata = mysqli_fetch_array($cek);
                if(password_verify($pass, $cekdata['katasandi_guru'])) {
                $_SESSION['login'] = $cekdata['nik'];
                if ($cekdata['jenis_akun'] == 9) {
                    ?>
        <meta http-equiv="refresh" content="1;url=page/dashboard_admin.php">
        <?php
                } else if ($cekdata['jenis_akun'] == 2) {
                    ?>
        <meta http-equiv="refresh" content="1;url=pages/dashboard.php">
        <?php
                }
                } else {
                echo "<script>alert('Kata Sandi Salah!')</script>";
                }
          } else if ($cekrowSiswa > 0) {
                $cekdata = mysqli_fetch_array($cek2);
                if ($cekdata['jenis_akun'] == 0) {
                    echo "<script>alert('Akun Anda DiBlokir, Silahkan Hubungi Bagian Administrasi!')</script>";
                }
                else if (password_verify($pass, $cekdata['katasandi_siswa'])) {
                $_SESSION['login'] = $cekdata['nisn'];
                 if ($cekdata['jenis_akun'] == 1) {
                    ?>
        <meta http-equiv="refresh" content="1;url=pagesSiswa/dashboard.php">
        <?php
                    }
                } else {
                echo "<script>alert('Kata Sandi Salah!')</script>";
                }
          }
          else {
            echo "<script>alert('NISN/NIK Tidak Ditemukan!')</script>";
          }
        }
        ?>
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

</body>

</html>