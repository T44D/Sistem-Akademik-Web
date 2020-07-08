<?php
    session_start();
    include '../connect.php';
	if (isset($_SESSION['login'])) {
        $admin = $_SESSION['login'];
        $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
        $cekdata = mysqli_fetch_array($cek);
        if ($cekdata['jenis_akun'] == 9) {
        $kode_mapel = $_GET['kode_mata_pelajaran'];
        $delete = mysqli_query($conn, "DELETE FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kode_mapel'");
        if ($delete) {
                $delete_nilai = mysqli_query($conn, "DELETE FROM nilai_harian WHERE kode_mata_pelajaran = '$kode_mapel'");
                $delete_nilai_akhir = mysqli_query($conn, "DELETE FROM nilai_akhir WHERE kode_mata_pelajaran = '$kode_mapel'");
                $delete_jadwal = mysqli_query($conn, "DELETE FROM jadwal WHERE kode_mata_pelajaran = '$kode_mapel'");
        ?>
<meta http-equiv="refresh" content="1;url=lihat_mapel.php">
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