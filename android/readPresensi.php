<?php
require_once '../connect.php';

header('Content-Type: application/json');

$_POST = json_decode(file_get_contents('php://input'), true);
	
$nisn = $_POST["nisn"];
$semester = $_POST["semester"];

$query = mysqli_query($conn, "SELECT * FROM tahun_ajaran");
$ta = mysqli_fetch_array($query);
$tahun = $ta[0];

$query = mysqli_query($conn, "SELECT * FROM presensi WHERE nisn = '$nisn' AND tahun = '$tahun' AND semester = $semester ORDER BY no_presensi DESC");

$num = mysqli_num_rows($query);

$response = array();

if ($num > 0){
    while ($row = mysqli_fetch_array($query)) {
        $kodejadwal = $row['kode_jadwal'];
        $jadwal = mysqli_query($conn, "SELECT * FROM jadwal WHERE kode_jadwal = $kodejadwal");
        $getjadwal = mysqli_fetch_array($jadwal);
        $kodemapel = $getjadwal['kode_mata_pelajaran'];
        $mapel = mysqli_query($conn, "SELECT * FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kodemapel'");
        $getmapel = mysqli_fetch_array($mapel);
        
        array_push($response, array(
            "id" => $row['no_presensi'],
            "nama_hari" => $getjadwal['nama_hari'],
            "jam" => $getjadwal['jam_masuk']."-".$getjadwal['jam_keluar'],
            "mapel" => $getmapel['nama_mata_pelajaran'],
            "kelas" => $getjadwal['kode_kelas'],
            "keterangan" => $row['keterangan'],
            "tanggal" => $row['tanggal']
        ));

    }
}

echo json_encode(array('result' => $response));

mysqli_close($conn);
?>