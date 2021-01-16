<?php
     $server_name="localhost";
     $user_name="root";
     $password_name="";
     $database_name="squad2";

     $conn = new mysqli($server_name,$user_name,$password_name,$database_name);

     if($conn ->connect_error){
          die("FALHA NA CONEXAO : ". $conn->connect_error);
     }
?>