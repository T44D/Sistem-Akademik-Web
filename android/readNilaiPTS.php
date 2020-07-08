<?php
require_once '../connect.php';

header('Content-Type: application/json');

$_POST = json_decode(file_get_contents('php://input'), true);
	
$nisn = $_POST['nisn'];
$kode_kelas = $_POST['kode_kelas'];
$semester = $_POST["semester"];

$query = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kode_kelas' AND semester = $semester ORDER BY kode_mata_pelajaran");

$num = mysqli_num_rows($query);

$response = array();

if ($num > 0){
    while ($row = mysqli_fetch_array($query)) {
        $kodemapel = $row['kode_mata_pelajaran'];
        $mapel = mysqli_query($conn, "SELECT * FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kodemapel'");
        $getmapel = mysqli_fetch_array($mapel);
        if ($row['np1'] == NULL) {
            $row['np1'] = 0;
        }
        if ($row['np2'] == NULL) {
            $row['np2'] = 0;
        }
        if ($row['np3'] == NULL) {
            $row['np3'] = 0;
        }
        if ($row['np4'] == NULL) {
            $row['np4'] = 0;
        }
        if ($row['np5'] == NULL) {
            $row['np5'] = 0;
        }
        if ($row['nk1'] == NULL) {
            $row['nk1'] = 0;
        }
        if ($row['nk2'] == NULL) {
            $row['nk2'] = 0;
        }
        if ($row['nk3'] == NULL) {
            $row['nk3'] = 0;
        }
        if ($row['nk4'] == NULL) {
            $row['nk4'] = 0;
        }
        if ($row['nk5'] == NULL) {
            $row['nk5'] = 0;
        }
        if ($row['pts'] == NULL) {
            $row['pts'] = 0;
        }

        array_push($response, array(
            "id" => $row['no_nilai'],
            "np1" => $row['np1'],
            "np2" => $row['np2'],
            "np3" => $row['np3'],
            "np4" => $row['np4'],
            "np5" => $row['np5'],
            "nk1" => $row['nk1'],
            "nk2" => $row['nk2'],
            "nk3" => $row['nk3'],
            "nk4" => $row['nk4'],
            "nk5" => $row['nk5'],
            "pts" => $row['pts'],
            "mapel" => $getmapel['nama_mata_pelajaran']
        ));
    }
}

echo json_encode(array('result' => $response));

mysqli_close($conn);
?>