<?php
    session_start();
    include '../connect.php';
        if (isset($_SESSION['login'])) {
        $admin = $_SESSION['login'];
        $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
        $cekdata = mysqli_fetch_array($cek);
        if ($cekdata['jenis_akun'] == 9) {
        $kode_jadwal = $_GET['kode_jadwal'];
        $delete = mysqli_query($conn, "DELETE FROM jadwal WHERE kode_jadwal = '$kode_jadwal'");
        if ($delete) {
                $deleteAll = mysqli_query($conn, "DELETE * FROM presensi WHERE kode_jadwal = '$kode_jadwal'");
        ?>
<meta http-equiv="refresh" content="1;url=lihat_jadwal.php">
<?php
        }
        exit;
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