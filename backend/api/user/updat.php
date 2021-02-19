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

    $user->id = $_POST['id'];
    $user->nome = $_POST['nome'];
    $user->dataNascimento = $_POST['dataNascimento']; 
    $user->email = $_POST['email'];
    $user->apelido =  $_POST['apelido'];
    $user->imgAvatar =  $_POST['imgAvatar'];

    if($user->update()){

        http_response_code(200);


        if (!isset($_SESSION)) session_start();

        $_SESSION['user'] = [
            'id' => $user->id,
            'nome' => $user->nome,
            'dataNascimento' => $user->dataNascimento,
            'email' => $user->email,
            'apelido' => $user->apelido,
            'imgAvatar' => $user->imgAvatar,
        ];

        header("Location: ../../../frontend/pages/perfil.php"); 
        exit;
    }

    else{
        http_response_code(503);
        echo json_encode(array("message" => "Usuário ". $_POST['id']. " não encontrado."));
    }
?>