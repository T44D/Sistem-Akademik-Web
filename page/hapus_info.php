<?php
    session_start();
    include '../connect.php';
	if (isset($_SESSION['login'])) {
        $admin = $_SESSION['login'];
        $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
        $cekdata = mysqli_fetch_array($cek);
        if ($cekdata['jenis_akun'] == 9) {
        $no_info = $_GET['no_info'];
        $get = mysqli_query($conn, "SELECT * FROM informasi_akademik WHERE no_info = '$no_info'");
        $fetch = mysqli_fetch_array($get);
        $media = $fetch[3];
        if ($media != "") {
                $file_with_path = "../file/info_akademik/".$media;
                unlink($file_with_path);
        }
        $delete = mysqli_query($conn, "DELETE FROM informasi_akademik WHERE no_info = '$no_info'");
        if ($delete) {
        ?>
<meta http-equiv="refresh" content="1;url=info_akademik.php">
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