<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
include_once '../config/dataBase.php';
include_once '../models/contato.php';
  
$database = new Database();
$db = $database->getConnection();
  
$contato = new Contato($db);
  

$data = json_decode(file_get_contents("php://input"));

if(
    !empty($data->nome) &&
    !empty($data->email) &&
    !empty($data->assunto) &&
    !empty($data->mensagem)
){
  
    
    $contato->nome = $data->nome;
    $contato->email = $data->email;
    $contato->assunto = $data->assunto;
    $contato->mensagem = $data->mensagem;
   
      

    if($contato->creat()){
  
       
        http_response_code(201);
  
        
        echo json_encode(array("message" => "Mensagem enviada com sucesso."));
    }
  
    
    else{
  
        http_response_code(503);
  
        echo json_encode(array("message" => "Não foi possível enviar sua Mensagem."));
    }
}
  
else{
  
    http_response_code(400);
  

    echo json_encode(array("message" => "Não foi possível enviar sua mensagem. Os dados estão incorretos."));
}
?>
