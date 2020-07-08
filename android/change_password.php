<?php
require_once '../connect.php';

header('Content-Type: application/json');

class usr{}
	
$nisn = $_POST["nisn"];
$lama = $_POST["kata_sandi_lama"];
$baru = $_POST["kata_sandi_baru"];
$katasandi_baru = password_hash($baru, PASSWORD_BCRYPT);

$query = mysqli_query($conn, "SELECT * FROM siswa WHERE nisn = '$nisn'");

$row = mysqli_fetch_array($query);

if (password_verify($lama, $row['katasandi_siswa'])) {
    $query = mysqli_query($conn, "UPDATE siswa SET katasandi_siswa = '$katasandi_baru' WHERE nisn = '$nisn'");
    if ($query) {
        $response = new usr();
        $response->success = 1;
        $response->message = "Berhasil Diganti";
        die(json_encode($response));
    } else {
        $response = new usr();
        $response->success = 0;
        $response->message = "Gagal!";
        die(json_encode($response));
    }
} else {
    $response = new usr();
    $response->success = 0;
    $response->message = "Kata Sandi Lama Salah";
    die(json_encode($response));
}

mysqli_close($conn);

?>