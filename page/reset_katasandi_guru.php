<?php
    session_start();
    include '../connect.php';
	  if (isset($_SESSION['login'])) {
    $admin = $_SESSION['login'];
    $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
    $cekdata = mysqli_fetch_array($cek);
    if ($cekdata['jenis_akun'] == 9) {
        $nik = $_GET['nik'];
        $defaultpass = "simak123";
        $hashed_password = password_hash($defaultpass, PASSWORD_BCRYPT);
        $update = mysqli_query($conn, "UPDATE guru SET katasandi_guru = '$hashed_password' WHERE nik = '$nik'");
        if ($update) {
        ?>
<meta http-equiv="refresh" content="1;url=lihat_data_guru.php?nik=<?php echo $nik; ?>">
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