<?php 
include '../connect.php'; 
require_once '../vendor/PHPExcel-1.8/Classes/PHPExcel.php';
$excel = new PHPExcel();
$excel->getProperties()->setCreator('Team The Best')
		->setLastModifiedBy('Admin')
		->setTitle('Table Nilai')
		->setSubject('Siswa')
		->setDescription('Data Nilai')
		->setKeywords('Data Nilai Siswa');

$style_col = array(
	'font' => array('bold' => true),
	'alignment' => array(
		'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER
	),
	'borders' => array(
		'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),
		'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 
		'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 
		'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN) 
	)
);

$style_row = array(
	'alignment' => array(
		'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER
	),
	'borders' => array(
		'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),
		'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 
		'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), 
		'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN)
	)
);

$excel->setActiveSheetIndex(0)->setCellValue('A1', "Nama Lengkap");
$excel->setActiveSheetIndex(0)->setCellValue('B1', "NISN");
$excel->setActiveSheetIndex(0)->setCellValue('C1', "Nilai Pengetahuan");
$excel->setActiveSheetIndex(0)->setCellValue('C2', "Capaian Nilai Harian");
$excel->setActiveSheetIndex(0)->setCellValue('C3', "Nilai 1");
$excel->setActiveSheetIndex(0)->setCellValue('D3', "Nilai 2");
$excel->setActiveSheetIndex(0)->setCellValue('E3', "Nilai 3");
$excel->setActiveSheetIndex(0)->setCellValue('F3', "Nilai 4");
$excel->setActiveSheetIndex(0)->setCellValue('G3', "Nilai 5");
$excel->setActiveSheetIndex(0)->setCellValue('H1', "Nilai Keterampilan");
$excel->setActiveSheetIndex(0)->setCellValue('H2', "Capaian Nilai Harian");
$excel->setActiveSheetIndex(0)->setCellValue('H3', "Nilai 1");
$excel->setActiveSheetIndex(0)->setCellValue('I3', "Nilai 2");
$excel->setActiveSheetIndex(0)->setCellValue('J3', "Nilai 3");
$excel->setActiveSheetIndex(0)->setCellValue('K3', "Nilai 4");
$excel->setActiveSheetIndex(0)->setCellValue('L3', "Nilai 5");
$excel->setActiveSheetIndex(0)->setCellValue('M1', "PTS");
$excel->getActiveSheet()->mergeCells('A1:A3');
$excel->getActiveSheet()->mergeCells('B1:B3');
$excel->getActiveSheet()->mergeCells('C1:G1');
$excel->getActiveSheet()->mergeCells('C2:G2');
$excel->getActiveSheet()->mergeCells('H1:L1');
$excel->getActiveSheet()->mergeCells('H2:L2');
$excel->getActiveSheet()->mergeCells('M1:M3');

$excel->getActiveSheet()->getStyle('A1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('A2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('A3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('B1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('B2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('B3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('C1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('C2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('C3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('D1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('D2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('D3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('E1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('E2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('E3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('F1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('F2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('F3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('G1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('G2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('G3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('H1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('H2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('H3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('I1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('I2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('I3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('J1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('J2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('J3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('K1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('K2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('K3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('L1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('L2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('L3')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('M1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('M2')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('M3')->applyFromArray($style_col);

$kelas = $_GET['kelas'];
$numrow = 4;
$sql = mysqli_query($conn, "SELECT * FROM siswa WHERE kode_kelas = '$kelas' ORDER BY nama_siswa ASC");
while ($data = mysqli_fetch_array($sql)) {
	$excel->setActiveSheetIndex(0)->setCellValue('A'.$numrow, $data['nama_siswa']);
	$excel->setActiveSheetIndex(0)->setCellValue('B'.$numrow, $data['nisn']);
	$excel->getActiveSheet()->getStyle('A'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('B'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('C'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('D'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('E'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('F'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('G'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('H'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('I'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('J'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('K'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('L'.$numrow)->applyFromArray($style_row);
	$excel->getActiveSheet()->getStyle('M'.$numrow)->applyFromArray($style_row);
	$numrow++;
}

$excel->getActiveSheet()->getColumnDimension('A')->setWidth(30);
$excel->getActiveSheet()->getColumnDimension('B')->setWidth(20);
$excel->getActiveSheet()->getColumnDimension('C')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('D')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('E')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('F')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('G')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('H')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('I')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('J')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('K')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('L')->setWidth(10);
$excel->getActiveSheet()->getColumnDimension('M')->setWidth(10);


// $output = '';
// $output .= '
// <table border="1">
//   <tr>
//   	<th rowspan="3">Nama Lengkap</th>
// 	<th rowspan="3">NISN</th>
// 	<th colspan="5">Nilai Pengetahuan</th>
//     <th colspan="5">Nilai Keterampilan</th>
//     <th rowspan="3">PTS</th>
//   </tr>
//   <tr>
//     <th colspan="5">Capaian Nilai Harian</th>
//     <th colspan="5">Capaian Nilai Harian</th>
//   </tr>
//   <tr>
//     <th>Nilai 1</th>
//     <th>Nilai 2</th>
//     <th>Nilai 3</th>
//     <th>Nilai 4</th>
//     <th>Nilai 5</th>
//     <th>Nilai 1</th>
//     <th>Nilai 2</th>
//     <th>Nilai 3</th>
//     <th>Nilai 4</th>
//     <th>Nilai 5</th>
//   </tr>';
// 	$kelas = $_GET['kelas'];
// 	$sql = mysqli_query($conn, "SELECT * FROM siswa WHERE kode_kelas = '$kelas' ORDER BY nama_siswa ASC");
// 	while ($data = mysqli_fetch_array($sql)) {
// 		$output .= '
// 		<tr>
// 			<td>'.$data['nama_siswa'].'</td>
// 			<td>'.$data['nisn'].'</td>
// 			<td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		    <td> </td>
// 		</tr>';
// 	}
// $output .= '</table>';
$excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);

$excel->getActiveSheet(0)->setTitle('Tabel Nilai Siswa');
$excel->setActiveSheetIndex(0);

$write = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');
if(ob_get_length() > 0) {
    ob_clean();
}
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="input_nilai"'.$kelas.'".xlsx"');
header('Cache-Control: max-age=0');
$write->save('php://output');
?>