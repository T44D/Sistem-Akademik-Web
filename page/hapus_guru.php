<?php
    session_start();
    include '../connect.php';
	if (isset($_SESSION['login'])) {
    $admin = $_SESSION['login'];
    $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
    $cekdata = mysqli_fetch_array($cek);
    if ($cekdata['jenis_akun'] == 9) {
        $nik = $_GET['nik'];
        $check1 = mysqli_query($conn, "SELECT * FROM wali_kelas WHERE nik = '$nik'");
        $check2 = mysqli_query($conn, "SELECT * FROM jadwal WHERE nik = '$nik'");
        if ($check1) {
            $row1 = mysqli_num_rows($check1);
        }
        if ($check2) {
            $row2 = mysqli_num_rows($check2);
        }
        if ($row1 > 0) {
            echo "<script>alert('Guru Masih Terdaftar di Wali Kelas')</script>";
            ?>
<meta http-equiv="refresh" content="1;url=lihat_data_guru.php?nik=<?php echo $nik; ?>">
<?php
        } else if ($row2 > 0) {
            echo "<script>alert('Guru Masih Terdaftar di Jadwal')</script>";
            ?>
<meta http-equiv="refresh" content="1;url=lihat_data_guru.php?nik=<?php echo $nik; ?>">
<?php
        } else {
            mysqli_query($conn, "DELETE FROM guru WHERE nik = '$nik'");
        ?>
<meta http-equiv="refresh" content="1;url=lihat_guru.php">
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