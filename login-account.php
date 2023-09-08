<?php
session_start();

$host="localhost";
$username="root";
$pass="";
$db="ems";

$conn=mysqli_connect($host,$username,$pass,$db);
if(!$conn){
	die("Database connection error");
}

// login account process

if(isset($_POST['email']))
{
	$email=$_POST['email'];
	$pass=md5($_POST['password']);
	
	$query="Select * from users where email='$email' AND password='$pass'";
	$res=mysqli_query($conn, $query);
	$count=mysqli_num_rows($res);
	$row=mysqli_fetch_array($res);
	if($count==1)
	{  
  $session_id=session_id();
  $_SESSION['auth']= $session_id;
  $_SESSION['user_id']= $row['user_id'];
  $_SESSION['role']=$row['role'];
$role=$row['role'];
   if($role=='teacher'){
	   	header('Location:admin/dashboard.php');

   }elseif($role=='student'){
	   	header('Location:employee/dashboard.php');
   }else{
	  $_SESSION['error']="Worng Email or password!";
		header('Location:login.php'); 
   }
	
	}else{
		$_SESSION['error']="Worng Email or password!";
		header('Location:login.php');
	}
	
}


?>