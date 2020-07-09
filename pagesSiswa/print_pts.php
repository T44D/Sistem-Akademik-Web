<!DOCTYPE html>
<html lang="en">

<head>
    <title>Raport PTS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <?php 
        include '../connect.php'; 
        date_default_timezone_set('Asia/Jakarta');
        function tgl_indo($tanggal){
            $bulan = array (
                1 => 'Januari',
                'Februari',
                'Maret',
                'April',
                'Mei',
                'Juni',
                'Juli',
                'Agustus',
                'September',
                'Oktober',
                'November',
                'Desember'
            );
            $pecahkan = explode('-', $tanggal);
            return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
        }
    ?>
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
        $query4 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' GROUP BY tahun");
        $data4 = mysqli_fetch_array($query4);
        $nama = $data1['nama_siswa'];
        $nisnnis = $data1['nisn']."/".$data1['nis'];
        $nik_wali = $data2['nik'];
        $nama_wali = $data3['nama_guru'];
        $tahun = $data4['tahun'];

        //Nilai
        $query5 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'AG'");
        $data5 = mysqli_fetch_array($query5);
        $npAG = array($data5[1], $data5[2], $data5[3], $data5[4], $data5[5], $data5[6], $data5[7], $data5[8], $data5[9], $data5[10], $data5[11]);

        $query6 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PK'");
        $data6 = mysqli_fetch_array($query6);
        $npPK = array($data6[1], $data6[2], $data6[3], $data6[4], $data6[5], $data6[6], $data6[7], $data6[8], $data6[9], $data6[10], $data6[11]);

        $query7 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'BI'");
        $data7 = mysqli_fetch_array($query7);
        $npBI = array($data7[1], $data7[2], $data7[3], $data7[4], $data7[5], $data7[6], $data7[7], $data7[8], $data7[9], $data7[10], $data7[11]);

        $query8 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'MT'");
        $data8 = mysqli_fetch_array($query8);
        $npMT = array($data8[1], $data8[2], $data8[3], $data8[4], $data8[5], $data8[6], $data8[7], $data8[8], $data8[9], $data8[10], $data8[11]);

        $query9 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PA'");
        $data9 = mysqli_fetch_array($query9);
        $npPA = array($data9[1], $data9[2], $data9[3], $data9[4], $data9[5], $data9[6], $data9[7], $data9[8], $data9[9], $data9[10], $data9[11]);

        $query10 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PS'");
        $data10 = mysqli_fetch_array($query10);
        $npPS = array($data10[1], $data10[2], $data10[3], $data10[4], $data10[5], $data10[6], $data10[7], $data10[8], $data10[9], $data10[10], $data10[11]);

        $query11 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'SB'");
        $data11 = mysqli_fetch_array($query11);
        $npSB = array($data11[1], $data11[2], $data11[3], $data11[4], $data11[5], $data11[6], $data11[7], $data11[8], $data11[9], $data11[10], $data11[11]);
        
        $query12 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'OR'");
        $data12 = mysqli_fetch_array($query12);
        $npOR = array($data12[1], $data12[2], $data12[3], $data12[4], $data12[5], $data12[6], $data12[7], $data12[8], $data12[9], $data12[10], $data12[11]);

        $query13 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'BD'");
        $data13 = mysqli_fetch_array($query13);
        $npBD = array($data13[1], $data13[2], $data13[3], $data13[4], $data13[5], $data13[6], $data13[7], $data13[8], $data13[9], $data13[10], $data13[11]);

        $query14 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'PL'");
        $data14 = mysqli_fetch_array($query14);
        $npPL = array($data14[1], $data14[2], $data14[3], $data14[4], $data14[5], $data14[6], $data14[7], $data14[8], $data14[9], $data14[10], $data14[11]);

        $query15 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'IG'");
        $data15 = mysqli_fetch_array($query15);
        $npIG = array($data15[1], $data15[2], $data15[3], $data15[4], $data15[5], $data15[6], $data15[7], $data15[8], $data15[9], $data15[10], $data15[11]);

        $query16 = mysqli_query($conn, "SELECT * FROM nilai_harian WHERE nisn = '$nisn' AND kode_kelas = '$kelas' AND semester = '$semester' AND kode_mata_pelajaran = 'KP'");
        $data16 = mysqli_fetch_array($query16);
        $npKP = array($data16[1], $data16[2], $data16[3], $data16[4], $data16[5], $data16[6], $data16[7], $data16[8], $data16[9], $data16[10], $data16[11]);

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
        <h1 style="text-align: center;">Laporan Penilaian Tengah Semester <?php echo $semester; ?></h1>
        <h2 style="text-align: center;">Tahun Ajaran <?php echo $tahun; ?></h2>
        <br>
        <br>
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
                    <td>Kelas</td>
                    <td>: </td>
                    <td><?php echo $kelas; ?></td>
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
        <h4>PENGETAHUAN (KI - 3)</h4>
        <table class="table table-bordered">
            <thread>
                <tr>
                    <th rowspan="2" style="text-align: center;">No</th>
                    <th rowspan="2" style="text-align: center;">Mata Pelajaran</th>
                    <th rowspan="2" style="text-align: center;">KKM</th>
                    <th colspan="5" style="text-align: center;">Capaian Nilai Harian</th>
                    <th rowspan="2" style="text-align: center;">PTS</th>
                <tr>
                    <th style="text-align: center;">1</th>
                    <th style="text-align: center;">2</th>
                    <th style="text-align: center;">3</th>
                    <th style="text-align: center;">4</th>
                    <th style="text-align: center;">5</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Pendidikan Agama dan Budi Pekerti </td>
                    <td>75</td>
                    <td><?php echo $npAG[0]; ?></td>
                    <td><?php echo $npAG[1]; ?></td>
                    <td><?php echo $npAG[2]; ?></td>
                    <td><?php echo $npAG[3]; ?></td>
                    <td><?php echo $npAG[4]; ?></td>
                    <td><?php echo $npAG[10]; ?></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Pendidikan Pancasila dan Kewarganegaraan</td>
                    <td>75</td>
                    <td><?php echo $npPK[0]; ?></td>
                    <td><?php echo $npPK[1]; ?></td>
                    <td><?php echo $npPK[2]; ?></td>
                    <td><?php echo $npPK[3]; ?></td>
                    <td><?php echo $npPK[4]; ?></td>
                    <td><?php echo $npPK[10]; ?></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Bahasa Indonesia</td>
                    <td>75</td>
                    <td><?php echo $npBI[0]; ?></td>
                    <td><?php echo $npBI[1]; ?></td>
                    <td><?php echo $npBI[2]; ?></td>
                    <td><?php echo $npBI[3]; ?></td>
                    <td><?php echo $npBI[4]; ?></td>
                    <td><?php echo $npBI[10]; ?></td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Matematika</td>
                    <td>75</td>
                    <td><?php echo $npMT[0]; ?></td>
                    <td><?php echo $npMT[1]; ?></td>
                    <td><?php echo $npMT[2]; ?></td>
                    <td><?php echo $npMT[3]; ?></td>
                    <td><?php echo $npMT[4]; ?></td>
                    <td><?php echo $npMT[10]; ?></td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Ilmu Pengetahuan Alam</td>
                    <td>75</td>
                    <td><?php echo $npPA[0]; ?></td>
                    <td><?php echo $npPA[1]; ?></td>
                    <td><?php echo $npPA[2]; ?></td>
                    <td><?php echo $npPA[3]; ?></td>
                    <td><?php echo $npPA[4]; ?></td>
                    <td><?php echo $npPA[10]; ?></td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Ilmu Pengetahuan Sosial</td>
                    <td>75</td>
                    <td><?php echo $npPS[0]; ?></td>
                    <td><?php echo $npPS[1]; ?></td>
                    <td><?php echo $npPS[2]; ?></td>
                    <td><?php echo $npPS[3]; ?></td>
                    <td><?php echo $npPS[4]; ?></td>
                    <td><?php echo $npPS[10]; ?></td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Seni Budaya dan Prakarya</td>
                    <td>75</td>
                    <td><?php echo $npSB[0]; ?></td>
                    <td><?php echo $npSB[1]; ?></td>
                    <td><?php echo $npSB[2]; ?></td>
                    <td><?php echo $npSB[3]; ?></td>
                    <td><?php echo $npSB[4]; ?></td>
                    <td><?php echo $npSB[10]; ?></td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Pendidikan Jasmani Olahraga dan Kesehatan</td>
                    <td>75</td>
                    <td><?php echo $npOR[0]; ?></td>
                    <td><?php echo $npOR[1]; ?></td>
                    <td><?php echo $npOR[2]; ?></td>
                    <td><?php echo $npOR[3]; ?></td>
                    <td><?php echo $npOR[4]; ?></td>
                    <td><?php echo $npOR[10]; ?></td>
                </tr>
                <tr>
                    <th>9.</th>
                    <th>Muatan Lokal</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <td>a.</td>
                    <td>Bahasa Sunda</td>
                    <td>75</td>
                    <td><?php echo $npBD[0]; ?></td>
                    <td><?php echo $npBD[1]; ?></td>
                    <td><?php echo $npBD[2]; ?></td>
                    <td><?php echo $npBD[3]; ?></td>
                    <td><?php echo $npBD[4]; ?></td>
                    <td><?php echo $npBD[10]; ?></td>
                </tr>
                <tr>
                    <td>b.</td>
                    <td>Pendidikan Lingkungan Hidup</td>
                    <td>75</td>
                    <td><?php echo $npPL[0]; ?></td>
                    <td><?php echo $npPL[1]; ?></td>
                    <td><?php echo $npPL[2]; ?></td>
                    <td><?php echo $npPL[3]; ?></td>
                    <td><?php echo $npPL[4]; ?></td>
                    <td><?php echo $npPL[10]; ?></td>
                </tr>
                <tr>
                    <td>c.</td>
                    <td>Bahsa Inggris</td>
                    <td>75</td>
                    <td><?php echo $npIG[0]; ?></td>
                    <td><?php echo $npIG[1]; ?></td>
                    <td><?php echo $npIG[2]; ?></td>
                    <td><?php echo $npIG[3]; ?></td>
                    <td><?php echo $npIG[4]; ?></td>
                    <td><?php echo $npIG[10]; ?></td>
                </tr>
                <tr>
                    <td>d.</td>
                    <td>Teknologi Informasi dan Komunikasi(TIK)</td>
                    <td>75</td>
                    <td><?php echo $npKP[0]; ?></td>
                    <td><?php echo $npKP[1]; ?></td>
                    <td><?php echo $npKP[2]; ?></td>
                    <td><?php echo $npKP[3]; ?></td>
                    <td><?php echo $npKP[4]; ?></td>
                    <td><?php echo $npKP[10]; ?></td>
                </tr>

            </thread>
        </table>
        <br>
    </div>


    <div class="container">
        <h4>KETERAMPILAN (KI - 4)</h4>
        <table class="table table-bordered">
            <thread>
                <tr>
                    <th rowspan="2" style="text-align: center;">No</th>
                    <th rowspan="2" style="text-align: center;">Mata Pelajaran</th>
                    <th rowspan="2" style="text-align: center;">KKM</th>
                    <th colspan="5" style="text-align: center;">Capaian Nilai Harian</th>
                <tr>
                    <th style="text-align: center;">1</th>
                    <th style="text-align: center;">2</th>
                    <th style="text-align: center;">3</th>
                    <th style="text-align: center;">4</th>
                    <th style="text-align: center;">5</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Pendidikan Agama dan Budi Pekerti </td>
                    <td>75</td>
                    <td><?php echo $npAG[5]; ?></td>
                    <td><?php echo $npAG[6]; ?></td>
                    <td><?php echo $npAG[7]; ?></td>
                    <td><?php echo $npAG[8]; ?></td>
                    <td><?php echo $npAG[9]; ?></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Pendidikan Pancasila dan Kewarganegaraan</td>
                    <td>75</td>
                    <td><?php echo $npPK[5]; ?></td>
                    <td><?php echo $npPK[6]; ?></td>
                    <td><?php echo $npPK[7]; ?></td>
                    <td><?php echo $npPK[8]; ?></td>
                    <td><?php echo $npPK[9]; ?></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Bahasa Indonesia</td>
                    <td>75</td>
                    <td><?php echo $npBI[5]; ?></td>
                    <td><?php echo $npBI[6]; ?></td>
                    <td><?php echo $npBI[7]; ?></td>
                    <td><?php echo $npBI[8]; ?></td>
                    <td><?php echo $npBI[9]; ?></td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Matematika</td>
                    <td>75</td>
                    <td><?php echo $npMT[5]; ?></td>
                    <td><?php echo $npMT[6]; ?></td>
                    <td><?php echo $npMT[7]; ?></td>
                    <td><?php echo $npMT[8]; ?></td>
                    <td><?php echo $npMT[9]; ?></td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Ilmu Pengetahuan Alam</td>
                    <td>75</td>
                    <td><?php echo $npPA[5]; ?></td>
                    <td><?php echo $npPA[6]; ?></td>
                    <td><?php echo $npPA[7]; ?></td>
                    <td><?php echo $npPA[8]; ?></td>
                    <td><?php echo $npPA[9]; ?></td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Ilmu Pengetahuan Sosial</td>
                    <td>75</td>
                    <td><?php echo $npPS[5]; ?></td>
                    <td><?php echo $npPS[6]; ?></td>
                    <td><?php echo $npPS[7]; ?></td>
                    <td><?php echo $npPS[8]; ?></td>
                    <td><?php echo $npPS[9]; ?></td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Seni Budaya dan Prakarya</td>
                    <td>75</td>
                    <td><?php echo $npSB[5]; ?></td>
                    <td><?php echo $npSB[6]; ?></td>
                    <td><?php echo $npSB[7]; ?></td>
                    <td><?php echo $npSB[8]; ?></td>
                    <td><?php echo $npSB[9]; ?></td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Pendidikan Jasmani Olahraga dan Kesehatan</td>
                    <td>75</td>
                    <td><?php echo $npOR[5]; ?></td>
                    <td><?php echo $npOR[6]; ?></td>
                    <td><?php echo $npOR[7]; ?></td>
                    <td><?php echo $npOR[8]; ?></td>
                    <td><?php echo $npOR[9]; ?></td>
                </tr>
                <tr>
                    <th>9.</th>
                    <th>Muatan Lokal</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <td>a.</td>
                    <td>Bahasa Sunda</td>
                    <td>75</td>
                    <td><?php echo $npBD[5]; ?></td>
                    <td><?php echo $npBD[6]; ?></td>
                    <td><?php echo $npBD[7]; ?></td>
                    <td><?php echo $npBD[8]; ?></td>
                    <td><?php echo $npBD[9]; ?></td>
                </tr>
                <tr>
                    <td>b.</td>
                    <td>Pendidikan Lingkungan Hidup</td>
                    <td>75</td>
                    <td><?php echo $npPL[5]; ?></td>
                    <td><?php echo $npPL[6]; ?></td>
                    <td><?php echo $npPL[7]; ?></td>
                    <td><?php echo $npPL[8]; ?></td>
                    <td><?php echo $npPL[9]; ?></td>
                </tr>
                <tr>
                    <td>c.</td>
                    <td>Bahsa Inggris</td>
                    <td>75</td>
                    <td><?php echo $npIG[5]; ?></td>
                    <td><?php echo $npIG[6]; ?></td>
                    <td><?php echo $npIG[7]; ?></td>
                    <td><?php echo $npIG[8]; ?></td>
                    <td><?php echo $npIG[9]; ?></td>
                </tr>
                <tr>
                    <td>d.</td>
                    <td>Teknologi Informasi dan Komunikasi(TIK)</td>
                    <td>75</td>
                    <td><?php echo $npKP[5]; ?></td>
                    <td><?php echo $npKP[6]; ?></td>
                    <td><?php echo $npKP[7]; ?></td>
                    <td><?php echo $npKP[8]; ?></td>
                    <td><?php echo $npKP[9]; ?></td>
                </tr>
            </thread>
        </table>
        <br>
    </div>

    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Kehadiran</th>
                    <th>Sakit</th>
                    <th>Izin</th>
                    <th>Tanpa Keterangan</th>
                </tr>
                <tr>
                    <td></td>
                    <td><?php echo $sakit; ?></td>
                    <td><?php echo $izin; ?></td>
                    <td><?php echo $alpha; ?></td>
                </tr>
            </thead>
        </table>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <p>Orang Tua/Wali Murid,</p>
                <br>
                <p>..............................</p>
            </div>
            <div class="col-sm-4">
                <p>Mengetahui</p>
                <p>Kepala SD Ignatius Slamet Riyadi,</p>
                <br>
                <p>Fransiscus Pujiharto, S.Pd</p>
                <p>NIK. 10286</p>
            </div>
            <div class="col-sm-4">
                <p>Bandung, <?php echo tgl_indo(date('Y-m-d')); ?></p>
                <p>Wali Kelas,</p>
                <br>
                <p><?php echo $nama_wali; ?></p>
                <p>NIK. <?php echo $nik_wali; ?></p>
            </div>
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