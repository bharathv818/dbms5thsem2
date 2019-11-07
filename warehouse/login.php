<?php 
	if (isset($_POST['submit'])) {

		require 'dbh.php';

		$empno = $_POST['empno'];
		$password = $_POST['pwd'];

		if (empty($empno) || empty($password)) {
			header("Location: index.php?error=emptyfields");
			exit();
		}
		else {
			$sql = "SELECT * FROM employee WHERE emply_no=?";
			$stmt = mysqli_stmt_init($conn);			
			if (!mysqli_stmt_prepare($stmt,$sql)) {
				header("Location: index.php?error=sqlerror");
				exit();				
			}
			else {
				mysqli_stmt_bind_param($stmt, "s",$empno);
				mysqli_stmt_execute($stmt);
				$result = mysqli_stmt_get_result($stmt);
				if ($row = mysqli_fetch_assoc($result)) {
					$pwdCheck = password_verify($password,$row['pass']);
					if ($pwdCheck == false) {
						header("Location: index.php?error=wrongpwd");
						exit();	
					}
					else if($pwdCheck == true){
						session_start();
						$_SESSION['emppno'] = $row['emply_no'];
						//$_SESSION['useremply'] = $row['emply_no'];

						header("Location: index2.php");
						exit();

					}
					else {
						header("Location: index.php?error=wrongpwdbuthowdidthishappen");
						exit();	
					}
				}
				else {
					header("Location: index.php?error=nouser");
					exit();	
				}
			}

		}


	}
	else {

		header("Location: index.php");
		exit();

	}
 ?>