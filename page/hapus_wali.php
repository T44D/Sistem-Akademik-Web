<?php
    session_start();
    include '../connect.php';
	if (isset($_SESSION['login'])) {
    $admin = $_SESSION['login'];
    $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
    $cekdata = mysqli_fetch_array($cek);
    if ($cekdata['jenis_akun'] == 9) {
        $kode_wali = $_GET['kode_walikelas'];
        $select = mysqli_query($conn, "SELECT * FROM wali_kelas WHERE kode_wali_kelas = '$kode_wali'");
        $fetch = mysqli_fetch_array($select);
        $nik = $fetch['nik'];
        $kode_kelas = $fetch['kode_kelas'];
        $update = mysqli_query($conn, "UPDATE guru SET kode_wali_kelas = NULL WHERE nik = '$nik'");
        if ($update) {
            $update2 = mysqli_query($conn, "UPDATE kelas SET kode_wali_kelas = NULL WHERE kode_kelas = '$kode_kelas'");
            if ($update2) {
                mysqli_query($conn, "DELETE FROM wali_kelas WHERE kode_wali_kelas = '$kode_wali'");
            }
        ?>
<meta http-equiv="refresh" content="1;url=lihat_walikelas.php">
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