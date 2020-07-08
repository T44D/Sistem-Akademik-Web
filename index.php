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

</head>

<?php include 'connect.php'; ?>

<body id="page-top">
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- 404 Error Text -->
        <div class="text-center">
            <p class="text-gray-500 mb-0">Mohon Tunggu...</p>
        </div>

    </div>

    <?php
    if (isset($_SESSION['login'])) {
        $user = $_SESSION['login'];
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
            if ($cekdata['jenis_akun'] == 9) {
                ?>
    <meta http-equiv="refresh" content="1;url=page/dashboard_admin.php">
    <?php
            } else if ($cekdata['jenis_akun'] == 2) {
                ?>
    <meta http-equiv="refresh" content="1;url=pages/dashboard.php">
    <?php
            }
        } else if ($cekrowSiswa > 0) { 
            ?>
    <meta http-equiv="refresh" content="1;url=pagesSiswa/dashboard.php">
    <?php
        } else {
            ?>
    <meta http-equiv="refresh" content="1;url=login.php">
    <?php
        }
    } else {
        ?>
    <meta http-equiv="refresh" content="1;url=login.php">
    <?php
    }

    ?>
</body>

</html>