<?php

require_once('../config/dblogincad.php');

//Atualizar de FALSE para TRUE no banco
$teste = ($_POST["salvar"]);

$sql = "INSERT INTO `favelacao`.`teste` (`testecol`) VALUES ('TRUE')";

$result = mysqli_query($conn, $sql);

//Atualizar de FALSE para TRUE localmente para que o save fique certo mesmo sem fazer login novamente

session_start();

$_SESSION['save']['missao2'] = "TRUE";


