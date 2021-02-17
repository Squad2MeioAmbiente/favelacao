<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
include_once '../config/dataBase.php';
include_once '../models/mural.php';
  
$database = new Database();
$db = $database->getConnection();
  
$mural = new Mural($db);
  

$data = json_decode(file_get_contents("php://input"));

if(
    !empty($data->nome) &&
    !empty($data->imagem) 
    
){
  
    
    $mural->nome = $data->nome;
    $mural->imagem = $data->imagem;
   
      

    if($mural->creat()){
  
       
        http_response_code(201);
  
        
        echo json_encode(array("message" => "Imagem enviada com sucesso."));
    }
  
    
    else{
  
        http_response_code(503);
  
        echo json_encode(array("message" => "Não foi possível enviar sua imagem."));
    }
}
  
else{
  
    http_response_code(400);
  

    echo json_encode(array("message" => "Não foi possível enviar sua imagem. Os dados estão incorretos."));
}
?>
