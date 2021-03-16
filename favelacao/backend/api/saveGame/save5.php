<?php

require_once('../config/dblogincad.php');
session_start();
//Atualizar de FALSE para TRUE no banco

$savUsuario = $_SESSION['save']['email'];

$sql = "UPDATE `savegame` SET `missao6` = 'TRUE' WHERE (`email` = '$savUsuario')";
$_SESSION['save']['missao6'] = "TRUE";

$result = mysqli_query($conn, $sql);

//Atualizar de FALSE para TRUE localmente para que o save fique certo mesmo sem fazer login novamente





