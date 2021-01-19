<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/dataBase.php';
include_once '../models/user.php';
  
$database = new Database();
$db = $database->getConnection();
  
$user = new User($db);
  
$data = json_decode(file_get_contents("php://input"));
  
$user->id = $data->id;
  
if($user->delete()){
  
    http_response_code(200);
  
    echo json_encode(array("message" => "Cadastro deletado."));
}
  
else{
  
    http_response_code(503);
  
    echo json_encode(array("message" => "Erro ao deletar cadastro."));
}
?>
