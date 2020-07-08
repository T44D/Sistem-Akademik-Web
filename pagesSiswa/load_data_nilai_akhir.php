<?php
include '../connect.php';
$output = '';
$nisn = $_POST['nisn'];
$semester = $_POST['semester'];
$kodekelas = $_POST['kodekelas'];  
$result = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kodekelas' AND semester = $semester ORDER BY kode_mata_pelajaran ASC");  
$row = mysqli_num_rows($result);
if ($row > 0) {
    while($baris = mysqli_fetch_array($result)) {  
        $kodemapel = $baris[5];
        $mapel = mysqli_query($conn, "SELECT * FROM mata_pelajaran WHERE kode_mata_pelajaran = '$kodemapel'");
        $getmapel = mysqli_fetch_array($mapel);
        $nama_mapel = $getmapel['nama_mata_pelajaran'];
        $output .= "<table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
        <thead>
        <tr>
        <th>Mata Pelajaran</th>
        <th>Nilai Pengetahuan</th>
        <th>Predikat Nilai Pengetahuan</th>
        <th>Nilai Keterampilan</th>
        <th>Predikat Nilai Keterampilan</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <th>".$nama_mapel."</th>
        <th>".$baris[1]."</th>
        <th>".$baris[2]."</th>
        <th>".$baris[3]."</th>
        <th>".$baris[4]."</th>
        </tr>
        </tbody>
        </table>";
    }  
} else {
    $output .= "Tidak Ada Data";
}
echo $output;  
?>