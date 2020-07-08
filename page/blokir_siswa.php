<?php
    session_start();
    include '../connect.php';
	if (isset($_SESSION['login'])) {
        $status = $_GET['status'];
        if ($status == 0) {
        $nisn = $_GET['nisn'];
        $update = mysqli_query($conn, "UPDATE siswa SET jenis_akun = 1 WHERE nisn = '$nisn'");
        if ($update) {
        ?>
<meta http-equiv="refresh" content="1;url=lihat_data_siswa.php?nisn=<?php echo $nisn; ?>">
<?php
        }
        exit;    
        } else {
        $nisn = $_GET['nisn'];
        $update = mysqli_query($conn, "UPDATE siswa SET jenis_akun = 0 WHERE nisn = '$nisn'");
        if ($update) {
        ?>
<meta http-equiv="refresh" content="1;url=lihat_data_siswa.php?nisn=<?php echo $nisn; ?>">
<?php
        }
        exit;
        }
    }
	else {
	  ?>
<meta http-equiv="refresh" content="1;url=../404.php">
<?php
	  die();
	}
?>