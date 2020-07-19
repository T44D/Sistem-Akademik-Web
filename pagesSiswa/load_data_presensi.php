<?php
echo "<link href='../vendor/datatables/dataTables.bootstrap4.min.css' rel='stylesheet'>";
include '../connect.php';
function hariIndo($hariInggris) {
    switch ($hariInggris) {
    case 'Sunday':
        return 'Minggu';
    case 'Monday':
        return 'Senin';
    case 'Tuesday':
        return 'Selasa';
    case 'Wednesday':
        return 'Rabu';
    case 'Thursday':
        return 'Kamis';
    case 'Friday':
        return 'Jumat';
    case 'Saturday':
        return 'Sabtu';
    default:
        return 'hari tidak valid';
    }
}
$output = '';
$nisn = $_POST['nisn'];
$semester = $_POST['semester'];
$tahun = $_POST['tahun'];  
$query = mysqli_query($conn, "SELECT * FROM presensi WHERE nisn = '$nisn' AND tahun = '$tahun' AND semester = $semester ORDER BY no_presensi DESC");
$row = mysqli_num_rows($query);
if ($row > 0) {
    $head = "<table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
        <thead>
        <tr>
        <th>Hari</th>
        <th>Jam</th>
        <th>Mata Pelajaran</th>
        <th>Tanggal</th>
        <th>Keterangan</th>
        </tr>
        </thead>
        <tbody>";
    $low = "</tbody>
        </table>";
    $body = "";
    while ($row = mysqli_fetch_array($query)) {
        $kodejadwal = $row['kode_jadwal'];
        $jadwal = mysqli_query($conn, "SELECT * FROM jadwal WHERE kode_jadwal = $kodejadwal");
        $getjadwal = mysqli_fetch_array($jadwal);
        $kodemapel = $getjadwal['kode_mata_pelajaran'];
        $mapel = mysqli_query($conn, "SELECT * FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kodemapel'");
        $getmapel = mysqli_fetch_array($mapel);
        $nama_mapel = $getmapel['nama_mata_pelajaran'];
        $body .=  "
        <tr>
        <th>".hariIndo($getjadwal['nama_hari'])."</th>
        <th>".$getjadwal['jam_masuk']."-".$getjadwal['jam_keluar']."</th>
        <th>".$getmapel['nama_mata_pelajaran']."</th>
        <th>".$row['tanggal']."</th>
        <th>".$row['keterangan']."</th>
        </tr>";
    }  
    $output .= $head.$body.$low;
} else {
    $output .= "Tidak Ada Data";
}
echo $output;  
echo "<script src='../vendor/datatables/jquery.dataTables.min.js'></script>";
echo "<script src='../vendor/datatables/dataTables.bootstrap4.min.js'></script>";
echo "<script src='../js/demo/datatables-demo.js'></script>";
?>