<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/dataBase.php';
include_once '../models/user.php';

if (!isset($_SESSION)) session_start();

 
  
$database = new Database();
$db = $database->getConnection();
  
$user = new User($db);
  
$user->id =$_SESSION['user']['id'];


  
if($user->delete()){
  
    http_response_code(200);
  session_destroy();
    header("Location: ../../../frontend/login.php?delete=true"); 
    exit;
}
  
else{
  
    http_response_code(503);
  
    echo json_encode(array("message" => "Erro ao deletar cadastro."));
}
?>
