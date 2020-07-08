<?php
	session_start();
	include '../connect.php';
	if (isset($_SESSION['login'])) {
    $admin = $_SESSION['login'];
    $cek = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$admin'");
    $cekdata = mysqli_fetch_array($cek);
    if ($cekdata['jenis_akun'] == 9) {
		$file_name = 'import_siswa.xlsx';
		$file_url = '../file/'.$file_name;
		header('Content-Type: application/octet-stream');
		header("Content-Transfer-Encoding: Binary"); 
		header("Content-disposition: attachment; filename=\"".$file_name."\""); 
		readfile($file_url);
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