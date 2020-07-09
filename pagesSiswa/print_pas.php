<!DOCTYPE html>
<html lang="en">

<head>
    <title>Raport PAS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <?php include '../connect.php'; ?>
</head>

<body>
    <?php
    $nisn = $_GET['nisn'];
    $kelas = $_GET['kelas'];
    $semester = $_GET['semester'];
    $query1 = mysqli_query($conn, "SELECT * FROM siswa WHERE nisn = '$nisn'");
    $data1 = mysqli_fetch_array($query1);
    $query2 = mysqli_query($conn, "SELECT * FROM wali_kelas WHERE kode_kelas = '$kelas'");
    $data2 = mysqli_fetch_array($query2);
    $query3 = mysqli_query($conn, "SELECT * FROM guru WHERE nik = '$data2[nik]'");
    $data3 = mysqli_fetch_array($query3);
    $query4 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' GROUP BY tahun");
    $data4 = mysqli_fetch_array($query4);
    $nama = $data1['nama_siswa'];
    $nisnnis = $data1['nisn']."/".$data1['nis'];
    $nama_wali = $data3['nama_guru'];
    $tahun = $data4['tahun'];

    //Nilai
    $query5 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'AG'");
    $data5 = mysqli_fetch_array($query5);
    $npAG = array($data5[1], $data5[2], $data5[3], $data5[4]);

    $query6 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PK'");
    $data6 = mysqli_fetch_array($query6);
    $npPK = array($data6[1], $data6[2], $data6[3], $data6[4]);

    $query7 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'BI'");
    $data7 = mysqli_fetch_array($query7);
    $npBI = array($data7[1], $data7[2], $data7[3], $data7[4]);

    $query8 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'MT'");
    $data8 = mysqli_fetch_array($query8);
    $npMT = array($data8[1], $data8[2], $data8[3], $data8[4]);

    $query9 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PA'");
    $data9 = mysqli_fetch_array($query9);
    $npPA = array($data9[1], $data9[2], $data9[3], $data9[4]);

    $query10 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PS'");
    $data10 = mysqli_fetch_array($query10);
    $npPS = array($data10[1], $data10[2], $data10[3], $data10[4]);

    $query11 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'SB'");
    $data11 = mysqli_fetch_array($query11);
    $npSB = array($data11[1], $data11[2], $data11[3], $data11[4]);
    
    $query12 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'OR'");
    $data12 = mysqli_fetch_array($query12);
    $npOR = array($data12[1], $data12[2], $data12[3], $data12[4]);

    $query13 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'BD'");
    $data13 = mysqli_fetch_array($query13);
    $npBD = array($data13[1], $data13[2], $data13[3], $data13[4]);

    $query14 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PL'");
    $data14 = mysqli_fetch_array($query14);
    $npPL = array($data14[1], $data14[2], $data14[3], $data14[4]);

    $query15 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'IG'");
    $data15 = mysqli_fetch_array($query15);
    $npIG = array($data15[1], $data15[2], $data15[3], $data15[4]);

    $query16 = mysqli_query($conn, "SELECT * FROM nilai_akhir WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'KP'");
    $data16 = mysqli_fetch_array($query16);
    $npKP = array($data16[1], $data16[2], $data16[3], $data16[4]);

    //Presensi
    $sakit = "-";
    $izin = "-";
    $alpha = "-";
    $query17 = mysqli_query($conn, "SELECT * FROM presensi WHERE nisn = '$nisn' AND tahun = '$tahun' AND semester = '$semester' AND keterangan = 'Sakit'"); 
    $cek1 = mysqli_num_rows($query17);
    if ($cek1 > 0) {
        $sakit = $cek1;
    }
    $query18 = mysqli_query($conn, "SELECT * FROM presensi WHERE nisn = '$nisn' AND tahun = '$tahun' AND semester = '$semester' AND keterangan = 'Izin'");
    $cek2 = mysqli_num_rows($query18);
    if ($cek2 > 0) {
        $izin = $cek2;
    }
    $query18 = mysqli_query($conn, "SELECT * FROM presensi WHERE nisn = '$nisn' AND tahun = '$tahun' AND semester = '$semester' AND keterangan = 'Alpha'");
    $cek3 = mysqli_num_rows($query18);
    if ($cek3 > 0) {
        $alpha = $cek3;
    }
    ?>
    <div class="container">
        <h1 style="text-align: center;">RAPOR PESERTA DIDIK</h1>
        <table class="table borderlestable">
            <thead>
            <tbody>
                <tr>
                    <td>Nama Peserta Didik </td>
                    <td>: </td>
                    <td><?php echo $nama; ?></td>
                </tr>
                <tr>
                    <td>NISN/NIS </td>
                    <td>: </td>
                    <td><?php echo $nisnnis; ?></td>
                </tr>
                <tr>
                    <td>Nama Sekolah</td>
                    <td>: </td>
                    <td>Ignatius Slamet Riyadi 1</td>
                </tr>
                <tr>
                    <td>Alamat Sekolah</td>
                    <td>: </td>
                    <td>Jl. Gatot Subroto No.221 Bandung</td>
                </tr>
                <tr>
                    <td>Kelas</td>
                    <td>: </td>
                    <td><?php echo $kelas; ?></td>
                </tr>
                <tr>
                    <td>Semester</td>
                    <td>: </td>
                    <td><?php echo $semester; ?></td>
                </tr>
                <tr>
                    <td>Tahun Pelajaran</td>
                    <td>: </td>
                    <td><?php echo $tahun; ?></td>
                </tr>
            </tbody>
            </thead>
        </table>
    </div>
    <div class="container">
        <h3>Pengetahuan dan Keterampilan</h3>
        <h4>KKM Satuan Pendidikan : 75</h4>
        <table class="table table-bordered">
            <thread>
                <tr>
                    <th rowspan="2" style="text-align: center;">No</th>
                    <th rowspan="2" style="text-align: center;">Muatan Pelajaran</th>
                    <th colspan="2" style="text-align: center;">Pendidikan</th>
                    <th colspan="2" style="text-align: center;">Keterampilan</th>
                </tr>
                <tr>
                    <th style="text-align: center;">Nilai </th>
                    <th style="text-align: center;">Predikat</th>
                    <th style="text-align: center;">Nilai</th>
                    <th style="text-align: center;">Predikat</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Pendidikan Agama dan Budi Pekerti</td>
                    <td><?php echo $npAG[0]; ?></td>
                    <td><?php echo $npAG[1]; ?></td>
                    <td><?php echo $npAG[2]; ?></td>
                    <td><?php echo $npAG[3]; ?></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Pendidikan Pancasila dan Kewarganegaraan</td>
                    <td><?php echo $npPK[0]; ?></td>
                    <td><?php echo $npPK[1]; ?></td>
                    <td><?php echo $npPK[2]; ?></td>
                    <td><?php echo $npPK[3]; ?></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Bahasa Indonesia</td>
                    <td><?php echo $npBI[0]; ?></td>
                    <td><?php echo $npBI[1]; ?></td>
                    <td><?php echo $npBI[2]; ?></td>
                    <td><?php echo $npBI[3]; ?></td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Matematika</td>
                    <td><?php echo $npMT[0]; ?></td>
                    <td><?php echo $npMT[1]; ?></td>
                    <td><?php echo $npMT[2]; ?></td>
                    <td><?php echo $npMT[3]; ?></td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Ilmu Pengetahuan Alam</td>
                    <td><?php echo $npPA[0]; ?></td>
                    <td><?php echo $npPA[1]; ?></td>
                    <td><?php echo $npPA[2]; ?></td>
                    <td><?php echo $npPA[3]; ?></td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Ilmu Pengetahuan Sosial</td>
                    <td><?php echo $npPS[0]; ?></td>
                    <td><?php echo $npPS[1]; ?></td>
                    <td><?php echo $npPS[2]; ?></td>
                    <td><?php echo $npPS[3]; ?></td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Seni Budaya dan Prakarya</td>
                    <td><?php echo $npSB[0]; ?></td>
                    <td><?php echo $npSB[1]; ?></td>
                    <td><?php echo $npSB[2]; ?></td>
                    <td><?php echo $npSB[3]; ?></td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Pendidikan Jasmani Olahraga dan Kesehatan</td>
                    <td><?php echo $npOR[0]; ?></td>
                    <td><?php echo $npOR[1]; ?></td>
                    <td><?php echo $npOR[2]; ?></td>
                    <td><?php echo $npOR[3]; ?></td>
                </tr>
                <tr>
                    <th>9.</th>
                    <th>Muatan Lokal</th>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                </tr>
                <tr>
                    <td>a.</td>
                    <td>Bahasa Sunda</td>
                    <td><?php echo $npBD[0]; ?></td>
                    <td><?php echo $npBD[1]; ?></td>
                    <td><?php echo $npBD[2]; ?></td>
                    <td><?php echo $npBD[3]; ?></td>
                </tr>
                <tr>
                    <td>b.</td>
                    <td>Pendidikan Lingkungan Hidup</td>
                    <td><?php echo $npPL[0]; ?></td>
                    <td><?php echo $npPL[1]; ?></td>
                    <td><?php echo $npPL[2]; ?></td>
                    <td><?php echo $npPL[3]; ?></td>
                </tr>
                <tr>
                    <td>c.</td>
                    <td>Bahasa Inggris</td>
                    <td><?php echo $npIG[0]; ?></td>
                    <td><?php echo $npIG[1]; ?></td>
                    <td><?php echo $npIG[2]; ?></td>
                    <td><?php echo $npIG[3]; ?></td>
                </tr>
                <tr>
                    <td>d.</td>
                    <td>Tehnologi Informasi dan Komunikasi (TIK)</td>
                    <td><?php echo $npKP[0]; ?></td>
                    <td><?php echo $npKP[1]; ?></td>
                    <td><?php echo $npKP[2]; ?></td>
                    <td><?php echo $npKP[3]; ?></td>
                </tr>
            </thread>
        </table>
    </div>
    <div class="container">
        <h3>Ketidakhadiran</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <td>Sakit</td>
                    <td><?php echo $sakit; ?></td>
                </tr>
                <tr>
                    <td>Izin</td>
                    <td><?php echo $izin; ?></td>
                </tr>
                <tr>
                    <td>Tanpa Keterangan</td>
                    <td><?php echo $alpha; ?></td>
                </tr>
            </thead>
        </table>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <p>Mengetahui,</p>
                <p>Orang Tua/ wali</p>
                <br>
                <p>...........................</p>
            </div>
            <div class="col-sm-6" style="padding-left: 350px;"" >
                <p>Wali Kelas <?php echo $kelas; ?></p>
                <br>
                <p><?php echo $nama_wali; ?></p>
            </div>
            <div class=" col-sm-12" style="text-align: center;">
                <p>Mengetahui,</p>
                <p>Kepala SD Ignatius Slamet Riyadi 1</p>
                <br>
                <p>Fransiscus Pujiharto, S.Pd</p>
            </div>
        </div>
    </div>
</body>
<script language=javascript>
function printWindow() {
    bV = parseInt(navigator.appVersion);
    if (bV >= 4)
        window.print();
}
printWindow();
</script>

</html>