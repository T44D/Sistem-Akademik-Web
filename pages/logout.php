<?php 
	session_start();
	include '../connect.php';
	if (isset($_SESSION['login'])) {
		unset($_SESSION);
		session_destroy();
		?>
<meta http-equiv="refresh" content="1;url=../index.php">
<?php
	}
	else {
		?>
<meta http-equiv="refresh" content="1;url=../404.php">
<?php
		die();
	}
?>