<?php
require_once '../connect.php';

header('Content-Type: application/json');

$_POST = json_decode(file_get_contents('php://input'), true);
	
$nisn = $_POST["nisn"];

$query = mysqli_query($conn, "SELECT * FROM tahun_ajaran");
$ta = mysqli_fetch_array($query);
$tahun = $ta[0];

$query = mysqli_query($conn, "SELECT * FROM presensi WHERE nisn = '$nisn' AND tahun <> '$tahun' ORDER BY tahun ASC LIMIT 1");

$num = mysqli_num_rows($query);

$response = array();

if ($num > 0){
    while ($row = mysqli_fetch_array($query)) {
        array_push($response, array(
            "tahun" => $row['tahun']
        ));
    }
}

echo json_encode(array('result' => $response));

mysqli_close($conn);
?>