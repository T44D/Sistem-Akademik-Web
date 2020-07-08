<?php
require_once '../connect.php';

header('Content-Type: application/json');

$sql = mysqli_query($conn, "SELECT * FROM informasi_akademik ORDER BY no_info ASC");

$response = array();
while ($hasil = mysqli_fetch_array($sql)) {
	array_push($response, array(
		"no_info" => $hasil['no_info'],
		"judul_info" => $hasil['judul_info'],
		"deskripsi_info" => $hasil['deskripsi_info'],
		"media_info" => $hasil['media_info'],
		"media_info_tipe" => $hasil['media_info_tipe'],
		"tanggal_info" => $hasil['tanggal_info']
	));
}

echo json_encode(array('result' => $response));

mysqli_close($conn);
?>