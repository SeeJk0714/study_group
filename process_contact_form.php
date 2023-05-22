<?php

session_start();

$form = [];
$database = new PDO(
  "mysql:host=devkinsta_db;dbname=study_group",
  'root',
  'GObT0SaYlthXkrat'
);

$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

if(empty($name) || empty($email) || empty($message)){
    $error = "Please write word";
}else if(strlen($message)<10){
    $error = "Must be 10 characters";
}else{
    $correct = "sent";
    $sql = 'INSERT INTO form (`name`,`email`,`message`) VALUES(:name,:email,:message)';
    $query = $database->prepare($sql);
    $query->execute([
        'name' => $name,
        'email' => $email,
        'message' => $message 
    ]);
    
}
if(isset ($error)){
    $_SESSION['error']= $error;
    header("Location: index.php");
    exit;
}
if(isset($correct)){
    $_SESSION['correct']= $correct;
    header("Location: index.php");
    exit;
}