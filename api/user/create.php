<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
include_once '../config/dataBase.php';
include_once '../models/user.php';
  
$database = new Database();
$db = $database->getConnection();
  
$user = new User($db);
  

$data = json_decode(file_get_contents("php://input"));

if(
    !empty($data->nome) &&
    !empty($data->dataNascimento) &&
    !empty($data->email) &&
    !empty($data->telefone) &&
    !empty($data->senha) &&
    !empty($data->confirmarSenha) &&
    !empty($data->apelido) &&
    !empty($data->imgAvatar)
){
  
    
    $user->nome = $data->nome;
    $user->dataNascimento = $data->dataNascimento;
    $user->email = $data->email;
    $user->telefone = $data->telefone;
    $user->senha = $data->senha;
    $user->confirmarSenha = $data->confirmarSenha;
    $user->apelido = $data->apelido;
    $user->imgAvatar = $data->imgAvatar;
      

    if($user->create()){
  
       
        http_response_code(201);
  
        
        echo json_encode(array("message" => "Usuário criado com sucesso."));
    }
  
    
    else{
  
        http_response_code(503);
  
        echo json_encode(array("message" => "Não foi possivel criar o Usuário."));
    }
}
  
else{
  
    http_response_code(400);
  

    echo json_encode(array("message" => "Não foi possivel criar o Usuário. Os dados estão incompletos."));
}
?>
