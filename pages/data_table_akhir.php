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
$excel->setActiveSheetIndex(0)->setCellValue('D1', "Predikat Nilai Pengetahuan");
$excel->setActiveSheetIndex(0)->setCellValue('E1', "Nilai Keterampilan");
$excel->setActiveSheetIndex(0)->setCellValue('F1', "Predikat Nilai Keterampilan");

$excel->getActiveSheet()->getStyle('A1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('B1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('C1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('D1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('E1')->applyFromArray($style_col);
$excel->getActiveSheet()->getStyle('F1')->applyFromArray($style_col);

$kelas = $_GET['kelas'];
$numrow = 2;
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
	$numrow++;
}

$excel->getActiveSheet()->getColumnDimension('A')->setWidth(50);
$excel->getActiveSheet()->getColumnDimension('B')->setWidth(20);
$excel->getActiveSheet()->getColumnDimension('C')->setWidth(20);
$excel->getActiveSheet()->getColumnDimension('D')->setWidth(25);
$excel->getActiveSheet()->getColumnDimension('E')->setWidth(20);
$excel->getActiveSheet()->getColumnDimension('F')->setWidth(25);

$excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);

$excel->getActiveSheet(0)->setTitle('Tabel Nilai Siswa');
$excel->setActiveSheetIndex(0);

$write = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');
if(ob_get_length() > 0) {
    ob_clean();
}
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="input_nilai_akhir"'.$kelas.'".xlsx"');
header('Cache-Control: max-age=0');
$write->save('php://output');
?>