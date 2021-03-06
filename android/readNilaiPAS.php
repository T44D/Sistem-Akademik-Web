<?php
require_once '../connect.php';

header('Content-Type: application/json');

$_POST = json_decode(file_get_contents('php://input'), true);
	
$nisn = $_POST["nisn"];
$kode_kelas = $_POST["kode_kelas"];
$semester = $_POST["semester"];

$query = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kode_kelas' AND semester = $semester ORDER BY kode_mata_pelajaran ASC");

$num = mysqli_num_rows($query);

$response = array();

if ($num > 0){
    while ($row = mysqli_fetch_array($query)) {
        $kodemapel = $row['kode_mata_pelajaran'];
        $mapel = mysqli_query($conn, "SELECT * FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kodemapel'");
        $getmapel = mysqli_fetch_array($mapel);
        if ($row['np'] == NULL) {
            $row['np'] = 0;
        }
        if ($row['npt'] == NULL) {
            $row['npt'] = 0;
        }
        array_push($response, array(
            "id" => $row['no_nilai'],
            "np" => $row['np'],
            "predikat_np" => $row['predikat_np'],
            "deskripsi_np" => $row['deskripsi_np'],
            "npt" => $row['npt'],
            "predikat_npt" => $row['predikat_npt'],
            "deskripsi_npt" => $row['deskripsi_np'],
            "mapel" => $getmapel['nama_mata_pelajaran']
        ));
    }
}

echo json_encode(array('result' => $response));

mysqli_close($conn);
?>