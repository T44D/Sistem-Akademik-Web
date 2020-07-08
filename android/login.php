<?php
require_once '../connect.php';

header('Content-Type: application/json');

class usr{}
	
$nisn = $_POST["nisn"];
$password = $_POST["password"];

$query = mysqli_query($conn, "SELECT * FROM siswa WHERE nisn = '$nisn'");

$row = mysqli_fetch_array($query);

if (!empty($row)){
    if ($row['jenis_akun'] == 0) {
        $response = new usr();
        $response->success = 0;
        $response->message = "Akun Anda DiBlokir, Silahkan Hubungi Bagian Administrasi!";
        die(json_encode($response));
    } else {
        if (password_verify($password, $row['katasandi_siswa'])) {
            $response = new usr();
            $response->success = 1;
            $response->message = "Login Berhasil";
            $response->nisn = $row['nisn'];
            $response->nama = $row['nama_siswa'];
            $response->kelas = $row['kode_kelas'];
            die(json_encode($response));
        } else {
            $response = new usr();
            $response->success = 0;
            $response->message = "Kata Sandi Salah";
            die(json_encode($response));
        }
    }
} else { 
    $response = new usr();
    $response->success = 0;
    $response->message = "NISN Tidak Ditemukan";
    die(json_encode($response));
}

mysqli_close($conn);

?>